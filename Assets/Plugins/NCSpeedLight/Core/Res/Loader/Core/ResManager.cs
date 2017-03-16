/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: ResManager.cs
           // Describle:  
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

//#define ASSETBUNDLE_MODE
//#define COMPRESSED_BUNDLE

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

namespace NCSpeedLight
{

    public delegate void LoadAssetCallback(UnityEngine.Object obj, ResLoadParam param);
    public delegate void PostResManagerInitializedDelegate();

    public class ResLoadParam
    {
        public string AssetName;
        public string AssetPath;
        public string AssetBundleName;
    }
    public class ResLoadParamEx<T> : ResLoadParam
    {
        private T m_Data;
        public T Data
        {
            get { return m_Data; }
            set { m_Data = value; }
        }
        public ResLoadParamEx(T obj)
        {
            m_Data = obj;
        }
    }

    public class LoadedAssetBundle
    {
        public AssetBundle Bundle { get; set; }
        private int m_RefCount;
        public string BundleName { get; set; }
        public int RefCount
        {
            get { return m_RefCount; }
            set
            {
                m_RefCount = value;
                //Debug.LogError(BundleName + "'s refcount is: " + m_RefCount);
            }
        }
        public bool IsDone { get { return Bundle == null ? false : true; } }
        public LoadedAssetBundle(string name)
        {
            BundleName = name;
        }
    }

    public class ResManager : MonoBehaviour
    {
        #region [Fields]

        private static Dictionary<string, LoadedAssetBundle> m_LoadedAssetBundles = new Dictionary<string, LoadedAssetBundle>();

        private static Dictionary<string, WWW> m_Downloadings = new Dictionary<string, WWW>();

        private static Dictionary<string, string> m_DownloadingErrors = new Dictionary<string, string>();

        private static List<LoadOperation> m_InProgressOperations = new List<LoadOperation>();

        private static List<LoadOperation> m_WaitingOperations = new List<LoadOperation>();

        private static List<string> m_KeysToRemove = new List<string>();

        private static Dictionary<string, WWW>.Enumerator m_DownloadingEnumerator;

        public static event PostResManagerInitializedDelegate PostResManagerInitialized;

        public static string AssetBundleSourceURL;

        public static string AssetBundleSourceDirectory;

        public static ResManager Instance { set; get; }
        public static bool IsInitialized { get; set; }
        public static bool IsResourceMode
        {
            get
            {
#if ASSETBUNDLE_MODE
                return false;
#else
                return true;
#endif
            }
        }

        public static bool IsCompressedBundle
        {
            get
            {
#if COMPRESSED_BUNDLE
                return true;
#else
                return false;
#endif
            }
        }

        #endregion

        #region [Functions]

        #region monobehaviour
        void Awake()
        {
            Instance = this;
            StartCoroutine(LoadLooper());
        }
        IEnumerator LoadLooper()
        {
            while (true)
            {
                if (m_WaitingOperations.Count > 0)
                {
                    LoadOperation operation = m_WaitingOperations[0];
                    m_InProgressOperations.Add(operation);
                    m_WaitingOperations.Remove(operation);
                    operation.Execute();
                    //Utility.Log("Looper yield return new coroutine  " + (operation as LoadAssetOperation).AssetBundleName);
                    yield return StartCoroutine(operation);
                    //Utility.Log("Looper success  " + (operation as LoadAssetOperation).AssetBundleName);
                    try
                    {
                        operation.Finish(operation.GetAsset());
                    }
                    catch (Exception e)
                    {
                        LoadAssetOperation loadAssetOperation = operation as LoadAssetOperation;
                        if (loadAssetOperation != null && loadAssetOperation.GetType().IsSubclassOf(typeof(LoadAssetOperation)))
                        {
                            if (string.IsNullOrEmpty(loadAssetOperation.AssetBundleName) == false && string.IsNullOrEmpty(loadAssetOperation.AssetName) == false)
                            {
                                Utility.LogError(Utility.StringFormat("Looper success,but some exception occuried, Task key: {0}/{1}, Exception: {2}, Track: {3}", loadAssetOperation.AssetBundleName, loadAssetOperation.AssetName, e.Message, e.StackTrace));
                            }
                            else
                            {
                                Utility.LogError(Utility.StringFormat("Looper success,but some exception occuried, Exception: {0}, Track: {1}", e.Message, e.StackTrace));
                            }
                        }
                    }
                }
                yield return null;
            }
        }
        void Update()
        {
            m_KeysToRemove.Clear();
            m_DownloadingEnumerator = m_Downloadings.GetEnumerator();
            for (int i = 0; i < m_Downloadings.Count; i++)
            {
                m_DownloadingEnumerator.MoveNext();
                var keyValue = m_DownloadingEnumerator.Current;

                WWW download = keyValue.Value;
                LoadedAssetBundle loadedBundle = null;
                if (m_LoadedAssetBundles.TryGetValue(keyValue.Key, out loadedBundle))
                {
                    if (loadedBundle.IsDone)
                    {
                        m_KeysToRemove.Add(keyValue.Key);
                        continue; //这里说明该bundle已经通过同步的方式加载完成了.
                    }
                }

                if (download.error != null)
                {
                    string str = default(string);
                    if (m_DownloadingErrors.TryGetValue(keyValue.Key, out str) == false)
                    {
                        Utility.LogError(Utility.StringFormat("WWW Error: {0}", keyValue.Value));
                        m_DownloadingErrors.Add(keyValue.Key, Utility.StringFormat("Failed downloading bundle {0} from {1}: {2}", keyValue.Key, download.url, download.error));
                        m_KeysToRemove.Add(keyValue.Key);
                    }
                    continue;
                }
                if (download.isDone)
                {
                    AssetBundle bundle = download.assetBundle;
                    if (bundle == null)
                    {
                        string str = default(string);
                        if (m_DownloadingErrors.TryGetValue(keyValue.Key, out str) == false)
                        {
                            m_DownloadingErrors.Add(keyValue.Key, Utility.StringFormat("{0} is not a valid asset bundle.", keyValue.Key));
                            m_KeysToRemove.Add(keyValue.Key);
                        }
                        continue;
                    }
                    LoadedAssetBundle bundleInfo = null;
                    if (m_LoadedAssetBundles.TryGetValue(keyValue.Key, out bundleInfo))
                    {
                        bundleInfo.Bundle = download.assetBundle;
                    }
                    m_KeysToRemove.Add(keyValue.Key);
                }
            }
            for (int i = 0; i < m_KeysToRemove.Count; i++)
            {
                WWW download = m_Downloadings[m_KeysToRemove[i]];
                m_Downloadings.Remove(m_KeysToRemove[i]);
                download.Dispose();
            }
            for (int i = 0; i < m_InProgressOperations.Count;)
            {
                if (m_InProgressOperations[i].Update() == false)
                {
                    m_InProgressOperations.RemoveAt(i);
                }
                else
                    i++;
            }
        }
        #endregion

        #region utility
        private static void SetupAssetBundleEnv()
        {
            string str = Utility.StringFormat("{0}/AssetBundles/{1}/", GetStreamingAssetsURL(), Utility.GetPlatformName());
            AssetBundleSourceURL = str + "Assets/";
            Utility.Log(Utility.StringFormat("AssetBundle local host: {0}", str));
            str = Utility.StringFormat("{0}/AssetBundles/{1}/", GetStreamingAssetsPath(), Utility.GetPlatformName());
            AssetBundleSourceDirectory = str + "Assets/";
            Utility.Log(Utility.StringFormat("AssetBundle local directory: {0}", str));

            //AssetBundleSourceURL = SharedVariable.ASSET_BUNDLE_PATH;
            //AssetBundleSourceDirectory = SharedVariable.ASSET_BUNDLE_PATH;
        }
        public static string GetStreamingAssetsURL()
        {
            if (Application.isEditor)
            {
                return "file://" + System.Environment.CurrentDirectory.Replace("\\", "/"); // Use the build output folder directly.
            }
            else if (Application.isWebPlayer)
            {
                return Path.GetDirectoryName(Application.absoluteURL).Replace("\\", "/") + "/StreamingAssets";
            }
            else if (Application.isMobilePlatform || Application.isConsolePlatform)
            {
                return Application.streamingAssetsPath;
            }
            else// For standalone player.
            {
                return "file://" + Application.streamingAssetsPath;
            }
        }
        public static string GetStreamingAssetsPath()
        {
            if (Application.isEditor)
            {
                return System.Environment.CurrentDirectory.Replace("\\", "/");
            }
            else if (Application.isWebPlayer)
            {
                return System.IO.Path.GetDirectoryName(Application.absoluteURL).Replace("\\", "/") + "/StreamingAssets";
            }
            else if (Application.isMobilePlatform || Application.isConsolePlatform)
            {
                return Application.streamingAssetsPath;
            }
            else// For standalone player.
            {
                return Application.streamingAssetsPath;
            }
        }

        #endregion

        #region initialize
        public static void Initialize()
        {
            if (IsInitialized)
            {
                Utility.LogWarning("Already initialized");
                return;
            }

            GameObject go = null;
            if (IsResourceMode)
            {
                Utility.Log("Resource Mode");
                go = new GameObject("ResManager [Mode: Resource]");
            }
            else
            {
                Utility.Log("AssetBundle Mode");
                go = new GameObject("ResManager [Mode: AssetBundle]");
            }
            if (Game.Instance)
            {
                go.transform.SetParent(Game.Instance.transform);
            }
            else
            {
                DontDestroyOnLoad(go);
            }
            go.SetActive(true);
            go.AddComponent<ResManager>();

            if (IsResourceMode == false)
            {
                SetupAssetBundleEnv();
                NCSpeedLight.AssetBundleManifest.Initialize();
            }

            IsInitialized = true;
            if (PostResManagerInitialized != null)
            {
                PostResManagerInitialized();
            }
        }
        #endregion

        #region asset bundle load and dependency
        public static LoadedAssetBundle AssemblyAssetBundle(string bundleName, out string error)
        {
            if (m_DownloadingErrors.TryGetValue(bundleName, out error))// load error.
            {
                m_LoadedAssetBundles.Remove(bundleName);// remove record.
                return null;
            }
            LoadedAssetBundle bundle = null;
            m_LoadedAssetBundles.TryGetValue(bundleName, out bundle); // doesn't load yet.
            if (bundle == null)
            {
                error = Utility.StringFormat("doesn't record this bundle info in dictionary,name: {0}", bundleName);
                return null;
            }
            if (bundle.IsDone == false)
            {
                return null;
            }
            string[] dependencies = NCSpeedLight.AssetBundleManifest.GetAllDependencies(bundleName);
            if (dependencies == null || dependencies.Length == 0) // no dependency.
            {
                return bundle;
            }

            for (int i = 0; i < dependencies.Length; i++)
            {
                if (m_DownloadingErrors.TryGetValue(dependencies[i], out error)) // if dependency bundle load failed.
                {
                    return bundle;
                }

                LoadedAssetBundle dependentBundle;
                if (m_LoadedAssetBundles.TryGetValue(dependencies[i], out dependentBundle) == false)
                {
                    // doesn't load all dependencies.
                    return null;
                }
            }
            return bundle;
        }
        public static LoadedAssetBundle GetLoadedAssetBundle(string bundleName, out string error)
        {
            if (m_DownloadingErrors.TryGetValue(bundleName, out error))// load error.
            {
                return null;
            }
            LoadedAssetBundle bundle = null;
            m_LoadedAssetBundles.TryGetValue(bundleName, out bundle); // doesn't load yet.
            return bundle;
        }
        private static void LoadAssetBundleAsync(string bundleName)
        {
            LoadAssetBundleInternalAsync(bundleName); // load current bundle.
        }
        private static bool LoadAssetBundleInternalAsync(string bundleName)
        {
            LoadedAssetBundle bundle = null;
            m_LoadedAssetBundles.TryGetValue(bundleName, out bundle);
            if (bundle != null)
            {
                bundle.RefCount++;
                return true;
            }

            // loading...
            if (m_Downloadings.ContainsKey(bundleName))
            {
                return true;
            }

            string[] dependencies = NCSpeedLight.AssetBundleManifest.GetAllDependencies(bundleName);
            if (dependencies != null && dependencies.Length > 0)
            {
                LoadDependenciesAsync(bundleName, dependencies);
            }

            WWW download = null;
            string bundleMD5 = NCSpeedLight.AssetBundleManifest.GetAssetBundleMD5(bundleName);
            string url = AssetBundleSourceURL + bundleMD5;
            download = WWW.LoadFromCacheOrDownload(url, 0);

            m_Downloadings.Add(bundleName, download);
            m_LoadedAssetBundles.Add(bundleName, new LoadedAssetBundle(bundleName)
            {
                RefCount = 1
            });

            return false;
        }
        private static void LoadDependenciesAsync(string bundleName, string[] dependencies)
        {
            for (int i = 0; i < dependencies.Length; i++)
            {
                LoadAssetBundleAsync(dependencies[i]);
            }
        }
        private static void LoadAssetBundleSync(string bundleName)
        {
            LoadAssetBundleInternalSync(bundleName); // load current bundle.
        }
        private static bool LoadAssetBundleInternalSync(string bundleName)
        {
            LoadedAssetBundle loadedBundle = null;
            m_LoadedAssetBundles.TryGetValue(bundleName, out loadedBundle);
            if (loadedBundle != null)
            {
                loadedBundle.RefCount++;
                if (loadedBundle.IsDone)
                {
                    return true;
                }
                else
                {
                    if (m_Downloadings.ContainsKey(bundleName) == false)
                    {
                        string[] dependencies = NCSpeedLight.AssetBundleManifest.GetAllDependencies(bundleName);
                        if (dependencies != null && dependencies.Length > 0)
                        {
                            LoadDependenciesSync(bundleName, dependencies);
                        }
                    }

                    string bundleMD5 = NCSpeedLight.AssetBundleManifest.GetAssetBundleMD5(bundleName);
                    string filePath = AssetBundleSourceDirectory + bundleMD5;

                    AssetBundle bundle = AssetBundle.LoadFromFile(filePath);

                    loadedBundle.Bundle = bundle;

                }
            }
            else
            {
                string[] dependencies = NCSpeedLight.AssetBundleManifest.GetAllDependencies(bundleName);
                if (dependencies != null && dependencies.Length > 0)
                {
                    LoadDependenciesSync(bundleName, dependencies);
                }

                string bundleMD5 = NCSpeedLight.AssetBundleManifest.GetAssetBundleMD5(bundleName);
                string filePath = AssetBundleSourceDirectory + bundleMD5;
                AssetBundle bundle = null;
                bundle = AssetBundle.LoadFromFile(filePath);
                m_LoadedAssetBundles.Add(bundleName, new LoadedAssetBundle(bundleName)
                {
                    RefCount = 1,
                    Bundle = bundle
                });
            }
            return true;
        }
        private static void LoadDependenciesSync(string bundleName, string[] dependencies)
        {
            for (int i = 0; i < dependencies.Length; i++)
            {
                LoadAssetBundleSync(dependencies[i]);
            }
        }
        public static void UnloadAssetBundle(string bundleName)
        {
            if (IsResourceMode) return;
            bundleName = Utility.StringFormat("Assets/Resources/{0}", bundleName);
            UnloadAssetBundleInternal(bundleName);
        }
        private static void UnloadDependencies(string[] dependencies)
        {
            if (dependencies != null)
            {
                for (int i = 0; i < dependencies.Length; i++)
                {
                    UnloadAssetBundleInternal(dependencies[i]);
                }
            }

        }
        private static void UnloadAssetBundleInternal(string bundleName)
        {
            string error;
            LoadedAssetBundle bundle = GetLoadedAssetBundle(bundleName, out error);
            if (bundle != null && bundle.IsDone)
            {
                if (--bundle.RefCount <= 0)
                {
                    bundle.Bundle.Unload(true);
                    m_LoadedAssetBundles.Remove(bundleName);
                    Utility.Log(Utility.StringFormat("{0} has been unloaded successfully", bundleName));
                    string[] dependencies = NCSpeedLight.AssetBundleManifest.GetAllDependencies(bundleName);
                    if (dependencies != null && dependencies.Length > 0)
                    {
                        UnloadDependencies(dependencies);
                    }
                }
            }
        }
        #endregion

        #region load method

        /// <summary>
        /// 同步加载资源.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="assetPath"></param>
        /// <returns></returns>
        public static T LoadAssetSync<T>(string assetPath)
            where T : UnityEngine.Object
        {
            return LoadAssetSync(assetPath, typeof(T)) as T;
        }

        /// <summary>
        /// 同步加载资源.
        /// </summary>
        /// <param name="assetPath"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public static UnityEngine.Object LoadAssetSync(string assetPath, System.Type type)
        {
            if (IsResourceMode)
            {
                assetPath = Utility.GetAssetPathWithoutExt(assetPath);
                return Resources.Load(assetPath, type);
            }
            else
            {
                assetPath = Utility.StringFormat("Assets/Resources/{0}", assetPath);
                LoadAssetBundleSync(assetPath);
                string error = string.Empty;
                LoadedAssetBundle loadedBundle = GetLoadedAssetBundle(assetPath, out error);
                if (loadedBundle != null && loadedBundle.IsDone)
                {
                    string assetName = Utility.GetFileNameWithoutExtFromFullPath(assetPath);
                    return loadedBundle.Bundle.LoadAsset(assetName, type);
                }
                return null;
            }
        }
        public static LoadAssetOperation LoadAssetAsync(string assetPath, System.Type type, LoadAssetCallback callback = null, object callbackParam = null)
        {
            return LoadAssetAsync(assetPath, type, false, callback, callbackParam);
        }
        private static LoadAssetOperation LoadAssetAsync(string assetPath, System.Type type, bool preferential, LoadAssetCallback callback = null, object callbackParam = null)
        {
            string assetName = Utility.GetFileNameWithoutExtFromFullPath(assetPath);
            return LoadAssetAsync(assetPath, assetName, type, preferential, callback, callbackParam);
        }
        private static LoadAssetOperation LoadAssetAsync(string assetPath, string assetName, System.Type type, LoadAssetCallback callback = null, object callbackParam = null)
        {
            return LoadAssetAsync(assetPath, assetName, type, false, callback, callbackParam);
        }
        private static LoadAssetOperation LoadAssetAsync(string assetPath, string assetName, System.Type type, bool preferential, LoadAssetCallback callback = null, object callbackParam = null)
        {
            LoadAssetOperation operation = null;
            if (IsResourceMode)
            {
                assetPath = Utility.GetAssetPathWithoutExt(assetPath);
                operation = new ResourceLoadAssetOperation() { AssetName = assetName, AssetBundleName = assetPath, AssetType = type };
                operation.Callback = callback;
                operation.CallbackParam = callbackParam;
                if (preferential)
                {
                    m_WaitingOperations.Insert(0, operation);
                }
                else
                {
                    m_WaitingOperations.Add(operation);
                }
            }
            else
            {
                assetPath = Utility.StringFormat("Assets/Resources/{0}", assetPath);
                LoadAssetBundleAsync(assetPath);
                operation = new AssetBundleLoadAssetOperation(assetPath, assetName, type);
                operation.Callback = callback;
                operation.CallbackParam = callbackParam;
                if (preferential)
                {
                    m_WaitingOperations.Insert(0, operation);
                }
                else
                {
                    m_WaitingOperations.Add(operation);
                }
            }
            return operation;
        }
        public static LoadOperation LoadLevelAsync(string bundleName, string levelName, bool isAdditive)
        {
            bundleName = Utility.StringFormat("Assets/Resources/{0}", bundleName);
            Utility.Log(Utility.StringFormat("Loading level {0} at {1}", levelName, bundleName));
            LoadOperation operation = null;
            if (IsResourceMode)
            {
                operation = new LoadLevelSimulationOperation(levelName, isAdditive);
            }
            else
            {
                LoadAssetBundleAsync(levelName);
                operation = new AssetBundleLoadLevelOperation(bundleName, levelName, isAdditive);
                m_InProgressOperations.Add(operation);
            }
            return operation;
        }
        #endregion

        #region other functions
        /// <summary>
        /// 判断某个资源是否正在加载
        /// </summary>
        /// <param name="bundleName"></param>
        /// <param name="assetName"></param>
        /// <returns></returns>
        public static LoadAssetOperation IsInProgress(string bundleName, string assetName)
        {
            if (m_InProgressOperations != null && m_InProgressOperations.Count > 0)
            {
                for (int i = 0; i < m_InProgressOperations.Count; i++)
                {
                    LoadAssetOperation operation = m_InProgressOperations[i] as LoadAssetOperation;
                    if (operation == null) continue;
                    if (IsResourceMode)
                    {
                        if (string.IsNullOrEmpty(operation.AssetBundleName)) continue;
                        if (operation.AssetBundleName.Equals(bundleName)) return operation;
                    }
                    else
                    {
                        if (string.IsNullOrEmpty(operation.AssetBundleName) || string.IsNullOrEmpty(operation.AssetName)) continue;
                        if (operation.AssetBundleName.Equals(bundleName) && operation.AssetName.Equals(assetName)) return operation;
                    }
                }
            }
            if (m_WaitingOperations != null && m_WaitingOperations.Count > 0)
            {
                for (int i = 0; i < m_WaitingOperations.Count; i++)
                {
                    LoadAssetOperation operation = m_WaitingOperations[i] as LoadAssetOperation;
                    if (operation == null) continue;
                    if (IsResourceMode)
                    {
                        if (string.IsNullOrEmpty(operation.AssetBundleName)) continue;
                        if (operation.AssetBundleName.Equals(bundleName)) return operation;
                    }
                    else
                    {
                        if (string.IsNullOrEmpty(operation.AssetBundleName) || string.IsNullOrEmpty(operation.AssetName)) continue;
                        if (operation.AssetBundleName.Equals(bundleName) && operation.AssetName.Equals(assetName)) return operation;
                    }
                }
            }
            return null;
        }
        #endregion

        #endregion
    }
}
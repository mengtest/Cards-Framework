/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: EditorHelper.cs
			// Describle:  编辑器工具  
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;
using UnityEditor;
using System.IO;
using System.Collections.Generic;
using System;
using ICSharpCode.SharpZipLib.Zip;
using UnityEditor.Callbacks;

namespace NCSpeedLight
{
    public static class EditorHelper
    {
        public static bool DrawHeader(string text) { return DrawHeader(text, text, false, false); }
        public static bool DrawHeader(string text, string key) { return DrawHeader(text, key, false, false); }
        public static bool DrawHeader(string text, bool detailded) { return DrawHeader(text, text, detailded, !detailded); }
        public static bool DrawHeader(string text, string key, bool forceOn, bool minimalistic)
        {
            bool state = EditorPrefs.GetBool(key, true);

            if (!minimalistic) GUILayout.Space(3f);
            if (!forceOn && !state) GUI.backgroundColor = new Color(0.8f, 0.8f, 0.8f);
            GUILayout.BeginHorizontal();
            GUI.changed = false;

            if (minimalistic)
            {
                if (state) text = "\u25BC" + (char)0x200a + text;
                else text = "\u25BA" + (char)0x200a + text;

                GUILayout.BeginHorizontal();
                GUI.contentColor = EditorGUIUtility.isProSkin ? new Color(1f, 1f, 1f, 0.7f) : new Color(0f, 0f, 0f, 0.7f);
                if (!GUILayout.Toggle(true, text, "PreToolbar2", GUILayout.MinWidth(20f))) state = !state;
                GUI.contentColor = Color.white;
                GUILayout.EndHorizontal();
            }
            else
            {
                text = "<b><size=11>" + text + "</size></b>";
                if (state) text = "\u25BC " + text;
                else text = "\u25BA " + text;
                if (!GUILayout.Toggle(true, text, "dragtab", GUILayout.MinWidth(20f))) state = !state;
            }

            if (GUI.changed) EditorPrefs.SetBool(key, state);

            if (!minimalistic) GUILayout.Space(2f);
            GUILayout.EndHorizontal();
            GUI.backgroundColor = Color.white;
            if (!forceOn && !state) GUILayout.Space(3f);
            return state;
        }

        private static bool EndHorizontal = false;
        public static void BeginContents() { BeginContents(false); }
        public static void BeginContents(bool minimalistic)
        {
            if (!minimalistic)
            {
                EndHorizontal = true;
                GUILayout.BeginHorizontal();
                EditorGUILayout.BeginHorizontal("AS TextArea", GUILayout.MinHeight(10f));
            }
            else
            {
                EndHorizontal = false;
                EditorGUILayout.BeginHorizontal(GUILayout.MinHeight(10f));
                GUILayout.Space(10f);
            }
            GUILayout.BeginVertical();
            GUILayout.Space(2f);
        }
        public static void EndContents()
        {
            try
            {
                GUILayout.Space(3f);
                GUILayout.EndVertical();
                EditorGUILayout.EndVertical();
                if (EndHorizontal)
                {
                    GUILayout.Space(3f);
                    GUILayout.EndHorizontal();
                }
                GUILayout.Space(3f);

            }
            catch { }

        }

        public static string MetaFileName = "Meta.xml";

        public static string NormalizePath(string path)
        {
            return path.Replace("\\", "/");
        }

        public static string GetRelativePath(string assetPath)
        {
            return assetPath.Substring("Assets/Resources/".Length);
        }

        public static string LoadFile(String fileName)
        {
            if (File.Exists(fileName))
                using (StreamReader sr = File.OpenText(fileName))
                    return sr.ReadToEnd();
            else
                return string.Empty;
        }

        public static string ReplaceFirst(this string input, string oldValue, string newValue, int startAt = 0)
        {
            int pos = input.IndexOf(oldValue, startAt);
            if (pos < 0)
            {
                return input;
            }
            return string.Concat(input.Substring(0, pos), newValue, input.Substring(pos + oldValue.Length));
        }

        public static void CollectAssets(string directory, List<string> outfiles)
        {
            if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = NormalizePath(files[i]);
                    if (file.EndsWith(".meta") || file.EndsWith(".cs") || file.EndsWith(".js"))
                    {
                        continue;
                    }
                    file = file.Substring(Application.dataPath.Length + 1);
                    file = "Assets/" + file;
                    outfiles.Add(file);
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectAssets(dirs[i], outfiles);
                }
            }
            else if (File.Exists(directory))
            {
                directory = directory.Substring(Application.dataPath.Length + 1);
                directory = "Assets/" + directory;
                outfiles.Add(directory);
            }
        }

        public static Dictionary<string, List<string>> CollectAssetDependency(List<string> sourceAssets)
        {
            Dictionary<string, List<string>> dependencies = new Dictionary<string, List<string>>();
            for (int i = 0; i < sourceAssets.Count; i++)
            {
                string sourceAsset = sourceAssets[i];
                string[] deps = AssetDatabase.GetDependencies(sourceAsset);
                List<string> depList = new List<string>();
                for (int j = 0; j < deps.Length; j++)
                {
                    string dep = deps[j];
                    if (dep.EndsWith(".cs")) continue;
                    depList.Add(dep);
                }
                dependencies.Add(sourceAsset, depList);
            }
            return dependencies;
        }

        public static string GetPlatformName(RuntimePlatform platform)
        {
            switch (platform)
            {
                case RuntimePlatform.Android:
                    return "Android";
                case RuntimePlatform.IPhonePlayer:
                    return "iOS";
                case RuntimePlatform.WebGLPlayer:
                    return "WebGL";
                case RuntimePlatform.WindowsPlayer:
                    return "Windows";
                case RuntimePlatform.OSXPlayer:
                    return "OSX";
                case RuntimePlatform.WindowsEditor:
                case RuntimePlatform.OSXEditor:
#if UNITY_ANDROID
                    return "Android";
#elif UNITY_IPHONE
            return "iOS";
#else
                    return "Windows";
#endif
                default:
                    return null;
            }
        }

        public static void Unzip(string path, string to)
        {
            //这是根目录的路径  
            string dirPath = to;
            //ZipEntry：文件条目 就是该目录下所有的文件列表(也就是所有文件的路径)  
            ZipEntry zip = null;
            //输入的所有的文件流都是存储在这里面的  
            ZipInputStream zipInStream = null;
            //读取文件流到zipInputStream  
            zipInStream = new ZipInputStream(File.OpenRead(path));
            //循环读取Zip目录下的所有文件  
            while ((zip = zipInStream.GetNextEntry()) != null)
            {
                Unzip(zip, zipInStream, dirPath);
            }
            try
            {
                zipInStream.Close();
            }
            catch (Exception ex)
            {
                Debug.Log("UnZip Error");
                throw ex;
            }
        }

        private static void Unzip(ZipEntry zip, ZipInputStream zipInStream, string to)
        {
            try
            {
                //文件名不为空  
                if (!string.IsNullOrEmpty(zip.Name))
                {
                    string filePath = to;
                    filePath += ("/" + zip.Name);

                    //如果是一个新的文件路径　这里需要创建这个文件路径  
                    if (IsDirectory(filePath))
                    {
                        if (!Directory.Exists(filePath))
                        {
                            Directory.CreateDirectory(filePath);
                        }
                    }
                    else
                    {
                        FileStream fs = null;
                        //当前文件夹下有该文件  删掉  重新创建  
                        if (File.Exists(filePath))
                        {
                            File.Delete(filePath);
                        }
                        fs = File.Create(filePath);
                        int size = 2048;
                        byte[] data = new byte[2048];
                        //每次读取2MB  直到把这个内容读完  
                        while (true)
                        {
                            size = zipInStream.Read(data, 0, data.Length);
                            //小于0， 也就读完了当前的流  
                            if (size > 0)
                            {
                                fs.Write(data, 0, size);
                            }
                            else
                            {
                                break;
                            }
                        }
                        fs.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Debug.Log("UnZip Error");
                throw e;
            }
        }

        private static bool IsDirectory(string path)
        {

            if (path[path.Length - 1] == '/')
            {
                return true;
            }
            return false;
        }
    }

    public class DirectoryWatcher
    {
        private static readonly Dictionary<string, FileSystemWatcher> watchers = new Dictionary<string, FileSystemWatcher>();

        /// <summary>
        /// 监视一个目录，如果有修改则触发事件函数, 包含其子目录！
        /// <para>使用更大的buffer size确保及时触发事件</para>
        /// <para>不用includesubdirect参数，使用自己的子目录扫描，更稳健</para>
        /// </summary>
        /// <param name="directory"></param>
        /// <param name="handler"></param>
        /// <returns></returns>
        public DirectoryWatcher(string directory, FileSystemEventHandler handler)
        {
            CreateWatch(directory, handler);
        }

        void CreateWatch(string directory, FileSystemEventHandler handler)
        {
            if (watchers.ContainsKey(directory))
            {
                watchers[directory].Dispose();
                watchers[directory] = null;
            }

            if (!Directory.Exists(directory)) return;

            var watcher = new FileSystemWatcher();
            watcher.IncludeSubdirectories = false;//includeSubdirectories;
            watcher.Path = directory;
            watcher.NotifyFilter = NotifyFilters.LastWrite;
            watcher.Filter = "*";
            watcher.Changed += handler;
            watcher.EnableRaisingEvents = true;
            watcher.InternalBufferSize = 10240;
            //return watcher;
            watchers[directory] = watcher;

            foreach (var childDirPath in Directory.GetDirectories(directory))
            {
                CreateWatch(childDirPath, handler);
            }
        }
    }

    [InitializeOnLoad]
    public class EditorEventCatcher
    {
        /// <summary>
        /// Editor update事件
        /// </summary>
        private static System.Action _OnEditorUpdateEvent;
        public static System.Action OnEditorUpdateEvent
        {
            get
            {
                return _OnEditorUpdateEvent;
            }
            set
            {
                _OnEditorUpdateEvent = value;
                if (IsInited && _OnEditorUpdateEvent != null)
                    _OnEditorUpdateEvent();
            }
        }
        /// <summary>
        /// 将要播放游戏事件
        /// </summary>
        private static System.Action _OnWillPlayEvent;

        public static System.Action OnWillPlayEvent
        {
            get { return _OnWillPlayEvent; }
            set
            {
                _OnWillPlayEvent = value;
                //if (IsInited && _OnWillPlayEvent != null)
                //    _OnWillPlayEvent();
            }
        }

        /// <summary>
        /// 进入播放时刻事件
        /// </summary>
        private static System.Action _OnBeginPlayEvent;

        public static System.Action OnBeginPlayEvent
        {
            get { return _OnBeginPlayEvent; }
            set
            {
                _OnBeginPlayEvent = value;
                //if (IsInited && _OnBeginPlayEvent != null)
                //    _OnBeginPlayEvent();
            }
        }

        /// <summary>
        /// 将要停止游戏 (不包括暂停哦)
        /// </summary>
        private static System.Action _OnWillStopEvent;
        public static System.Action OnWillStopEvent
        {
            get { return _OnWillStopEvent; }
            set
            {
                _OnWillStopEvent = value;
                //if (IsInited && _OnWillStopEvent != null)
                //    _OnWillStopEvent();
            }
        }

        /// <summary>
        /// 程序集锁定事件，事件中可以进行DLL的注入修改
        /// </summary>
        private static System.Action _OnLockingAssembly;
        public static System.Action OnLockingAssembly
        {
            get { return _OnLockingAssembly; }
            set
            {
                _OnLockingAssembly = value;
                if (IsInited && _OnLockingAssembly != null)
                    _OnLockingAssembly();
            }
        }


        /// <summary>
        /// 编译前事件，比较特殊的处理，配合了PostBuildProcess和PostBuildScene
        /// </summary>
        public static Action OnBeforeBuildPlayerEvent;


        /// <summary>
        /// 编译完成后事件
        /// </summary>
        private static System.Action<BuildTarget, string> _OnPostBuildPlayerEvent;
        public static System.Action<BuildTarget, string> OnPostBuildPlayerEvent
        {
            get { return _OnPostBuildPlayerEvent; }
            set
            {
                _OnPostBuildPlayerEvent = value;
            }
        }
        /// <summary>
        /// Save Scene事件
        /// </summary>
        internal static System.Action _onSaveSceneEvent;
        public static System.Action OnSaveSceneEvent
        {
            get
            {
                return _onSaveSceneEvent;
            }
            set
            {
                _onSaveSceneEvent = value;
            }
        }

        /// <summary>
        /// 是否静态构造完成
        /// </summary>
        public static bool IsInited { get; private set; }
        static EditorEventCatcher()
        {
            EditorApplication.update -= OnEditorUpdate;
            EditorApplication.update += OnEditorUpdate;

            SceneView.onSceneGUIDelegate -= OnSceneViewGUI;
            SceneView.onSceneGUIDelegate += OnSceneViewGUI;

            EditorApplication.playmodeStateChanged -= OnPlayModeStateChanged;
            EditorApplication.playmodeStateChanged += OnPlayModeStateChanged;



            if (OnLockingAssembly != null)
            {
                EditorApplication.LockReloadAssemblies();
                OnLockingAssembly();
                EditorApplication.UnlockReloadAssemblies();
            }


            IsInited = true;
        }

        /// <summary>
        /// For BeforeBuildEvent, Because in Unity:   PostProcessScene -> PostProcessScene ->.... PostProcessScene -> PostProcessBuild
        /// When true, waiting PostProcessBuild to revert to false
        /// </summary>
        private static bool _beforeBuildFlag = false;

        [PostProcessScene]
        private static void OnProcessScene()
        {
            if (!_beforeBuildFlag && !EditorApplication.isPlayingOrWillChangePlaymode)
            {
                _beforeBuildFlag = true;

                if (OnBeforeBuildPlayerEvent != null)
                    OnBeforeBuildPlayerEvent();
            }
        }
        /// <summary>
        /// Unity标准Build后处理函数
        /// </summary>
        [PostProcessBuild()]
        private static void OnPostBuildPlayer(BuildTarget target, string pathToBuiltProject)
        {
            if (OnPostBuildPlayerEvent != null)
            {
                OnPostBuildPlayerEvent(target, pathToBuiltProject);
            }

            UnityEngine.Debug.Log(string.Format("Success build ({0}) : {1}", target, pathToBuiltProject));
        }

        /// <summary>
        /// 播放状态改变，进行一些编译性的东西, 比如点击播放，编译文件、编译脚本、编译配置等
        /// </summary>
        private static void OnPlayModeStateChanged()
        {
            if (EditorApplication.isPlayingOrWillChangePlaymode)
            {
                if (!EditorApplication.isPlaying) // means Will Change to Playmode
                {
                    if (OnWillPlayEvent != null)
                    {
                        OnWillPlayEvent();
                    }
                }
                else
                {
                    if (OnBeginPlayEvent != null)
                    {
                        OnBeginPlayEvent();
                    }
                }
            }
            else
            {
                if (EditorApplication.isPlaying)
                {
                    if (OnWillStopEvent != null)
                    {
                        OnWillStopEvent();
                    }
                }
            }
        }

        /// <summary>
        /// 捕捉编译过程中、同时播放游戏的状态，强制暂停，避免运行出错
        /// </summary>
        /// <param name="view"></param>
        //static void OnSceneViewGUI(SceneView view)
        static void OnEditorUpdate()
        {
            CheckComplie();
            if (OnEditorUpdateEvent != null)
            {
                OnEditorUpdateEvent();
            }
        }

        private static void OnSceneViewGUI(SceneView sceneview)
        {
            CheckComplie();
        }

        static void CheckComplie()
        {
            // 检查编译中，立刻暂停游戏！
            if (EditorApplication.isCompiling)
            {
                if (EditorApplication.isPlaying)
                {
                    UnityEngine.Debug.Log("Force Stop Play, because of Compiling.");
                    EditorApplication.isPlaying = false;
                }
            }
        }
    }

    internal class SaveSceneAssetModificationProcessor : UnityEditor.AssetModificationProcessor
    {
        public static string[] OnWillSaveAssets(string[] paths)
        {
            foreach (string path in paths)
            {
                if (path.Contains(".unity"))
                {
                    //scenePath = Path.GetDirectoryName(path);
                    //sceneName = Path.GetFileNameWithoutExtension(path);
                    if(EditorEventCatcher._onSaveSceneEvent!= null)
                    {
                        EditorEventCatcher._onSaveSceneEvent();
                    }
                }
            }
            return paths;
        }
    }

    [InitializeOnLoad]
    public class EditorLoom
    {
        /// <summary>
        /// 用于非主线程里执行主线程的函数
        /// </summary>
        internal static Queue<Action> mainThreadActions = new Queue<Action>();

        static EditorLoom()
        {
            EditorEventCatcher.OnEditorUpdateEvent -= OnEditorUpdate;
            EditorEventCatcher.OnEditorUpdateEvent += OnEditorUpdate;
        }

        /// <summary>
        /// 捕获Unity Editor update事件
        /// </summary>
        private static void OnEditorUpdate()
        {
            // 主线程委托
            while (mainThreadActions.Count > 0)
            {
                var action = mainThreadActions.Dequeue();
                if (action != null) action();
            }
        }

        /// <summary>
        /// 异步线程回到主线程进行回调
        /// </summary>
        /// <param name="action"></param>
        public static void QueueOnMainThread(Action action)
        {
            mainThreadActions.Enqueue(action);
        }
    }
}

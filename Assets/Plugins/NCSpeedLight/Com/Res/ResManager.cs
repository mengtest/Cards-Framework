/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: ResManager.cs
            // Describle:  
            // Created By:  Wells Hsu
            // Date&Time:  2015/3/25 12:15:18
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void LoadAssetCallback(UnityEngine.Object obj, ResLoadParam param);
public delegate void PostResManagerInitializedDelegate();

public class ResLoadParam
{
    public string AssetPath;
}
public class ResLoadParamEX<T> : ResLoadParam
{
    private T m_Data;
    public T Data
    {
        get { return m_Data; }
        set { m_Data = value; }
    }
    public ResLoadParamEX(T obj)
    {
        m_Data = obj;
    }
}
class AAA
{

}
public class ResManager : MonoBehaviour
{
    #region [Fields]

    private static List<LoadOperation> m_InProgressOperations = new List<LoadOperation>();

    private static List<LoadOperation> m_WaitingOperations = new List<LoadOperation>();

    private static List<string> m_KeysToRemove = new List<string>();

    private static Dictionary<string, WWW>.Enumerator m_DownloadingEnumerator;

    public static event PostResManagerInitializedDelegate PostResManagerInitialized;

    public static string AssetBundleSourceURL;

    public static string AssetBundleSourceDirectory;

    public static ResManager Instance { set; get; }
    public static bool IsInitialized { get; set; }

    #endregion

    #region [Functions]

    #region monobehaviour and initialize
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
                yield return StartCoroutine(operation);
                try
                {
                    operation.Finish(operation.GetAsset());
                }
                catch (Exception e)
                {
                    LoadAssetOperation loadAssetOperation = operation as LoadAssetOperation;
                    if (loadAssetOperation != null)
                    {
                        if (string.IsNullOrEmpty(loadAssetOperation.AssetPath) == false)
                        {
                            Helper.LogError(Helper.StringFormat("Looper success,but some exception occuried, Task key: {0}, Exception: {1}, Track: {2}", loadAssetOperation.AssetPath, e.Message, e.StackTrace));
                        }
                        else
                        {
                            Helper.LogError(Helper.StringFormat("Looper success,but some exception occuried, Exception: {0}, Track: {1}", e.Message, e.StackTrace));
                        }
                    }
                }
            }
            yield return null;
        }
    }
    void Update()
    {
        for (int i = 0; i < m_InProgressOperations.Count;)
        {
            if (m_InProgressOperations[i].Update() == false)
            {
                m_InProgressOperations.RemoveAt(i);
            }
            else
            {
                i++;
            }
        }
    }
    public static void Initialize()
    {
        if (IsInitialized)
        {
            Helper.LogWarning("ResManager has already been initialized");
            return;
        }
        GameObject go = null;
        go = new GameObject("ResManager");
        if (Game.Instance)
        {
            go.transform.SetParent(Game.Instance.transform);
        }
        go.SetActive(true);
        go.AddComponent<ResManager>();
        IsInitialized = true;
        if (PostResManagerInitialized != null)
        {
            PostResManagerInitialized();
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

    public static UnityEngine.Object LoadAssetSync(string assetPath, string typename)
    {
        Type assetType = Types.GetType(typename, "UnityEngine.dll");
        return LoadAssetSync(assetPath, assetType);
    }

    /// <summary>
    /// 同步加载资源.
    /// </summary>
    /// <param name="assetPath"></param>
    /// <param name="type"></param>
    /// <returns></returns>
    public static UnityEngine.Object LoadAssetSync(string assetPath, System.Type type)
    {
        return Resources.Load(assetPath, type);
    }

    /// <summary>
    /// 异步加载资源.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="assetPath"></param>
    /// <param name="callback"></param>
    /// <param name="callbackParam"></param>
    /// <returns></returns>
    public static LoadAssetOperation LoadAssetAsync<T>(string assetPath, LoadAssetCallback callback = null, object callbackParam = null)
    {
        return LoadAssetAsync(assetPath, typeof(T), false, callback, callbackParam);
    }

    /// <summary>
    /// 异步加载资源.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="assetPath"></param>
    /// <param name="preferential"></param>
    /// <param name="callback"></param>
    /// <param name="callbackParam"></param>
    /// <returns></returns>
    public static LoadAssetOperation LoadAssetAsync<T>(string assetPath, bool preferential, LoadAssetCallback callback = null, object callbackParam = null)
    {
        return LoadAssetAsync(assetPath, typeof(T), preferential, callback, callbackParam);
    }

    /// <summary>
    /// 异步加载资源.
    /// </summary>
    /// <param name="assetPath"></param>
    /// <param name="type"></param>
    /// <param name="callback"></param>
    /// <param name="callbackParam"></param>
    /// <returns></returns>
    public static LoadAssetOperation LoadAssetAsync(string assetPath, System.Type type, LoadAssetCallback callback = null, object callbackParam = null)
    {
        return LoadAssetAsync(assetPath, type, false, callback, callbackParam);
    }

    /// <summary>
    /// 异步加载资源.
    /// </summary>
    /// <param name="assetPath"></param>
    /// <param name="type"></param>
    /// <param name="preferential"></param>
    /// <param name="callback"></param>
    /// <param name="callbackParam"></param>
    /// <returns></returns>
    public static LoadAssetOperation LoadAssetAsync(string assetPath, System.Type type, bool preferential, LoadAssetCallback callback = null, object callbackParam = null)
    {
        LoadAssetOperation operation = new LoadAssetOperation() { AssetPath = assetPath, AssetType = type };
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
        return operation;
    }

    public static LoadAssetOperation InProgress(string assetPath)
    {
        if (m_InProgressOperations != null && m_InProgressOperations.Count > 0)
        {
            for (int i = 0; i < m_InProgressOperations.Count; i++)
            {
                LoadAssetOperation operation = m_InProgressOperations[i] as LoadAssetOperation;
                if (operation == null) continue;
                if (string.IsNullOrEmpty(operation.AssetPath)) continue;
                if (operation.AssetPath.Equals(assetPath)) return operation;
            }
        }
        if (m_WaitingOperations != null && m_WaitingOperations.Count > 0)
        {
            for (int i = 0; i < m_WaitingOperations.Count; i++)
            {
                LoadAssetOperation operation = m_WaitingOperations[i] as LoadAssetOperation;
                if (operation == null) continue;
                if (string.IsNullOrEmpty(operation.AssetPath)) continue;
                if (operation.AssetPath.Equals(assetPath)) return operation;
            }
        }
        return null;
    }
    #endregion

    #endregion
}

///*----------------------------------------------------------------
//            // Copyright © 2014-2017 NCSpeedLight
//            // 
//            // FileName: ResLoadAssetOperation.cs
//            // Describle:  
//            // Created By:  Wells Hsu
//            // Date&Time:  2015/3/25 12:15:18
//            // Modify History:
//            //
////----------------------------------------------------------------*/

//using UnityEngine;
//using System.Collections;
//public abstract class LoadOperation : IEnumerator
//{
//    public UnityEngine.Object LoadedAsset { get; set; }
//    public virtual UnityEngine.Object GetAsset() { return null; }
//    public virtual T GetAsset<T>() where T : UnityEngine.Object { return default(T); }
//    public LoadAssetCallback Callback { get; set; }
//    public object CallbackParam { get; set; }
//    public object Current { get { return null; } set { } }
//    public bool MoveNext() { return !IsDone(); }
//    public void Reset() { }
//    public abstract bool Update();
//    public abstract bool IsDone();
//    public virtual void Finish(UnityEngine.Object obj = null)
//    {
//        if (Callback != null)
//        {
//            if (obj != null)
//            {
//                Callback(obj, CallbackParam as ResLoadParam);
//            }
//            else
//            {
//                Callback(GetAsset(), CallbackParam as ResLoadParam);
//            }
//        }
//    }
//    public virtual void Execute() { }
//}
//public class LoadAssetOperation : LoadOperation
//{
//    public string AssetPath;
//    public System.Type AssetType;
//    private ResourceRequest m_Request;
//    private bool m_Error = false;
//    public override T GetAsset<T>()
//    {
//        if (m_Request != null && m_Request.isDone)
//            return m_Request.asset as T;
//        else
//            return LoadedAsset as T;
//    }
//    public override Object GetAsset()
//    {
//        if (m_Request != null && m_Request.isDone)
//            return m_Request.asset;
//        else
//            return LoadedAsset;
//    }
//    public override void Execute()
//    {
//        if (string.IsNullOrEmpty(AssetPath))
//        {
//            m_Error = true;
//        }
//        m_Request = Resources.LoadAsync(AssetPath, AssetType);
//    }
//    public override bool IsDone()
//    {
//        if (m_Error)
//        {
//            return true;
//        }
//        if (m_Request != null)
//        {
//            return m_Request.isDone;
//        }
//        return false;
//    }
//    public override bool Update()
//    {
//        if (IsDone())
//        {
//            return false;
//        }
//        return true;
//    }
//}

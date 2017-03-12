/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: AssetBundleLoadAssetOperation.cs
           // Describle:  
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using UnityEngine;

namespace NCSpeedLight
{
    public class AssetBundleLoadAssetOperation : LoadAssetOperation
    {
        private string m_DownloadingError;
        private AssetBundleRequest m_Request = null;
        public AssetBundleLoadAssetOperation(string bundleName, string assetName, System.Type type)
        {
            AssetBundleName = bundleName;
            AssetName = assetName;
            AssetType = type;
        }
        public override T GetAsset<T>()
        {
            if (m_Request != null && m_Request.isDone)
                return m_Request.asset as T;
            else
                return null;
        }
        public override Object GetAsset()
        {
            if (m_Request != null && m_Request.isDone)
                return m_Request.asset;
            else
                return null;
        }
        public override bool Update()
        {
            if (m_Request != null)
                return false;
            LoadedAssetBundle bundle = ResManager.AssemblyAssetBundle(AssetBundleName, out m_DownloadingError);
            if (bundle != null)
            {
                m_Request = bundle.Bundle.LoadAssetAsync(AssetName, AssetType);
            }
            return true;
        }
        public override bool IsDone()
        {
            if (string.IsNullOrEmpty(m_DownloadingError) == false) // load failed.
            {
                return true;
            }
            if (m_Request == null)
            {
                return false;
            }
            if (m_Request != null)
            {
                if (string.IsNullOrEmpty(AssetName) || AssetName.Equals("NULL") || AssetName.Equals("null"))
                {
                    return true;
                }
            }
            return m_Request != null && m_Request.isDone;
        }
    }
}

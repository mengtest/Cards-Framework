﻿/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: ResourceLoadAssetOperation.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

namespace EasyAB
{
    public class ResourceLoadAssetOperation : LoadAssetOperation
    {
        private ResourceRequest m_Request;
        private bool m_Error = false;
        public override T GetAsset<T>()
        {
            if (m_Request != null && m_Request.isDone)
                return m_Request.asset as T;
            else
                return LoadedAsset as T;
        }
        public override Object GetAsset()
        {
            if (m_Request != null && m_Request.isDone)
                return m_Request.asset;
            else
                return LoadedAsset;
        }
        public override void Execute()
        {
            if (string.IsNullOrEmpty(AssetBundleName))
            {
                m_Error = true;
            }
            m_Request = Resources.LoadAsync(AssetBundleName, AssetType);
        }
        public override bool IsDone()
        {
            if (m_Error)
            {
                return true;
            }
            if (m_Request != null)
            {
                return m_Request.isDone;
            }
            return false;
        }
        public override bool Update()
        {
            if (IsDone())
            {
                return false;
            }
            return true;
        }
    }
}

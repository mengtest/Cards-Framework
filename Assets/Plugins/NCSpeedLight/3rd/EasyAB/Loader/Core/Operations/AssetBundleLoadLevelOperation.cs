/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: AssetBundleLoadLevelOperation.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

namespace EasyAB
{
    public class AssetBundleLoadLevelOperation : LoadOperation
    {
        public string AssetBundleName;
        public string LevelName;
        public bool Additive;
        public string DownloadingError;
        public AsyncOperation Request;
        public AssetBundleLoadLevelOperation(string assetBundleName, string levelName, bool additive)
        {
            AssetBundleName = assetBundleName;
            LevelName = levelName;
            Additive = additive;
        }
        public override bool Update()
        {
            if (Request != null)
                return false;
            LoadedAssetBundle bundle = ResManager.AssemblyAssetBundle(AssetBundleName, out DownloadingError);
            if (bundle != null)
            {
                if (Additive)
                    Request = Application.LoadLevelAdditiveAsync(LevelName);
                else
                    Request = Application.LoadLevelAsync(LevelName);
                return false;
            }
            else
                return true;
        }
        public override bool IsDone()
        {
            if (Request == null && DownloadingError != null)
            {
                Utility.LogError(DownloadingError);
                return true;
            }
            return Request != null && Request.isDone;
        }
    }
}

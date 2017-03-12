/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LoadAssetOperation.cs
           // Describle:  
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

namespace NCSpeedLight
{
    public abstract class LoadAssetOperation : LoadOperation
    {
        public string AssetBundleName;
        public string AssetName;
        public System.Type AssetType;
    }
}

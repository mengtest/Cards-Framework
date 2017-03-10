/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: LoadAssetOperation.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

namespace EasyAB
{
    public abstract class LoadAssetOperation : LoadOperation
    {
        public string AssetBundleName;
        public string AssetName;
        public System.Type AssetType;
    }
}

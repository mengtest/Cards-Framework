/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: AssetBundleTagBuilder.cs
			// Describle:   build asset tags.
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;
using System.Collections.Generic;
using System.IO;
using UnityEditor;

namespace NCSpeedLight
{
    public class TagBuilder : Builder
    {
        public TagBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }
        public override void Build()
        {
            ClearAssetBundleTag();
            SetupAssetBundleTag();
        }

        private void ClearAssetBundleTag()
        {
            List<string> assets = new List<string>();
            EditorHelper.CollectAssets(Constants.RESOURCE_WORKSPACE, assets);
            for (int i = 0; i < assets.Count; i++)
            {
                string asset = assets[i];
                AssetImporter assetImporter = AssetImporter.GetAtPath(asset);
                if (assetImporter)
                {
                    assetImporter.SetAssetBundleNameAndVariant(string.Empty, string.Empty);
                }
            }
            AssetDatabase.Refresh();
        }
        private void SetupAssetBundleTag()
        {
            List<string> sourceAssets = new List<string>();
            List<string> doneAssets = new List<string>();
            EditorHelper.CollectAssets(Constants.BUNDLE_ASSET_WORKSPACE, sourceAssets);
            for (int i = 0; i < sourceAssets.Count; i++)
            {
                string asset = sourceAssets[i];
                AssetImporter assetImporter = AssetImporter.GetAtPath(asset);
                asset = asset.Substring("Assets/Resources/".Length);
                asset = asset.Substring(0, asset.LastIndexOf("/"));
                asset = asset.Replace("\\", "/");
                asset = asset.Replace("/", "_");
                asset += Constants.ASSET_BUNDLE_FILE_EXTENSION;
                if (assetImporter)
                {
                    assetImporter.SetAssetBundleNameAndVariant(asset, string.Empty);
                }
            }
            Dictionary<string, List<string>> dependAssets = EditorHelper.CollectAssetDependency(sourceAssets);
            Dictionary<string, List<string>>.Enumerator ir = dependAssets.GetEnumerator();
            for (int i = 0; i < dependAssets.Count; i++)
            {
                ir.MoveNext();
                KeyValuePair<string, List<string>> kvp = ir.Current;
                List<string> assets = kvp.Value;
                for (int j = 0; j < assets.Count; j++)
                {
                    string asset = assets[j];
                    if (doneAssets.Contains(asset) == false)
                    {
                        doneAssets.Add(asset);
                        AssetImporter assetImporter = AssetImporter.GetAtPath(asset);
                        asset = asset.Substring("Assets/Resources/".Length);
                        asset = asset.Substring(0, asset.LastIndexOf("/"));
                        asset = asset.Replace("\\", "/");
                        asset = asset.Replace("/", "_");
                        asset += Constants.ASSET_BUNDLE_FILE_EXTENSION;
                        if (assetImporter)
                        {
                            assetImporter.SetAssetBundleNameAndVariant(asset, string.Empty);
                        }
                    }
                }
            }
            AssetDatabase.Refresh();
        }
    }
}

/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: AssetBuilder.cs
			// Describle:   build assets to bundles.
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/
#pragma warning disable 0618

using System;
using System.IO;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace NCSpeedLight
{
    public class AssetBuilder : Builder
    {
        private FileManifest preBuildManifest;
        private FileManifest postBuildManifest;
        public AssetBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }
        public override void Build()
        {
            OnPreBuild();
            PrepareDirectory();
            ClearAssetBundleTag();
            SetupAssetBundleTag();
            ProcessBuild();
            GenerateManifest();
            CaculateDiffer();
            OnPostBuild();
        }
        public override void OnPreBuild()
        {
            base.OnPreBuild();
            Caching.CleanCache();
            preBuildManifest = new FileManifest(Constants.BUILD_ASSET_BUNDLE_PATH, null, Constants.ASSET_MANIFEST_FILE);
            preBuildManifest.Initialize();
        }
        public override void OnPostBuild()
        {
            base.OnPostBuild();
        }
        private void PrepareDirectory()
        {
            if (Directory.Exists(Constants.BUILD_ASSET_BUNDLE_PATH) == false)
            {
                Directory.CreateDirectory(Constants.BUILD_ASSET_BUNDLE_PATH);
            }
        }
        private void ClearAssetBundleTag()
        {
            List<string> assets = new List<string>();
            BuilderEditorUtils.CollectAssets(Constants.RESOURCE_WORKSPACE, assets);
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
            BuilderEditorUtils.CollectAssets(Constants.BUNDLE_ASSET_WORKSPACE, sourceAssets);
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
            Dictionary<string, List<string>> dependAssets = BuilderEditorUtils.CollectAssetDependency(sourceAssets);
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
        private void ProcessBuild()
        {
            BuildPipeline.BuildAssetBundles(Constants.BUILD_ASSET_BUNDLE_PATH, BuildAssetBundleOptions.None, EditorUserBuildSettings.activeBuildTarget);
        }
        private void GenerateManifest()
        {
            string abManifestFilePath = Constants.BUILD_ASSET_BUNDLE_PATH + Constants.ASSET_BUNDLE_MANIFEST_FILE;
            string manifestFilePath = Constants.BUILD_ASSET_BUNDLE_PATH + Constants.ASSET_BUNDLE_MANIFEST_FILE + ".manifest";
            string assetManifestFilePath = Constants.BUILD_ASSET_BUNDLE_PATH + Constants.ASSET_MANIFEST_FILE;
            if (File.Exists(assetManifestFilePath))
            {
                File.Delete(assetManifestFilePath);
            }
            if (File.Exists(abManifestFilePath) == false)
            {
                Helper.LogError("AssetBuilder.GenerateManifest: error caused by null ab manifest.");
                return;
            }
            FileStream fs = new FileStream(assetManifestFilePath, FileMode.OpenOrCreate);
            StreamWriter sw = new StreamWriter(fs);
            // write ab manifest file;
            string manifestMD5 = Helper.FileMD5(abManifestFilePath);
            int manifestSize = Helper.FileSize(abManifestFilePath);
            sw.WriteLine(Constants.ASSET_BUNDLE_MANIFEST_FILE + "|" + manifestMD5 + "|" + manifestSize);
            string[] lines = File.ReadAllLines(manifestFilePath);
            for (int i = 0; i < lines.Length; i++)
            {
                string line = lines[i];
                if (line.StartsWith("      Name: "))
                {
                    line = line.Replace("      Name: ", "");
                    string filePath = Constants.BUILD_ASSET_BUNDLE_PATH + line;
                    string md5 = Helper.FileMD5(filePath);
                    int size = Helper.FileSize(filePath);
                    sw.WriteLine(line + "|" + md5 + "|" + size);
                }
            }
            sw.Close();
            fs.Close();
        }
        private void CaculateDiffer()
        {
            postBuildManifest = new FileManifest(Constants.BUILD_ASSET_BUNDLE_PATH, null, Constants.ASSET_MANIFEST_FILE);
            postBuildManifest.Initialize();
            FileManifest.DifferInfo differInfo = preBuildManifest.CompareWith(postBuildManifest);
            for (int i = 0; i < differInfo.Modified.Count; i++)
            {
                FileManifest.FileInfo fileInfo = differInfo.Modified[i];
                Helper.Log("AssetBuilder.CaculateDiffer: [" + fileInfo.Name + "] has been modified.");
            }
            for (int i = 0; i < differInfo.Added.Count; i++)
            {
                FileManifest.FileInfo fileInfo = differInfo.Added[i];
                Helper.Log("AssetBuilder.CaculateDiffer: [" + fileInfo.Name + "] has been added.");
            }
            for (int i = 0; i < differInfo.Deleted.Count; i++)
            {
                FileManifest.FileInfo fileInfo = differInfo.Deleted[i];
                string filePath1 = Constants.BUILD_ASSET_BUNDLE_PATH + fileInfo.Name;
                string filePath2 = Constants.BUILD_ASSET_BUNDLE_PATH + fileInfo.Name + ".manifest";
                Helper.Log("AssetBuilder.CaculateDiffer: [" + fileInfo.Name + "] has been deleted.");
                if (File.Exists(filePath1))
                {
                    File.Delete(filePath1);
                }
                if (File.Exists(filePath2))
                {
                    File.Delete(filePath2);
                }
            }
            if (differInfo.HasDiffer == false)
            {
                Helper.Log("AssetBuilder.CaculateAssetsDiffer: nothing to build.");
            }
        }
    }
}

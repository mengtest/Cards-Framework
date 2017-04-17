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

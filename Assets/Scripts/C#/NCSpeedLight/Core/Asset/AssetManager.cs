using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace NCSpeedLight
{
    public static class AssetManager
    {

        public class BundleInfo
        {
            public AssetBundle Bundle;
            public int RefCount;
        }

        private static AssetBundleManifest m_Manifest;

        private static Dictionary<string, BundleInfo> m_LoadedBundles = new Dictionary<string, BundleInfo>();

        private static bool m_Isinit = false;

        public static void Initialize()
        {
            if (m_Isinit == false)
            {
                m_Isinit = true;
                if (Constants.ASSET_BUNDLE_MODE)
                {
                    LoadManifest();
                }
            }
        }

        private static void LoadManifest()
        {
            var path = Constants.LOCAL_ASSET_BUNDLE_PATH + Constants.ASSET_BUNDLE_MANIFEST_FILE;
            var bundle = AssetBundle.LoadFromFile(path);
            if (bundle != null)
            {
                m_Manifest = bundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
            }
            else
            {
                Helper.LogError("AssetManager.LoadManifest: load error.");
            }
        }

        private static void LoadDependency(string bundleName)
        {
            string[] dependencies = m_Manifest.GetAllDependencies(bundleName);
            if (dependencies != null || dependencies.Length > 0)
            {
                for (int i = 0; i < dependencies.Length; i++)
                {
                    string depName = dependencies[i];
                    BundleInfo bundleInfo = null;
                    if (m_LoadedBundles.TryGetValue(depName, out bundleInfo) == false)
                    {
                        string bundleFilePath = Constants.LOCAL_ASSET_BUNDLE_PATH + depName;
                        AssetBundle bundle = AssetBundle.LoadFromFile(bundleFilePath);
                        bundleInfo = new BundleInfo() { Bundle = bundle, RefCount = 1 };
                        if (m_LoadedBundles.ContainsKey(depName))
                        {
                            m_LoadedBundles.Remove(depName);
                        }
                        m_LoadedBundles.Add(depName, bundleInfo);
                    }
                    else
                    {
                        bundleInfo.RefCount++;
                    }
                }
            }
        }

        private static AssetBundle LoadAssetBundle(string bundleName)
        {
            BundleInfo bundleInfo = null;
            if (m_LoadedBundles.TryGetValue(bundleName, out bundleInfo) == false)
            {
                LoadDependency(bundleName);
                string bundleFilePath = Constants.LOCAL_ASSET_BUNDLE_PATH + bundleName;
                AssetBundle bundle = AssetBundle.LoadFromFile(bundleFilePath);
                bundleInfo = new BundleInfo()
                {
                    RefCount = 1,
                    Bundle = bundle
                };
                if (m_LoadedBundles.ContainsKey(bundleName))
                {
                    m_LoadedBundles.Remove(bundleName);
                }
                m_LoadedBundles.Add(bundleName, bundleInfo);
                return bundleInfo.Bundle;
            }
            else
            {
                bundleInfo.RefCount = bundleInfo.RefCount + 1;
                return bundleInfo.Bundle;
            }
        }

        private static void UnloadDependency(string bundleName)
        {
            string[] dependencies = m_Manifest.GetAllDependencies(bundleName);
            if (dependencies != null || dependencies.Length > 0)
            {
                for (int i = 0; i < dependencies.Length; i++)
                {
                    string depName = dependencies[i];
                    BundleInfo bundleInfo = null;
                    if (m_LoadedBundles.TryGetValue(depName, out bundleInfo))
                    {
                        bundleInfo.RefCount--;
                        if (bundleInfo.Bundle == null)
                        {
                            m_LoadedBundles.Remove(depName);
                        }
                        else if (bundleInfo.RefCount <= 0)
                        {
                            bundleInfo.Bundle.Unload(true);
                            m_LoadedBundles.Remove(depName);
                        }
                    }
                }
            }
        }

        private static void UnloadAssetBundle(string bundleName)
        {
            BundleInfo bundleInfo = null;
            if (m_LoadedBundles.TryGetValue(bundleName, out bundleInfo))
            {
                UnloadDependency(bundleName);
                bundleInfo.RefCount--;
                if (bundleInfo.Bundle == null)
                {
                    m_LoadedBundles.Remove(bundleName);
                }
                else if (bundleInfo.RefCount <= 0)
                {
                    bundleInfo.Bundle.Unload(true);
                    m_LoadedBundles.Remove(bundleName);
                }
            }
        }
       
        public static UnityEngine.Object LoadAsset(string assetPath, Type type)
        {
            if (Constants.ASSET_BUNDLE_MODE)
            {
                int index = assetPath.LastIndexOf("/");
                string assetName = assetPath.Substring(index + 1);
                string bundleName = assetPath.Substring(0, index);
                bundleName = bundleName.Replace("/", "_");
                bundleName = bundleName.ToLower();
                bundleName = bundleName + Constants.ASSET_BUNDLE_FILE_EXTENSION;
                AssetBundle bundle = LoadAssetBundle(bundleName);
                if (bundle != null)
                {
                    return bundle.LoadAsset(assetName, type);
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return Resources.Load(assetPath, type);
            }
        }

        public static void UnloadAsset(string assetPath)
        {
            if (Constants.ASSET_BUNDLE_MODE)
            {
                int index = assetPath.LastIndexOf("/");
                string assetName = assetPath.Substring(index + 1);
                string bundleName = assetPath.Substring(0, index);
                bundleName = bundleName.Replace("/", "_");
                bundleName = bundleName.ToLower();
                bundleName = bundleName + Constants.ASSET_BUNDLE_FILE_EXTENSION;
                UnloadAssetBundle(bundleName);
            }
        }

        public static void LoadScene(string sceneName)
        {
            if (Constants.ASSET_BUNDLE_MODE)
            {
                string bundleName = "bundle_scenes.asset";
                AssetBundle bundle = LoadAssetBundle(bundleName);
                if (bundle == null)
                {
                    Helper.LogError("AssetManager.LoadScene: can not load scene caused by nil scene bundle file.");
                }
                else
                {
                    SceneManager.LoadScene(sceneName);
                }
            }
            else
            {
                SceneManager.LoadScene(sceneName);
            }
        }

        public static void UnloadScene(string sceneName)
        {
            //UnloadDependency("bundle_scenes.asset");
        }

    }
}
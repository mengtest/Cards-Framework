using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using System;
using UnityEditorInternal;

namespace NCSpeedLight
{
    public class EditorMenu
    {
        [MenuItem("Framework/Start Game #%a", false, 0)]
        public static void StartGame()
        {
            if (!EditorApplication.isPlaying)
            {
                AssetDatabase.SaveAssets();
                EditorSceneManager.OpenScene(Application.dataPath + "/Launcher.unity");
                EditorApplication.isPlaying = true;
            }
        }

        [MenuItem("Framework/Package/Backup Asset #%c")]
        public static void BackupAsset()
        {
            EditorHelper.BackupAssetOnPreBuild();
        }

        [MenuItem("Framework/Package/Restore Asset #%v")]
        public static void RestoreAsset()
        {
            EditorHelper.RestoreAssetOnPostBuild();
        }

        [MenuItem("Assets/Set AB Tags", false, 5)]
        public static void SetAssetBundleTag()
        {
            UnityEngine.Object[] selected = Selection.objects;
            for (int i = 0; i < selected.Length; i++)
            {
                UnityEngine.Object asset = selected[i];
                if (asset)
                {
                    string assetPath = AssetDatabase.GetAssetPath(asset);
                    string bundleName = assetPath.Substring("Assets/Resources/".Length);
                    bundleName = bundleName.Substring(0, bundleName.LastIndexOf("/"));
                    bundleName = bundleName.Replace("/", "_");
                    bundleName = bundleName.ToLower();
                    bundleName = bundleName + Constants.ASSET_BUNDLE_FILE_EXTENSION;
                    AssetImporter assetImporter = AssetImporter.GetAtPath(assetPath);
                    if (assetImporter)
                    {
                        assetImporter.SetAssetBundleNameAndVariant(bundleName, string.Empty);
                    }
                }
            }
        }
    }
}
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using System;

namespace NCSpeedLight
{
    public class Tools
    {
        [MenuItem("Assets/Start Game", false, 0)]
        public static void StartGame()
        {
            if (!EditorApplication.isPlaying)
            {
                AssetDatabase.SaveAssets();
                EditorSceneManager.OpenScene(Application.dataPath + "/Launcher.unity");
                EditorApplication.isPlaying = true;
            }
        }

        [MenuItem("Assets/Set Assetbundle Tag(s)", false, 0)]
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

        [MenuItem("Assets/Open Lua Project")]
        public static void OpenLuaProj()
        {
            string vsCode = Environment.GetEnvironmentVariable("VSCODE");
            string cmd = vsCode + " " + '"' + Application.dataPath + "/Lua/.vscode/launch.json" + '"';
            System.Diagnostics.Process.Start(vsCode);
        }
    }
}
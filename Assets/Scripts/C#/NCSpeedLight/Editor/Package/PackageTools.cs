/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: BuilderTools.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/
#pragma warning disable 0618
using System;
using System.IO;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace NCSpeedLight
{
    public class ControlPanel : EditorWindow
    {
        [MenuItem("Framework/Bundle/Build Asset %#z")]
        public static void BuildAsset()
        {
            AssetBuilder.Build();
        }

        [MenuItem("Framework/Bundle/Build Script %#x")]
        public static void BuildScript()
        {
            ScriptBuilder.Build();
        }

        [MenuItem("Framework/Bundle/Build Tag")]
        public static void BuildTag()
        {
#if UNITY_ANDROID || UNITY_IOS
            if (EditorUtility.DisplayDialog("Warning", "Operation is denied,plesase switch to PC environment.", "OK"))
            {
                return;
            }
#else
            ABTagBuilder.Build();
#endif
        }

        [MenuItem("Framework/Bundle/Backup Asset #%c")]
        public static void BackupAsset()
        {
            EditorHelper.BackupAssetOnPreBuild();
        }

        [MenuItem("Framework/Bundle/Restore Asset #%v")]
        public static void RestoreAsset()
        {
            EditorHelper.RestoreAssetOnPostBuild();
        }

        [MenuItem("Framework/Archive/Build iOS")]
        public static void BuildiOS()
        {
            iOSBuilder.Build();
        }

        [MenuItem("Framework/Archive/Build Android")]
        public static void BuildAndroid()
        {
            AndroidBuilder.Build();
        }

        [MenuItem("Framework/Archive/Build Windows")]
        public static void BuildWindows()
        {
            WindowsBuilder.Build();
        }

        public static ScriptBuilder ScriptBuilder = new ScriptBuilder(null, null);

        public static AssetBuilder AssetBuilder = new AssetBuilder(null, null);

        public static ABTagBuilder ABTagBuilder = new ABTagBuilder(null, null);

        public static AndroidBuilder AndroidBuilder = new AndroidBuilder(null, null);

        public static iOSBuilder iOSBuilder = new iOSBuilder(null, null);

        public static WindowsBuilder WindowsBuilder = new WindowsBuilder(null, null);

        //[MenuItem("PKG/Build Panel")]
        public static void OpenWindow()
        {
            GetWindowWithRect<ControlPanel>(new Rect(10, 10, 300, 250), false, "Build");
        }

        private void OnGUI()
        {
            GUILayout.Space(3.0f);

            if (EditorHelper.DrawHeader("Builder"))
            {
                EditorHelper.BeginContents(false);
                if (GUILayout.Button("Build Assets", GUILayout.Width(295)))
                {
                    AssetBuilder.Build();
                }
                if (GUILayout.Button("Build Scripts", GUILayout.Width(295)))
                {
                    ScriptBuilder.Build();
                }
                if (GUILayout.Button("Build Apk", GUILayout.Width(295)))
                {
                    ScriptBuilder.Build();
                    //BuildAssets();
                    CopyScripts();
                    CopyAssets();
                    MoveResourcesToR();
                    AndroidBuilder.Build();
                    MoveRToResources();
                }
                if (GUILayout.Button("Build AssetBundle Tag", GUILayout.Width(295)))
                {
                    //#if UNITY_ANDROID || UNITY_IOS
                    //                    if (EditorUtility.DisplayDialog("Warning", "Operation is denied,plesase switch to PC environment.", "OK"))
                    //                    {
                    //                        return;
                    //                    }
                    //#else
                    //                    TagBuilder.Build();
                    //#endif
                }
                EditorHelper.EndContents();
            }

            GUILayout.Space(3.0f);

            if (EditorHelper.DrawHeader("Ease"))
            {
                EditorHelper.BeginContents(false);
                if (GUILayout.Button("Delete AssetBundle/Assets", GUILayout.Width(295)))
                {
                    if (Directory.Exists(Constants.LOCAL_ASSET_BUNDLE_PATH))
                    {
                        Directory.Delete(Constants.LOCAL_ASSET_BUNDLE_PATH, true);
                    }
                }
                if (GUILayout.Button("Delete AssetBundle/Scripts", GUILayout.Width(295)))
                {
                    if (Directory.Exists(Constants.BUILD_SCRIPT_BUNDLE_PATH))
                    {
                        Directory.Delete(Constants.BUILD_SCRIPT_BUNDLE_PATH, true);
                    }
                }
                if (GUILayout.Button("Copy Assets To Streaming", GUILayout.Width(295)))
                {
                    CopyAssets();
                }
                if (GUILayout.Button("Copy Scripts To Streaming", GUILayout.Width(295)))
                {
                    CopyScripts();
                }
                EditorHelper.EndContents();
            }
        }

        private static void CopyScripts()
        {
            if (Directory.Exists(Application.streamingAssetsPath + "/Scripts/") == false)
            {
                Directory.CreateDirectory(Application.streamingAssetsPath + "/Scripts/");
            }
            else
            {
                Directory.Delete(Application.streamingAssetsPath + "/Scripts/", true);
                Directory.CreateDirectory(Application.streamingAssetsPath + "/Scripts/");
            }
            List<string> files = new List<string>();
            ScriptBuilder.CollectFiles(Constants.BUILD_SCRIPT_BUNDLE_PATH, files, "*.*");
            for (int i = 0; i < files.Count; i++)
            {
                string file = files[i];
                string targetFile = string.Empty;
                targetFile = Application.streamingAssetsPath + "/Scripts/" + file.Substring(Constants.BUILD_SCRIPT_BUNDLE_PATH.Length);
                File.Copy(file, targetFile, true);
            }
            AssetDatabase.Refresh();
        }

        private static void CopyAssets()
        {
            if (Directory.Exists(Application.streamingAssetsPath + "/Assets/") == false)
            {
                Directory.CreateDirectory(Application.streamingAssetsPath + "/Assets/");
            }
            else
            {
                Directory.Delete(Application.streamingAssetsPath + "/Assets/", true);
                Directory.CreateDirectory(Application.streamingAssetsPath + "/Assets/");
            }
            List<string> files = new List<string>();
            ScriptBuilder.CollectFiles(Constants.LOCAL_ASSET_BUNDLE_PATH, files, "*.*");
            for (int i = 0; i < files.Count; i++)
            {
                string file = files[i];
                string targetFile = string.Empty;
                targetFile = Application.streamingAssetsPath + "/Assets/" + file.Substring(Constants.LOCAL_ASSET_BUNDLE_PATH.Length);
                File.Copy(file, targetFile, true);
            }
            AssetDatabase.Refresh();
        }

        public static void MoveResourcesToR()
        {
            string tempProjectPath = Application.dataPath;
            string tempDirectory = string.Format("{0}/R", tempProjectPath);
            if (Directory.Exists(tempDirectory) == false)
            {
                AssetDatabase.CreateFolder("Assets", "R");
            }
            tempDirectory = string.Format("{0}/Resources", tempProjectPath);
            try
            {
                string[] tempArray = Directory.GetDirectories(tempDirectory);
                for (int i = 0; i < tempArray.Length; i++)
                {
                    tempDirectory = tempArray[i];
                    tempDirectory = tempDirectory.Replace("\\", "/");
                    int tempIndex = tempDirectory.LastIndexOf("/");
                    if (tempIndex < 0)
                    {
                        continue;
                    }
                    string tempFolderName = tempDirectory.Substring(tempIndex + 1);
                    if (tempFolderName == "majorUI")
                    {
                        continue;
                    }
                    string tempOldPath = string.Format("Assets/Resources/{0}", tempFolderName);
                    string tempNewPath = string.Format("Assets/R/{0}", tempFolderName);
                    AssetDatabase.MoveAsset(tempOldPath, tempNewPath);
                }
            }
            catch (DirectoryNotFoundException e)
            {
                Debug.LogError("Resources Folder is not exist !");
                Debug.LogError(e.Message);
            }
            AssetDatabase.Refresh();
        }

        public static void MoveRToResources()
        {
            string tempProjectPath = Application.dataPath;
            string tempDirectory = string.Format("{0}/Resources", tempProjectPath);
            if (Directory.Exists(tempDirectory) == false)
            {
                AssetDatabase.CreateFolder("Assets", "Resources");
            }
            tempDirectory = string.Format("{0}/R", tempProjectPath);
            try
            {
                string[] tempArray = Directory.GetDirectories(tempDirectory);

                for (int i = 0; i < tempArray.Length; i++)
                {
                    tempDirectory = tempArray[i];
                    tempDirectory = tempDirectory.Replace("\\", "/");
                    int tempIndex = tempDirectory.LastIndexOf("/");
                    if (tempIndex < 0)
                    {
                        continue;
                    }
                    string tempFolderName = tempDirectory.Substring(tempIndex + 1);
                    string tempOldPath = string.Format("Assets/R/{0}", tempFolderName);
                    string tempNewPath = string.Format("Assets/Resources/{0}", tempFolderName);
                    AssetDatabase.MoveAsset(tempOldPath, tempNewPath);
                }

                Directory.Delete(Application.dataPath + "/R/");
            }
            catch (DirectoryNotFoundException e)
            {
                Debug.LogError("R Folder is not exist !");
                Debug.LogError(e.Message);
            }
            AssetDatabase.Refresh();
        }

        /// <summary>
        /// 收集目录下的所有资源文件
        /// </summary>
        /// <param name="directory"></param>
        private static void CollectAssets(List<string> outfiles, string directory)
        {
            if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = EditorHelper.NormalizePath(files[i]);
                    if (file.EndsWith(".meta") || file.EndsWith(".cs") || file.EndsWith(".js"))
                    {
                        continue;
                    }
                    file = "Assets" + file.Substring(EditorHelper.NormalizePath(Application.dataPath).Length);
                    outfiles.Add(file);
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectAssets(outfiles, dirs[i]);
                }
            }
            else if (File.Exists(directory))
            {
                outfiles.Add("Assets" + directory.Substring(EditorHelper.NormalizePath(Application.dataPath).Length));
            }
        }
    }
}

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

        public static ScriptBuilder ScriptBuilder = new ScriptBuilder(null, null);

        public static AssetBuilder AssetBuilder = new AssetBuilder(null, null);

        public static SceneBuilder SceneBuilder = new SceneBuilder(null, null);

        [MenuItem("NCSpeedLight/Builder Panel")]
        public static void OpenWindow()
        {
            GetWindowWithRect<ControlPanel>(new Rect(10, 10, 300, 280), false, "Builder");
        }

        private void OnGUI()
        {
            GUILayout.Space(3.0f);

            if (BuilderEditorUtils.DrawHeader("Builder"))
            {
                BuilderEditorUtils.BeginContents(false);
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
                    ApkBuilder.Build();
                    MoveRToResources();
                }
                BuilderEditorUtils.EndContents();
            }

            GUILayout.Space(3.0f);

            if (BuilderEditorUtils.DrawHeader("Ease"))
            {
                BuilderEditorUtils.BeginContents(false);
                if (GUILayout.Button("Delete AssetBundle/Assets", GUILayout.Width(295)))
                {
                    if (Directory.Exists(Constants.ASSET_BUNDLE_PATH))
                    {
                        Directory.Delete(Constants.ASSET_BUNDLE_PATH, true);
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
                if (GUILayout.Button("Setup AssetBundle Tag", GUILayout.Width(295)))
                {
                    SetupAssetBundleTag();
                }
                if (GUILayout.Button("Clear AssetBundle Tag", GUILayout.Width(295)))
                {
                    ClearAssetBundleTag();
                }
                BuilderEditorUtils.EndContents();
            }
        }

        [MenuItem("Assets/Builder/GetDependency")]
        public static void GetDependency()
        {
            UnityEngine.Object selected = Selection.activeObject;
            string assetPath = AssetDatabase.GetAssetPath(selected);
            string[] deps = AssetDatabase.GetDependencies(assetPath);
            int a = 1;
        }


        //[MenuItem("Assets/Builder/Map Assetbundle Name")]
        public static void SetupAssetBundleTag()
        {
            List<string> assets = new List<string>();
            CollectAssets(assets, Constants.RESOURCE_WORKSPACE);
            for (int i = 0; i < assets.Count; i++)
            {
                string asset = assets[i];
                AssetImporter assetImporter = AssetImporter.GetAtPath(asset);
                asset = asset.Substring(asset.IndexOf("Assets/Resources/") + "Assets/Resources/".Length);
                asset = asset.Substring(0, asset.LastIndexOf("/"));
                asset = asset.Replace("\\", "/");
                asset = asset.Replace("/", "_");
                asset += Constants.ASSET_BUNDLE_FILE_EXTENSION;
                assetImporter.SetAssetBundleNameAndVariant(asset, string.Empty);
            }
            AssetDatabase.Refresh();
        }

        public static void ClearAssetBundleTag()
        {
            List<string> assets = new List<string>();
            CollectAssets(assets, Constants.RESOURCE_WORKSPACE);
            for (int i = 0; i < assets.Count; i++)
            {
                string asset = assets[i];
                AssetImporter assetImporter = AssetImporter.GetAtPath(asset);
                assetImporter.SetAssetBundleNameAndVariant(string.Empty, string.Empty);
            }
            AssetDatabase.Refresh();
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
            ScriptBuilder.CollectFiles(Constants.ASSET_BUNDLE_PATH, files, "*.*");
            for (int i = 0; i < files.Count; i++)
            {
                string file = files[i];
                string targetFile = string.Empty;
                targetFile = Application.streamingAssetsPath + "/Assets/" + file.Substring(Constants.ASSET_BUNDLE_PATH.Length);
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
                    string file = BuilderEditorUtils.NormalizePath(files[i]);
                    if (file.EndsWith(".meta") || file.EndsWith(".cs") || file.EndsWith(".js"))
                    {
                        continue;
                    }
                    file = "Assets" + file.Substring(BuilderEditorUtils.NormalizePath(Application.dataPath).Length);
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
                outfiles.Add("Assets" + directory.Substring(BuilderEditorUtils.NormalizePath(Application.dataPath).Length));
            }
        }
    }

    public class BundlesToPak : EditorWindow
    {
        private string ResBundleDirectory;

        //private int m_TotalFileCount;
        //private int m_PrecessedFileCount;
        //private bool m_Processing = false;

        [MenuItem("EasyAB/Bundles -> Pak")]
        static void OpenWindow()
        {
            GetWindowWithRect<BundlesToPak>(new UnityEngine.Rect(10f, 10f, 600, 30), false, "Bundles To Pak");
        }
        void OnGUI()
        {
            GUILayout.Space(5f);
            GUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("Select Directory", GUILayout.Width(100));
            EditorGUILayout.TextField(ResBundleDirectory, GUILayout.Width(410));
            if (GUILayout.Button("...", GUILayout.Width(30), GUILayout.Height(18)))
            {
                if (string.IsNullOrEmpty(ResBundleDirectory))
                {
                    ResBundleDirectory = UnityEditor.EditorUtility.OpenFolderPanel("Select Bundle Directory", EditorApplication.applicationPath, "");
                }
                else
                {
                    ResBundleDirectory = UnityEditor.EditorUtility.OpenFolderPanel("Select Bundle Directory", ResBundleDirectory, "");
                }
            }
            //if (m_Processing)
            //{
            //    EditorUtility.DisplayProgressBar("Bundles -> Pak", "Build bundles to pak file...", m_PrecessedFileCount / m_TotalFileCount);
            //}
            if (GUILayout.Button("Build", GUILayout.Width(45), GUILayout.Height(18)))
            {
                if (string.IsNullOrEmpty(ResBundleDirectory))
                {
                    UnityEditor.EditorUtility.DisplayDialog("Warning", "Please select the bundles directory", "Yes");
                    return;
                }
                //if (EditorUtility.DisplayDialog("Hint", "Build the bundles to pak file,are you sure do that?", "Yes"))
                //{
                ExecuteBuildProcess();
                //}
            }
            GUILayout.Space(2f);
            GUILayout.EndHorizontal();
        }
        void ExecuteBuildProcess()
        {
            // collect all files locate in target directory.
            List<string> files = new List<string>();
            CollectFiles(ResBundleDirectory, files);
            if (files == null || files.Count == 0)
            {
                Debug.LogError("BuildBundlesToPak.cs: There is no file is current directory : " + ResBundleDirectory);
                return;
            }
            Debug.Log("BuildBundlesToPak.cs: Find " + files.Count + " files.");

            // now organize the file infos.
            List<BundleFileInfo> fileInfos = OrganizeFileInfo(files);

            for (int i = 0; i < fileInfos.Count; i++)
            {
                if (fileInfos[i].offset % 4 != 0)
                {
                    Debug.LogError("BundlesToPak.cs: Error in " + fileInfos[i].name + ", caused by 'fileInfos[i].offset % 4 != 0'");
                }
            }
            string path = Application.dataPath;
            string[] pathArray = path.Split(new char[] { '/' });
            path = path.Substring(0, path.Length - pathArray[pathArray.Length - 1].Length);
            path += "BundlesPak/";
            if (Directory.Exists(path) == false)
            {
                Directory.CreateDirectory(path);
            }
            //m_TotalFileCount = fileInfos.Count;
            //m_Processing = true;
            string pakName = GeneratePakName(path);
            using (var file = File.Open(path + pakName, FileMode.OpenOrCreate))
            {
                BinaryWriter writer = new BinaryWriter(file);
                writer.Write(fileInfos.Count);// Write files' count

                // Write files' name
                for (int i = 0; i < fileInfos.Count; i++)
                {
                    BundleFileInfo fileInfo = fileInfos[i];

                    byte[] tempBytes = System.Text.Encoding.UTF8.GetBytes(fileInfo.name);
                    byte[] nameBytes = new byte[252];
                    Array.Copy(tempBytes, nameBytes, tempBytes.Length);
                    writer.Write(nameBytes);

                    writer.Write(fileInfo.offset);

                    writer.Write(fileInfo.size);

                }

                //Write files
                for (int i = 0; i < fileInfos.Count; i++)
                {
                    BundleFileInfo fileInfo = fileInfos[i];
                    //m_PrecessedFileCount++;
                    using (var bundleFile = File.OpenRead(fileInfo.directory))
                    {
                        int byteLength = (int)bundleFile.Length;
                        if (bundleFile.Length % 4 != 0)
                        {
                            byteLength += (int)(4 - bundleFile.Length % 4);
                        }
                        byte[] fileBytes = new byte[byteLength];
                        bundleFile.Read(fileBytes, 0, (int)bundleFile.Length);

                        writer.Write(fileBytes);
                        bundleFile.Close();
                    }
                }


                file.Close();
                writer.Close();
            }
            //m_Processing = false;
            //EditorUtility.ClearProgressBar();
        }

        void CollectFiles(string directory, List<string> outfiles)
        {
            string[] files = Directory.GetFiles(directory);
            outfiles.AddRange(files);
            string[] childDirectories = Directory.GetDirectories(directory);
            if (childDirectories != null && childDirectories.Length > 0)
            {
                for (int i = 0; i < childDirectories.Length; i++)
                {
                    string dir = childDirectories[i];
                    if (string.IsNullOrEmpty(dir)) continue;
                    CollectFiles(dir, outfiles);
                }
            }
        }

        List<BundleFileInfo> OrganizeFileInfo(List<string> files)
        {
            List<BundleFileInfo> fileInfos = new List<BundleFileInfo>();
            int currentIndex = 4; // file count
            currentIndex += 252 * files.Count;// file name
            currentIndex += 4 * files.Count;// offset
            currentIndex += 4 * files.Count;// size
            for (int i = 0; i < files.Count; i++)
            {
                string fileDir = files[i];
                if (string.IsNullOrEmpty(fileDir)) continue;
                try
                {
                    using (var file = File.Open(fileDir, FileMode.Open))
                    {
                        //currentIndex += 4;//offset
                        //currentIndex += 4;

                        BundleFileInfo fileInfo = new BundleFileInfo();
                        fileInfo.directory = fileDir;
                        fileInfo.name = "AssetBundles/" + BuilderEditorUtils.GetPlatformName(Application.platform) + "/" + GetFileName(file.Name);
                        fileInfo.size = (int)file.Length;

                        if (currentIndex % 4 != 0)
                        {
                            currentIndex += (4 - currentIndex % 4);
                        }
                        fileInfo.offset = currentIndex;


                        fileInfos.Add(fileInfo);

                        currentIndex += fileInfo.size;
                    }
                }
                catch { }
            }
            return fileInfos;
        }

        string GeneratePakName(string directory)
        {
            int maxPakIndex = 1;
            string datetime = DateTime.Now.ToString("yyyyMMdd");
            DirectoryInfo binDirectory = new DirectoryInfo(directory);
            System.IO.FileInfo[] fileInfos = binDirectory.GetFiles();
            if (fileInfos != null && fileInfos.Length > 0)
            {
                for (int i = 0; i < fileInfos.Length; i++)
                {
                    System.IO.FileInfo fileInfo = fileInfos[i];
                    if (fileInfo == null) continue;
                    string fileName = fileInfo.Name;
                    if (string.IsNullOrEmpty(fileName)) continue;

                    string[] dotArray = fileName.Split(new char[] { '.' });
                    if (dotArray == null || dotArray.Length == 0)
                    {
                        continue;
                    }
                    if (dotArray.Length < 2) continue;
                    string newName = dotArray[dotArray.Length - 2];
                    if (string.IsNullOrEmpty(newName)) continue;
                    string[] strArray = newName.Split(new char[] { '_' });
                    if (strArray.Length == 2)
                    {
                        string tempdate = strArray[0];
                        if (string.IsNullOrEmpty(tempdate)) continue;
                        if (tempdate.EndsWith(datetime))
                        {
                            int tempIndex = 0;
                            int.TryParse(strArray[1], out tempIndex);
                            if (tempIndex >= maxPakIndex)
                            {
                                maxPakIndex = tempIndex;
                                maxPakIndex++;
                            }
                        }
                    }
                }
            }
            string returnStr = datetime + "_" + maxPakIndex + ".pak";
            return returnStr;
        }

        string GetFileName(string fileName)
        {
            string[] pathArray = fileName.Split(new char[] { '\\' });
            if (pathArray.Length == 0)
            {
                return string.Empty;
            }
            string str = pathArray[pathArray.Length - 1];
            return str;
        }

        class BundleFileInfo
        {
            public string directory;
            public string name;
            public int size;
            public int offset;
        }
    }



}

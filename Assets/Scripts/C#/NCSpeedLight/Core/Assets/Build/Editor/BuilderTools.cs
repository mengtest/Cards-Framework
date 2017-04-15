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
        private static List<string> m_WaitingBuildAssets;

        [MenuItem("NCSpeedLight/Builder Panel")]
        public static void OpenWindow()
        {
            GetWindowWithRect<ControlPanel>(new Rect(10, 10, 300, 250), false, "Builder");
        }

        private void OnGUI()
        {
            GUILayout.Space(3.0f);

            if (EditorUtility.DrawHeader("Builder"))
            {
                EditorUtility.BeginContents(false);
                if (GUILayout.Button("Build Lua", GUILayout.Width(295)))
                {
                    LuaBuilder.Build();
                }
                if (GUILayout.Button("Build Assets", GUILayout.Width(295)))
                {
                    //BuildAssets();
                    BuildAssetBundle();
                }
                if (GUILayout.Button("Build Apk", GUILayout.Width(295)))
                {
                    LuaBuilder.Build();
                    BuildAssets();
                    CopyScripts();
                    CopyAssets();
                    MoveResourcesToR();
                    ApkBuilder.Build();
                    MoveRToResources();
                }
                EditorUtility.EndContents();
            }

            GUILayout.Space(3.0f);

            if (EditorUtility.DrawHeader("Ease"))
            {
                EditorUtility.BeginContents(false);
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
                if (GUILayout.Button("Setup Assetbundle Tag", GUILayout.Width(295)))
                {
                    MapAssetBundleName();
                }
                if (GUILayout.Button("Remove Assetbundle Tag", GUILayout.Width(295)))
                {
                }
                EditorUtility.EndContents();
            }
        }

        [MenuItem("Assets/Builder/Build")]
        public static void BuildSingleAssets()
        {
            UnityEngine.Object[] assets = Selection.objects;
            if (assets != null && assets.Length > 0)
            {
                m_WaitingBuildAssets = new List<string>();
                for (int i = 0; i < assets.Length; i++)
                {
                    string path = AssetDatabase.GetAssetPath(assets[i]);
                    m_WaitingBuildAssets.Add(path);
                }
                AssetBuilder builder = new AssetBuilder(m_WaitingBuildAssets, Constants.ASSET_BUNDLE_PATH, m_WaitingBuildAssets);
                builder.BuildSingle();
            }
        }


        [MenuItem("Assets/Builder/Map Assetbundle Name")]
        public static void MapAssetBundleName()
        {
            m_WaitingBuildAssets = new List<string>();
            string directory = EditorUtility.NormallizePath(Application.dataPath + "/Resources/Bundle/");
            CollectAssets(directory);
            for (int i = 0; i < m_WaitingBuildAssets.Count; i++)
            {
                string path = m_WaitingBuildAssets[i];

                if (path.EndsWith(".mat") || path.EndsWith(".jpg") || path.EndsWith(".png"))
                {
                    continue;
                }

                AssetImporter assetImporter = AssetImporter.GetAtPath(path);


                path = path.Substring(path.IndexOf("Assets/Resources/Bundle/") + "Assets/Resources/Bundle/".Length);
                path = path.Substring(0, path.LastIndexOf("/"));
                path = path.Replace("\\", "/");
                path = path.Replace("/", "_");


                assetImporter.assetBundleName = path; //设置Bundle文件的名称
                assetImporter.assetBundleVariant = "";//设置Bundle文件的扩展名
                assetImporter.SaveAndReimport();
            }
            //AssetDatabase.Refresh();
        }


        public static void BuildAssetBundle()
        {
            string outputPath = Path.Combine(Utility.AssetBundlesOutputPath, Utility.GetPlatformName());
            //outputPath += "/Assets";
            if (!Directory.Exists(outputPath))
                Directory.CreateDirectory(outputPath);

            //@TODO: use append hash... (Make sure pipeline works correctly with it.)
            BuildPipeline.BuildAssetBundles(outputPath, BuildAssetBundleOptions.None, EditorUserBuildSettings.activeBuildTarget);

            //string outputPath = SharedVariable.ASSET_BUNDLE_PATH;
            //if (Directory.Exists(outputPath) == false)
            //{
            //    Directory.CreateDirectory(outputPath);
            //}
            //BuildPipeline.BuildAssetBundles(outputPath, BuildAssetBundleOptions.None, EditorUserBuildSettings.activeBuildTarget);
        }

        private static void BuildAssets()
        {
            m_WaitingBuildAssets = new List<string>();
            string directory = EditorUtility.NormallizePath(Application.dataPath + "/Resources/Bundle/");
            CollectAssets(directory);
            AssetBuilder builder = new AssetBuilder(m_WaitingBuildAssets, Constants.ASSET_BUNDLE_PATH, m_WaitingBuildAssets);
            builder.BuildAll();
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
            LuaBuilder.CollectFiles(Constants.BUILD_SCRIPT_BUNDLE_PATH, files, "*.*");
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
            LuaBuilder.CollectFiles(Constants.ASSET_BUNDLE_PATH, files, "*.*");
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
        private static void CollectAssets(string directory)
        {
            if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = EditorUtility.NormallizePath(files[i]);
                    if (!file.EndsWith(".meta"))
                    {
                        file = "Assets" + file.Substring(EditorUtility.NormallizePath(Application.dataPath).Length);
                        m_WaitingBuildAssets.Add(file);
                    }
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectAssets(dirs[i]);
                }
            }
            else if (File.Exists(directory))
            {
                m_WaitingBuildAssets.Add("Assets" + directory.Substring(EditorUtility.NormallizePath(Application.dataPath).Length));
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
                        fileInfo.name = "AssetBundles/" + EditorUtility.GetPlatformName(Application.platform) + "/" + GetFileName(file.Name);
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

    public static class LuaBuilder
    {
        public static bool IsCompiling = false;

        public static string LUA_SCRIPT_DIRECTORY = Application.dataPath + "/Scripts/Lua/";

        //public static string LUA_BUNDLE_OUTPUT_DIRECTORY = SharedVariable.DATA_PATH +   "/Lua/";

        public static void Build()
        {
            if (!PrepareDirectory()) return;

            IsCompiling = true;

            List<string> byteFiles = new List<string>();
            LuaFileToBytes(byteFiles);

            ProcessBuild();

            CopyProtocolFiles();

            DeleteLuaBytesFiles(byteFiles);

            GenerateLuaFileIndex();

            IsCompiling = false;
        }

        private static bool PrepareDirectory()
        {
            if (Directory.Exists(LUA_SCRIPT_DIRECTORY) == false)
            {
                Debug.LogError("Directory doesn't exist: " + LUA_SCRIPT_DIRECTORY);
                return false;
            }
            if (Directory.Exists(Constants.BUILD_SCRIPT_BUNDLE_PATH) == false)
            {
                Directory.CreateDirectory(Constants.BUILD_SCRIPT_BUNDLE_PATH);
            }
            else
            {
                Directory.Delete(Constants.BUILD_SCRIPT_BUNDLE_PATH, true);
                Directory.CreateDirectory(Constants.BUILD_SCRIPT_BUNDLE_PATH);
            }
            return true;
        }

        private static void LuaFileToBytes(List<string> files)
        {
            if (files == null)
            {
                files = new List<string>();
            }
            CollectFiles(LUA_SCRIPT_DIRECTORY, files);
            if (files != null && files.Count >= 0)
            {
                for (int i = 0; i < files.Count; i++)
                {
                    string file = files[i];
                    if (string.IsNullOrEmpty(file)) continue;
                    File.Copy(file, file + ".bytes", true);
                }
            }
            AssetDatabase.Refresh();
        }

        private static void ProcessBuild()
        {
            Caching.CleanCache();

            string[] subDirectories = Directory.GetDirectories(LUA_SCRIPT_DIRECTORY, "*", SearchOption.AllDirectories);

            if (subDirectories != null && subDirectories.Length > 0)
            {
                for (int i = 0; i < subDirectories.Length; i++)
                {
                    string directory = subDirectories[i];
                    BuildLuaBundle(directory);
                }
            }
        }

        private static void CopyProtocolFiles()
        {
            List<string> files = new List<string>();
            CollectFiles(LUA_SCRIPT_DIRECTORY, files, "*.pb");
            for (int i = 0; i < files.Count; i++)
            {
                string outputPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + Path.GetFileName(files[i]);
                File.Copy(files[i], outputPath, true);
            }
        }

        private static void BuildLuaBundle(string directory)
        {
            directory = directory.Replace('\\', '/');
            directory = directory.Substring(directory.IndexOf("Assets/"));
            string[] files = Directory.GetFiles(directory, "*.lua.bytes");

            if (files != null && files.Length > 0)
            {
                string bundleName = directory.Substring(directory.IndexOf("Lua/") + 4);
                bundleName = bundleName.Replace("/", "_");
                bundleName = bundleName.ToLower();
                bundleName = bundleName + ".assetbundle";
                List<UnityEngine.Object> assets = new List<UnityEngine.Object>();
                for (int i = 0; i < files.Length; i++)
                {
                    UnityEngine.Object obj = AssetDatabase.LoadMainAssetAtPath(files[i]);
                    assets.Add(obj);
                }

                BuildAssetBundleOptions options = BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets |
                                                BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.UncompressedAssetBundle;

                string outputPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + bundleName;

                if (File.Exists(outputPath))
                {
                    File.Delete(outputPath);
                }

                BuildPipeline.BuildAssetBundle(null, assets.ToArray(), outputPath, options, EditorUserBuildSettings.activeBuildTarget);
            }
        }

        private static void DeleteLuaBytesFiles(List<string> files)
        {
            if (files != null && files.Count >= 0)
            {
                for (int i = 0; i < files.Count; i++)
                {
                    string file = files[i];
                    if (string.IsNullOrEmpty(file)) continue;
                    if (File.Exists(file + ".bytes") == false) continue;
                    File.Delete(file + ".bytes");
                }
            }
            AssetDatabase.Refresh();
        }

        private static void GenerateLuaFileIndex()
        {
            string directory = Constants.BUILD_SCRIPT_BUNDLE_PATH;
            string filePath = directory + "/manifest.txt";
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            List<string> files = new List<string>();
            CollectFiles(directory, files, "*");
            FileStream fs = new FileStream(filePath, FileMode.CreateNew);
            StreamWriter sw = new StreamWriter(fs);
            for (int i = 0; i < files.Count; i++)
            {
                string file = files[i];
                if (file.EndsWith(".meta")) continue;
                string md5 = Helper.FileMD5(file);
                string value = file.Replace(directory, string.Empty);
                int size = Helper.FileSize(file);
                sw.WriteLine(value + "|" + md5 + "|" + size);
            }
            sw.Close();
            fs.Close();
            AssetDatabase.Refresh();
        }

        public static void CompileSingleLua(string luapath)
        {
            //IsCompiling = true;
            //BuildAssetBundleOptions options = BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets | BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.UncompressedAssetBundle;
            //Caching.CleanCache();

            //File.Copy(luapath, luapath + ".bytes", true);
            //Object asset = AssetDatabase.LoadMainAssetAtPath(luapath + ".bytes");
            //string relativePath = GetRelativePath(luapath);
            //string outputPath = LUA_BUNDLE_OUTPUT_DIRECTORY + relativePath;
            //if (Directory.Exists(Path.GetDirectoryName(outputPath)) == false)
            //{
            //    Directory.CreateDirectory(Path.GetDirectoryName(outputPath));
            //}
            //if (File.Exists(outputPath))
            //{
            //    File.Delete(outputPath);
            //}

            //BuildPipeline.BuildAssetBundle(asset, new Object[] { asset }, outputPath, options, EditorUserBuildSettings.activeBuildTarget);
            //File.Delete(luapath + ".bytes");
            //AssetDatabase.Refresh();
            //IsCompiling = false;
        }

        public static string GetRelativePath(string assetPath)
        {
            return assetPath.Substring(Application.dataPath.Length + 1);
        }

        public static List<string> CollectFiles(string directory, List<string> output, string extension = "*.lua")
        {
            if (output == null)
            {
                output = new List<string>();
            }
            if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory, extension);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = NormallizePath(files[i]);
                    output.Add(file);
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectFiles(dirs[i], output, extension);
                }
            }
            return output;
        }

        public static string NormallizePath(string path)
        {
            return path.Replace("\\", "/");
        }

        public static string GetFileDirectory(string fullpath)
        {
            if (string.IsNullOrEmpty(fullpath))
            {
                return null;
            };
            string[] paths = fullpath.Split(new char[] { '/' });
            if (paths.Length == 0)
            {
                return null;
            }
            return paths[paths.Length - 1];
        }

    }

}

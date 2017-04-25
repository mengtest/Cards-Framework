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
    public class PakBuilder : EditorWindow
    {
        private string ResBundleDirectory;

        //private int m_TotalFileCount;
        //private int m_PrecessedFileCount;
        //private bool m_Processing = false;

        static void OpenWindow()
        {
            GetWindowWithRect<PakBuilder>(new UnityEngine.Rect(10f, 10f, 600, 30), false, "Bundles To Pak");
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
                        fileInfo.name = "AssetBundles/" + EditorHelper.GetPlatformName(Application.platform) + "/" + GetFileName(file.Name);
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

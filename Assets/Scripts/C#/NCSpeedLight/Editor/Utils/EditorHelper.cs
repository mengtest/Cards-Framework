/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: EditorHelper.cs
			// Describle:  编辑器工具  
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;
using UnityEditor;
using System.IO;
using System.Collections.Generic;
using System;
using ICSharpCode.SharpZipLib.Zip;
using UnityEditor.Callbacks;

namespace NCSpeedLight
{
    public static class EditorHelper
    {
        public static bool DrawHeader(string text) { return DrawHeader(text, text, false, false); }

        public static bool DrawHeader(string text, string key) { return DrawHeader(text, key, false, false); }

        public static bool DrawHeader(string text, bool detailded) { return DrawHeader(text, text, detailded, !detailded); }

        public static bool DrawHeader(string text, string key, bool forceOn, bool minimalistic)
        {
            bool state = EditorPrefs.GetBool(key, true);

            if (!minimalistic) GUILayout.Space(3f);
            if (!forceOn && !state) GUI.backgroundColor = new Color(0.8f, 0.8f, 0.8f);
            GUILayout.BeginHorizontal();
            GUI.changed = false;

            if (minimalistic)
            {
                if (state) text = "\u25BC" + (char)0x200a + text;
                else text = "\u25BA" + (char)0x200a + text;

                GUILayout.BeginHorizontal();
                GUI.contentColor = EditorGUIUtility.isProSkin ? new Color(1f, 1f, 1f, 0.7f) : new Color(0f, 0f, 0f, 0.7f);
                if (!GUILayout.Toggle(true, text, "PreToolbar2", GUILayout.MinWidth(20f))) state = !state;
                GUI.contentColor = Color.white;
                GUILayout.EndHorizontal();
            }
            else
            {
                text = "<b><size=11>" + text + "</size></b>";
                if (state) text = "\u25BC " + text;
                else text = "\u25BA " + text;
                if (!GUILayout.Toggle(true, text, "dragtab", GUILayout.MinWidth(20f))) state = !state;
            }

            if (GUI.changed) EditorPrefs.SetBool(key, state);

            if (!minimalistic) GUILayout.Space(2f);
            GUILayout.EndHorizontal();
            GUI.backgroundColor = Color.white;
            if (!forceOn && !state) GUILayout.Space(3f);
            return state;
        }

        private static bool EndHorizontal = false;

        public static void BeginContents() { BeginContents(false); }

        public static void BeginContents(bool minimalistic)
        {
            if (!minimalistic)
            {
                EndHorizontal = true;
                GUILayout.BeginHorizontal();
                EditorGUILayout.BeginHorizontal("AS TextArea", GUILayout.MinHeight(10f));
            }
            else
            {
                EndHorizontal = false;
                EditorGUILayout.BeginHorizontal(GUILayout.MinHeight(10f));
                GUILayout.Space(10f);
            }
            GUILayout.BeginVertical();
            GUILayout.Space(2f);
        }

        public static void EndContents()
        {
            try
            {
                GUILayout.Space(3f);
                GUILayout.EndVertical();
                EditorGUILayout.EndVertical();
                if (EndHorizontal)
                {
                    GUILayout.Space(3f);
                    GUILayout.EndHorizontal();
                }
                GUILayout.Space(3f);

            }
            catch { }

        }

        public static string MetaFileName = "Meta.xml";

        public static string NormalizePath(string path)
        {
            path = path.Replace("//", "/");
            return path.Replace("\\", "/");
        }

        public static string GetRelativePath(string assetPath)
        {
            return assetPath.Substring("Assets/Resources/".Length);
        }

        public static string LoadFile(String fileName)
        {
            if (File.Exists(fileName))
                using (StreamReader sr = File.OpenText(fileName))
                    return sr.ReadToEnd();
            else
                return string.Empty;
        }

        public static string ReplaceFirst(this string input, string oldValue, string newValue, int startAt = 0)
        {
            int pos = input.IndexOf(oldValue, startAt);
            if (pos < 0)
            {
                return input;
            }
            return string.Concat(input.Substring(0, pos), newValue, input.Substring(pos + oldValue.Length));
        }

        public static void CollectAssets(string directory, List<string> outfiles, params string[] exclude)
        {
            if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = NormalizePath(files[i]);
                    bool avilable = true;
                    for (int j = 0; j < exclude.Length; j++)
                    {
                        string ext = exclude[j];
                        if (file.EndsWith(ext))
                        {
                            avilable = false;
                            break;
                        }
                    }
                    if (avilable)
                    {
                        file = file.Substring(Application.dataPath.Length + 1);
                        file = "Assets/" + file;
                        outfiles.Add(file);
                    }
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectAssets(dirs[i], outfiles, exclude);
                }
            }
            else if (File.Exists(directory))
            {
                bool avilable = true;
                for (int j = 0; j < exclude.Length; j++)
                {
                    string ext = exclude[j];
                    if (directory.EndsWith(ext))
                    {
                        avilable = false;
                        break;
                    }
                }
                if (avilable)
                {
                    directory = directory.Substring(Application.dataPath.Length + 1);
                    directory = "Assets/" + directory;
                    outfiles.Add(directory);
                }
            }
        }

        public static Dictionary<string, List<string>> CollectAssetDependency(List<string> sourceAssets)
        {
            Dictionary<string, List<string>> dependencies = new Dictionary<string, List<string>>();
            for (int i = 0; i < sourceAssets.Count; i++)
            {
                string sourceAsset = sourceAssets[i];
                string[] deps = AssetDatabase.GetDependencies(sourceAsset);
                List<string> depList = new List<string>();
                for (int j = 0; j < deps.Length; j++)
                {
                    string dep = deps[j];
                    if (dep.EndsWith(".cs")) continue;
                    depList.Add(dep);
                }
                dependencies.Add(sourceAsset, depList);
            }
            return dependencies;
        }

        public static string GetPlatformName(RuntimePlatform platform)
        {
            switch (platform)
            {
                case RuntimePlatform.Android:
                    return "Android";
                case RuntimePlatform.IPhonePlayer:
                    return "iOS";
                case RuntimePlatform.WebGLPlayer:
                    return "WebGL";
                case RuntimePlatform.WindowsPlayer:
                    return "Windows";
                case RuntimePlatform.OSXPlayer:
                    return "OSX";
                case RuntimePlatform.WindowsEditor:
                case RuntimePlatform.OSXEditor:
#if UNITY_ANDROID
                    return "Android";
#elif UNITY_IPHONE
            return "iOS";
#else
                    return "Windows";
#endif
                default:
                    return null;
            }
        }

        public static void UnzipFile(string path, string to)
        {
            //这是根目录的路径  
            string dirPath = to;
            //ZipEntry：文件条目 就是该目录下所有的文件列表(也就是所有文件的路径)  
            ZipEntry zip = null;
            //输入的所有的文件流都是存储在这里面的  
            ZipInputStream zipInStream = null;
            //读取文件流到zipInputStream  
            zipInStream = new ZipInputStream(File.OpenRead(path));
            //循环读取Zip目录下的所有文件  
            while ((zip = zipInStream.GetNextEntry()) != null)
            {
                Unzip(zip, zipInStream, dirPath);
            }
            try
            {
                zipInStream.Close();
            }
            catch (Exception ex)
            {
                Debug.Log("UnZip Error");
                throw ex;
            }
        }

        private static void Unzip(ZipEntry zip, ZipInputStream zipInStream, string to)
        {
            try
            {
                //文件名不为空  
                if (!string.IsNullOrEmpty(zip.Name))
                {
                    string filePath = to;
                    filePath += ("/" + zip.Name);

                    //如果是一个新的文件路径　这里需要创建这个文件路径  
                    if (IsDirectory(filePath))
                    {
                        if (!Directory.Exists(filePath))
                        {
                            Directory.CreateDirectory(filePath);
                        }
                    }
                    else
                    {
                        FileStream fs = null;
                        //当前文件夹下有该文件  删掉  重新创建  
                        if (File.Exists(filePath))
                        {
                            File.Delete(filePath);
                        }
                        fs = File.Create(filePath);
                        int size = 2048;
                        byte[] data = new byte[2048];
                        //每次读取2MB  直到把这个内容读完  
                        while (true)
                        {
                            size = zipInStream.Read(data, 0, data.Length);
                            //小于0， 也就读完了当前的流  
                            if (size > 0)
                            {
                                fs.Write(data, 0, size);
                            }
                            else
                            {
                                break;
                            }
                        }
                        fs.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Debug.Log("UnZip Error");
                throw e;
            }
        }

        public static bool ZipFile(IEnumerable<string> sourceList, string zipFilePath, string comment = null, string password = null, int compressionLevel = 6)
        {
            bool result = false;

            try
            {
                //检测目标文件所属的文件夹是否存在，如果不存在则建立
                string zipFileDirectory = Path.GetDirectoryName(zipFilePath);
                if (!Directory.Exists(zipFileDirectory))
                {
                    Directory.CreateDirectory(zipFileDirectory);
                }

                Dictionary<string, string> dictionaryList = PrepareFileSystementities(sourceList);

                using (ZipOutputStream zipStream = new ZipOutputStream(File.Create(zipFilePath)))
                {
                    zipStream.Password = password;//设置密码
                    zipStream.SetComment(comment);//添加注释
                    zipStream.SetLevel(compressionLevel);//设置压缩等级

                    foreach (string key in dictionaryList.Keys)//从字典取文件添加到压缩文件
                    {
                        if (File.Exists(key))//判断是文件还是文件夹
                        {
                            FileInfo fileItem = new FileInfo(key);

                            using (FileStream readStream = fileItem.Open(FileMode.Open,FileAccess.Read, FileShare.ReadWrite))
                            {
                                ZipEntry zipEntry = new ZipEntry(dictionaryList[key]);
                                zipEntry.DateTime = fileItem.LastWriteTime;
                                zipEntry.Size = readStream.Length;
                                zipStream.PutNextEntry(zipEntry);
                                int readLength = 0;
                                byte[] buffer = new byte[1024];

                                do
                                {
                                    readLength = readStream.Read(buffer, 0, 1024);
                                    zipStream.Write(buffer, 0, readLength);
                                } while (readLength == 1024);

                                readStream.Close();
                            }
                        }
                        else//对文件夹的处理
                        {
                            ZipEntry zipEntry = new ZipEntry(dictionaryList[key] + "/");
                            zipStream.PutNextEntry(zipEntry);
                        }
                    }

                    zipStream.Flush();
                    zipStream.Finish();
                    zipStream.Close();
                }

                result = true;
            }
            catch (Exception ex)
            {
                throw new Exception("压缩文件失败", ex);
            }

            return result;
        }

        private static Dictionary<string, string> PrepareFileSystementities(IEnumerable<string> sourceFileEntityPathList)
        {
            Dictionary<string, string> fileEntityDictionary = new Dictionary<string, string>();//文件字典
            string parentDirectoryPath = "";
            foreach (string fileEntityPath in sourceFileEntityPathList)
            {
                string path = fileEntityPath;
                //保证传入的文件夹也被压缩进文件
                if (path.EndsWith(@"\"))
                {
                    path = path.Remove(path.LastIndexOf(@"\"));
                }

                parentDirectoryPath = Path.GetDirectoryName(path) + @"\";

                if (parentDirectoryPath.EndsWith(@":\\"))//防止根目录下把盘符压入的错误
                {
                    parentDirectoryPath = parentDirectoryPath.Replace(@"\\", @"\");
                }

                //获取目录中所有的文件系统对象
                Dictionary<string, string> subDictionary = GetAllFileSystemEntities(path, parentDirectoryPath);

                //将文件系统对象添加到总的文件字典中
                foreach (string key in subDictionary.Keys)
                {
                    if (!fileEntityDictionary.ContainsKey(key))//检测重复项
                    {
                        fileEntityDictionary.Add(key, subDictionary[key]);
                    }
                }
            }
            return fileEntityDictionary;
        }

        /// <summary>
        /// 获取所有文件系统对象
        /// </summary>
        /// <param name="source">源路径</param>
        /// <param name="topDirectory">顶级文件夹</param>
        /// <returns>字典中Key为完整路径，Value为文件(夹)名称</returns>
        private static Dictionary<string, string> GetAllFileSystemEntities(string source, string topDirectory)
        {
            Dictionary<string, string> entitiesDictionary = new Dictionary<string, string>();
            entitiesDictionary.Add(source, source.Replace(topDirectory, ""));

            if (Directory.Exists(source))
            {
                //一次性获取下级所有目录，避免递归
                string[] directories = Directory.GetDirectories(source, "*.*", SearchOption.AllDirectories);
                foreach (string directory in directories)
                {
                    entitiesDictionary.Add(directory, directory.Replace(topDirectory, ""));
                }

                string[] files = Directory.GetFiles(source, "*.*", SearchOption.AllDirectories);
                foreach (string file in files)
                {
                    entitiesDictionary.Add(file, file.Replace(topDirectory, ""));
                }
            }

            return entitiesDictionary;
        }

        private static bool IsDirectory(string path)
        {

            if (path[path.Length - 1] == '/')
            {
                return true;
            }
            return false;
        }

        public static void BackupAssetOnPreBuild()
        {
            string src = Application.dataPath;
            string dest = string.Format("{0}/Temp", src);
            if (AssetDatabase.IsValidFolder("Assets/Temp") == false)
            {
                AssetDatabase.CreateFolder("Assets", "Temp");
            }
            dest = string.Format("{0}/Resources", src);
            try
            {
                string[] paths = Directory.GetDirectories(dest);
                for (int i = 0; i < paths.Length; i++)
                {
                    dest = paths[i];
                    dest = NormalizePath(dest);
                    int index = dest.LastIndexOf("/");
                    if (index < 0)
                    {
                        continue;
                    }
                    string folder = dest.Substring(index + 1);
                    if (folder == "Internal")
                    {
                        continue;
                    }
                    string from = string.Format("Assets/Resources/{0}", folder);
                    string to = string.Format("Assets/Temp/{0}", folder);
                    AssetDatabase.MoveAsset(from, to);
                }
            }
            catch (DirectoryNotFoundException e)
            {
                Helper.LogError("BackupAssetOnPreBuild: exception is " + e.Message);
            }
            AssetDatabase.Refresh();
        }

        public static void RestoreAssetOnPostBuild()
        {
            string src = Application.dataPath;
            string dest = string.Format("{0}/Resources", src);
            dest = string.Format("{0}/Temp", src);
            try
            {
                string[] paths = Directory.GetDirectories(dest);
                for (int i = 0; i < paths.Length; i++)
                {
                    dest = paths[i];
                    dest = NormalizePath(dest);
                    int index = dest.LastIndexOf("/");
                    if (index < 0)
                    {
                        continue;
                    }
                    string folder = dest.Substring(index + 1);
                    string from = string.Format("Assets/Temp/{0}", folder);
                    string to = string.Format("Assets/Resources/{0}", folder);
                    AssetDatabase.MoveAsset(from, to);
                }
                Helper.DeleteDirectory(Application.dataPath + "/Temp");
            }
            catch (Exception e)
            {
                Helper.LogError("RestoreAssetOnPostBuild: exception is " + e.Message);
            }
            AssetDatabase.Refresh();
        }
    }
}

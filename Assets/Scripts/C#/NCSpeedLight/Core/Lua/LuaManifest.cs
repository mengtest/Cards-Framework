/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LuaManifest.cs
           // Describle: lua 清单文件
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public class LuaManifest
    {
        public class FileInfo
        {
            public string Name;
            public string MD5;
            public int Size;
        }
        public class DifferInfo
        {
            public List<FileInfo> Added = new List<FileInfo>();
            public List<FileInfo> Modified = new List<FileInfo>();
            public List<FileInfo> Deleted = new List<FileInfo>();
        }

        public int TotalFileSize;
        public string MD5;
        public byte[] Bytes;
        public string FilePath;
        public List<FileInfo> Files = new List<FileInfo>();

        public LuaManifest(string filePath)
        {
            TotalFileSize = 0;
            FilePath = filePath;
        }

        public void Load(byte[] bytes)
        {
            MD5 = Helper.BytesMD5(bytes);
            Bytes = bytes;
            MemoryStream ms = new MemoryStream(bytes);
            StreamReader sr = new StreamReader(ms);
            while (sr.EndOfStream == false)
            {
                string line = sr.ReadLine();
                string[] fs = line.Split('|');
                FileInfo info = new FileInfo();
                info.Name = fs[0];
                info.MD5 = fs[1];
                int.TryParse(fs[2], out info.Size);
                Files.Add(info);
                TotalFileSize += info.Size;
            }
            ms.Close();
            sr.Close();
        }

        public IEnumerator Load(bool streaming, bool usewww)
        {
            if ((streaming && Application.platform == RuntimePlatform.Android) || usewww)
            {
                WWW www = new WWW(FilePath);
                yield return www;
                if (string.IsNullOrEmpty(www.error))
                {
                    Load(www.bytes);
                    yield return 0;
                }
                else
                {
                    Helper.LogError("LuaManifest.Load: www error is " + www.error);
                    yield return null;
                }
            }
            else
            {
                byte[] bytes = Helper.OpenFile(FilePath);
                if (bytes == null)
                {
                    yield return null;
                }
                else
                {
                    Load(bytes);
                    yield return 0;
                }
            }
        }

        public bool Equals(LuaManifest o)
        {
            return MD5 == o.MD5;
        }

        public DifferInfo CompareWith(LuaManifest manifest)
        {
            DifferInfo differInfo = new DifferInfo();

            List<FileInfo> selfFiles = Files;
            List<FileInfo> targetFiles = manifest.Files;
            List<FileInfo> visited = new List<FileInfo>();

            for (int i = 0; i < selfFiles.Count; i++)
            {
                FileInfo selfFile = selfFiles[i];
                string localFilePath = Constants.SCRIPT_BUNDLE_PATH + selfFile.Name;
                string md5 = Helper.FileMD5(localFilePath);
                bool hasEle = false;
                for (int j = 0; j < targetFiles.Count; j++)
                {
                    FileInfo targetFile = targetFiles[j];
                    if (targetFile.Name == selfFile.Name)
                    {
                        if (targetFile.MD5 != md5)
                        {
                            differInfo.Modified.Add(targetFile);
                        }
                        hasEle = true;
                        visited.Add(targetFile);
                        break;
                    }
                }
                if (hasEle == false)
                {
                    differInfo.Deleted.Add(selfFile);
                }
            }
            for (int i = 0; i < targetFiles.Count; i++)
            {
                FileInfo fileInfo = targetFiles[i];
                if (visited.Contains(fileInfo) == false)
                {
                    differInfo.Added.Add(fileInfo);
                }
            }
            return differInfo;
        }
    }
}

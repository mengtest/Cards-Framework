using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public class FileManifest
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
            public bool HasDiffer
            {
                get
                {
                    return Added.Count > 0 || Modified.Count > 0 || Deleted.Count > 0;
                }
            }

            public bool NeedUpdate
            {
                get
                {
                    return Added.Count > 0 || Modified.Count > 0;
                }
            }

            public int UpdateSize
            {
                get
                {
                    int size = 0;
                    for (int i = 0; i < Added.Count; i++)
                    {
                        FileInfo info = Added[i];
                        if (info != null)
                        {
                            size += info.Size;
                        }
                    }
                    for (int i = 0; i < Modified.Count; i++)
                    {
                        FileInfo info = Modified[i];
                        if (info != null)
                        {
                            size += info.Size;
                        }
                    }
                    return size;
                }
            }
        }

        public int TotalFileSize;
        public string MD5;
        public byte[] Bytes;
        //public string RemoteDirectory;
        public string Directory;
        public string Name;
        public string Error;
        public List<FileInfo> FileInfos = new List<FileInfo>();

        public FileManifest(string directory, string name)
        {
            TotalFileSize = 0;
            Directory = directory;
            Name = name;
        }

        private void Load(byte[] bytes)
        {
            MD5 = Helper.BytesMD5(bytes);
            Bytes = bytes;
            MemoryStream ms = new MemoryStream(bytes);
            StreamReader sr = new StreamReader(ms);
            while (sr.EndOfStream == false)
            {
                string line = sr.ReadLine();
                if (string.IsNullOrEmpty(line)) continue;
                string[] fs = line.Split('|');
                FileInfo info = new FileInfo();
                info.Name = fs[0];
                info.MD5 = fs[1];
                int.TryParse(fs[2], out info.Size);
                FileInfos.Add(info);
                TotalFileSize += info.Size;
            }
            ms.Close();
            sr.Close();
        }

        public void Initialize()
        {
            Error = string.Empty;
            string path = Directory + Name;
            byte[] bytes = Helper.OpenFile(path);
            if (bytes == null)
            {
                Error = "bytes is nil.";
                return;
            }
            else
            {
                Load(bytes);
            }
        }

        public IEnumerator Initialize(bool streaming, bool usewww)
        {
            Error = string.Empty;
            if ((streaming && Application.platform == RuntimePlatform.Android) || usewww)
            {
                string url = Directory + Name;
                using (WWW www = new WWW(url))
                {
                    yield return www;
                    if (string.IsNullOrEmpty(www.error) && www.isDone)
                    {
                        Load(www.bytes);
                        yield return 0;
                    }
                    else
                    {
                        Error = "www error is " + www.error;
                        Helper.LogError("FileManifest.Load: " + Error);
                        yield return null;
                    }
                }
            }
            else
            {
                string path = Directory + Name;
                byte[] bytes = Helper.OpenFile(path);
                if (bytes == null)
                {
                    Error = "bytes is nil.";
                    yield return null;
                }
                else
                {
                    Load(bytes);
                    yield return 0;
                }
            }
        }

        public bool Equals(FileManifest o)
        {
            return MD5 == o.MD5;
        }

        public DifferInfo CompareWith(FileManifest manifest)
        {
            DifferInfo differInfo = new DifferInfo();

            List<FileInfo> selfFiles = FileInfos;
            List<FileInfo> compareFiles = manifest.FileInfos;
            List<FileInfo> visitedFiles = new List<FileInfo>();

            for (int i = 0; i < selfFiles.Count; i++)
            {
                FileInfo selfFile = selfFiles[i];
                bool existFile = false;
                for (int j = 0; j < compareFiles.Count; j++)
                {
                    FileInfo compareFile = compareFiles[j];
                    if (compareFile.Name == selfFile.Name)
                    {
                        if (selfFile.MD5 != compareFile.MD5)
                        {
                            differInfo.Modified.Add(compareFile);
                        }
                        existFile = true;
                        visitedFiles.Add(compareFile);
                        break;
                    }
                }
                if (existFile == false)
                {
                    differInfo.Deleted.Add(selfFile);
                }
            }
            for (int i = 0; i < compareFiles.Count; i++)
            {
                FileInfo fileInfo = compareFiles[i];
                if (visitedFiles.Contains(fileInfo) == false)
                {
                    differInfo.Added.Add(fileInfo);
                }
            }
            return differInfo;
        }
    }
}

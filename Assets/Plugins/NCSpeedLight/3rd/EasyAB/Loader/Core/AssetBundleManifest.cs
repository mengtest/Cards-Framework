/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: AssetBundleManifest.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.IO;
using System.Collections.Generic;
using UnityEngine;

namespace EasyAB
{
    public sealed class AssetBundleInfo
    {
        public List<string> Dependencies;
        public int Version;
    }
    public sealed class AssetBundleManifest
    {
        private static Dictionary<string, AssetBundleInfo> m_DependencyManifest = new Dictionary<string, AssetBundleInfo>();
        public static readonly string MANIFEST_FILE = "dependency.txt";
        public static void Initialize()
        {
            string filepath = SharedVariable.ASSET_BUNDLE_PATH + MANIFEST_FILE;
            string text = null;
            using (var file = File.Open(filepath, FileMode.Open))
            {
                BinaryReader br = new BinaryReader(file);
                text = System.Text.Encoding.UTF8.GetString(br.ReadBytes((int)file.Length));
                br.Close();
                file.Close();
            }
            if (text != null)
            {
                string[] lines = text.Replace("\r\n", "\n").Split(new char[] { '\n' }, System.StringSplitOptions.RemoveEmptyEntries);
                string space = "    ";
                List<string> current_list = null;
                for (int i = 0; i < lines.Length; i++)
                {
                    string line = lines[i];
                    if (line.StartsWith(space))
                    {
                        string dep = line.Substring(space.Length);
                        dep = dep.Substring(0, dep.IndexOf(">"));
                        //dep = Utility.GetAssetPathWithoutExt(dep);
                        current_list.Add(dep);
                    }
                    else if (!string.IsNullOrEmpty(line))
                    {
                        string name = line.Substring(0, line.IndexOf(">"));
                        //name = Utility.GetAssetPathWithoutExt(name);
                        string version = line.Substring(line.IndexOf(">") + 1);

                        AssetBundleInfo info = new AssetBundleInfo();
                        info.Dependencies = new List<string>();
                        info.Version = System.Convert.ToInt32(version);
                        current_list = info.Dependencies;
                        if (m_DependencyManifest.ContainsKey(name) == false)
                            m_DependencyManifest.Add(name, info);
                    }
                }
            }
        }
        public static string[] GetAllDependencies(string bundleName)
        {
            if (string.IsNullOrEmpty(bundleName))
            {
                return null;
            }
            AssetBundleInfo info;
            if (m_DependencyManifest.TryGetValue(bundleName, out info))
            {
                return info.Dependencies.ToArray();
            }
            return null;
        }
        public static string GetAssetBundleMD5(string bundleName)
        {
            if (string.IsNullOrEmpty(bundleName))
            {
                return string.Empty;
            }
            else
            {
                byte[] src = System.Text.Encoding.UTF8.GetBytes(bundleName);
                var md5 = System.Security.Cryptography.MD5.Create();
                byte[] bytes = md5.ComputeHash(src);
                md5.Clear();
                var sb = new System.Text.StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    sb.Append(bytes[i].ToString("x2"));
                }
                return sb.ToString();
            }
        }
    }
}

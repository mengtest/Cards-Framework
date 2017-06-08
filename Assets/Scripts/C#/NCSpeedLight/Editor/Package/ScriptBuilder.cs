/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: ScriptBuilder.cs
			// Describle:   build lua files.
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

#pragma warning disable 0618

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using UnityEditor;
using UnityEngine;

namespace NCSpeedLight
{
    public class ScriptBuilder : Builder
    {
        public static bool IsCompiling = false;
        public static bool arm64 = false;
        public ScriptBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }
        public override void Build()
        {
            arm64 = false;
            int build = 1;
#if UNITY_IOS
            build = 2;
#endif
            for (int i = 0; i < build; i++)
            {
                if (!PrepareDirectory()) return;

                IsCompiling = true;

                List<string> byteFiles = new List<string>();
                LuaFileToBytes(byteFiles);

                ProcessBuild();

                CopyProtocolFiles();

                DeleteLuaBytesFiles(byteFiles);

                GenerateManifest();

                IsCompiling = false;

                arm64 = true;
            }
        }

        private static bool PrepareDirectory()
        {
            if (Directory.Exists(Constants.LUA_SCRIPT_WORKSPACE) == false)
            {
                Helper.LogError("Directory doesn't exist: " + Constants.LUA_SCRIPT_WORKSPACE);
                return false;
            }
            string targetPath;
#if UNITY_IOS
            if (arm64)
            {
                targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x64/";
            }
            else
            {
                targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x86/";
            }
#else
            targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH;
#endif
            if (Directory.Exists(targetPath) == false)
            {
                Directory.CreateDirectory(targetPath);
            }
            else
            {
                Directory.Delete(targetPath, true);
                Directory.CreateDirectory(targetPath);
            }
            return true;
        }

        private static void LuaFileToBytes(List<string> files)
        {
            if (files == null)
            {
                files = new List<string>();
            }
            CollectFiles(Constants.LUA_SCRIPT_WORKSPACE, files);
            if (files != null && files.Count >= 0)
            {
                for (int i = 0; i < files.Count; i++)
                {
                    string file = files[i];
                    if (string.IsNullOrEmpty(file)) continue;
                    if (Constants.SCRIPT_BYTE_CODE_MODE)
                    {
                        EncodeLuaFile(file, file + ".bytes");
                    }
                    else
                    {
                        File.Copy(file, file + ".bytes", true);
                    }
                }
            }
            AssetDatabase.Refresh();
        }

        private static void ProcessBuild()
        {
            Caching.CleanCache();

            string[] subDirectories = Directory.GetDirectories(Constants.LUA_SCRIPT_WORKSPACE, "*", SearchOption.AllDirectories);

            if (subDirectories != null && subDirectories.Length > 0)
            {
                for (int i = 0; i < subDirectories.Length; i++)
                {
                    string directory = subDirectories[i];
                    BuildLuaScriptsToBundle(directory);
                }
            }
        }

        private static void CopyProtocolFiles()
        {
            string targetPath;
#if UNITY_IOS
            if (arm64)
            {
                targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x64/";
            }
            else
            {
                targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x86/";
            }
#else
            targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH;
#endif
            List<string> files = new List<string>();
            CollectFiles(Constants.LUA_SCRIPT_WORKSPACE, files, "*.pb");
            for (int i = 0; i < files.Count; i++)
            {
                string outputPath = targetPath + Path.GetFileName(files[i]);
                File.Copy(files[i], outputPath, true);
            }
        }

        private static void BuildLuaScriptsToBundle(string directory)
        {
            directory = directory.Replace('\\', '/');
            directory = directory.Substring(directory.IndexOf("Assets/"));
            string[] files = Directory.GetFiles(directory, "*.lua.bytes");

            if (files != null && files.Length > 0)
            {
                string bundleName = directory.Substring(directory.IndexOf("Lua/") + 4);
                bundleName = bundleName.Replace("/", "_");
                bundleName = bundleName.ToLower();
                bundleName = bundleName + Constants.SCRIPT_BUNDLE_FILE_EXTENSION;
                List<UnityEngine.Object> assets = new List<UnityEngine.Object>();
                for (int i = 0; i < files.Length; i++)
                {
                    UnityEngine.Object obj = AssetDatabase.LoadMainAssetAtPath(files[i]);
                    assets.Add(obj);
                }

                BuildAssetBundleOptions options = BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets |
                                                BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.UncompressedAssetBundle;

                string outputPath;
#if UNITY_IOS
                if (arm64)
                {
                    outputPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x64/" + bundleName;
                }
                else
                {
                    outputPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x86/" + bundleName;
                }
#else
                outputPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + bundleName;
#endif

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

        private static void GenerateManifest()
        {
            string targetPath;
#if UNITY_IOS
            if (arm64)
            {
                targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x64/";
            }
            else
            {
                targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH + "x86/";
            }
#else
            targetPath = Constants.BUILD_SCRIPT_BUNDLE_PATH;
#endif
            string filePath = targetPath + "/manifest.txt";
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            List<string> files = new List<string>();
            CollectFiles(targetPath, files, "*");
            FileStream fs = new FileStream(filePath, FileMode.CreateNew);
            StreamWriter sw = new StreamWriter(fs);
            for (int i = 0; i < files.Count; i++)
            {
                string file = files[i];
                if (file.EndsWith(".meta")) continue;
                string md5 = Helper.FileMD5(file);
                string value = file.Replace(targetPath, string.Empty);
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

        public static void EncodeLuaFile(string srcFile, string outFile)
        {
            if (!srcFile.ToLower().EndsWith(".lua"))
            {
                File.Copy(srcFile, outFile, true);
                return;
            }
            bool isWin = true;
            string luaexe = string.Empty;
            string args = string.Empty;
            string exedir = string.Empty;
            string currDir = Directory.GetCurrentDirectory();
            if (Application.platform == RuntimePlatform.WindowsEditor)
            {
#if UNITY_IOS
                if (arm64)
                {
                    isWin = true;
                    luaexe = "luajit.exe";
                    args = "-b " + srcFile + " " + outFile;
                    exedir = Application.dataPath.Replace("Assets", "") + "/LuaEncoder/luajit_ios/x64/";
                }
                else
                {
                    isWin = true;
                    luaexe = "luajit.exe";
                    args = "-b " + srcFile + " " + outFile;
                    exedir = Application.dataPath.Replace("Assets", "") + "/LuaEncoder/luajit_ios/x86/";
                }
#else
                isWin = true;
                luaexe = "luajit.exe";
                args = "-b " + srcFile + " " + outFile;
                exedir = Application.dataPath.Replace("Assets", "") + "/LuaEncoder/luajit/";
#endif
            }
            else if (Application.platform == RuntimePlatform.OSXEditor)
            {
                isWin = false;
                luaexe = "./luac";
                args = "-o " + outFile + " " + srcFile;
                exedir = Application.dataPath.Replace("Assets", "") + "/LuaEncoder/luavm/";
            }
            Directory.SetCurrentDirectory(exedir);
            ProcessStartInfo info = new ProcessStartInfo();
            info.FileName = luaexe;
            info.Arguments = args;
            info.WindowStyle = ProcessWindowStyle.Hidden;
            info.UseShellExecute = isWin;
            info.ErrorDialog = true;
            Helper.Log(info.FileName + " " + info.Arguments);

            Process pro = Process.Start(info);
            pro.WaitForExit();
            Directory.SetCurrentDirectory(currDir);
        }
    }
}

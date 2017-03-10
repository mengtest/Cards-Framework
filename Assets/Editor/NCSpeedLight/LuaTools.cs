//using System.IO;
//using System.Collections.Generic;
//using UnityEditor;
//using UnityEngine;

//[InitializeOnLoad]
//public class LuaModificationListener
//{
//    static LuaModificationListener()
//    {
//        new DirectoryModificationProcessor(LuaTools.LUA_SCRIPT_DIRECTORY, (o, args) =>
//          {
//              //if (IsCompiling == false && args.FullPath.EndsWith(".lua") == true)
//              //{
//              //    EditorLoom.CallMainThread(()=> {
//              //        LuaCompilerTools.CompileSingleLua(args.FullPath);
//              //        Debug.Log("Lua script has beed recompiled: " + args.FullPath);
//              //    });
//              //}
//          });
//    }
//}


//public class LuaTools
//{
//    public static bool IsCompiling = false;

//    public static string LUA_SCRIPT_DIRECTORY = Application.dataPath + "/Scripts/Lua/";

//    //public static string LUA_BUNDLE_OUTPUT_DIRECTORY = SharedVariable.DATA_PATH +   "/Lua/";

//    [MenuItem("Lua Tools/Compile")]
//    public static void CompileLua()
//    {
//        if (!PrepareDirectory()) return;

//        IsCompiling = true;

//        List<string> byteFiles = new List<string>();
//        LuaFileToBytes(byteFiles);

//        ProcessBuild();

//        CopyProtocolFiles();

//        DeleteLuaBytesFiles(byteFiles);

//        GenerateLuaFileIndex();

//        IsCompiling = false;
//    }


//    [MenuItem("Lua Tools/Copy LuaBundles")]
//    public static void CopyLuaBundles()
//    {
//    }

//    private static bool PrepareDirectory()
//    {
//        if (Directory.Exists(LUA_SCRIPT_DIRECTORY) == false)
//        {
//            Debug.LogError("Directory doesn't exist: " + LUA_SCRIPT_DIRECTORY);
//            return false;
//        }
//        if (Directory.Exists(SharedVariable.LUA_BUNDLE_PATH) == false)
//        {
//            Directory.CreateDirectory(SharedVariable.LUA_BUNDLE_PATH);
//        }
//        else
//        {
//            Directory.Delete(SharedVariable.LUA_BUNDLE_PATH, true);
//            Directory.CreateDirectory(SharedVariable.LUA_BUNDLE_PATH);
//        }
//        return true;
//    }

//    private static void LuaFileToBytes(List<string> files)
//    {
//        if (files == null)
//        {
//            files = new List<string>();
//        }
//        CollecFiles(LUA_SCRIPT_DIRECTORY, files);
//        if (files != null && files.Count >= 0)
//        {
//            for (int i = 0; i < files.Count; i++)
//            {
//                string file = files[i];
//                if (string.IsNullOrEmpty(file)) continue;
//                File.Copy(file, file + ".bytes", true);
//            }
//        }
//        AssetDatabase.Refresh();
//    }

//    private static void ProcessBuild()
//    {
//        Caching.CleanCache();

//        string[] subDirectories = Directory.GetDirectories(LUA_SCRIPT_DIRECTORY, "*", SearchOption.AllDirectories);

//        if (subDirectories != null && subDirectories.Length > 0)
//        {
//            for (int i = 0; i < subDirectories.Length; i++)
//            {
//                string directory = subDirectories[i];
//                BuildLuaBundle(directory);
//            }
//        }
//    }

//    private static void CopyProtocolFiles()
//    {
//        List<string> files = new List<string>();
//        CollecFiles(LUA_SCRIPT_DIRECTORY, files, "*.pb");
//        for (int i = 0; i < files.Count; i++)
//        {
//            string outputPath = SharedVariable.LUA_BUNDLE_PATH + Path.GetFileName(files[i]);
//            File.Copy(files[i], outputPath, true);
//        }
//    }

//    private static void BuildLuaBundle(string directory)
//    {
//        directory = directory.Replace('\\', '/');
//        directory = directory.Substring(directory.IndexOf("Assets/"));
//        string[] files = Directory.GetFiles(directory, "*.lua.bytes");

//        if (files != null && files.Length > 0)
//        {
//            string bundleName = directory.Substring(directory.IndexOf("Lua/") + 4);
//            bundleName = bundleName.Replace("/", "_");
//            bundleName = bundleName.ToLower() + ".unity3d";
//            List<Object> assets = new List<Object>();
//            for (int i = 0; i < files.Length; i++)
//            {
//                Object obj = AssetDatabase.LoadMainAssetAtPath(files[i]);
//                assets.Add(obj);
//            }

//            BuildAssetBundleOptions options = BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets |
//                                            BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.UncompressedAssetBundle;

//            string outputPath = SharedVariable.LUA_BUNDLE_PATH + bundleName;

//            if (File.Exists(outputPath))
//            {
//                File.Delete(outputPath);
//            }

//            BuildPipeline.BuildAssetBundle(null, assets.ToArray(), outputPath, options, EditorUserBuildSettings.activeBuildTarget);
//        }
//    }

//    private static void DeleteLuaBytesFiles(List<string> files)
//    {
//        if (files != null && files.Count >= 0)
//        {
//            for (int i = 0; i < files.Count; i++)
//            {
//                string file = files[i];
//                if (string.IsNullOrEmpty(file)) continue;
//                if (File.Exists(file + ".bytes") == false) continue;
//                File.Delete(file + ".bytes");
//            }
//        }
//        AssetDatabase.Refresh();
//    }

//    private static void GenerateLuaFileIndex()
//    {
//        string directory = SharedVariable.LUA_BUNDLE_PATH;

//        string filePath = directory + "/files.txt";
//        if (File.Exists(filePath))
//        {
//            File.Delete(filePath);
//        }

//        List<string> files = new List<string>();
//        CollecFiles(directory, files, "*");

//        FileStream fs = new FileStream(filePath, FileMode.CreateNew);
//        StreamWriter sw = new StreamWriter(fs);
//        for (int i = 0; i < files.Count; i++)
//        {
//            string file = files[i];
//            if (file.EndsWith(".meta")) continue;
//            string md5 = Helper.MD5File(file);
//            string value = file.Replace(directory, string.Empty);
//            sw.WriteLine(value + "|" + md5);
//        }
//        sw.Close();
//        fs.Close();

//        AssetDatabase.Refresh();
//    }

//    public static void CompileSingleLua(string luapath)
//    {
//        //IsCompiling = true;
//        //BuildAssetBundleOptions options = BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets | BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.UncompressedAssetBundle;
//        //Caching.CleanCache();

//        //File.Copy(luapath, luapath + ".bytes", true);
//        //Object asset = AssetDatabase.LoadMainAssetAtPath(luapath + ".bytes");
//        //string relativePath = GetRelativePath(luapath);
//        //string outputPath = LUA_BUNDLE_OUTPUT_DIRECTORY + relativePath;
//        //if (Directory.Exists(Path.GetDirectoryName(outputPath)) == false)
//        //{
//        //    Directory.CreateDirectory(Path.GetDirectoryName(outputPath));
//        //}
//        //if (File.Exists(outputPath))
//        //{
//        //    File.Delete(outputPath);
//        //}

//        //BuildPipeline.BuildAssetBundle(asset, new Object[] { asset }, outputPath, options, EditorUserBuildSettings.activeBuildTarget);
//        //File.Delete(luapath + ".bytes");
//        //AssetDatabase.Refresh();
//        //IsCompiling = false;
//    }

//    public static string GetRelativePath(string assetPath)
//    {
//        return assetPath.Substring(Application.dataPath.Length + 1);
//    }

//    private static List<string> CollecFiles(string directory, List<string> output, string extension = "*.lua")
//    {
//        if (output == null)
//        {
//            output = new List<string>();
//        }
//        if (Directory.Exists(directory))
//        {
//            string[] files = Directory.GetFiles(directory, extension);
//            for (int i = 0; i < files.Length; i++)
//            {
//                string file = NormallizePath(files[i]);
//                output.Add(file);
//            }
//            string[] dirs = Directory.GetDirectories(directory);
//            for (int i = 0; i < dirs.Length; i++)
//            {
//                CollecFiles(dirs[i], output, extension);
//            }
//        }
//        return output;
//    }

//    public static string NormallizePath(string path)
//    {
//        return path.Replace("\\", "/");
//    }

//    public static string GetFileDirectory(string fullpath)
//    {
//        if (string.IsNullOrEmpty(fullpath))
//        {
//            return null;
//        };
//        string[] paths = fullpath.Split(new char[] { '/' });
//        if (paths.Length == 0)
//        {
//            return null;
//        }
//        return paths[paths.Length - 1];
//    }

//}
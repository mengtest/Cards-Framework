using System.IO;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[InitializeOnLoad]
public class LuaCompiler
{
    public static bool IsCompiling = false;

    public static string LUA_SCRIPT_DIRECTORY = Application.dataPath + "/Scripts/Lua/";
    public static string LUA_BUNDLE_OUTPUT_DIRECTORY = Application.streamingAssetsPath + "/" + EditorUserBuildSettings.activeBuildTarget + "/";

    static LuaCompiler()
    {

        new DirectoryModificationProcessor(LUA_SCRIPT_DIRECTORY, (o, args) =>
          {
              //if (IsCompiling == false && args.FullPath.EndsWith(".lua") == true)
              //{
              //    EditorLoom.CallMainThread(()=> {
              //        LuaCompilerTools.CompileSingleLua(args.FullPath);
              //        Debug.Log("Lua script has beed recompiled: " + args.FullPath);
              //    });
              //}
          });
    }
}


public class LuaCompilerTools
{
    [MenuItem("Lua Tools/Compile")]
    public static void CompileLua()
    {
        if (Directory.Exists(LuaCompiler.LUA_SCRIPT_DIRECTORY) == false)
        {
            Debug.LogError("Directory doesn't exist: " + LuaCompiler.LUA_SCRIPT_DIRECTORY);
            return;
        }
        List<string> files = new List<string>();
        CollectLuaFiles(LuaCompiler.LUA_SCRIPT_DIRECTORY, files);
        if (files == null || files.Count == 0)
        {
            Debug.LogError("Nothing to compile,please check the directory: " + LuaCompiler.LUA_SCRIPT_DIRECTORY);
        }
        else
        {
            LuaCompiler.IsCompiling = true;
            BuildAssetBundleOptions options = BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets |
                                          BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.UncompressedAssetBundle;
            Caching.CleanCache();

            for (int i = 0; i < files.Count; i++)
            {
                string file = files[i];
                if (string.IsNullOrEmpty(file)) continue;
                File.Copy(file, file + ".bytes", true);
                Object asset = AssetDatabase.LoadMainAssetAtPath(file + ".bytes");
                string relativePath = GetRelativePath(file);
                string outputPath = LuaCompiler.LUA_BUNDLE_OUTPUT_DIRECTORY + relativePath + ".unity3d";
                if (Directory.Exists(Path.GetDirectoryName(outputPath)) == false)
                {
                    Directory.CreateDirectory(Path.GetDirectoryName(outputPath));
                }
                if (File.Exists(outputPath))
                {
                    File.Delete(outputPath);
                }
                BuildPipeline.BuildAssetBundle(asset, null, outputPath, options, EditorUserBuildSettings.activeBuildTarget);
                File.Delete(file + ".bytes");
            }
            AssetDatabase.Refresh();
            LuaCompiler.IsCompiling = false;
        }
    }

    public static void CompileSingleLua(string luapath)
    {
        LuaCompiler.IsCompiling = true;
        BuildAssetBundleOptions options = BuildAssetBundleOptions.CollectDependencies | BuildAssetBundleOptions.CompleteAssets |
                                      BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.UncompressedAssetBundle;
        Caching.CleanCache();

        File.Copy(luapath, luapath + ".bytes", true);
        Object asset = AssetDatabase.LoadMainAssetAtPath(luapath + ".bytes");
        string relativePath = GetRelativePath(luapath);
        string outputPath = LuaCompiler.LUA_BUNDLE_OUTPUT_DIRECTORY + relativePath + ".unity3d";
        if (Directory.Exists(Path.GetDirectoryName(outputPath)) == false)
        {
            Directory.CreateDirectory(Path.GetDirectoryName(outputPath));
        }
        if (File.Exists(outputPath))
        {
            File.Delete(outputPath);
        }

        BuildPipeline.BuildAssetBundle(asset, null, outputPath, options, EditorUserBuildSettings.activeBuildTarget);
        File.Delete(luapath + ".bytes");
        AssetDatabase.Refresh();
        LuaCompiler.IsCompiling = false;
    }

    public static string GetRelativePath(string assetPath)
    {
        return assetPath.Substring(Application.dataPath.Length + 1);
    }

    private static List<string> CollectLuaFiles(string directory, List<string> output)
    {
        if (Directory.Exists(directory))
        {
            string[] files = Directory.GetFiles(directory, "*.lua");
            for (int i = 0; i < files.Length; i++)
            {
                string file = NormallizePath(files[i]);
                output.Add(file);
            }
            string[] dirs = Directory.GetDirectories(directory);
            for (int i = 0; i < dirs.Length; i++)
            {
                CollectLuaFiles(dirs[i], output);
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
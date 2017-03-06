﻿/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LuaManager.cs
           // Describle: lua脚本管理器
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using System.IO;
using UnityEngine;
using LuaInterface;

public class LuaManager : MonoBehaviour
{
    public static GameObject Root;

    public static LuaState LuaState;

    public static LuaLooper LuaLooper = null;

    public static LuaLoader LuaLoader = null;

    private static LuaManager m_Instance;

    public static LuaManager Instance
    {
        get
        {
            return m_Instance;
        }
    }

    private void Awake()
    {
        m_Instance = this;
    }

    private void OnDestroy()
    {
        m_Instance = null;
    }

    public static void Initialize()
    {
        Root = new GameObject("LuaManager");
        if (Game.Instance)
        {
            Root.transform.SetParent(Game.Instance.transform);
        }
        Root.AddComponent<LuaManager>();

        LuaState = new LuaState();

        //LuaLoader = new LuaLoader();

        InitializeLibs();
        InitializeCJson();
        LuaState.LuaSetTop(0);
        LuaBinder.Bind(LuaState);
        LuaCoroutine.Register(LuaState, Instance);

        InitializeLuaDirectory();
        InitializeCoreLuaBundle();

        LuaState.Start();

        LuaLooper = Instance.gameObject.AddComponent<LuaLooper>();
        LuaLooper.luaState = LuaState;

        InitializeLuaFiles();
    }

    private static void InitializeLibs()
    {
        LuaState.OpenLibs(LuaDLL.luaopen_pb);
        LuaState.OpenLibs(LuaDLL.luaopen_sproto_core);
        LuaState.OpenLibs(LuaDLL.luaopen_protobuf_c);
        LuaState.OpenLibs(LuaDLL.luaopen_lpeg);
        LuaState.OpenLibs(LuaDLL.luaopen_bit);
        LuaState.OpenLibs(LuaDLL.luaopen_socket_core);
    }

    private static void InitializeCJson()
    {
        LuaState.LuaGetField(LuaIndexes.LUA_REGISTRYINDEX, "_LOADED");
        LuaState.OpenLibs(LuaDLL.luaopen_cjson);
        LuaState.LuaSetField(-2, "cjson");
        LuaState.OpenLibs(LuaDLL.luaopen_cjson_safe);
        LuaState.LuaSetField(-2, "cjson.safe");
    }

    private static void InitializeLuaFiles()
    {
        DoString("require 'NCSpeedLight/Utils/Define'");
    }

    private static void InitializeLuaDirectory()
    {
        //LuaState.AddSearchPath(Application.dataPath + "/Scripts/Lua/");
    }

    private static void InitializeCoreLuaBundle()
    {

    }

    public static object[] DoFile(string filename)
    {
        if (LuaState != null && string.IsNullOrEmpty(filename) == false)
        {
            return LuaState.DoFile(filename);
        }
        return null;
    }

    public static object[] DoString(string str)
    {
        if (LuaState != null && string.IsNullOrEmpty(str) == false)
        {
            return LuaState.DoString(str);
        }
        return null;
    }

    public static object[] CallFunction(string fullFuncName, params object[] args)
    {
        LuaFunction func = LuaState.GetFunction(fullFuncName, false);
        if (func != null)
        {
            return func.Call(args);
        }
        return null;
    }

    public static void PushParam(string moduleName, params object[] args)
    {
        if (LuaState != null)
        {
            //LuaState.push
        }
    }

    public static void GC()
    {
        LuaState.LuaGC(LuaGCOptions.LUA_GCCOLLECT);
    }

    public void Close()
    {
    }

}

public class LuaLoader : LuaFileUtils
{
    public LuaLoader()
    {
        instance = this;
        beZip = true;
    }

    /// <summary>
    /// 添加assetbundle形式的lua代码.
    /// </summary>
    /// <param name="bundleName"></param>
    public void AddBundle(string bundleName)
    {
        string url = SharedVariable.DATA_PATH + bundleName.ToLower();
        if (File.Exists(url))
        {
            AssetBundle bundle = AssetBundle.LoadFromFile(url);
            if (bundle)
            {
                bundleName = bundleName.Replace("lua/", "");
                base.AddSearchBundle(bundleName.ToLower(), bundle);
            }
        }
    }

    /// <summary>
    /// 当LuaVM加载Lua文件的时候，这里就会被调用，
    /// 用户可以自定义加载行为，只要返回byte[]即可
    /// </summary>
    /// <param name="fileName"></param>
    /// <returns></returns>
    public override byte[] ReadFile(string fileName)
    {
        return base.ReadFile(fileName);
    }
}

/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LuaBehaviour.cs
           // Describle: lua脚本
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using UnityEngine;

public class LuaBehaviour : MonoBehaviour
{
    public string LuaPath = "Modules/Test/";
    public string LuaName = "Hello";
    protected virtual void Awake()
    {
        LuaManager.DoString(string.Format("require 'NCSpeedLight/{0}{1}'", LuaPath, LuaName));
        LuaManager.CallFunction(LuaName + ".Awake", gameObject);
    }

    protected virtual void Start()
    {
        LuaManager.CallFunction(LuaName + ".Start");
    }

    protected virtual void OnEnable()
    {
        LuaManager.CallFunction(LuaName + ".OnEnable");
    }

    protected virtual void OnDisable()
    {
        LuaManager.CallFunction(LuaName + ".OnDisable");
    }

    protected virtual void Update()
    {
        LuaManager.CallFunction(LuaName + ".Update");
    }

    protected virtual void LateUpdate()
    {
        LuaManager.CallFunction(LuaName + ".LateUpdate");
    }

    protected virtual void OnDestroy()
    {
        LuaManager.CallFunction(LuaName + ".OnDestroy");
    }
}


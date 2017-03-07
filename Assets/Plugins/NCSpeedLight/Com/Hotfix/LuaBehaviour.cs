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
using LuaInterface;

public class LuaBehaviour : MonoBehaviour
{
    public string LuaPath;
    public string LuaName;

    private LuaFunction m_AwakeFunction;
    private LuaFunction m_StartFunction;
    private LuaFunction m_OnEnableFunction;
    private LuaFunction m_OnDisableFunction;
    private LuaFunction m_UpdateFunction;
    private LuaFunction m_LateUpdateFunction;
    private LuaFunction m_OnDestroyFunction;

    protected virtual void Awake()
    {
        LuaManager.DoString(string.Format("require 'NCSpeedLight/{0}{1}'", LuaPath, LuaName));

        m_AwakeFunction = LuaManager.LuaState.GetFunction(LuaName + ".Awake", false);
        m_StartFunction = LuaManager.LuaState.GetFunction(LuaName + ".Start", false);
        m_OnEnableFunction = LuaManager.LuaState.GetFunction(LuaName + ".OnEnable", false);
        m_OnDisableFunction = LuaManager.LuaState.GetFunction(LuaName + ".OnDisable", false);
        m_UpdateFunction = LuaManager.LuaState.GetFunction(LuaName + ".Update", false);
        m_LateUpdateFunction = LuaManager.LuaState.GetFunction(LuaName + ".LateUpdate", false);
        m_OnDestroyFunction = LuaManager.LuaState.GetFunction(LuaName + ".OnDestroy", false);

        if (m_AwakeFunction != null)
        {
            m_AwakeFunction.Call(gameObject);
        }
    }

    protected virtual void Start()
    {
        if (m_StartFunction != null)
        {
            m_StartFunction.Call();
        }
    }

    protected virtual void OnEnable()
    {
        if (m_OnEnableFunction != null)
        {
            m_OnEnableFunction.Call();
        }
    }

    protected virtual void OnDisable()
    {
        if (m_OnDisableFunction != null)
        {
            m_OnDisableFunction.Call();
        }
    }

    protected virtual void Update()
    {
        if (m_UpdateFunction != null)
        {
            m_UpdateFunction.Call();
        }
    }

    protected virtual void LateUpdate()
    {
        if (m_LateUpdateFunction != null)
        {
            m_LateUpdateFunction.Call();
        }
    }

    protected virtual void OnDestroy()
    {
        if (m_OnDestroyFunction != null)
        {
            m_OnDestroyFunction.Call();
        }
    }
}


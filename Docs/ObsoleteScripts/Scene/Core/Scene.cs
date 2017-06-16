/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Scene.cs
			// Describle: 场景基类
			// Created By:  Wells Hsu
			// Date&Time:  2016/1/13 17:59:59
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;
using LuaInterface;

public class Scene : State
{
    public enum LAYER
    {
        Default = 0,
        UI = 5,
        Dialog = 9,
        Terrain = 10,
        SceneEffect = 11,
        Player = 12,
        PlayerEffect = 13,
    }

    public enum Type
    {
        DownloadScene,
        LoginScene,
        HallScene,
        GameScene,
    }

    private SceneEventManager m_EventManager;

    private LuaFunction m_OnCreateFunction;
    private LuaFunction m_BeginFunction;
    private LuaFunction m_UpdateFunction;
    private LuaFunction m_EndFunction;

    public SceneEventManager EventManager
    {
        get { return m_EventManager; }
    }

    public Scene(string name)
        : base(name)
    {
        m_EventManager = new SceneEventManager(this);
        LuaManager.DoString(string.Format("require 'NCSpeedLight.Scenes.{0}'", Name));

        m_OnCreateFunction = LuaManager.LuaState.GetFunction(Name + ".OnCreate", false);
        m_BeginFunction = LuaManager.LuaState.GetFunction(Name + ".Begin", false);
        m_UpdateFunction = LuaManager.LuaState.GetFunction(Name + ".Update", false);
        m_EndFunction = LuaManager.LuaState.GetFunction(Name + ".End", false);

        if (m_OnCreateFunction != null)
        {
            m_OnCreateFunction.Call(this);
        }
    }

    public void RegisterEvent(SceneEventType type, EventHandlerDelegate func)
    {
        if (m_EventManager == null)
        {
            return;
        }
        m_EventManager.Bind((int)type, func);
    }

    public void UnregisterEvent(SceneEventType type, EventHandlerDelegate func)
    {
        if (m_EventManager == null)
        {
            return;
        }
        m_EventManager.Unbind((int)type, func);
    }

    public void NotifyEvent(Evt evt)
    {
        if (m_EventManager == null)
        {
            return;
        }
        m_EventManager.Dispatch(evt);
        return;
    }

    public override void Begin()
    {
        base.Begin();
        if (m_BeginFunction != null)
        {
            m_BeginFunction.Call();
        }
    }

    public override void Update()
    {
        base.Update();
        if (m_UpdateFunction != null)
        {
            m_UpdateFunction.Call();
        }
    }

    public override void End()
    {
        base.End();
        m_EventManager.UnbindAll();
        Resources.UnloadUnusedAssets();
        if (m_EndFunction != null)
        {
            m_EndFunction.Call();
        }
    }
}

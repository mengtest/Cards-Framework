/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: GameScene.cs
			// Describle: 场景基类
			// Created By:  Wells Hsu
			// Date&Time:  2016/1/13 17:59:59
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

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

    private SceneEventManager mEventManager;

    public SceneEventManager EventManager
    {
        get { return mEventManager; }
    }

    public Scene(string sceneName)
        : base(sceneName)
    {
        mEventManager = new SceneEventManager(this);
    }

    public void RegisterSceneEvent(SceneEventType evtType, EventHandlerDelegate func)
    {
        if (mEventManager == null)
        {
            return;
        }
        mEventManager.Bind((int)evtType, func);
    }

    /// <summary>
    /// 解注册场景事件
    /// </summary>
    /// <param name="evtType"></param>
    /// <param name="func"></param>
    public void UnRegisterSceneEvent(SceneEventType evtType, EventHandlerDelegate func)
    {
        if (mEventManager == null)
        {
            return;
        }
        mEventManager.Unbind((int)evtType, func);
    }

    /// <summary>
    /// 广播场景事件
    /// </summary>
    /// <param name="evt"></param>
    public void NotifySceneEvent(Evt evt)
    {
        if (mEventManager == null)
        {
            return;
        }
        mEventManager.Dispatch(evt);
        return;
    }

    public override void Begin()
    {
        return;
    }

    public override void Update()
    {
    }

    public override void End()
    {
        Resources.UnloadUnusedAssets();
        return;
    }
}

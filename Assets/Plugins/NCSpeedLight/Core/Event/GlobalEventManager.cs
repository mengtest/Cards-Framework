/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: GlobalEventManager.cs
           // Describle: 游戏全局事件转发处理
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/
public class GlobalEventManager : EventManager
{
    public static GlobalEventManager m_Instance;
    public static GlobalEventManager Instance
    {
        get
        {
            if (m_Instance == null)
            {
                m_Instance = new GlobalEventManager();
            }
            return m_Instance;
        }
    }

    //public static GlobalEventManager GetInstance()
    //{
    //    return Instance;
    //}
    //private GlobalEventManager() { }

    //public override void Register(int eventID, EventHandlerDelegate handler)
    //{
    //    base.Register(eventID, handler);
    //}
    //public override void Unregister(int eventID, EventHandlerDelegate handler)
    //{
    //    base.Unregister(eventID, handler);
    //}
    //public override void UnregisterAll()
    //{
    //    base.UnregisterAll();
    //}
    //public override void Notify(Event eventObj)
    //{
    //    base.Notify(eventObj);
    //}
}

public enum GlobalEventType
{
    GE_HeroChange,//角色发生切换
    GE_SceneBegin, //场景开始
    GE_LevelWasLoaded, //关卡加载完成
    GE_SceneWasLoaded, //场景加载完成
    GE_SceneEnd, //场景结束

    /// <summary>
    /// 主界面蒙板打开/关闭
    /// </summary>
    GE_SetMainMask,

    GE_ClientCommond,

    GE_NetWorkState,

    GE_EditorCreateCharacter,
}

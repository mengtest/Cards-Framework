/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: LuaView.cs
            // Describle:   
            // Created By:   Wells Hsu
            // Date&Time:  2016/3/26 10:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

namespace NCSpeedLight
{
    public class LuaView : LuaBehaviour
    {
        protected EventHandlerQueue NetEventQueue = new EventHandlerQueue(NetManager.Instance);
        protected override void Awake() { base.Awake(); }
        protected override void Start() { base.Start(); }
        protected override void OnEnable() { base.OnEnable(); }
        protected override void OnDisable() { base.OnDisable(); }
        protected override void Update() { base.Update(); }
        protected override void LateUpdate() { base.LateUpdate(); }
        protected override void OnDestroy()
        {
            base.OnDestroy();
            if (NetEventQueue != null)
            {
                NetEventQueue.RemoveAll();
            }
        }
        public void RegisterNetEvent(int id, EventHandlerDelegate func)
        {
            if (NetEventQueue != null)
            {
                NetEventQueue.Add(id, func);
            }
        }
        public void UnregisterNetEvent(int id, EventHandlerDelegate func)
        {
            if (NetEventQueue != null)
            {
                NetEventQueue.Remove(id, func);
            }
        }
    }
}
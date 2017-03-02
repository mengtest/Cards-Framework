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
    public void RegisterNetEvent(NetworkEventType type, EventHandlerDelegate func)
    {
        if (NetEventQueue != null)
        {
            NetEventQueue.Add((int)type, func);
        }
    }
    public void UnregisterNetEvent(NetworkEventType type, EventHandlerDelegate func)
    {
        if (NetEventQueue != null)
        {
            NetEventQueue.Remove((int)type, func);
        }
    }
    public void SendNetEvent(object obj) { }

    //public void RegisterPlayerEvent(PlayerE)
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace NCSpeedLight
{
    public abstract class Window : MonoBehaviour
    {
        public delegate void PostAwakeDelegate(Window obj);
        public delegate void PostStartDelegate(Window obj);
        public delegate void PostOnEnableDelegate(Window obj);
        public delegate void PostOnDisableDelegate(Window obj);
        public delegate void PostUpdateDelegate(Window obj);
        public delegate void PostLateUpdateDelegate(Window obj);
        public delegate void PostOnDestroyDelegate(Window obj);

        public event PostAwakeDelegate PostAwake;
        public event PostStartDelegate PostStart;
        public event PostOnEnableDelegate PostOnEnable;
        public event PostOnDisableDelegate PostOnDisable;
        public event PostUpdateDelegate PostUpdate;
        public event PostLateUpdateDelegate PostLateUpdate;
        public event PostOnDestroyDelegate PostOnDestroy;

        protected EventHandlerQueue NetEventQueue = new EventHandlerQueue(NetEventManager.Instance);

        protected virtual void Awake() { if (PostAwake != null) { PostAwake.Invoke(this); } }
        protected virtual void Start() { if (PostStart != null) { PostStart.Invoke(this); } }
        protected virtual void OnEnable() { if (PostOnEnable != null) { PostOnEnable.Invoke(this); } }
        protected virtual void OnDisable() { if (PostOnDisable != null) { PostOnDisable.Invoke(this); } }
        protected virtual void Update() { if (PostUpdate != null) { PostUpdate.Invoke(this); } }
        protected virtual void LateUpdate() { if (PostLateUpdate != null) { PostLateUpdate.Invoke(this); } }
        protected virtual void OnDestroy()
        {
            if (NetEventQueue != null)
            {
                NetEventQueue.RemoveAll();
            }
            if (PostOnDestroy != null) { PostOnDestroy.Invoke(this); }
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
        public void SendNetEvent<T>(T obj) { }

        //public void RegisterPlayerEvent(PlayerE)
    }
}

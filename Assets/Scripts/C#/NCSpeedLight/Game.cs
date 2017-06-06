/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Game.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;
using LuaInterface;

namespace NCSpeedLight
{
    public class Game : MonoBehaviour
    {
        public static Game Instance;
        public static EventManager GlobalEventProcessor = new EventManager();

        public LuaFunction AwakeFunction;
        public LuaFunction UpdateFunction;
        public LuaFunction OnGUIFunction;
        public LuaFunction LateUpdateFunction;
        public LuaFunction OnDestroyFunction;
        public LuaFunction OnApplicationPauseFunction;
        public LuaFunction OnApplicationFocusFunction;

        private bool isLuaOK = false;

        private void Awake()
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            Application.targetFrameRate = Constants.TARGET_FRAME_RATE;
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
            Loom.Initialize();
        }

        private void Start()
        {
            InternalUIManager.OpenBG();
            InternalUIManager.OpenUpdate();
            InternalUIManager.Instance.UpdateUI.StartUpdate();
        }

        public void Launch()
        {
            InternalUIManager.CloseConfirmDialog();
            InternalUIManager.CloseUpdate();
            isLuaOK = true;
            LuaManager.DoString("require 'NCSpeedLight.Game'");
            AwakeFunction = LuaManager.LuaState.GetFunction("Game.Awake");
            UpdateFunction = LuaManager.LuaState.GetFunction("Game.Update");
            LateUpdateFunction = LuaManager.LuaState.GetFunction("Game.LateUpdate");
            OnGUIFunction = LuaManager.LuaState.GetFunction("Game.OnGUI");
            OnDestroyFunction = LuaManager.LuaState.GetFunction("Game.OnDestroy");
            OnApplicationPauseFunction = LuaManager.LuaState.GetFunction("Game.OnApplicationPause");
            OnApplicationFocusFunction = LuaManager.LuaState.GetFunction("Game.OnApplicationFocus");
            if (AwakeFunction != null)
            {
                AwakeFunction.Call(gameObject);
            }
        }

        private void Update()
        {
            if (isLuaOK && UpdateFunction != null)
            {
                UpdateFunction.Call();
            }
        }
        private void LateUpdate()
        {
            if (isLuaOK && LateUpdateFunction != null)
            {
                LateUpdateFunction.Call();
            }
        }
        //private void OnGUI()
        //{
        //    if (isLuaOK && OnGUIFunction != null)
        //    {
        //        OnGUIFunction.Call();
        //    }
        //}
        private void OnDestroy()
        {
            if (isLuaOK && OnDestroyFunction != null)
            {
                OnDestroyFunction.Call();
            }
        }
        private void OnApplicationPause(bool status)
        {
            Helper.ReleaseMemory(true, true, true);
            if (isLuaOK && OnApplicationPauseFunction != null)
            {
                OnApplicationPauseFunction.Call(status);
            }
        }
        private void OnApplicationFocus(bool status)
        {
            if (isLuaOK && OnApplicationFocusFunction != null)
            {
                OnApplicationFocusFunction.Call(status);
            }
        }
    }
}
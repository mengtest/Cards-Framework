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

        public InternalUI InternalUI;
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
            InternalUI.OpenBG();
            InternalUI.OpenUpdate();
            InternalUI.UpdateUI.StartUpdate();
        }

        public void Launch()
        {
            InternalUI.CloseDialog();
            InternalUI.CloseUpdate();
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

        public void RestartGame()
        {

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
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

using System.IO;
using System.Collections;
using UnityEngine;
using LuaInterface;

namespace NCSpeedLight
{
    public class Game : MonoBehaviour
    {
        public static Game Instance;
        private bool OK = false;
        public UpdateUI UpdateUI;
        public LuaFunction AwakeFunction;
        public LuaFunction UpdateFunction;
        public LuaFunction OnGUIFunction;
        public LuaFunction LateUpdateFunction;
        public LuaFunction OnDestroyFunction;
        public LuaFunction OnApplicationPauseFunction;
        public LuaFunction OnApplicationFocusFunction;

        private void Awake()
        {
            Instance = this;
            Helper.Log("Game.Awake");
            DontDestroyOnLoad(gameObject);
            Application.targetFrameRate = Constants.TARGET_FRAME_RATE;
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
            Loom.Initialize();
        }

        private void Start()
        {
            UpdateUI.StartUpdate();
        }

        public void StartGame()
        {
            OK = true;
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
            if (OK && UpdateFunction != null)
            {
                UpdateFunction.Call();
            }
        }
        private void LateUpdate()
        {
            if (OK && LateUpdateFunction != null)
            {
                LateUpdateFunction.Call();
            }
        }
        private void OnGUI()
        {
            if (OK && OnGUIFunction != null)
            {
                OnGUIFunction.Call();
            }
        }
        private void OnDestroy()
        {
            if (OK && OnDestroyFunction != null)
            {
                OnDestroyFunction.Call();
            }
        }
        private void OnApplicationPause(bool status)
        {
            if (OK && OnApplicationPauseFunction != null)
            {
                OnApplicationPauseFunction.Call(status);
            }
        }
        private void OnApplicationFocus(bool status)
        {
            if (OK && OnApplicationFocusFunction != null)
            {
                OnApplicationFocusFunction.Call(status);
            }
        }
    }
}
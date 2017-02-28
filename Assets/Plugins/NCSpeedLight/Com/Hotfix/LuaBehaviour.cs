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
using System.Collections;
using LuaInterface;

namespace NCSpeedLight
{
    public class LuaBehaviour : MonoBehaviour
    {
        public string ModuleName = "LuaBehaviour";
        public string ScriptName = "Hello";
        protected virtual void Awake()
        {
            LuaManager.DoString(string.Format("require 'NCSpeedLight/Modules/{0}/{1}'", ModuleName, ScriptName));
            LuaManager.CallFunction(ScriptName + ".Awake");
        }

        protected virtual void Start()
        {
            LuaManager.CallFunction(ScriptName + ".Start");
        }

        protected virtual void OnEnable()
        {
            LuaManager.CallFunction(ScriptName + ".OnEnable");
        }

        protected virtual void OnDisable()
        {
            LuaManager.CallFunction(ScriptName + ".OnDisable");
        }

        protected virtual void Update()
        {
            LuaManager.CallFunction(ScriptName + ".Update");
        }

        protected virtual void LateUpdate()
        {
            LuaManager.CallFunction(ScriptName + ".LateUpdate");
        }

        protected virtual void OnDestroy()
        {
            LuaManager.CallFunction(ScriptName + ".OnDestroy");
        }
    }
}


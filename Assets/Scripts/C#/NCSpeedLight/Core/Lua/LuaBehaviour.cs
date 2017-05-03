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
using LuaInterface;

namespace NCSpeedLight
{
    public class LuaBehaviour : MonoBehaviour
    {
        public string Module;
        public string Script;

        private LuaFunction m_AwakeFunction;
        private LuaFunction m_StartFunction;
        private LuaFunction m_OnEnableFunction;
        private LuaFunction m_OnDisableFunction;
        private LuaFunction m_UpdateFunction;
        private LuaFunction m_OnGUIFunction;
        private LuaFunction m_LateUpdateFunction;
        private LuaFunction m_OnDestroyFunction;

        protected virtual void Awake()
        {
            if (LuaManager.LuaState.GetTable(Script) == null)
            {
                string str = string.Empty;
                if (string.IsNullOrEmpty(Module))
                {
                    str = Script;
                }
                else
                {
                    str = Helper.StringFormat("require '{0}.{1}'", Module, Script);
                }
                LuaManager.DoString(str);
            }

            m_AwakeFunction = LuaManager.LuaState.GetFunction(Script + ".Awake", false);
            m_StartFunction = LuaManager.LuaState.GetFunction(Script + ".Start", false);
            m_OnEnableFunction = LuaManager.LuaState.GetFunction(Script + ".OnEnable", false);
            m_OnDisableFunction = LuaManager.LuaState.GetFunction(Script + ".OnDisable", false);
            m_UpdateFunction = LuaManager.LuaState.GetFunction(Script + ".Update", false);
            m_OnGUIFunction = LuaManager.LuaState.GetFunction(Script + ".OnGUI", false);
            m_LateUpdateFunction = LuaManager.LuaState.GetFunction(Script + ".LateUpdate", false);
            m_OnDestroyFunction = LuaManager.LuaState.GetFunction(Script + ".OnDestroy", false);

            if (m_AwakeFunction != null)
            {
                m_AwakeFunction.Call(gameObject);
            }
        }

        protected virtual void Start()
        {
            if (m_StartFunction != null)
            {
                m_StartFunction.Call();
            }
        }

        protected virtual void OnEnable()
        {
            if (m_OnEnableFunction != null)
            {
                m_OnEnableFunction.Call();
            }
        }

        protected virtual void OnDisable()
        {
            if (m_OnDisableFunction != null)
            {
                m_OnDisableFunction.Call();
            }
        }

        protected virtual void Update()
        {
            if (m_UpdateFunction != null)
            {
                m_UpdateFunction.Call();
            }
        }

        protected virtual void LateUpdate()
        {
            if (m_LateUpdateFunction != null)
            {
                m_LateUpdateFunction.Call();
            }
        }

        protected virtual void OnGUI()
        {
            if (m_OnGUIFunction != null)
            {
                m_OnGUIFunction.Call();
            }
        }

        protected virtual void OnDestroy()
        {
            if (m_OnDestroyFunction != null)
            {
                m_OnDestroyFunction.Call();
            }
        }
    }
}

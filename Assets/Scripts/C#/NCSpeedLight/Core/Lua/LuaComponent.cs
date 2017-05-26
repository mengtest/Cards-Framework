/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LuaComponent.cs
           // Describle: lua组件,用于lua层面的操作
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using UnityEngine;
using LuaInterface;

namespace NCSpeedLight
{
    public class LuaComponent : MonoBehaviour
    {
        [NoToLua]
        public LuaTable Table;

        private LuaFunction m_AwakeFunction;
        private LuaFunction m_StartFunction;
        private LuaFunction m_OnEnableFunction;
        private LuaFunction m_OnDisableFunction;
        private LuaFunction m_UpdateFunction;
        private LuaFunction m_LateUpdateFunction;
        private LuaFunction m_OnDestroyFunction;

        private void Initialize()
        {
            m_AwakeFunction = Table.GetLuaFunction("Awake");
            m_StartFunction = Table.GetLuaFunction("Start");
            m_OnEnableFunction = Table.GetLuaFunction("OnEnable");
            m_OnDisableFunction = Table.GetLuaFunction("OnDisable");
            m_UpdateFunction = Table.GetLuaFunction("Update");
            m_LateUpdateFunction = Table.GetLuaFunction("LateUpdate");
            m_OnDestroyFunction = Table.GetLuaFunction("OnDestroy");
        }

        private void ReleaseRef()
        {
            if (m_AwakeFunction != null)
            {
                m_AwakeFunction.Dispose();
                m_AwakeFunction = null;
            }
            if (m_StartFunction != null)
            {
                m_StartFunction.Dispose();
                m_StartFunction = null;
            }
            if (m_OnEnableFunction != null)
            {
                m_OnEnableFunction.Dispose();
                m_OnEnableFunction = null;
            }
            if (m_OnDisableFunction != null)
            {
                m_OnDisableFunction.Dispose();
                m_OnDisableFunction = null;
            }
            if (m_UpdateFunction != null)
            {
                m_UpdateFunction.Dispose();
                m_UpdateFunction = null;
            }
            if (m_LateUpdateFunction != null)
            {
                m_LateUpdateFunction.Dispose();
                m_LateUpdateFunction = null;
            }
            if (m_OnDestroyFunction != null)
            {
                m_OnDestroyFunction.Dispose();
                m_OnDestroyFunction = null;
            }
            Table = null;
        }

        [NoToLua]
        public void CallAwake(LuaTable table)
        {
            Table = table;
            Initialize();
            if (m_AwakeFunction != null) { m_AwakeFunction.Call(Table, gameObject); };
        }

        protected virtual void Start()
        {
            if (m_StartFunction != null) { m_StartFunction.Call(Table); }
        }

        protected virtual void OnEnable()
        {
            if (m_OnEnableFunction != null) { m_OnEnableFunction.Call(Table); }
        }

        protected virtual void OnDisable()
        {
            if (m_OnDisableFunction != null) { m_OnDisableFunction.Call(Table); }
        }

        protected virtual void Update()
        {
            if (m_UpdateFunction != null) { m_UpdateFunction.Call(Table); }
        }

        protected virtual void LateUpdate()
        {
            if (m_LateUpdateFunction != null) { m_LateUpdateFunction.Call(Table); }
        }

        protected virtual void OnDestroy()
        {
            if (m_OnDestroyFunction != null) { m_OnDestroyFunction.Call(Table); }
            ReleaseRef();
        }

        public static LuaTable Add(GameObject go, LuaTable table)
        {
            if (go == null)
            {
                Helper.LogError("LuaComponent.Add: error caused by nil gameObject.");
                return null;
            }
            if (table == null)
            {
                Helper.LogError("LuaComponent.Add: error caused by nil metatable.");
                return null;
            }
            LuaFunction func = table.GetLuaFunction("New");
            if (func == null)
            {
                Helper.LogError("LuaComponent.Add: error caused by nil New() function.");
                return null;
            }
            object[] rets = func.Call(table);
            if (rets.Length != 1)
            {
                Helper.LogError("LuaComponent.Add: error caused in New() function.");
                return null;
            }
            LuaTable newTable = (LuaTable)rets[0];
            if (newTable == null)
            {
                Helper.LogError("LuaComponent.Add: error caused by nil newtable.");
                return null;
            }
            LuaComponent com = go.AddComponent<LuaComponent>();
            com.CallAwake(newTable);
            return newTable;
        }

        public static LuaTable Get(GameObject go, LuaTable table)
        {
            if (go == null)
            {
                Helper.LogError("LuaComponent.Get: error caused by nil gameObject.");
                return null;
            }
            if (table == null)
            {
                Helper.LogError("LuaComponent.Get: error caused by nil metatable.");
                return null;
            }
            LuaComponent[] coms = go.GetComponents<LuaComponent>();
            string meta = table.ToString();
            for (int i = 0; i < coms.Length; i++)
            {
                var com = coms[i];
                if (com != null && com.Table != null)
                {
                    LuaTable tempMetaTable = com.Table.GetMetaTable();
                    if (tempMetaTable != null)
                    {
                        string tempMeta = tempMetaTable.ToString();
                        if (meta == tempMeta)
                        {
                            return com.Table;
                        }
                    }
                }
            }
            return null;
        }

        public static void Destroy(GameObject go, LuaTable table)
        {
            if (go == null)
            {
                Helper.LogError("LuaComponent.Destroy: error caused by nil gameObject.");
                return;
            }
            if (table == null)
            {
                Helper.LogError("LuaComponent.Destroy: error caused by nil metatable.");
                return;
            }
            LuaComponent[] coms = go.GetComponents<LuaComponent>();
            string meta = table.ToString();
            for (int i = 0; i < coms.Length; i++)
            {
                var com = coms[i];
                if (com != null && com.Table != null)
                {
                    LuaTable tempMetaTable = com.Table.GetMetaTable();
                    if (tempMetaTable != null)
                    {
                        string tempMeta = tempMetaTable.ToString();
                        if (meta == tempMeta)
                        {
                            Destroy(com);
                        }
                    }
                }
            }
        }

        public static void DestroyImmediate(GameObject go, LuaTable table)
        {
            if (go == null)
            {
                Helper.LogError("LuaComponent.DestroyImmediate: error caused by nil gameObject.");
                return;
            }
            if (table == null)
            {
                Helper.LogError("LuaComponent.DestroyImmediate: error caused by nil metatable.");
                return;
            }
            LuaComponent[] coms = go.GetComponents<LuaComponent>();
            string meta = table.ToString();
            for (int i = 0; i < coms.Length; i++)
            {
                var com = coms[i];
                if (com != null && com.Table != null)
                {
                    LuaTable tempMetaTable = com.Table.GetMetaTable();
                    if (tempMetaTable != null)
                    {
                        string tempMeta = tempMetaTable.ToString();
                        if (meta == tempMeta)
                        {
                            DestroyImmediate(com);
                        }
                    }
                }
            }
        }

    }
}
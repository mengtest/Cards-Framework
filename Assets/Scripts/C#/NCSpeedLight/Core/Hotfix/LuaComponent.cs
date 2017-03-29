/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LuaComponent.cs
           // Describle: lua组件
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
        public LuaTable Table;
        public LuaFunction AwakeFunction;
        public LuaFunction StartFunction;
        public LuaFunction OnEnableFunction;
        public LuaFunction OnDisableFunction;
        public LuaFunction UpdateFunction;
        public LuaFunction OnGUIFunction;
        public LuaFunction LateUpdateFunction;
        public LuaFunction OnDestroyFunction;
        protected virtual void Start()
        {
            if (StartFunction != null) { StartFunction.Call(Table); }
        }
        protected virtual void OnEnable()
        {
            if (OnEnableFunction != null) { OnEnableFunction.Call(Table); }
        }
        protected virtual void OnDisable()
        {
            if (OnDisableFunction != null) { OnDisableFunction.Call(Table); }
        }
        protected virtual void Update()
        {
            if (UpdateFunction != null) { UpdateFunction.Call(Table); }
        }
        protected virtual void LateUpdate()
        {
            if (LateUpdateFunction != null) { LateUpdateFunction.Call(Table); }
        }
        protected virtual void OnGUI()
        {
            if (OnGUIFunction != null) { OnGUIFunction.Call(Table); }
        }
        protected virtual void OnDestroy()
        {
            if (OnDestroyFunction != null) { OnDestroyFunction.Call(Table); }
        }
        public static void CallAwake(LuaComponent com)
        {
            com.AwakeFunction = com.Table.GetLuaFunction("Awake");
            com.StartFunction = com.Table.GetLuaFunction("Start");
            com.OnEnableFunction = com.Table.GetLuaFunction("OnEnable");
            com.OnDisableFunction = com.Table.GetLuaFunction("OnDisable");
            com.UpdateFunction = com.Table.GetLuaFunction("Update");
            com.OnGUIFunction = com.Table.GetLuaFunction("OnGUI");
            com.LateUpdateFunction = com.Table.GetLuaFunction("LateUpdate");
            com.OnDestroyFunction = com.Table.GetLuaFunction("OnDestroy");
            if (com.AwakeFunction != null)
            {
                com.AwakeFunction.Call(com.Table, com.gameObject);
            }
        }
        public static LuaTable Add(GameObject go, LuaTable table)
        {
            LuaFunction func = table.GetLuaFunction("New");
            if (func == null)
            {
                return null;
            }
            object[] rets = func.Call(table);
            if (rets.Length != 1)
            {
                return null;
            }
            LuaComponent com = go.AddComponent<LuaComponent>();
            com.Table = (LuaTable)rets[0];
            CallAwake(com);
            return com.Table;
        }
        public static LuaTable Get(GameObject go, LuaTable table)
        {
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
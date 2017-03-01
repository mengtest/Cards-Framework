/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LuaManager.cs
           // Describle: lua脚本管理器
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using UnityEngine;
using LuaInterface;

namespace NCSpeedLight
{
    public class LuaManager : MonoBehaviour
    {
        public static GameObject GO;
        public static LuaState LuaState;
        public static LuaLooper LuaLooper = null;

        private static LuaManager m_Instance;
        public static LuaManager Instance
        {
            get
            {
                return m_Instance;
            }
        }

        private void Awake()
        {
            m_Instance = this;
        }
        private void Update()
        {
        }
        private void OnGUI()
        {
            //if (GUI.Button(new Rect(10, 50, 300, 40), "Notify event 2"))
            //{
            //    //GlobalEventManager.Instance.Notify(new Event(2));
            //}
        }
        private void OnDestroy()
        {
            m_Instance = null;
        }

        public static void Initialize()
        {
            GO = new GameObject("LuaManager");
            if (Game.Instance)
            {
                GO.transform.SetParent(Game.Instance.transform);
            }
            GO.AddComponent<LuaManager>();

            LuaState = new LuaState();
            InitializeLibs();
            LuaState.LuaSetTop(0);
            LuaBinder.Bind(LuaState);
            LuaCoroutine.Register(LuaState, Instance);

            InitializeLuaFiles();
            InitializeLuaDirectory();
            InitializeLuaBundle();

            LuaState.Start();
        }

        public static void StartMain()
        {
            //DoString("");
            DoFile("Main");
            //StartLooper();
            //LuaEnv.DoString("require 'GlobalEventManager'");
            //LuaEnv.DoString("require 'main'");
        }

        private static void StartLooper()
        {
            LuaLooper = Instance.gameObject.AddComponent<LuaLooper>();
            LuaLooper.luaState = LuaState;
        }


        private static void InitializeLibs()
        {
            LuaState.OpenLibs(LuaDLL.luaopen_pb);
            LuaState.OpenLibs(LuaDLL.luaopen_sproto_core);
            LuaState.OpenLibs(LuaDLL.luaopen_protobuf_c);
            LuaState.OpenLibs(LuaDLL.luaopen_lpeg);
            LuaState.OpenLibs(LuaDLL.luaopen_bit);
            LuaState.OpenLibs(LuaDLL.luaopen_socket_core);
        }
        private static void InitializeLuaFiles()
        {
            //LuaState.AddPreLoad()
        }
        private static void InitializeLuaDirectory()
        {
            //LuaState.AddSearchPath(Application.dataPath + "/Scripts/Lua/");
        }
        private static void InitializeLuaBundle()
        {

        }

        public static object[] DoFile(string filename)
        {
            if (LuaState != null && string.IsNullOrEmpty(filename) == false)
            {
                return LuaState.DoFile(filename);
            }
            return null;
        }

        public static object[] DoString(string str)
        {
            if (LuaState != null && string.IsNullOrEmpty(str) == false)
            {
                return LuaState.DoString(str);
            }
            return null;
        }

        public static object[] CallFunction(string fullFuncName, params object[] args)
        {
            LuaFunction func = LuaState.GetFunction(fullFuncName, false);
            if (func != null)
            {
                return func.Call(args);
            }
            return null;
        }

        public static void PushParam(string moduleName, params object[] args)
        {
            if (LuaState != null)
            {
                //LuaState.push
            }
        }

        public static void GC()
        {
            LuaState.LuaGC(LuaGCOptions.LUA_GCCOLLECT);
        }

        public void Close()
        {
        }
    }
}

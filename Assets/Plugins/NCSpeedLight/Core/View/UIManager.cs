/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: UIManager.cs
            // Describle:  窗口管理
            // Created By:  All
            // Date&Time:  2016/3/26 10:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;
using System.Reflection;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public static class UIManager
    {
        private static Dictionary<string, GameObject> m_ShownWindows = new Dictionary<string, GameObject>();
        public static GameObject UIRootGO;
        public static GameObject WindowGO;
        public static GameObject DialogGO;
        public static UIRoot UIRoot;
        public static UIPanel UIPanel;
        public static UICamera UICamera;
        public static Camera Camera;
        public const int UI_ROOT_HEIGHT = 720;
        public const int UI_ROOT_WIDTH = 1224;
        public const int UI_ROOT_MAX_HEIGHT = 720;
        public const int UI_ROOT_MIN_HEIGHT = 640;
        public static bool IsInitialized { get; set; }
        public static void Initialize()
        {
            if (IsInitialized)
            {
                Helper.LogWarning("UIManager has already been initialized");
                return;
            }
            UIRootGO = new GameObject("UIManager");
            if (Game.Instance)
            {
                UIRootGO.transform.SetParent(Game.Instance.transform);
            }

            UIRoot = UIRootGO.AddComponent<UIRoot>();
            UIRoot.scalingStyle = UIRoot.Scaling.ConstrainedOnMobiles;
            UIRoot.manualHeight = UI_ROOT_HEIGHT;
            UIRoot.manualWidth = UI_ROOT_WIDTH;
            UIRoot.maximumHeight = UI_ROOT_MAX_HEIGHT;
            UIRoot.minimumHeight = UI_ROOT_MIN_HEIGHT;

            UIPanel = UIRootGO.AddComponent<UIPanel>();

            GameObject cameraGO = new GameObject("UICamera");
            cameraGO.transform.SetParent(UIRootGO.transform);
            cameraGO.transform.localPosition = Vector3.back;
            Camera = cameraGO.AddComponent<Camera>();
            Camera.orthographic = true;
            Camera.orthographicSize = 1.0f;
            //Camera.cullingMask = Helper.OnlyIncluding(mCustomUILayer, mUILayer, mDialogLayer);
            Camera.nearClipPlane = -10f;
            Camera.depth = 1;
            Camera.clearFlags = CameraClearFlags.Depth; //CameraClearFlags.Nothing;
                                                        //  tempCamObject.AddComponent<UIGaussianBlurEffect>().BlurSize = 4f;

            UICamera = cameraGO.AddComponent<UICamera>();
            //UICamera.eventReceiverMask = Helper.EverythingBut(mUILayer);

            // Window root.
            WindowGO = new GameObject("Window");
            WindowGO.transform.SetParent(UIRootGO.transform);

            // Dialog root.
            DialogGO = new GameObject("Dialog");
            DialogGO.transform.SetParent(UIRootGO.transform);


        }
        public static GameObject HideWindow(string windowName)
        {
            return null;
        }
        public static void HideAllWindows()
        {
        }
        public static GameObject OpenWindow(string windowName)
        {
            GameObject window = TryGetWindow(windowName);
            if (window != null)
            {
                return window;
            }
            string assetPath = Helper.Format("UI/{0}", windowName);
            GameObject go = ResManager.LoadAssetSync<GameObject>(assetPath);
            go = SetupUIPrefab(go);
            if (go)
            {
                m_ShownWindows.Add(windowName, go);
            }
            return window;
        }
        public static T OpenDialog<T>()
            where T : LuaView
        {
            Type type = typeof(T);
            object obj = type.Assembly.CreateInstance(type.FullName);
            MemberInfo[] infos = type.GetMember("AssetPath", BindingFlags.GetProperty);
            if (infos != null && infos.Length > 0)
            {
                string key = (string)type.InvokeMember("AssetPath", BindingFlags.GetProperty | BindingFlags.Instance, null, obj, null);
                string assetPath = Helper.Format("UI/{0}", key);
                GameObject go = ResManager.LoadAssetSync<GameObject>(assetPath);
                return go.GetComponent<T>();
            }
            else
            {
                return default(T);
            }
        }
        public static void CloseWindow(string windowName)
        {
            GameObject go = TryGetWindow(windowName);
            if (go)
            {
                GameObject.DestroyImmediate(go);
                m_ShownWindows.Remove(windowName);
            }
        }
        public static void CloseDialog<T>() { }
        public static GameObject TryGetWindow(string windowName)
        {
            GameObject go = null;
            m_ShownWindows.TryGetValue(windowName, out go);
            return go;
        }
        private static GameObject SetupUIPrefab(GameObject go)
        {
            if (go == null)
            {
                Helper.LogError("SetupUIPrefab fail caused by null ui prefab.");
                return null;
            }
            go = GameObject.Instantiate(go) as GameObject;
            Transform tran = go.transform;
            if (tran.childCount <= 1)
            {
                // not a valid ui.
                GameObject.DestroyObject(go);
                return null;
            }
            Transform root = tran.GetChild(0);
            Camera camera = root.GetComponent<Camera>();
            if (camera != null)
            {
                root = tran.GetChild(1);
            }
            if (root == null)
            {
                Helper.LogError("SetupUIPrefab fail caused by null ui panel.");
                return null;
            }
            GameObject window = root.gameObject;
            root.SetParent(WindowGO.transform);
            root.localScale = Vector3.one;
            GameObject.DestroyObject(go);
            return window;
        }
    }
}

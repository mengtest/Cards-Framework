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
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public static class UIManager
    {
        public class StandardDialogOption
        {
            public string Title;
            public int TitleFontSize = 35;
            public string TitleSprite;
            public bool ShowTitleSprite = false;

            public string Content;
            public int ContentFontSize = 30;

            public bool DoubleButton = false;

            public UIEventListener.VoidDelegate OnClickOK;
            public UIEventListener.VoidDelegate OnClickCancel;
        }

        public class ProgressDialogOption
        {
            public bool AutoClose = false;
            public bool Cancelable = true;
            public float Timeout = 10f;
            public string Content;
            public int ContentFontSize = 26;
            public Action OnClose;
            public Action OnAutoClose;
            public Action OnCancel;
        }

        public enum DialogType
        {
            StandardDialog,
            ProgressDialog,
            TipsDialog,
        }

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

        private static Dictionary<string, GameObject> m_ShownWindows = new Dictionary<string, GameObject>();

        private static Dictionary<string, GameObject> m_ShownDialogs = new Dictionary<string, GameObject>();

        private static VPTimer.Handle m_ProgressDialogTimeoutHandle;

        private static ProgressDialogOption m_CurrentProgressDialogOption;

        private static StandardDialogOption m_CurrentStandardDialogOption;

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

        public static GameObject OpenWindow(string windowName)
        {
            GameObject window = GetWindow(windowName);
            if (window != null)
            {
                return window;
            }
            string assetPath = Helper.StringFormat("Bundle/UI/{0}.prefab", windowName);
            GameObject go = ResManager.LoadAssetSync<GameObject>(assetPath);
            go = SetupWindow(go);
            if (go)
            {
                m_ShownWindows.Add(windowName, go);
            }
            return go;
        }

        public static GameObject OpenDialog(string dialogName)
        {
            GameObject dialog = GetDialog(dialogName);
            if (dialog != null)
            {
                return dialog;
            }
            string assetPath = Helper.StringFormat("Bundle/UI/Dialog/{0}.prefab", dialogName);
            GameObject go = ResManager.LoadAssetSync<GameObject>(assetPath);
            go = SetupDialog(go);
            if (go)
            {
                m_ShownDialogs.Add(dialogName, go);
            }
            return go;
        }

        public static void CloseWindow(string windowName)
        {
            GameObject go = GetWindow(windowName);
            if (go)
            {
                GameObject.DestroyImmediate(go);
                m_ShownWindows.Remove(windowName);
            }
        }

        public static void CloseAllWindows()
        {
            Dictionary<string, GameObject>.Enumerator it = m_ShownWindows.GetEnumerator();
            for(int i = 0; i < m_ShownWindows.Count; i++)
            {
                it.MoveNext();
                KeyValuePair<string, GameObject> kv = it.Current;
                if (kv.Value)
                {
                    GameObject.DestroyImmediate(kv.Value);
                }
            }
            m_ShownWindows.Clear();
        }

        public static void CloseDialog(string dialogName)
        {
            GameObject go = GetDialog(dialogName);
            if (go)
            {
                GameObject.DestroyImmediate(go);
                m_ShownDialogs.Remove(dialogName);
            }
        }

        public static void OpenStandardDialog(StandardDialogOption option)
        {
            if (option == null)
            {
                return;
            }
            GameObject dialog = OpenDialog(DialogType.StandardDialog.ToString());
            if (dialog)
            {
                UISprite titleSprite = dialog.transform.Find("BG/Title").GetComponent<UISprite>();
                UILabel contentLabel = dialog.transform.Find("Label_Content").GetComponent<UILabel>();
                UILabel titleLabel = dialog.transform.Find("Label_Title").GetComponent<UILabel>();
                if (titleSprite)
                {
                    titleSprite.enabled = option.ShowTitleSprite;
                    if (option.ShowTitleSprite)
                    {
                        titleSprite.spriteName = option.TitleSprite;
                    }
                }
                if (titleLabel)
                {
                    titleLabel.enabled = !option.ShowTitleSprite;
                    titleLabel.text = option.Title;
                    titleLabel.fontSize = option.TitleFontSize;
                }
                if (contentLabel)
                {
                    contentLabel.text = option.Content;
                    contentLabel.fontSize = option.ContentFontSize;
                }

                if (option.DoubleButton)
                {
                    UIHelper.SetActiveState(dialog.transform, "DoubleBtn", true);
                    UIHelper.SetActiveState(dialog.transform, "SingleBtn", false);

                    UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/OK", (go) => { CloseDialog(DialogType.StandardDialog.ToString()); });
                    UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/Cancel", (go) => { CloseDialog(DialogType.StandardDialog.ToString()); });

                    UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/OK", option.OnClickOK);
                    UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/Cancel", option.OnClickCancel);
                }
                else
                {
                    UIHelper.SetActiveState(dialog.transform, "DoubleBtn", false);
                    UIHelper.SetActiveState(dialog.transform, "SingleBtn", true);

                    UIHelper.SetButtonEvent(dialog.transform, "SingleBtn/OK", (go) => { CloseDialog(DialogType.StandardDialog.ToString()); });

                    UIHelper.SetButtonEvent(dialog.transform, "SingleBtn/OK", option.OnClickOK);
                }

                m_CurrentStandardDialogOption = option;
            }
        }

        public static void OpenProgressDialog(ProgressDialogOption option)
        {
            if (option == null)
            {
                return;
            }
            GameObject dialog = OpenDialog(DialogType.ProgressDialog.ToString());
            if (dialog)
            {
                UILabel contentLabel = dialog.transform.Find("Content/Label").GetComponent<UILabel>();
                if (contentLabel)
                {
                    contentLabel.text = option.Content;
                    contentLabel.fontSize = option.ContentFontSize;
                }

                if (m_ProgressDialogTimeoutHandle != null)
                {
                    if (m_ProgressDialogTimeoutHandle.Active)
                    {
                        m_ProgressDialogTimeoutHandle.Cancel();
                    }
                }
                else
                {
                    m_ProgressDialogTimeoutHandle = new VPTimer.Handle();
                }

                if (option.AutoClose)
                {
                    VPTimer.In(option.Timeout, () =>
                    {
                        if (option.OnAutoClose != null)
                        {
                            option.OnAutoClose.Invoke();
                        }
                        CloseDialog(DialogType.ProgressDialog.ToString());
                    }, m_ProgressDialogTimeoutHandle);
                }

                if (option.Cancelable)
                {
                    UIHelper.SetButtonEvent(dialog.transform, "BlackBG", (go) =>
                    {
                        if (m_ProgressDialogTimeoutHandle != null && m_ProgressDialogTimeoutHandle.Active)
                        {
                            m_ProgressDialogTimeoutHandle.Cancel();
                        }
                        if (option.OnCancel != null)
                        {
                            option.OnCancel.Invoke();
                        }
                        CloseDialog(DialogType.ProgressDialog.ToString());
                    });
                }

                m_CurrentProgressDialogOption = option;
            }
        }

        public static void CloseProgressDialog()
        {
            CloseDialog(DialogType.ProgressDialog.ToString());
            if (m_ProgressDialogTimeoutHandle != null && m_ProgressDialogTimeoutHandle.Active)
            {
                m_ProgressDialogTimeoutHandle.Cancel();
            }
            if (m_CurrentProgressDialogOption != null)
            {
                if (m_CurrentProgressDialogOption.OnClose != null)
                {
                    m_CurrentProgressDialogOption.OnClose.Invoke();
                }
            }
        }

        public static GameObject OpenTipsDialog(string content)
        {
            return OpenTipsDialog(content, 1.0f);
        }

        public static GameObject OpenTipsDialog(string content, float time)
        {
            string assetPath = Helper.StringFormat("Bundle/UI/Dialog/{0}.prefab", DialogType.TipsDialog.ToString());
            GameObject go = ResManager.LoadAssetSync<GameObject>(assetPath);
            go = SetupDialog(go);
            if (go)
            {
                TipsDialog td = go.GetComponent<TipsDialog>();
                if (td)
                {
                    td.SetParam(content, time);
                }
            }
            return go;
        }

        public static GameObject GetWindow(string windowName)
        {
            GameObject go = null;
            m_ShownWindows.TryGetValue(windowName, out go);
            return go;
        }

        public static GameObject GetDialog(string dialogName)
        {
            GameObject go = null;
            m_ShownDialogs.TryGetValue(dialogName, out go);
            return go;
        }

        private static GameObject SetupWindow(GameObject go)
        {
            if (go == null)
            {
                Helper.LogError("SetupWindow fail caused by null ui prefab.");
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
                Helper.LogError("SetupWindow fail caused by null ui panel.");
                return null;
            }
            GameObject window = root.gameObject;
            root.SetParent(WindowGO.transform);
            root.localScale = Vector3.one;
            GameObject.DestroyObject(go);
            return window;
        }

        private static GameObject SetupDialog(GameObject go)
        {
            if (go == null)
            {
                Helper.LogError("SetupDialog fail caused by null ui prefab.");
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
                Helper.LogError("SetupDialog fail caused by null ui panel.");
                return null;
            }
            GameObject dialog = root.gameObject;
            root.SetParent(DialogGO.transform);
            root.localScale = Vector3.one;
            GameObject.DestroyObject(go);
            return dialog;
        }
    }
}

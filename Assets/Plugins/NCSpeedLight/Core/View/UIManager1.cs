///*----------------------------------------------------------------
//            // Copyright © 2014-2017 NCSpeedLight
//            // 
//            // FileName: UIManager.cs
//            // Describle:  窗口管理
//            // Created By:  All
//            // Date&Time:  2015/3/26 10:34:18
//            // Modify History:
//            //
////----------------------------------------------------------------*/

//using System;
//using System.Reflection;
//using System.Collections.Generic;
//using UnityEngine;

//
//{
//    public delegate void OpenWindowCallBack(GameObject view, ResLoadParam param);

//    public class UIManager
//    {
//        private Dictionary<string, GameObject> m_Dialogs;

//        private Dictionary<string, GameObject> m_AllLoadedDialogs;

//        private List<string> m_IgnoreClearDialogs;

//        private GameObject mDialogRoot = null;

//        private static readonly int mDialogMinDepth = 1000;

//        private int mDialogMaxDepth = 1000;

//        private Dictionary<string, int> m_AllDialogsDepth = new Dictionary<string, int>();

//        public Dictionary<string, GameObject> m_Windows;

//        private Dictionary<string, UIPanel[]> m_WinPanels;

//        private GameObject m_WindowRoot = null;
//        /// <summary>
//        ///记录每一个窗口的Depth
//        /// </summary>
//        private Dictionary<string, int> winNameToFirstDepth = new Dictionary<string, int>();

//        private static readonly int INIT_DEPTH = 0;
//        /// <summary>
//        //记录最大Depth
//        /// </summary>
//        private int mMaxDepth = INIT_DEPTH;

//        /// <summary>
//        //窗口单例
//        /// </summary>
//        static UIManager m_Instance = null;
//        GameObject m_RootObject = null;

//        private UIRoot m_UIRoot = null;

//        private int mRootMaxHeight = 720;

//        private int mRootMinHeight = 640;

//        private UIPanel mRootPanel = null;

//        private float mScreenScale;
//        /// <summary>
//        /// UI层级.
//        /// </summary>
//        private int mUILayer;

//        /// <summary>
//        /// 自定义UI层级
//        /// </summary>
//        private int mCustomUILayer;

//        /// <summary>
//        /// Dialog层级.
//        /// </summary>
//        private int mDialogLayer;

//        private UICamera m_UICamera;
//        private Camera m_Camera;

//        public Camera Camera { get { return m_Camera; } }
//        public UICamera UICamera { get { return m_UICamera; } }
//        public GameObject RootObject
//        {
//            get
//            {
//                return m_RootObject;
//            }
//        }

//        public int pRootMaxHeight
//        {
//            get { return mRootMaxHeight; }
//        }

//        public int pRootMinHeight
//        {
//            get { return mRootMinHeight; }
//        }
//        public float ScreenScale
//        {
//            get
//            {
//                mScreenScale = 1.0f;
//                if (Screen.height > mRootMaxHeight)
//                {
//                    mScreenScale = (float)mRootMaxHeight / (float)Screen.height;
//                }
//                else if (Screen.height < mRootMinHeight)
//                {
//                    mScreenScale = (float)mRootMinHeight / (float)Screen.height;
//                }
//                return mScreenScale;
//            }
//        }

//        public Vector2 ScreenResolution
//        {
//            get
//            {
//                Vector2 tempScreenVec = Vector2.zero;
//                tempScreenVec.x = Screen.width;
//                tempScreenVec.y = Screen.height;

//                if (mRootMinHeight > tempScreenVec.y)
//                {
//                    tempScreenVec.x = tempScreenVec.x / tempScreenVec.y * mRootMinHeight;
//                    tempScreenVec.y = mRootMinHeight;
//                }
//                else if (mRootMaxHeight < tempScreenVec.y)
//                {
//                    tempScreenVec.x = tempScreenVec.x / tempScreenVec.y * mRootMaxHeight;
//                    tempScreenVec.y = mRootMaxHeight;
//                }

//                return tempScreenVec;
//            }
//        }

//        public Vector2 GetScreenResolution()
//        {
//            return m_UIRoot.pixelSizeAdjustment * NGUITools.screenSize;
//        }

//        public float GetRootPixelSize()
//        {
//            return m_UIRoot.pixelSizeAdjustment;
//        }

//        public int pMaxDepth
//        {
//            get
//            {
//                return mMaxDepth;
//            }
//        }

//        public static UIManager Instance
//        {
//            get
//            {
//                if (m_Instance == null)
//                {
//                    m_Instance = new UIManager();
//                }
//                return m_Instance;
//            }
//        }


//        /// <summary>
//        /// Windows the manager.
//        /// 构造一个NGUI最基本的对象UIRoot并设置好相关参数
//        /// </summary>
//        private UIManager()
//        {
//            m_Windows = new Dictionary<string, GameObject>();
//            m_Dialogs = new Dictionary<string, GameObject>();
//            m_AllLoadedDialogs = new Dictionary<string, GameObject>();
//            InitIgnoreDialogs();
//            mCustomUILayer = LayerMask.NameToLayer("NCMJUI");
//            mDialogLayer = LayerMask.NameToLayer("NCMJDialog");
//            mUILayer = LayerMask.NameToLayer("UI");


//            m_RootObject = new GameObject("UIRootObject");
//            m_UIRoot = m_RootObject.AddComponent<UIRoot>();
//            mRootPanel = m_RootObject.AddComponent<UIPanel>();

//            // mMaxDepth = mRootPanel.depth;
//            // mUIRoot.scalingStyle = UIRoot.Scaling.Flexible;

//            m_UIRoot.scalingStyle = UIRoot.Scaling.ConstrainedOnMobiles;
//            m_UIRoot.manualHeight = 720;
//            m_UIRoot.manualWidth = 1280;


//            m_UIRoot.maximumHeight = mRootMaxHeight;
//            m_UIRoot.minimumHeight = mRootMinHeight;
//            m_RootObject.layer = mUILayer;




//            GameObject tempCamObject = new GameObject("UICamera");
//            tempCamObject.layer = mUILayer;
//            tempCamObject.transform.localPosition = Vector3.back;
//            tempCamObject.transform.SetParent(m_RootObject.transform);
//            m_Camera = tempCamObject.AddComponent<Camera>();
//            m_Camera.orthographic = true;
//            m_Camera.orthographicSize = 1.0f;
//            m_Camera.cullingMask = Helper.OnlyIncluding(mCustomUILayer, mUILayer, mDialogLayer);
//            m_Camera.nearClipPlane = -10f;
//            m_Camera.depth = 1;
//            m_Camera.clearFlags = CameraClearFlags.Depth; //CameraClearFlags.Nothing;
//                                                          //  tempCamObject.AddComponent<UIGaussianBlurEffect>().BlurSize = 4f;

//            /*---创建Window窗口父节点---*/
//            m_WindowRoot = new GameObject("WindowRoot");
//            m_WindowRoot.transform.SetParent(m_RootObject.transform);
//            m_WindowRoot.layer = mUILayer;

//            /*---创建Dialog窗口父节点---*/
//            mDialogRoot = new GameObject("DialogRoot");
//            mDialogRoot.transform.SetParent(m_RootObject.transform);
//            mDialogRoot.layer = mDialogLayer;

//            GameObject.DontDestroyOnLoad(m_RootObject);

//            m_UICamera = tempCamObject.AddComponent<UICamera>();
//            m_UICamera.eventReceiverMask = Helper.EverythingBut(mUILayer);
//        }

//        private void InitIgnoreDialogs()
//        {
//            m_IgnoreClearDialogs = new List<string>();
//            m_IgnoreClearDialogs.Add("Scene_Guide/guide");
//            m_IgnoreClearDialogs.Add("Scene_Guide/guideHand");
//            m_IgnoreClearDialogs.Add("Scene_Guide/unlock");
//            m_IgnoreClearDialogs.Add("Scene_Drama/ui_drama");
//            m_IgnoreClearDialogs.Add("Scene_Load/Load");
//        }

//        public void SetCameraClearBack(bool b)
//        {
//            if (m_UICamera != null && m_UICamera.cachedCamera != null)
//            {
//                if (b)
//                {
//                    m_UICamera.cachedCamera.clearFlags = CameraClearFlags.Color;
//                    m_UICamera.cachedCamera.backgroundColor = Color.black;
//                }
//                else
//                {
//                    m_UICamera.cachedCamera.clearFlags = CameraClearFlags.Nothing;

//                }
//            }
//        }

//        private GameObject SetUI(GameObject varObj)
//        {
//            if (varObj == null)
//            {
//                Helper.LogError("window load Failed");
//                return null;
//            }

//            varObj = GameObject.Instantiate(varObj) as GameObject;

//            Transform tempLoadObjTrans = varObj.transform;
//            if (tempLoadObjTrans.childCount <= 1)
//            {
//                GameObject.DestroyObject(varObj);
//                return null;
//            }

//            Transform temRoot = tempLoadObjTrans.GetChild(0); // LoadObject.transform.FindChild (varWindowName);
//            Camera tempCam = temRoot.GetComponent<Camera>();
//            if (tempCam != null)
//            {
//                temRoot = tempLoadObjTrans.GetChild(1);
//            }

//            if (temRoot == null)
//            {
//                Helper.LogError("load window can't find the RootObject:");
//                GameObject.DestroyObject(varObj);
//                return null;
//            }

//            GameObject tempWindow = temRoot.gameObject;

//            temRoot.SetParent(m_WindowRoot.transform);
//            temRoot.localScale = Vector3.one;
//            GameObject.DestroyObject(varObj);

//            return tempWindow;
//        }

//        public void OpenWindow(string windowName, OpenWindowCallBack varCall, ResLoadParam param, bool fullScreen = false)
//        {
//            if (string.IsNullOrEmpty(windowName))
//            {
//                return;
//            }
//            GameObject openWindow = GetWindowByName(windowName);
//            if (openWindow != null)
//            {
//                if (openWindow.activeSelf == false)
//                {
//                    MoveWindowToFront(windowName);
//                }
//                WindowChange();

//                if (varCall != null)
//                {
//                    varCall(openWindow, param);
//                }
//                return;
//            }
//            string windowPath = Helper.Format("UI/{0}", windowName);

//            if (ResManager.InProgress(windowPath) != null)
//            {
//                return;
//            }
//            ResManager.LoadAssetAsync(windowPath, typeof(GameObject), true, (obj, varParam1) =>
//            {
//                GameObject LoadObject = obj as GameObject;
//                if (LoadObject == null)
//                {
//                    Helper.LogError("Open window fail");
//                }
//                openWindow = SetUI(LoadObject);
//                if (openWindow == null)
//                {
//                    Helper.LogError("Open Window fail 1");
//                    if (varCall != null)
//                    {
//                        varCall(openWindow, param);
//                    }
//                    return;
//                }

//                if (m_Windows.ContainsKey(windowName) == false)
//                {
//                    m_Windows.Add(windowName, openWindow);
//                }

//                SetOtherWinToUI(openWindow);

//                openWindow.SetActive(true);

//                SetWindowDepth(openWindow, windowName);

//                if (fullScreen == false)
//                {
//                    TweenScale tempScale = openWindow.AddComponent<TweenScale>();
//                    tempScale.from = new Vector3(0.0f, 0.0f, 0.0f);
//                    tempScale.to = Vector3.one;
//                    tempScale.style = UITweener.Style.Once;
//                    tempScale.duration = 0.75f;
//                    tempScale.animationCurve.RemoveKey(0);
//                    tempScale.animationCurve.AddKey(new Keyframe(0.00f, 0.5f));
//                    tempScale.animationCurve.AddKey(new Keyframe(0.25f, 1.0136f));
//                    tempScale.animationCurve.AddKey(new Keyframe(0.5f, 0.9868f));
//                    tempScale.animationCurve.AddKey(new Keyframe(0.6f, 1.0054f));
//                    tempScale.animationCurve.AddKey(new Keyframe(0.75f, 1.0f));

//                    //				tempScale.animationCurve.AddKey(new Keyframe(0.00f,0.5f));
//                    //				tempScale.animationCurve.AddKey(new Keyframe(0.5628f,1.0136f));
//                    //				tempScale.animationCurve.AddKey(new Keyframe(0.8088f,0.9868f));
//                    //				tempScale.animationCurve.AddKey(new Keyframe(0.9397f,1.0054f));
//                    //				tempScale.animationCurve.AddKey(new Keyframe(1.0f,1.0f));

//                    tempScale.animationCurve.RemoveKey(tempScale.animationCurve.length - 1);
//                }

//                WindowChange();
//                Helper.Log("Open Window success");
//                if (varCall != null)
//                {
//                    varCall(openWindow, param);
//                }
//            });
//        }

//        public void OpenWindow(string windowName, bool fullScreen = false)
//        {
//            OpenWindow(windowName, null, null, fullScreen);
//        }

//        /// <summary>
//        /// 从Resources加载一个窗口，不做其他事.
//        /// </summary>
//        public GameObject LoadWindowFromResources(string varWindowName)
//        {
//            GameObject tempObj = Resources.Load<GameObject>(varWindowName);
//            GameObject tempOpenWindow = SetUI(tempObj);

//            return tempOpenWindow;
//        }
//        /// <summary>
//        ///打开一个小的提示公用弹框.
//        /// </summary>
//        public void OpenSmallTipsDialog(string varContents)
//        {
//            //AudioManager.GetSingleton().PlayUIAudio(AudioName.AN_Warning);
//            OpenWindowCallBack tempCallback = delegate (GameObject varObj, ResLoadParam varParam)
//            {
//                if (this == null)
//                {
//                    return;
//                }

//                if (varObj != null)
//                {
//                    SmallTipsDialog tempScript = varObj.GetComponent<SmallTipsDialog>();
//                    if (tempScript == null)
//                    {
//                        tempScript = varObj.AddComponent<SmallTipsDialog>();
//                    }
//                    tempScript.SetContents(varContents);
//                }
//            };
//            OpenDialog("Dialog/SmallDialog", false, false, tempCallback);
//        }

//        /// <summary>
//        ///打开一个标准的提示公用弹框(无操作按钮，5秒钟自动消失).
//        /// </summary>
//        public void OpenStandardDialog(string varContents)
//        {
//            OpenStandardDialog(varContents, null);
//        }

//        public void OpenStandardDialog(string varContents, EventDelegate.Callback varCloseCallback)
//        {
//            OpenWindowCallBack tempCallback = delegate (GameObject varObj, ResLoadParam varParam)
//            {
//                if (this == null)
//                {
//                    return;
//                }

//                if (varObj != null)
//                {
//                    StandardDialog tempScript = varObj.GetComponent<StandardDialog>();
//                    if (tempScript == null)
//                    {
//                        tempScript = varObj.AddComponent<StandardDialog>();
//                    }
//                    tempScript.SetContents(varContents);
//                    tempScript.SetCloseCallback(varCloseCallback);
//                }
//            };

//            OpenDialog("Dialog/StandardDialog", tempCallback);
//        }

//        public void OpenDialog(string varDialogName, OpenWindowCallBack varCallback)
//        {
//            OpenDialog(varDialogName, false, true, varCallback);
//        }

//        private GameObject OpenDialogCallback(string varDialogName, bool varStopBackEvent, GameObject varLoadObject)
//        {
//            GameObject tempLoadObject = GameObject.Instantiate(varLoadObject) as GameObject;
//            if (tempLoadObject.transform.childCount == 0)
//            {
//                GameObject.DestroyObject(tempLoadObject);
//                return null;
//            }

//            Transform tempRoot = tempLoadObject.transform.GetChild(0);
//            for (int i = 0; i < tempLoadObject.transform.childCount; i++)
//            {
//                tempRoot = tempLoadObject.transform.GetChild(i);
//                Camera tempCamera = tempRoot.GetComponent<Camera>();
//                if (tempCamera != null)
//                {
//                    continue;
//                }
//                else
//                {
//                    break;
//                }
//            }

//            if (tempRoot == null)
//            {
//                Helper.LogError("load Dialog can't find the RootObject:" + varDialogName);
//                GameObject.DestroyObject(tempLoadObject);
//                return null;
//            }

//            GameObject tempDialog = tempRoot.gameObject;
//            tempRoot.SetParent(mDialogRoot.transform);
//            tempRoot.localScale = Vector3.one;
//            if (m_Dialogs.ContainsKey(varDialogName))
//            {
//                CloseDialog(varDialogName);
//            }
//            m_Dialogs.Add(varDialogName, tempDialog);
//            tempDialog.SetActive(true);
//            if (varStopBackEvent)
//            {
//                SetUICameraEventReceiverMask(mUILayer, mCustomUILayer);
//            }
//            mDialogMaxDepth = OffsetDepth(tempDialog, mDialogMaxDepth);
//            NGUITools.SetLayer(tempDialog, mDialogLayer);
//            GameObject.DestroyObject(tempLoadObject);

//            return tempDialog;
//        }

//        public void OpenDialog(string dialogName, bool closeOthers, bool varStopBackEvent, OpenWindowCallBack varCallback)
//        {
//            if (string.IsNullOrEmpty(dialogName))
//            {
//                return;
//            }
//            if (closeOthers)
//            {
//                CloseAllDialogs();
//            }

//            GameObject tempLoadObject = GetDialogCacheByName(dialogName);
//            if (tempLoadObject == null)
//            {
//                LoadAssetCallback tempCallback = delegate (UnityEngine.Object obj, ResLoadParam varParam)
//                {
//                    GameObject tempObj = obj as GameObject;
//                    if (tempObj == null)
//                    {
//                        Helper.LogError("open Dialog Failed, Resources.Load Fail,file name: " + dialogName);
//                        if (varCallback != null)
//                        {
//                            varCallback(null, null);
//                        }
//                        return;
//                    }

//                    if (!m_AllLoadedDialogs.ContainsKey(dialogName))
//                    {
//                        m_AllLoadedDialogs.Add(dialogName, tempObj);
//                    }

//                    tempLoadObject = OpenDialogCallback(dialogName, varStopBackEvent, tempObj);
//                    if (varCallback != null)
//                    {
//                        varCallback(tempLoadObject, null);
//                    }
//                };

//                string tempDialogPath = string.Format("ui/{0}", dialogName);

//                int tempIndex = dialogName.LastIndexOf("/");
//                if (tempIndex >= 0)
//                {
//                    string assetPath = tempDialogPath + dialogName.Substring(tempIndex + 1);
//                    ResManager.LoadAssetAsync(tempDialogPath, typeof(GameObject), tempCallback);
//                }
//                else
//                {
//                    string assetPath = tempDialogPath + dialogName;
//                    ResManager.LoadAssetAsync(assetPath, typeof(GameObject), tempCallback);
//                }
//            }
//            else
//            {
//                tempLoadObject = OpenDialogCallback(dialogName, varStopBackEvent, tempLoadObject);

//                if (varCallback != null)
//                {
//                    varCallback(tempLoadObject, null);
//                }
//            }
//        }

//        /// <summary>
//        /// 设置Camera需要渲染的层.
//        /// </summary>
//        /// <param name="varlayers">需要渲染的层数组.</param>
//        private void SetCameraCullingMaskLayer(params int[] varlayers)
//        {
//            if (m_Camera != null)
//            {
//                m_Camera.cullingMask = Helper.OnlyIncluding(varlayers);
//            }
//        }
//        /// <summary>
//        /// 设置UICamera不接收事件的层.
//        /// </summary>
//        /// <param name="varlayers">不接收事件的层数组.</param>
//        private void SetUICameraEventReceiverMask(params int[] varlayers)
//        {
//            if (m_UICamera != null)
//            {
//                m_UICamera.eventReceiverMask = Helper.EverythingBut(varlayers);
//            }
//        }
//        /// <summary>
//        /// 通过窗口名得到一个窗口GameObject.
//        /// </summary>
//        /// <returns>The window by name.</returns>
//        /// <param name="varWindowName">Variable window name.</param>
//        public GameObject GetWindowByName(string varWindowName)
//        {
//            if (string.IsNullOrEmpty(varWindowName))
//            {
//                return null;
//            }
//            GameObject obj = null;
//            if (m_Windows.TryGetValue(varWindowName, out obj))
//            {
//                return obj;
//            }

//            return null;
//        }
//        /// <summary>
//        /// 通过Dialog名得到一个DialogGameObject.
//        /// </summary>
//        /// <returns>The Dialog by name.</returns>
//        /// <param name="varDialogName">Variable Dialog name.</param>
//        public GameObject GetDialogByName(string varDialogName)
//        {
//            if (string.IsNullOrEmpty(varDialogName))
//            {
//                return null;
//            }
//            GameObject tempobj = null;
//            if (m_Dialogs.TryGetValue(varDialogName, out tempobj))
//            {
//                return tempobj;
//            }
//            return null;
//        }
//        /// <summary>
//        /// 通过Dialog名得到一个已经加载过的Dialog缓存对象.
//        /// </summary>
//        /// <returns>The Dialog by name.</returns>
//        /// <param name="varDialogName">Variable Dialog name.</param>
//        public GameObject GetDialogCacheByName(string varDialogName)
//        {
//            if (string.IsNullOrEmpty(varDialogName) || m_AllLoadedDialogs == null)
//            {
//                return null;
//            }
//            GameObject tempobj = null;
//            if (m_AllLoadedDialogs.TryGetValue(varDialogName, out tempobj))
//            {
//                return tempobj;
//            }

//            return null;
//        }


//        public bool DestoryWidowByName(string varWindowName)
//        {
//            if (string.IsNullOrEmpty(varWindowName))
//            {
//                return false;
//            }
//            if (m_Windows.ContainsKey(varWindowName))
//            {
//                GameObject window = GetWindowByName(varWindowName);
//                GameObject.Destroy(window);
//                RemoveWindowPanels(varWindowName);
//                m_Windows.Remove(varWindowName);
//                winNameToFirstDepth.Remove(varWindowName);

//                // 把剩余窗口中深度最大的层级重置为QiumoUI;
//                int tempMaxDepth;
//                GameObject tempWin = GetOpenWinMaxDepth(out tempMaxDepth);
//                if (tempMaxDepth > 0)
//                {
//                    mMaxDepth = tempMaxDepth;
//                    mMaxDepth += 1;
//                }

//                if (tempWin != null)
//                {
//                    NGUITools.SetLayer(tempWin, mCustomUILayer);
//                }

//                if (varWindowName.Contains("majorUI/login/") == false)
//                {
//                    WindowChange();
//                }
//            }
//            else
//            {
//                Helper.Log(Helper.Format("can not found such window {0} to class", varWindowName));
//            }
//            return true;
//        }

//        public bool CloseWindow(string windowName)
//        {
//            if (string.IsNullOrEmpty(windowName))
//            {
//                return false;
//            }
//            GameObject window = GetWindowByName(windowName);
//            if (window == null)
//            {
//                return false;
//            }
//            // 将要隐藏的窗口深度还原;
//            UIPanel[] tempPanels = GetWindowPanels(windowName);
//            if (tempPanels == null)
//            {
//                tempPanels = window.GetComponentsInChildren<UIPanel>(true);
//                RecordWindowPanels(windowName, tempPanels);
//            }

//            if (tempPanels != null)
//            {
//                if (tempPanels.Length > 0)
//                {
//                    int tempMinDepth = mMaxDepth;
//                    for (int i = 0; i < tempPanels.Length; i++)
//                    {
//                        if (tempPanels[i].depth < tempMinDepth)
//                        {
//                            tempMinDepth = tempPanels[i].depth;
//                        }
//                    }
//                    for (int i = 0; i < tempPanels.Length; i++)
//                    {
//                        tempPanels[i].depth = tempPanels[i].depth - tempMinDepth + 1;
//                    }
//                }
//            }

//            window.SetActive(false);

//            // 把剩余窗口中深度最大的层级重置为QiumoUI;
//            int tempMaxDepth;
//            GameObject tempWin = GetOpenWinMaxDepth(out tempMaxDepth);
//            if (tempMaxDepth > 0)
//            {
//                mMaxDepth = tempMaxDepth;
//                mMaxDepth += 1;
//            }

//            if (tempWin != null)
//            {
//                NGUITools.SetLayer(tempWin, mCustomUILayer);
//            }

//            WindowChange();

//            return true;
//        }
//        /// <summary>
//        /// 关闭所有的Dialog窗口.
//        /// 指引剧情等除外.
//        /// </summary>
//        public void CloseAllDialogs()
//        {
//            if (m_Dialogs == null)
//            {
//                return;
//            }

//            Dictionary<string, GameObject> tempDialogs = new Dictionary<string, GameObject>(m_Dialogs);

//            Dictionary<string, GameObject>.Enumerator tempEnumerator = tempDialogs.GetEnumerator();

//            for (int i = 0; i < tempDialogs.Count; i++)
//            {
//                tempEnumerator.MoveNext();
//                KeyValuePair<string, GameObject> tempKvp = tempEnumerator.Current;
//                if (tempKvp.Value != null)
//                {
//                    if (m_IgnoreClearDialogs.Contains(tempKvp.Key))
//                    {
//                        continue;
//                    }
//                    GameObject.Destroy(tempKvp.Value);

//                    m_Dialogs.Remove(tempKvp.Key);
//                }
//            }
//            if (m_Dialogs.Count <= 0)
//            {
//                SetUICameraEventReceiverMask(mUILayer, mDialogLayer);
//                mDialogMaxDepth = mDialogMinDepth;
//            }

//        }
//        /// <summary>
//        /// 清除所有的Dialog窗口.
//        /// </summary>
//        public void ClearAllDialogs()
//        {
//            if (m_Dialogs == null)
//            {
//                SetUICameraEventReceiverMask(mUILayer, mDialogLayer);
//                return;
//            }
//            Dictionary<string, GameObject>.Enumerator tempEnumerator = m_Dialogs.GetEnumerator();

//            for (int i = 0; i < m_Dialogs.Count; i++)
//            {
//                tempEnumerator.MoveNext();
//                KeyValuePair<string, GameObject> tempKvp = tempEnumerator.Current;
//                if (tempKvp.Value != null)
//                {
//                    GameObject.Destroy(tempKvp.Value);
//                }
//            }
//            m_Dialogs.Clear();
//            SetUICameraEventReceiverMask(mUILayer, mDialogLayer);
//            mDialogMaxDepth = mDialogMinDepth;
//        }
//        /// <summary>
//        /// 清空以加载过的Dialog的缓存.
//        /// </summary>
//        public void ClearAllLoadDialogsCache()
//        {
//            if (m_AllLoadedDialogs == null)
//            {
//                return;
//            }
//            Dictionary<string, GameObject>.Enumerator tempEnumerator = m_AllLoadedDialogs.GetEnumerator();
//            for (int i = 0; i < m_AllLoadedDialogs.Count; i++)
//            {
//                tempEnumerator.MoveNext();
//                KeyValuePair<string, GameObject> tempKvp = tempEnumerator.Current;
//                if (tempKvp.Value != null)
//                {
//                    GameObject.Destroy(tempKvp.Value);
//                }
//            }
//            m_AllLoadedDialogs.Clear();
//        }
//        /// <summary>
//        /// 关闭一个Dialog弹框.
//        /// </summary>
//        /// <returns><c>true</c>, if dialog was closed, <c>false</c> otherwise.</returns>
//        /// <param name="varDialogName">Variable dialog name.</param>
//        public bool CloseDialog(string varDialogName)
//        {
//            if (string.IsNullOrEmpty(varDialogName))
//            {
//                return false;
//            }

//            Helper.Log(" will remove dialog :" + varDialogName);
//            if (m_Dialogs == null)
//            {
//                return false;
//            }
//            GameObject tempDialog = null;
//            if (m_Dialogs.TryGetValue(varDialogName, out tempDialog))
//            {
//                Helper.Log(" closeed dialog :" + varDialogName);
//                m_Dialogs.Remove(varDialogName);
//                GameObject.Destroy(tempDialog);
//            }
//            if (m_Dialogs.Count == 0)
//            {
//                mDialogMaxDepth = mDialogMinDepth;
//                //重置UICamera的接收事件层为仅仅不接收UI层事件;
//                SetUICameraEventReceiverMask(mUILayer, mDialogLayer);
//            }
//            return true;
//        }

//        public void ClearLoadDialogsCache(string varDialogName)
//        {
//            if (m_AllLoadedDialogs == null || m_AllLoadedDialogs.Count == 0)
//            {
//                return;
//            }

//            GameObject tempObj = null;
//            if (m_AllLoadedDialogs.TryGetValue(varDialogName, out tempObj))
//            {
//                m_AllLoadedDialogs.Remove(varDialogName);
//                //				GameObject.Destroy(tempObj);
//                GameObject.DestroyImmediate(tempObj, true);
//            }
//        }

//        // 其他窗口层级置为UI;
//        private void SetOtherWinToUI(GameObject varObj)
//        {
//            if (m_Windows.Count > 0)
//            {
//                Dictionary<string, GameObject>.Enumerator tempHadOpenWin = m_Windows.GetEnumerator();
//                for (int i = 0; i < m_Windows.Count; i++)
//                {
//                    tempHadOpenWin.MoveNext();
//                    KeyValuePair<string, GameObject> tempKvp = tempHadOpenWin.Current;
//                    GameObject tempOtherWin = tempKvp.Value;
//                    if (tempOtherWin == null)
//                    {
//                        continue;
//                    }

//                    if (tempOtherWin != varObj)
//                    {
//                        NGUITools.SetLayer(tempKvp.Value, mUILayer);
//                    }
//                }

//                NGUITools.SetLayer(varObj, mCustomUILayer);
//            }
//        }
//        /// <summary>
//        /// 将窗口移到最前面.
//        /// </summary>
//        /// <returns><c>true</c>, if window to front was moved, <c>false</c> otherwise.</returns>
//        /// <param name="varWindowName">Variable window name.</param>
//        public bool MoveWindowToFront(string varWindowName)
//        {
//            GameObject go = GetWindowByName(varWindowName);
//            return MoveWindowToFront(go, varWindowName);
//        }

//        private bool MoveWindowToFront(GameObject varObj, string varWindowName)
//        {
//            if (varObj == null)
//            {
//                return false;
//            }

//            varObj.SetActive(true);

//            if (string.IsNullOrEmpty(varWindowName))
//            {
//                return false;
//            }

//            if (m_Windows.Count <= 1)
//            {
//                return false;
//            }

//            if (winNameToFirstDepth.ContainsKey(varWindowName))
//            {
//                //				if (winNameToFirstDepth [varWindowName] < mMaxDepth) 
//                //				{
//                //
//                //				}

//                int tempOffsetDepth = mMaxDepth; // - winNameToFirstDepth[varWindowName];

//                UIPanel[] ps = GetWindowPanels(varWindowName);
//                if (ps == null)
//                {
//                    ps = varObj.GetComponentsInChildren<UIPanel>(true);
//                    RecordWindowPanels(varWindowName, ps);
//                }

//                int tempMaxDepth = 0;
//                for (int i = 0; i < ps.Length; i++)
//                {
//                    UIPanel p = ps[i];
//                    p.depth += tempOffsetDepth;
//                    if (p.depth > tempMaxDepth)
//                    {
//                        tempMaxDepth = p.depth;
//                    }
//                }
//                if (tempMaxDepth > mMaxDepth)
//                {
//                    mMaxDepth = tempMaxDepth;
//                }
//                winNameToFirstDepth[varWindowName] = mMaxDepth;
//                mMaxDepth += 1;
//            }

//            SetOtherWinToUI(varObj);

//            return true;
//        }

//        /// <summary>
//        /// 将窗口移到最后面.
//        /// </summary>
//        /// <returns><c>true</c>, if window to back was moved, <c>false</c> otherwise.</returns>
//        /// <param name="varWindowName">Variable window name.</param>
//        public bool MoveWindowToBack(string varWindowName)
//        {
//            if (string.IsNullOrEmpty(varWindowName))
//            {
//                return false;
//            }

//            if (m_Windows.Count <= 1)
//            {
//                return false;
//            }

//            GameObject tempWin = GetWindowByName(varWindowName);
//            if (tempWin == null)
//            {
//                return false;
//            }

//            if (winNameToFirstDepth.ContainsKey(varWindowName) == false)
//            {
//                return false;
//            }

//            int tempCurWinDepth = winNameToFirstDepth[varWindowName];
//            int tempCurWinOffsetDepth = 0;

//            List<string> tempMinWins = new List<string>();
//            List<int> tempOffsetDepths = new List<int>();

//            // 找出比当前窗口深度小的窗口, 计算它们往前移动的偏移量;
//            Dictionary<string, int>.Enumerator tempDic = winNameToFirstDepth.GetEnumerator();
//            for (int i = 0; i < winNameToFirstDepth.Count; i++)
//            {
//                tempDic.MoveNext();
//                KeyValuePair<string, int> tempKvp = tempDic.Current;
//                if (tempKvp.Value < tempCurWinDepth)
//                {
//                    int tempOffsetDepth = tempCurWinDepth - tempKvp.Value;
//                    tempMinWins.Add(tempKvp.Key);
//                    tempOffsetDepths.Add(tempOffsetDepth);

//                    if (tempCurWinOffsetDepth < tempOffsetDepth)
//                    {
//                        tempCurWinOffsetDepth = tempOffsetDepth;
//                    }
//                }
//            }

//            // 比当前窗口深度小的窗口都往前移;
//            for (int i = 0; i < tempMinWins.Count; i++)
//            {
//                GameObject tempObj = null;
//                if (m_Windows.TryGetValue(tempMinWins[i], out tempObj))
//                {
//                    if (tempObj == null || tempObj.activeSelf == false)
//                    {
//                        continue;
//                    }

//                    int tempOffsetDepth = tempOffsetDepths[i];
//                    UIPanel[] tempWinPanels = tempObj.GetComponentsInChildren<UIPanel>(true);
//                    for (int j = 0; j < tempWinPanels.Length; j++)
//                    {
//                        tempWinPanels[j].depth += tempOffsetDepth;
//                    }
//                }
//            }

//            // 当前窗口往后移动指定偏移量;
//            UIPanel[] tempPanels = GetWindowPanels(varWindowName);
//            if (tempPanels == null)
//            {
//                tempPanels = tempWin.GetComponentsInChildren<UIPanel>(true);
//                RecordWindowPanels(varWindowName, tempPanels);
//            }

//            for (int i = 0; i < tempPanels.Length; i++)
//            {
//                tempPanels[i].depth -= tempCurWinOffsetDepth;
//            }

//            return true;
//        }

//        /// <summary>
//        //打开一个新窗口时，设置新窗口的Detph
//        /// </summary>
//        private void SetWindowDepth(GameObject go, string varWindowName)
//        {
//            mMaxDepth = OffsetDepth(go, varWindowName, mMaxDepth);
//            if (winNameToFirstDepth.ContainsKey(varWindowName))
//            {
//                winNameToFirstDepth[varWindowName] = mMaxDepth;
//            }
//            else
//            {
//                winNameToFirstDepth.Add(varWindowName, mMaxDepth);
//            }
//            mMaxDepth += 1;
//        }

//        /// <summary>
//        //获得窗口所有子Uipanel并且改变其Depth最大
//        /// </summary>
//        private int OffsetDepth(GameObject gameObject, int depth)
//        {
//            UIPanel[] ps = gameObject.GetComponentsInChildren<UIPanel>(true);
//            int maxDepth = 0;
//            for (int i = 0; i < ps.Length; i++)
//            {
//                UIPanel p = ps[i];
//                p.depth += depth;
//                if (p.depth > maxDepth)
//                {
//                    maxDepth = p.depth;
//                }
//            }
//            return maxDepth;
//        }

//        private int OffsetDepth(GameObject gameObject, string varWindowName, int depth)
//        {
//            UIPanel[] ps = GetWindowPanels(varWindowName);
//            if (ps == null)
//            {
//                ps = gameObject.GetComponentsInChildren<UIPanel>(true);
//                RecordWindowPanels(varWindowName, ps);
//            }

//            int maxDepth = 0;
//            for (int i = 0; i < ps.Length; i++)
//            {
//                UIPanel p = ps[i];
//                p.depth += depth;
//                if (p.depth > maxDepth)
//                {
//                    maxDepth = p.depth;
//                }
//            }
//            return maxDepth;
//        }

//        /// <summary>
//        /// 从所有激活的窗口中查找最大深度的窗口.
//        /// </summary>
//        /// <returns>The open window max depth.</returns>
//        private GameObject GetOpenWinMaxDepth(out int varMaxDepth)
//        {
//            varMaxDepth = 0;

//            Dictionary<string, int>.Enumerator tempDic = winNameToFirstDepth.GetEnumerator();
//            int tempMaxDepth = -1;
//            GameObject tempWin = null;

//            for (int i = 0; i < winNameToFirstDepth.Count; i++)
//            {
//                tempDic.MoveNext();
//                KeyValuePair<string, int> tempKvp = tempDic.Current;
//                GameObject tempObj = null;
//                m_Windows.TryGetValue(tempKvp.Key, out tempObj);
//                //				if (tempKvp.Value > varMaxDepth)
//                //				{
//                //					varMaxDepth = tempKvp.Value;
//                //				}

//                if (tempObj != null && tempObj.activeSelf)
//                {
//                    if (tempKvp.Value > tempMaxDepth)
//                    {
//                        tempWin = tempObj;
//                        tempMaxDepth = tempKvp.Value;
//                    }
//                }
//            }

//            if (tempMaxDepth > varMaxDepth)
//            {
//                varMaxDepth = tempMaxDepth;
//            }
//            return tempWin;
//        }

//        /// <summary>
//        /// 关闭所有窗口，不包括指定名字的窗口.
//        /// </summary>
//        /// <param name="varWinArray">Variable window array.</param>
//        public void DestroyAllWinBut(params string[] varWinArray)
//        {
//            if (varWinArray == null || varWinArray.Length == 0)
//            {
//                return;
//            }

//            List<string> tempRemove = null;

//            int tempMaxDepth = 0;

//            Dictionary<string, GameObject>.Enumerator tempHadOpenWin = m_Windows.GetEnumerator();
//            for (int i = 0; i < m_Windows.Count; i++)
//            {
//                tempHadOpenWin.MoveNext();
//                KeyValuePair<string, GameObject> tempKvp = tempHadOpenWin.Current;
//                string tempKey = tempKvp.Key;

//                int j = 0;
//                while (j < varWinArray.Length)
//                {
//                    if (varWinArray[j] == tempKey)
//                    {
//                        int tempDepth = winNameToFirstDepth[tempKey];
//                        if (tempMaxDepth < tempDepth)
//                        {
//                            tempMaxDepth = tempDepth;
//                        }

//                        NGUITools.SetLayer(tempKvp.Value, mCustomUILayer);

//                        break;
//                    }

//                    j++;
//                }
//                if (j >= varWinArray.Length)
//                {
//                    if (tempRemove == null)
//                    {
//                        tempRemove = new List<string>();
//                    }
//                    tempRemove.Add(tempKey);
//                }
//            }

//            if (tempRemove == null)
//            {
//                return;
//            }
//            for (int i = 0; i < tempRemove.Count; i++)
//            {
//                GameObject tempGo = null;
//                string tempKey = tempRemove[i];
//                if (m_Windows.TryGetValue(tempKey, out tempGo))
//                {
//                    RemoveWindowPanels(tempKey);
//                    m_Windows.Remove(tempKey);
//                    GameObject.Destroy(tempGo);
//                }
//                winNameToFirstDepth.Remove(tempKey);
//            }

//            if (tempMaxDepth > 0)
//            {
//                mMaxDepth = tempMaxDepth + 1;
//            }

//            WindowChange();
//        }

//        /// <summary>
//        /// 关闭所有窗口除了聊天窗口.
//        /// </summary>
//        public void DestroyAllWin()
//        {
//            DestroyAllWin(false);
//        }

//        public void DestroyAllWin(bool varDestroyAll)
//        {
//            if (varDestroyAll)
//            {
//                if (m_Windows.Count > 0)
//                {
//                    Dictionary<string, GameObject>.Enumerator tempHadOpenWin = m_Windows.GetEnumerator();
//                    for (int i = 0; i < m_Windows.Count; i++)
//                    {
//                        tempHadOpenWin.MoveNext();
//                        KeyValuePair<string, GameObject> tempKvp = tempHadOpenWin.Current;
//                        if (tempKvp.Value != null)
//                        {
//                            GameObject.Destroy(tempKvp.Value);
//                        }
//                    }

//                    if (m_WinPanels != null)
//                    {
//                        m_WinPanels.Clear();
//                    }
//                    m_Windows.Clear();
//                }

//                if (winNameToFirstDepth.Count > 0)
//                {
//                    winNameToFirstDepth.Clear();
//                }

//                mMaxDepth = INIT_DEPTH;

//                return;
//            }
//        }

//        /// <summary>
//        /// 获取激活的窗口.
//        /// </summary>
//        /// <returns>The active window.</returns>
//        public int GetActiveWindow(out int varDepth)
//        {
//            varDepth = 0;
//            if (m_Windows.Count == 0)
//            {
//                return 0;
//            }

//            List<int> tempList = BlackMask.GetSingleton().pDepthList;
//            if (tempList == null)
//            {
//                tempList = new List<int>();
//            }
//            else
//            {
//                tempList.Clear();
//            }

//            int tempActiveNum = 0;
//            Dictionary<string, GameObject>.Enumerator tempHadOpenWin = m_Windows.GetEnumerator();
//            for (int i = 0; i < m_Windows.Count; i++)
//            {
//                tempHadOpenWin.MoveNext();
//                KeyValuePair<string, GameObject> tempKvp = tempHadOpenWin.Current;
//                GameObject tempOtherWin = tempKvp.Value;
//                if (tempOtherWin == null || !tempOtherWin.activeSelf)
//                {
//                    continue;
//                }

//                if (winNameToFirstDepth != null)
//                {
//                    int tempDepth = 0;
//                    winNameToFirstDepth.TryGetValue(tempKvp.Key, out tempDepth);
//                    tempList.Add(tempDepth);
//                }

//                ++tempActiveNum;
//            }

//            if (tempList.Count > 1)
//            {
//                tempList.Sort(SortByDepth);
//                varDepth = tempList[1];
//            }

//            return tempActiveNum;
//        }

//        public int GetActiveWindow()
//        {
//            if (m_Windows.Count == 0)
//            {
//                return 0;
//            }

//            int tempActiveNum = 0;
//            Dictionary<string, GameObject>.Enumerator tempHadOpenWin = m_Windows.GetEnumerator();
//            for (int i = 0; i < m_Windows.Count; i++)
//            {
//                tempHadOpenWin.MoveNext();
//                KeyValuePair<string, GameObject> tempKvp = tempHadOpenWin.Current;
//                GameObject tempOtherWin = tempKvp.Value;
//                if (tempOtherWin == null || !tempOtherWin.activeSelf)
//                {
//                    continue;
//                }

//                ++tempActiveNum;
//            }

//            return tempActiveNum;
//        }

//        private void WindowChange()
//        {
//            int tempDepth = 0;
//            int tempActiveWinNum = GetActiveWindow(out tempDepth);
//            BlackMask tempMask = BlackMask.GetSingleton();
//            tempMask.pActiveWinNum = tempActiveWinNum;
//            tempMask.pMaxDepth = tempDepth;

//            GlobalEventManager.GetSingleton().NotifyGlobalEvent(new GlobalEventEx<BlackMask>(GlobalEventType.GE_SetMainMask, tempMask));

//            //			if (mGlobalEventManager == null)
//            //            {
//            //                return;
//            //            }
//            //			mGlobalEventManager.RegisterGlobalEvent(GlobalEventType.GE_SetMainMask, tempMask);
//        }

//        public int SortByDepth(int depth1, int depth2)
//        {
//            return -depth1.CompareTo(depth2);
//        }

//        private void RecordWindowPanels(string windowName, UIPanel[] panels)
//        {
//            if (m_WinPanels == null)
//            {
//                m_WinPanels = new Dictionary<string, UIPanel[]>();
//                m_WinPanels.Add(windowName, panels);

//                return;
//            }

//            UIPanel[] tempPanels = null;
//            bool tempB = m_WinPanels.TryGetValue(windowName, out tempPanels);
//            tempPanels = panels;
//            if (!tempB)
//            {
//                m_WinPanels.Add(windowName, tempPanels);
//            }
//        }

//        private void RemoveWindowPanels(string windowName)
//        {
//            if (m_WinPanels == null)
//            {
//                return;
//            }

//            if (m_WinPanels.ContainsKey(windowName))
//            {
//                m_WinPanels.Remove(windowName);
//            }
//        }

//        private UIPanel[] GetWindowPanels(string windowName)
//        {
//            if (m_WinPanels == null)
//            {
//                return null;
//            }

//            UIPanel[] tempPanels = null;
//            m_WinPanels.TryGetValue(windowName, out tempPanels);

//            return tempPanels;
//        }

//        public Vector3 GetPos(Transform varTra)
//        {
//            GameObject tempCameraObj = GameObject.Find("Main Camera");
//            if (tempCameraObj == null)
//            {
//                Helper.LogError("WindowManager: GetPos() tempCameraObj is NULL");
//                return Vector3.zero;
//            }

//            Camera tempCamera = tempCameraObj.GetComponent<Camera>();
//            if (tempCamera == null)
//            {
//                Helper.LogError("WindowManager: GetPos() tempCamera is NULL");
//                return Vector3.zero;
//            }

//            // 1. 使用透视摄像机把世界坐标转换到屏幕坐标
//            Vector3 pos = tempCamera.WorldToScreenPoint(varTra.position);
//            pos.z = 0f;   //把z设置为0
//            pos.x -= (Screen.width / 2.0f);
//            pos.y -= (Screen.height / 2.0f);
//            pos *= ScreenScale;

//            //            //2. 使用UI摄像机转换到NGUI的世界坐标
//            //            Vector3 pos2 = mCamera.ScreenToWorldPoint(pos);

//            //3. 返回;
//            return pos;
//        }

//        public T OpenWindow<T>()
//            where T : IWindow
//        {
//            Type type = typeof(T);
//            object obj = type.Assembly.CreateInstance(type.FullName);
//            MemberInfo[] infos = type.GetMember("KEY", BindingFlags.GetProperty);
//            if (infos != null && infos.Length > 0)
//            {
//                string key = (string)type.InvokeMember("KEY", BindingFlags.GetProperty | BindingFlags.Instance, null, obj, null);
//                string assetPath = Helper.Format("UI/{0}", key);
//                GameObject go = ResManager.LoadAssetSync<GameObject>(assetPath);
//                return go.GetComponent<T>();
//            }
//            else
//            {
//                return default(T);
//            }
//        }
//        public T OpenDialog<T>()
//            where T : IDialog
//        {
//            Type type = typeof(T);
//            object obj = type.Assembly.CreateInstance(type.FullName);
//            MemberInfo[] infos = type.GetMember("KEY", BindingFlags.GetProperty);
//            if (infos != null && infos.Length > 0)
//            {
//                string key = (string)type.InvokeMember("KEY", BindingFlags.GetProperty | BindingFlags.Instance, null, obj, null);
//                string assetPath = Helper.Format("UI/{0}", key);
//                GameObject go = ResManager.LoadAssetSync<GameObject>(assetPath);
//                return go.GetComponent<T>();
//            }
//            else
//            {
//                return default(T);
//            }
//        }
//        public void CloseWindow<T>() { }
//        public void CloseDialog<T>() { }
//    }
//}
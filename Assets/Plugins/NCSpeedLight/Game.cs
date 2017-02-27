/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Game.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 14:21:11
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

namespace NCSpeedLight
{
    public class Game : MonoBehaviour
    {
        public static Game Instance { get; set; }
        public GUISkin Skin;
        void Awake()
        {
            InitializeGame();
            RegisterScenes();
        }
        void Start()
        {
            LuaManager.StartMain();
        }
        void OnGUI()
        {
            if (NetManager.Instance != null)
            {
                if (Skin)
                {
                    GUI.skin = Skin;
                }
                if (NetManager.CurrentLatency > 0)
                {
                    GUI.Label(new Rect(10, Screen.height - 80, 400, 50), "Ping: " + NetManager.CurrentLatency + " ms");
                }
                else
                {
                    //GameObject.Instantiate()
                    GUI.Label(new Rect(10, Screen.height - 80, 400, 50), "Not connect to server yet");
                }
                //if (ContextProvider.CurrentScene.GetType() == typeof(LoginScene))
                //{
                //    GUILayout.BeginHorizontal();
                //    GUI.Label(new Rect(10, Screen.height - 40, 100, 50), "IP: ");
                //    ValueProvider.SERVER_ADDRESS = GUI.TextField(new Rect(60, Screen.height - 40, 200, 50), ValueProvider.SERVER_ADDRESS);
                //    GUILayout.EndHorizontal();
                //}
                //else
                //{
                //    GUILayout.BeginHorizontal();
                //    GUI.Label(new Rect(10, Screen.height - 40, 100, 50), "IP: ");
                //    GUI.Label(new Rect(60, Screen.height - 40, 200, 50), ValueProvider.SERVER_ADDRESS);
                //    GUILayout.EndHorizontal();
                //}
            }
            //if (GUI.Button(new Rect(10, 10, 300, 40), "Get data from sqlite."))
            //{
            //    LocalItem tmpItem = null;
            //    string sql = "select * from object";
            //    bool b = SQLiteProvider.Instance.GetLocalItem(sql, out tmpItem);

            //    if (tmpItem != null && b == true)
            //    {
            //        while (tmpItem.Read())
            //        {
            //            ObjectTableItem item = new ObjectTableItem();

            //            item.id = tmpItem.GetValueByColumnName("id", 0);
            //            item.object_name = tmpItem.GetValueByColumnName("object_name", "0");
            //            item.object_icon = tmpItem.GetValueByColumnName("object_icon", "0");
            //            item.object_model = tmpItem.GetValueByColumnName("object_model", "0");
            //            item.object_type = tmpItem.GetValueByColumnName("object_type", 0);
            //            item.profession = tmpItem.GetValueByColumnName("profession", 0);
            //            item.buygold = tmpItem.GetValueByColumnName("buygold", 0);
            //            item.sellgold = tmpItem.GetValueByColumnName("sellgold", 0);
            //            item.object_model = tmpItem.GetValueByColumnName("describe", "0");
            //        }
            //    }
            //    tmpItem.Close();

            //    int a = 1;
            //}

            if (GUI.Button(new Rect(10, 10, 300, 40), "Load UI"))
            {
                UIManager.OpenWindow("Login");
            }
            //if (GUI.Button(new Rect(10, 50, 300, 40), "Send a test msg"))
            //{
            //    Connection toLoginServer = NetworkProvider.Instance.GetConnection(NetworkProvider.ServerType.Logic);
            //    if (toLoginServer != null)
            //    {
            //        PBMessage.go_login_request req = new PBMessage.go_login_request();
            //        req.logintype = 1;
            //        req.account = "Wells Hsu2016";
            //        req.pwd = "123456";

            //        for (int i = 0; i < 6; i++)
            //        {
            //            toLoginServer.SendMessageProtoBuf<PBMessage.go_login_request>((int)AccountMessage.GO_ACCOUNT_LOGIN_REQUEST, req);
            //        }
            //    }
            //}
        }
        private void InitializeGame()
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            Application.targetFrameRate = 30; // Disable vsync and set target frame rate to 30fps
            Screen.sleepTimeout = SleepTimeout.NeverSleep; // Keep the screen always display.
            DBManager.Instance.Initialize();
            ResManager.Initialize();
            UIManager.Initialize();
            LuaManager.Initialize();
        }
        private void RegisterScenes()
        {
        }
        private int ClickBackBtnCount = 0;
        private float m_LastClickBackBtnTime;
        private void Update()
        {
            NetManager.Instance.Update();
            if (Application.platform == RuntimePlatform.Android && (Input.GetKeyDown(KeyCode.Escape)))
            {
                if ((Time.realtimeSinceStartup - m_LastClickBackBtnTime) < 2000)
                {
                    KillProgress();
                }
                else
                {
                    m_LastClickBackBtnTime = Time.realtimeSinceStartup;
                }
            }
        }
        private void KillProgress()
        {
            Application.Quit();
        }
        private void OnDestroy()
        {
            NetManager.Instance.Destroy();
        }
    }
}

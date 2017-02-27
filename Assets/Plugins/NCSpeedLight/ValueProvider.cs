/*----------------------------------------------------------------
            // Copyright © 2014-2016 NCSpeedLight
            // 
            // FileName: ValueProvider.cs
			// Describle:
			// Created By:  Wells Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace NCSpeedLight
{
    public class ValueProvider
    {
        public static string SERVER_ADDRESS = "139.224.165.102";
        //public const string SERVER_ADDRESS = "172.16.30.158";
        //public const string SERVER_ADDRESS = "127.0.0.1";
        //public const string SERVER_ADDRESS = "139.224.165.102";



        public const int SERVER_PORT = 6000;
        public const int UI_ROOT_HEIGHT = 720;
        public const int UI_ROOT_WIDTH = 1224;
        public static float SCREEN_SCALE
        {
            get
            {
                return (float)UI_ROOT_HEIGHT / (float)Screen.height;
            }
        }
        private static UICamera m_UICamera;
        private static Transform m_DialogNode;
        public static UICamera UICamera
        {
            get
            {
                if (m_UICamera == null)
                {
                    m_UICamera = GameObject.FindObjectOfType<UICamera>();
                }
                return m_UICamera;
            }
        }
        public static Transform UIRoot
        {
            get
            {
                return Game.Instance.transform.Find("UI Root").transform;
            }
        }
        public static Transform DialogNode
        {
            get
            {
                if (m_DialogNode == null)
                {
                    m_DialogNode = new GameObject("DialogNode").transform;
                    m_DialogNode.transform.SetParent(ValueProvider.UIRoot);
                    m_DialogNode.localScale = Vector3.one;
                }
                return m_DialogNode;
            }
        }
        public const string UI_PRFAB_BASE_DIRECTORY = "UI/";

        /// <summary>
        /// 是否单机运行.
        /// Whether run game with single player.
        /// </summary>
        public static bool IsSinglePlayer = false;

        public static Transform m_PlayersNode;
        public static Transform PlayersNode
        {
            get
            {
                if (m_PlayersNode == null)
                {
                    m_PlayersNode = new GameObject("PlayersNode").transform;
                    GameObject.DontDestroyOnLoad(m_PlayersNode);
                }
                return m_PlayersNode;
            }
        }
        public const int COPY_ID = 10001;
    }
}

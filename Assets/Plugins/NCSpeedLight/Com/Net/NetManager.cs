/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: NetManager.cs
			// Describle:  管理不同的网络连接，处理收发包等逻辑
			// Created By:  Wells Hsu
			// Date&Time:  2016/3/3 19:11:09
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class NetManager
    {
        public enum ServerType
        {
            Login, // login(account) server
            Logic, // game logic server
        }
        public class LantencyIno
        {
            public float ReqTime;
            public float RecvTime;
            public float DeltaTime
            {
                get
                {
                    return RecvTime - ReqTime;
                }
            }
        }
        private static NetManager m_Instance;
        public static NetManager Instance
        {
            get
            {
                if (m_Instance == null)
                {
                    m_Instance = new NetManager();
                }
                return m_Instance;
            }
        }

        private Dictionary<ServerType, NetConnection> m_Connections; // all connected connection
        private List<NetConnection> m_Buffer; // temporary buffer

        #region [Functions]
        public NetManager() : base()
        {
            m_Connections = new Dictionary<ServerType, NetConnection>();
            m_Buffer = new List<NetConnection>();
            InitLatencyTest();
        }

        /// <summary>
        /// Connect to a specific server with host and port number,we now have account server and game logic server.
        /// </summary>
        /// <param name="svrType"></param>
        /// <param name="host"></param>
        /// <param name="port"></param>
        /// <param name="listener"></param>
        /// <returns></returns>
        public bool CreateConnection(ServerType svrType, string host, int port, NetConnection.StateListener listener)
        {
            DeleteConnection(svrType);
            NetConnection connection = new NetConnection();
            m_Connections.Add(svrType, connection);
            connection.SetNetStateListener(listener);
            return connection.Connect(host, port);
        }

        /// <summary>
        /// Disconnect form a server with server type,we now have account server and game logic server.
        /// </summary>
        /// <param name="svrType"></param>
        public void DeleteConnection(ServerType svrType)
        {
            NetConnection connection;
            if (m_Connections.TryGetValue(svrType, out connection))
            {
                connection.Disconnect();
                m_Connections.Remove(svrType);
            }
        }

        /// <summary>
        /// Get a connection with server type.
        /// </summary>
        /// <param name="svrType"></param>
        /// <returns>Connection</returns>
        public NetConnection GetConnection(ServerType svrType)
        {
            NetConnection connection;
            m_Connections.TryGetValue(svrType, out connection);
            return connection;
        }

        /// <summary>
        /// Drive manager,it's important to make sure all operations are operated in main thread.
        /// </summary>
        public void Update()
        {
            if (m_Buffer.Count != 0)
            {
                m_Buffer.Clear();
            }
            Dictionary<ServerType, NetConnection>.Enumerator it = m_Connections.GetEnumerator();
            for (int i = 0; i < m_Connections.Count; i++)
            {
                it.MoveNext();
                if (it.Current.Value != null)
                    it.Current.Value.Update();
            }
        }

        /// <summary>
        /// Dispose manager instance.
        /// </summary>
        public void Destroy()
        {
            Dictionary<ServerType, NetConnection>.Enumerator it = m_Connections.GetEnumerator();
            for (int i = 0; i < m_Connections.Count; i++)
            {
                it.MoveNext();
                NetConnection client = it.Current.Value;
                if (client != null)
                    client.Disconnect();
            }
            m_Connections.Clear();
            m_Connections = null;
        }

        #region Latency Test
        private List<LantencyIno> m_ReceivedLatencyInfos = new List<LantencyIno>();
        private static int m_CurrentRecvCount = 0;
        private static readonly int TOTAL_SEND_COUNT = 5;
        public static int CurrentLatency;
        private void InitLatencyTest()
        {
            //GTimer.In(5.0f, SendLatencyTest, int.MaxValue);
            //ServiceProvider.BindNetworkEvent((int)AccountMessage.GO_TEST_LATENCY, OnRecvLatencyTest);
        }
        private void SendLatencyTest()
        {
            //m_ReceivedLatencyInfos.Clear();
            //m_CurrentRecvCount = 0;
            //for (int i = 0; i < TOTAL_SEND_COUNT; i++)
            //{
            //    LantencyIno info = new LantencyIno();
            //    info.ReqTime = Time.realtimeSinceStartup;
            //    m_ReceivedLatencyInfos.Add(info);
            //    ServiceProvider.SendNetPacket<PBMessage.go_time_return>((int)AccountMessage.GO_TEST_LATENCY, new PBMessage.go_time_return() { nowtime = i });
            //}
        }
        private void OnRecvLatencyTest(Event obj)
        {
            if (m_CurrentRecvCount < m_ReceivedLatencyInfos.Count)
            {
                m_ReceivedLatencyInfos[m_CurrentRecvCount].RecvTime = Time.realtimeSinceStartup;
            }
            m_CurrentRecvCount++;
            if (m_CurrentRecvCount == TOTAL_SEND_COUNT)
            {
                CalculateLatency();
            }
        }
        private void CalculateLatency()
        {
            if (m_ReceivedLatencyInfos.Count == 0 || m_ReceivedLatencyInfos == null)
            {
                return;
            }
            float delay = 0.0f;
            for (int i = 0; i < m_ReceivedLatencyInfos.Count; i++)
            {
                delay += m_ReceivedLatencyInfos[i].DeltaTime;
            }
            if (delay == 0.0f)
            {
                return;
            }
            CurrentLatency = (int)((delay / (m_ReceivedLatencyInfos.Count * 2.0f)) * 1000);
            //Debug.LogError("CurrentLatency: " + CurrentLatency);
        }
        #endregion

        #endregion

        public static void SendNetPacket(int msgID, byte[] buffer)
        {
            NetConnection connection = NetManager.Instance.GetConnection(NetManager.ServerType.Logic);
            if (connection != null && connection.IsConnected())
            {
                connection.SendMessage(msgID, buffer, 0);
            }
        }
    }
}

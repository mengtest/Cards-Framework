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

namespace NCSpeedLight
{
    public class NetManager : EventManager
    {
        public enum ServerType
        {
            Login,
            Logic,
        }

        private static NetManager m_Instance;

        private static Dictionary<ServerType, ServerConnection> m_Connections = null;

        private static Dictionary<ServerType, ServerConnection>.Enumerator m_Enumerator;

        private static List<ServerConnection> m_Buffer = null;

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

        private NetManager() : base() { }

        public static void Initialize()
        {
            m_Connections = new Dictionary<ServerType, ServerConnection>();
            m_Buffer = new List<ServerConnection>();
        }

        public static bool CreateConnection(ServerType type, string host, int port, ServerConnection.Listener listener)
        {
            DeleteConnection(type);
            ServerConnection connection = new ServerConnection();
            m_Connections.Add(type, connection);
            connection.SetNetStateListener(listener);
            return connection.Connect(host, port);
        }

        public static void DeleteConnection(ServerType type)
        {
            ServerConnection connection;
            if (m_Connections.TryGetValue(type, out connection))
            {
                connection.Disconnect();
                m_Connections.Remove(type);
            }
        }

        public static ServerConnection GetConnection(ServerType type)
        {
            ServerConnection connection;
            m_Connections.TryGetValue(type, out connection);
            return connection;
        }

        public static void Update()
        {
            if (m_Buffer.Count != 0)
            {
                m_Buffer.Clear();
            }
            m_Enumerator = m_Connections.GetEnumerator();
            for (int i = 0; i < m_Connections.Count; i++)
            {
                m_Enumerator.MoveNext();
                if (m_Enumerator.Current.Value != null)
                {
                    m_Enumerator.Current.Value.Update();
                }
            }
        }

        public static void Destroy()
        {
            Dictionary<ServerType, ServerConnection>.Enumerator it = m_Connections.GetEnumerator();
            for (int i = 0; i < m_Connections.Count; i++)
            {
                it.MoveNext();
                ServerConnection client = it.Current.Value;
                if (client != null)
                    client.Disconnect();
            }
            m_Connections.Clear();
            m_Connections = null;
        }

        public static void SendEvent(int id, byte[] buffer, int playerID, int serverID, ServerType type = ServerType.Logic)
        {
            ServerConnection connection = GetConnection(type);
            if (connection != null && connection.IsConnected())
            {
                connection.SendMessage(id, buffer, playerID, serverID);
            }
        }

        public static void RegisterEvent(int id, EventHandlerDelegate func)
        {
            Instance.Bind(id, func);
        }

        public static void UnregisterEvent(int id, EventHandlerDelegate func)
        {
            Instance.Unbind(id, func);
        }

        public static void NotifyEvent(Evt evt)
        {
            Instance.Dispatch(evt);
        }
    }
}
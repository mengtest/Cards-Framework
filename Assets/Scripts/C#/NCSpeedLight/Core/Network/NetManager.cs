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
        private static NetManager m_Instance;

        private static Dictionary<int, ServerConnection> m_Connections = new Dictionary<int, ServerConnection>();

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
            m_Connections = new Dictionary<int, ServerConnection>();
        }

        public static ServerConnection ConnectTo(int type, string host, int post, ServerConnection.StatusDelegate onConnected, ServerConnection.StatusDelegate onDisconnected, ServerConnection.StatusDelegate onReconnected)
        {
            if (m_Connections.ContainsKey(type))
            {
                DisconnectFrom(type);
            }
            ServerConnection connection = new ServerConnection(host, post);
            connection.OnConnectedFunc = onConnected;
            connection.OnDisconnectedFunc = onDisconnected;
            connection.OnReconnectedFunc = onReconnected;
            connection.Connect();
            m_Connections.Add(type, connection);
            return connection;
        }

        public static void DisconnectFrom(int type)
        {
            ServerConnection connection = null;
            if (m_Connections.TryGetValue(type, out connection))
            {
                connection.Disconnect();
                m_Connections.Remove(type);
            }
        }

        public static ServerConnection GetConnection(int type)
        {
            ServerConnection connection;
            m_Connections.TryGetValue(type, out connection);
            return connection;
        }

        public static void DisconnectAll()
        {
            Dictionary<int, ServerConnection>.Enumerator it = m_Connections.GetEnumerator();
            for (int i = 0; i < m_Connections.Count; i++)
            {
                it.MoveNext();
                ServerConnection connection = it.Current.Value;
                if (connection != null)
                {
                    connection.Disconnect();
                }
            }
            m_Connections.Clear();
        }

        public static void RegisterEvent(int id, EventHandlerDelegate func)
        {
            Instance.Bind(id, func);
        }

        public static void UnregisterEvent(int id, EventHandlerDelegate func)
        {
            Instance.Unbind(id, func);
        }

        public static void SendEvent(int msgID, byte[] msgBuffer, int playerID, int serverID, int serverType = 1)
        {
            ServerConnection connection = null;
            if (m_Connections.TryGetValue(serverType, out connection))
            {
                NetPacket packet = new NetPacket(msgID, msgBuffer.Length);
                packet.SetBody(msgBuffer);
                packet.SetUserData(playerID);
                packet.SetServerID(serverID);
                connection.Send(packet);
            }
        }

        public static void NotifyEvent(Evt evt)
        {
            Instance.Dispatch(evt);
        }
    }
}
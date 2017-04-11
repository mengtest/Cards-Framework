/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: NetConnection.cs
			// Describle:  connection unit
			// Created By:  Wells Hsu
			// Date&Time:  2016/3/3 19:11:09
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using System.Collections.Generic;

namespace NCSpeedLight
{
    public delegate void HandleConnectDelegate();
    class SocketConnect
    {
        private Socket m_Socket; // socket instance
        private string m_IP; // address
        private int m_Port; // port number
        private bool m_IsConnected; // is connect to server
        private Byte[] m_ReceivedHeader;// received header
        public bool m_NeedClose;// whether need to close

        private LinkedList<NetPacket> m_WillBeSentPackets; // going to be sent packets
        private System.Object m_SendObject; // the send locked object
        private ManualResetEvent m_SendEvent;

        private LinkedList<NetPacket> m_ReceivedPackets; // received packets
        private System.Object m_ReceiveObject; // the receive locked object

        private HandleConnectDelegate m_ConnectFunc;
        private HandleConnectDelegate m_DisconnectFunc;
        private HandleConnectDelegate m_ReconnectedFunc;

        private Thread m_ReceiveThread;
        private Thread m_SendThread;

        public HandleConnectDelegate OnConnected
        {
            get { return m_ConnectFunc; }
            set { m_ConnectFunc = value; }
        }
        public HandleConnectDelegate OnDisconnected
        {
            get { return m_DisconnectFunc; }
            set { m_DisconnectFunc = value; }
        }

        public HandleConnectDelegate OnReconnected
        {
            get { return m_ReconnectedFunc; }
            set { m_ReconnectedFunc = value; }
        }

        public bool IsConnected
        {
            get { return m_IsConnected; }
        }

        public void CallConnectedFunction()
        {
            if (OnConnected != null)
            {
                Loom.QueueOnMainThread(() =>
                {
                    OnConnected();
                });
            }
        }

        public void CallDisconnectedFunction()
        {
            if (OnDisconnected != null)
            {
                Loom.QueueOnMainThread(() =>
                {
                    OnDisconnected();
                });
            }
        }

        public void CallReconnectedFunction()
        {
            if (OnReconnected != null)
            {
                Loom.QueueOnMainThread(() =>
                {
                    OnReconnected();
                });
            }
        }

        public SocketConnect(string ip, int port)
        {
            m_IsConnected = false;
            m_NeedClose = false;
            m_IP = ip;
            m_Port = port;
        }

        public void Close()
        {
            m_NeedClose = false;
            if (m_Socket != null)
            {
                try
                {
                    if (m_Socket.Connected)
                    {
                        m_Socket.Shutdown(SocketShutdown.Both);
                    }
                    m_Socket.Close();
                }
                catch (Exception e)
                {
                    Helper.LogError("Close socket fail,exception detail: " + e.Message);
                }
            }
            m_Socket = null;
            m_IsConnected = false;
            if (m_ReceiveThread != null)
            {
                m_ReceiveThread.Abort();
            }
            if (m_SendThread != null)
            {
                m_SendThread.Abort();
            }
            m_ReceiveThread = null;
            m_SendThread = null;
        }

        public bool Connect()
        {
            if (m_IsConnected)
            {
                Close();
            }
            IPAddress[] addresses = null;
            try
            {
                addresses = Dns.GetHostAddresses(m_IP);
            }
            catch
            {
                CallDisconnectedFunction();
                return false;
            }
            if (addresses == null || addresses.Length == 0)
            {
                CallDisconnectedFunction();
                return false;
            }
            try
            {
                IPEndPoint formatedIP = new IPEndPoint(addresses[0], m_Port);
                m_Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                m_Socket.BeginConnect(formatedIP, new AsyncCallback((result) =>
                {
                    Socket skt = (Socket)result.AsyncState;
                    if (skt.Connected)
                    {
                        m_IsConnected = true;

                        InitNetworkThread();

                        CallConnectedFunction();
                    }
                    else
                    {
                        m_IsConnected = false;
                        CallDisconnectedFunction();
                    }
                }), m_Socket);
                m_IsConnected = false;
            }
            catch
            {
                CallDisconnectedFunction();
                return false;
            }
            return true;
        }
        public bool Reconnect()
        {
            if (m_IsConnected)
            {
                Close();
            }

            IPAddress[] addresses = null;
            try
            {
                addresses = Dns.GetHostAddresses(m_IP);
            }
            catch
            {
                OnReconnectFail();
                return false;
            }

            if (addresses == null || addresses.Length == 0)
            {
                OnReconnectFail();
                return false;
            }
            try
            {
                IPEndPoint formatedIP = new IPEndPoint(addresses[0], m_Port);
                m_Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                m_Socket.BeginConnect(formatedIP, (result) =>
                {
                    Socket skt = (Socket)result.AsyncState;
                    if (skt.Connected)
                    {
                        m_IsConnected = true;
                        InitNetworkThread();
                        CallReconnectedFunction();
                    }
                    else
                    {
                        m_IsConnected = false;
                        OnReconnectFail();
                    }
                }
                , m_Socket);
                m_IsConnected = false;
            }
            catch
            {
                OnReconnectFail();
                return false;
            }
            return true;
        }
        private void OnReconnectFail()
        {
            Reconnect();
        }

        private bool InitNetworkThread()
        {
            if (m_WillBeSentPackets == null)
            {
                m_WillBeSentPackets = new LinkedList<NetPacket>();
            }

            m_SendEvent = new ManualResetEvent(false);

            m_ReceivedPackets = new LinkedList<NetPacket>();

            m_ReceiveObject = new object();
            m_SendObject = new object();

            m_ReceiveThread = new Thread(() =>
            {
                m_ReceivedHeader = new byte[NetPacket.PACK_HEAD_SIZE];

                while (m_Socket != null && m_NeedClose == false)
                {
                    bool b = ReadPacketHeader();
                    if (b == false)
                    {
                        m_NeedClose = true;
                        return;
                    }
                    b = ReadPacketBody();
                    if (b == false)
                    {
                        m_NeedClose = true;
                        return;
                    }
                }
            });
            Loom.QueueOnMainThread(() =>
            {
                m_ReceiveThread.Start();
            });

            m_SendThread = new Thread(SendFunc);
            Loom.QueueOnMainThread(() =>
            {
                m_SendThread.Start();
            });

            return true;
        }

        private void ReceiveFunc()
        {
            m_ReceivedHeader = new byte[NetPacket.PACK_HEAD_SIZE];

            while (m_Socket != null && m_NeedClose == false)
            {
                bool b = ReadPacketHeader();
                if (b == false)
                {
                    m_NeedClose = true;
                    return;
                }
                b = ReadPacketBody();
                if (b == false)
                {
                    m_NeedClose = true;
                    return;
                }
            }
        }

        private bool ReadPacketHeader()
        {
            if (m_Socket == null || m_Socket.Connected == false)
            {
                return false;
            }
            try
            {
                for (int i = 0; i < m_ReceivedHeader.Length; i++)
                {
                    m_ReceivedHeader[i] = 0;
                }

                int receiveSize = m_Socket.Receive(m_ReceivedHeader, NetPacket.PACK_HEAD_SIZE, SocketFlags.None);
                Helper.LogError("receiveSize is " + receiveSize);
                if (receiveSize == 0)
                {
                    return false;
                }

                while (receiveSize < NetPacket.PACK_HEAD_SIZE)
                {
                    if (m_Socket == null || m_Socket.Connected == false)
                    {
                        return false;
                    }

                    int sendCount = m_Socket.Receive(m_ReceivedHeader, receiveSize, NetPacket.PACK_HEAD_SIZE - receiveSize, SocketFlags.None);

                    if (sendCount == 0)
                    {
                        return false;
                    }

                    receiveSize += sendCount;
                }

                if (NetPacket.IsPacketHeader(m_ReceivedHeader) == false)
                {
                    return false;
                }
                return true;
            }
            catch (Exception e)
            {
                Helper.LogError("SocketConnect.ReadPacketHeader: error msg: " + e.Message);
                return false;
            }
        }

        private bool ReadPacketBody()
        {
            if (m_ReceivedHeader == null)
            {
                return false;
            }

            int msgID = BitConverter.ToInt32(m_ReceivedHeader, NetPacket.PACK_MESSAGEID_OFFSET);
            int bufferSize = BitConverter.ToInt32(m_ReceivedHeader, NetPacket.PACK_LENGTH_OFFSET);
            int bodySize = bufferSize - NetPacket.PACK_HEAD_SIZE;
            if (bodySize == 0)
            {
                return true;
            }
            NetPacket packet = new NetPacket(msgID, bodySize);

            if (packet.SetPacketHeader(m_ReceivedHeader) == false)
            {
                return false;
            }
            byte[] packetBuffer = packet.GetBuffer();

            try
            {
                if (m_Socket == null || m_Socket.Connected == false)
                {
                    return false;
                }

                int receiveSize = m_Socket.Receive(packetBuffer, NetPacket.PACK_HEAD_SIZE, bodySize, SocketFlags.None);
                if (receiveSize == 0)
                {
                    return false;
                }

                while (receiveSize < bodySize)
                {
                    if (m_Socket == null || m_Socket.Connected == false)
                    {
                        return false;
                    }

                    int sendCount = m_Socket.Receive(packetBuffer, receiveSize + NetPacket.PACK_HEAD_SIZE, bodySize - receiveSize, SocketFlags.None);

                    if (sendCount == 0)
                    {
                        return false;
                    }
                    receiveSize += sendCount;
                }

                lock (m_ReceiveObject)
                {
                    m_ReceivedPackets.AddLast(packet);
                }
                return true;
            }
            catch (Exception e)
            {
                Close();
                return false;
            }
        }

        public bool SendMessage(int id, byte[] data, int playerID, int serverID)
        {
            int bodySize = 0;
            if (data != null)
            {
                bodySize = data.Length;
            }

            byte[] newData = data;

            NetPacket packet = new NetPacket(id, bodySize);
            bool b = packet.SetUserData(playerID);
            if (b == false) return false;
            b = packet.SetServerID(1);
            if (b == false) return false;
            packet.SetData(newData);

            if (m_SendObject == null)
            {
                m_SendObject = new System.Object();
            }

            if (m_WillBeSentPackets == null)
            {
                m_WillBeSentPackets = new LinkedList<NetPacket>();
            }

            lock (m_SendObject)
            {
                m_WillBeSentPackets.AddLast(packet);
                m_SendEvent.Set();
            }
            return true;
        }

        public void GetAllReveivePackets(List<NetPacket> packets)
        {
            if (packets == null)
            {
                packets = new List<NetPacket>();
            }
            packets.Clear();
            if (m_ReceiveObject != null)
            {
                lock (m_ReceiveObject)
                {
                    if (m_ReceivedPackets.Count == 0)
                    {
                        return;
                    }
                    packets.AddRange(m_ReceivedPackets);
                    m_ReceivedPackets.Clear();
                    return;
                }
            }
            return;
        }


        public NetPacket GetReceivePacket()
        {
            if (m_ReceiveObject == null)
            {
                return null;
            }
            lock (m_ReceiveObject)
            {
                if (m_ReceivedPackets.Count == 0)
                {
                    return null;
                }

                NetPacket packet = m_ReceivedPackets.First.Value;
                m_ReceivedPackets.RemoveFirst();
                return packet;
            }
        }

        private void SendFunc()
        {
            while (m_NeedClose == false && m_IsConnected == true && m_Socket != null)
            {
                NetPacket packet = null;

                if (m_SendObject == null)
                {
                    m_SendObject = new System.Object();
                }
                if (m_WillBeSentPackets == null)
                {
                    m_WillBeSentPackets = new LinkedList<NetPacket>();
                }

                lock (m_SendObject)
                {
                    if (m_WillBeSentPackets.Count != 0)
                    {
                        packet = m_WillBeSentPackets.First.Value;
                        m_WillBeSentPackets.RemoveFirst();
                    }
                }

                if (packet != null)
                {
                    try
                    {
                        byte[] buffer = packet.GetBuffer();
                        int length = buffer.Length;
                        AsyncCallback callback = delegate (IAsyncResult finalResult)
                        {
                            m_Socket.EndSend(finalResult);
                        };
                        IAsyncResult result = m_Socket.BeginSend(buffer, 0, length, SocketFlags.None, callback, null);
                        //if (sendSize != length)
                        //{
                        //    m_NeedClose = true;
                        //    break;
                        //}
                    }
                    catch (Exception e)
                    {
                        m_NeedClose = true;
                        break;
                    }
                }
                else
                {
                    m_SendEvent.Reset();
                    m_SendEvent.WaitOne();
                }
            }
        }
    }
    public class ServerConnection
    {
        public delegate void ConnectionDelegate(ServerConnection connection);
        public class Listener
        {
            public ConnectionDelegate OnConnected;
            public ConnectionDelegate OnDisconnected;
            public ConnectionDelegate OnReconnected;
        }

        private SocketConnect m_Socket; // socket connection
        private Listener m_ConnectionStateListener; // net state listener
        private List<NetPacket> m_PacketsBuffer = new List<NetPacket>(); // packets' buffer


        public Listener GetStateListener() { return m_ConnectionStateListener; }

        public void SetNetStateListener(Listener listener) { m_ConnectionStateListener = listener; }

        public bool IsConnected()
        {
            if (m_Socket == null)
            {
                return false;
            }
            return m_Socket.IsConnected;
        }

        public bool Connect(string host, int port)
        {
            Disconnect();
            m_Socket = new SocketConnect(host, port);
            m_Socket.OnConnected = OnConnected;
            m_Socket.OnDisconnected = OnDisconnected;
            m_Socket.OnReconnected = OnReconnected;
            return m_Socket.Connect();
        }

        public bool Reconnect()
        {
            if (m_Socket != null)
            {
                bool b = m_Socket.Reconnect();
                return b;
            }
            return false;
        }

        public void Disconnect()
        {
            if (m_Socket != null)
            {
                m_Socket.Close();
                m_Socket = null;
            }
        }

        private void OnConnected()
        {
            if (m_ConnectionStateListener != null && m_ConnectionStateListener.OnConnected != null)
            {
                m_ConnectionStateListener.OnConnected(this);
            }
        }

        private void OnDisconnected()
        {
            if (m_ConnectionStateListener != null && m_ConnectionStateListener.OnDisconnected != null)
            {
                m_ConnectionStateListener.OnDisconnected(this);
            }
        }

        private void OnReconnected()
        {
            if (m_ConnectionStateListener != null && m_ConnectionStateListener.OnReconnected != null)
            {
                m_ConnectionStateListener.OnReconnected(this);
            }
        }

        public void Update()
        {
            if (m_Socket != null)
            {
                if (m_Socket.m_NeedClose)
                {
                    m_Socket.Close();
                    return;
                }

                if (m_Socket.IsConnected)
                {
                    if (m_PacketsBuffer.Count != 0)
                    {
                        m_PacketsBuffer.Clear();
                    }

                    m_Socket.GetAllReveivePackets(m_PacketsBuffer);
                    if (m_PacketsBuffer != null && m_PacketsBuffer.Count != 0)
                    {
                        for (int i = 0; i < m_PacketsBuffer.Count; i++)
                        {
                            NetPacket packet = m_PacketsBuffer[i];
                            if (packet != null)
                            {
                                //if (packet.GetMessageID() == 401)
                                //{
                                //    byte[] bytes = packet.GetBuffer();
                                //    int a = 1;
                                //}
                                //Debug.LogError("Reveive a net message,id is " + packet.GetMessageID());
                                //  =-= GetBuffer GetBody .......
                                NetManager.NotifyEvent(new Evt(packet.GetMessageID(), packet, packet.GetBody()));
                            }
                        }
                        m_PacketsBuffer.Clear();
                    }
                }
            }
        }

        public bool SendMessage(int id, Byte[] data, int playerID, int serverID)
        {
            if (m_Socket == null || m_Socket.IsConnected == false)
            {
                return false;
            }
            return m_Socket.SendMessage(id, data, playerID, serverID);
        }

        public bool SendEmpty(int id)
        {
            return SendMessage(id, new byte[] { 0 }, 0, 0);
        }
    }
}
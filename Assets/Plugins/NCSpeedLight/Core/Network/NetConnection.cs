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
using System.IO;
using System.Threading;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;


namespace NCSpeedLight
{
    public delegate void HandleConnectDelegate();
    public class SocketConnect
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

        private HandleConnectDelegate m_ConnectFunction;
        private HandleConnectDelegate m_DisconnectFunction;

        private bool m_NeedCallConnected;
        private bool m_NeedCallDisconnected;

        public HandleConnectDelegate OnConnectCallback
        {
            get { return m_ConnectFunction; }
            set { m_ConnectFunction = value; }
        }
        public HandleConnectDelegate OnDisconnectCallback
        {
            get { return m_DisconnectFunction; }
            set { m_DisconnectFunction = value; }
        }
        public bool NeedCallConnected
        {
            get { return m_NeedCallConnected; }
            set { m_NeedCallConnected = value; }
        }
        public bool NeedCallDisconnected
        {
            get { return m_NeedCallDisconnected; }
            set { m_NeedCallDisconnected = value; }
        }

        public bool IsConnected
        {
            get { return m_IsConnected; }
        }

        public SocketConnect()
        {
            m_IsConnected = false;
            m_NeedClose = false;
        }
        ~SocketConnect() { /*Close();*/ }

        public void Close()
        {
            m_NeedClose = false;
            if (m_Socket != null)
            {
                try
                {
                    m_NeedCallDisconnected = true;
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
        }

        /// <summary>
        /// Connect to server with ip and port number
        /// </summary>
        /// <param name="ip"></param>
        /// <param name="portNumber"></param>
        /// <returns></returns>
        public bool Connect(string ip, int portNumber)
        {
            if (m_IsConnected)
            {
                Close();
            }

            m_IP = ip;
            m_Port = portNumber;
            m_NeedCallConnected = false;
            m_NeedCallDisconnected = false;

            IPAddress[] addresses = null;
            try
            {
                addresses = Dns.GetHostAddresses(ip);
            }
            catch (Exception e)
            {
                Debug.LogError("Dns.GetHostAddresses(ip) error,exception detail: " + e.Message);
                if (m_DisconnectFunction != null)
                {
                    m_DisconnectFunction();
                }
                return false;
            }

            if (addresses == null || addresses.Length == 0)
            {
                if (m_DisconnectFunction != null)
                {
                    m_DisconnectFunction();
                }
                return false;
            }
            try
            {
                IPEndPoint formatedIP = new IPEndPoint(addresses[0], portNumber);
                m_Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                m_Socket.BeginConnect(formatedIP, new AsyncCallback(OnConnectedServer), m_Socket);
                m_IsConnected = false;
            }
            catch (Exception e)
            {
                if (m_DisconnectFunction != null)
                {
                    m_DisconnectFunction();
                }
                return false;
            }
            return true;
        }
        public bool Reconnect()
        {
            return Connect(m_IP, m_Port);
        }
        private void OnConnectedServer(IAsyncResult result)
        {
            Socket skt = (Socket)result.AsyncState;
            if (skt.Connected)
            {
                m_IsConnected = true;
                m_NeedCallConnected = true;
                m_NeedCallDisconnected = false;

                InitNetworkThread();
            }
            else
            {
                m_IsConnected = false;
                m_NeedCallDisconnected = true;
                m_NeedCallConnected = false;
            }
        }
        private bool InitNetworkThread()
        {
            if (m_WillBeSentPackets == null)
                m_WillBeSentPackets = new LinkedList<NetPacket>();

            if (m_SendObject == null)
                m_SendObject = new System.Object();

            m_SendEvent = new ManualResetEvent(false);

            m_ReceivedPackets = new LinkedList<NetPacket>();
            m_ReceiveObject = new System.Object();

            Thread receiveThread = new Thread(ReceiveThreadLooper);
            receiveThread.Start();

            Thread sendThread = new Thread(SendThreadLooper);
            sendThread.Start();
            return true;
        }

        private void ReceiveThreadLooper()
        {
            m_ReceivedHeader = new Byte[NetPacket.PACK_HEAD_SIZE];

            while (m_Socket != null && m_NeedClose == false)
            {
                bool b = ReadPacketHeader();
                if (b == false)
                {
                    m_NeedClose = true;
                    break;
                }
                b = ReadPacketBody();
                if (b == false)
                {
                    m_NeedClose = true;
                    break;
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
            Byte[] packetBuffer = packet.GetBuffer();

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

        private void SendThreadLooper()
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
        #region [Declration]
        public delegate void ConnectionDelegate(ServerConnection connection);
        public class Listener
        {
            public ConnectionDelegate OnConnect;
            public ConnectionDelegate OnUpdate;
            public ConnectionDelegate OnDisconnect;
            public Listener()
            {
                OnDisconnect = new ConnectionDelegate(Func);
                OnConnect = new ConnectionDelegate(Func);
                OnUpdate = new ConnectionDelegate(Func);
            }
            private void Func(ServerConnection connection) { }
        }

        private SocketConnect m_Socket; // socket connection
        private Listener m_ConnectionStateListener; // net state listener
        private List<NetPacket> m_PacketsBuffer = new List<NetPacket>(); // packets' buffer
        #endregion

        #region [Functions]

        public Listener GetStateListener() { return m_ConnectionStateListener; }

        public void SetNetStateListener(Listener listener) { m_ConnectionStateListener = listener; }

        public bool IsConnected()
        {
            if (m_Socket == null)
                return false;

            return m_Socket.IsConnected;
        }

        public bool Connect(string host, int port)
        {
            Disconnect();
            m_Socket = new SocketConnect();
            m_Socket.OnConnectCallback = OnConnected;
            m_Socket.OnDisconnectCallback = OnDisconnected;
            return m_Socket.Connect(host, port);
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
            if (m_ConnectionStateListener != null && m_ConnectionStateListener.OnConnect != null)
            {
                m_ConnectionStateListener.OnConnect(this);
            }
        }

        private void OnDisconnected()
        {
            if (m_ConnectionStateListener != null && m_ConnectionStateListener.OnDisconnect != null)
            {
                m_ConnectionStateListener.OnDisconnect(this);
            }
        }

        public void Update()
        {
            if (m_Socket != null)
            {
                if (m_Socket.NeedCallConnected && m_Socket.OnConnectCallback != null)
                {
                    m_Socket.NeedCallConnected = false;
                    m_Socket.OnConnectCallback();
                }
                else if (m_Socket.NeedCallDisconnected && m_Socket.OnDisconnectCallback != null)
                {
                    m_Socket.NeedCallDisconnected = false;
                    m_Socket.OnDisconnectCallback();
                    return;
                }

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
                                //Debug.LogError("Reveive a net message,id is " + packet.GetMessageID());
                                NetManager.NotifyEvent(new Evt(packet.GetMessageID(), packet, packet.GetBuffer()));
                            }
                        }
                        m_PacketsBuffer.Clear();
                    }
                }
            }

            if (m_ConnectionStateListener != null)
            {
                m_ConnectionStateListener.OnUpdate(this);
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
        #endregion
    }
}
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

        public bool SendMessage(int msgID, int userData, Byte[] data)
        {
            int bodySize = 0;
            if (data != null)
            {
                bodySize = data.Length;
            }
            Byte[] newData = data;

            NetPacket packet = new NetPacket(msgID, bodySize);
            bool b = packet.SetUserData(userData);
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

        public void GetAllReveivePackets(out List<NetPacket> packets)
        {
            packets = new List<NetPacket>();
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

        //将Byte转换为结构体类型
        public static byte[] StructToBytes(object structObj, int size)
        {
            byte[] bytes = new byte[size];
            IntPtr structPtr = Marshal.AllocHGlobal(size);
            //将结构体拷到分配好的内存空间
            Marshal.StructureToPtr(structObj, structPtr, false);
            //从内存空间拷贝到byte 数组
            Marshal.Copy(structPtr, bytes, 0, size);
            //释放内存空间
            Marshal.FreeHGlobal(structPtr);
            return bytes;

        }

        //将Byte转换为结构体类型
        public static object ByteToStruct(byte[] bytes, Type type)
        {
            int size = Marshal.SizeOf(type);
            if (size > bytes.Length)
            {
                return null;
            }
            //分配结构体内存空间
            IntPtr structPtr = Marshal.AllocHGlobal(size);
            //将byte数组拷贝到分配好的内存空间
            Marshal.Copy(bytes, 0, structPtr, size);
            //将内存空间转换为目标结构体
            object obj = Marshal.PtrToStructure(structPtr, type);
            //释放内存空间
            Marshal.FreeHGlobal(structPtr);
            return obj;
        }

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi, Pack = 1)]
        struct NetPackage
        {
            public int MsgID;
            public int PlayerID;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 1024)]
            public byte[] buffer;
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
                        //NetPackage package = new NetPackage();
                        //package.MsgID = 998;
                        //package.PlayerID = 12896;
                        //package.buffer = packet.GetBuffer();

                        //int length = Marshal.SizeOf(package);
                        //byte[] buffer = StructToBytes(package,length);

                        //int sendSize = m_Socket.Send(buffer, 0, length, SocketFlags.None);
                        //if (sendSize != length)
                        //{
                        //    m_NeedClose = true;
                        //    break;
                        //}

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
    public class NetConnection
    {
        #region [Declration]
        public delegate void ConnectionDelegate(NetConnection connection);
        public class StateListener
        {
            public ConnectionDelegate OnConnect;
            public ConnectionDelegate OnUpdate;
            public ConnectionDelegate OnDisconnect;
            public StateListener()
            {
                OnDisconnect = new ConnectionDelegate(Func);
                OnConnect = new ConnectionDelegate(Func);
                OnUpdate = new ConnectionDelegate(Func);
            }
            private void Func(NetConnection connection) { }
        }

        private SocketConnect m_Socket; // socket connection
        private StateListener m_ConnectionStateListener; // net state listener
        private List<NetPacket> m_PacketsBuffer = new List<NetPacket>(); // packets' buffer
        #endregion

        #region [Functions]
        /// <summary>
        /// Get connection state listener.
        /// </summary>
        /// <returns></returns>
        public StateListener GetStateListener() { return m_ConnectionStateListener; }

        /// <summary>
        /// Set connection state listener.
        /// </summary>
        /// <param name="listener"></param>
        public void SetNetStateListener(StateListener listener) { m_ConnectionStateListener = listener; }

        public bool IsConnected()
        {
            if (m_Socket == null)
                return false;

            return m_Socket.IsConnected;
        }

        /// <summary>
        /// Execute connect.
        /// </summary>
        /// <param name="host"></param>
        /// <param name="port"></param>
        /// <returns></returns>
        public bool Connect(string host, int port)
        {
            Disconnect();
            m_Socket = new NCSpeedLight.SocketConnect();
            m_Socket.OnConnectCallback = OnConnected;
            m_Socket.OnDisconnectCallback = OnDisconnected;
            return m_Socket.Connect(host, port);
        }

        /// <summary>
        /// Execute reconnect.
        /// </summary>
        /// <returns></returns>
        public bool Reconnect()
        {
            if (m_Socket != null)
            {
                bool b = m_Socket.Reconnect();
                return b;
            }
            return false;
        }

        /// <summary>
        /// Disconnect the socket.
        /// </summary>
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
            if (m_ConnectionStateListener != null)
            {
                m_ConnectionStateListener.OnConnect(this);
            }
        }

        private void OnDisconnected()
        {
            if (m_ConnectionStateListener != null)
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

                    m_Socket.GetAllReveivePackets(out m_PacketsBuffer);
                    if (m_PacketsBuffer != null && m_PacketsBuffer.Count != 0)
                    {
                        for (int i = 0; i < m_PacketsBuffer.Count; i++)
                        {
                            NetPacket packet = m_PacketsBuffer[i];
                            if (packet != null)
                            {
                                //Debug.LogError("Reveive a net message,id is " + packet.GetMessageID());
                                NetEventManager.Instance.Notify(new Event(packet.GetMessageID(), packet));
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

        /// <summary>
        /// Send a message.
        /// </summary>
        /// <param name="cmd"></param>
        /// <param name="data"></param>
        /// <param name="playerID"></param>
        /// <returns></returns>
        public bool SendMessage(int cmd, Byte[] data, int playerID)
        {
            if (m_Socket == null || m_Socket.IsConnected == false)
            {
                return false;
            }
            return m_Socket.SendMessage(cmd, playerID, data);
        }

        /// <summary>
        /// Send a empty message.
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public bool SendMessageEmpty(int cmd)
        {
            return SendMessage(cmd, new byte[] { 0 }, 0);
        }

        /// <summary>
        /// Send a message and the data format is ProtoBuf.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="cmd"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        public bool SendMessageProtoBuf<T>(int cmd, T obj)
            where T : class, ProtoBuf.IExtensible
        {
            using (var ms = new MemoryStream())
            {
                ProtoBuf.Serializer.Serialize<T>(ms, obj);
                byte[] bytes = ms.ToArray();
                ms.Close();
                return SendMessage(cmd, bytes, 0);
            }
        }

        /// <summary>
        /// Deserialize data(ProtoBuf.IExtensible).
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static T DeserializeProtoBuf<T>(object obj) where T : class, ProtoBuf.IExtensible
        {
            NetPacket packet = obj as NetPacket;
            if (packet == null)
            {
                return null;
            }
            T t = DeserializeProtoBuf<T>(packet);
            return t;
        }

        /// <summary>
        /// Deserialize data(Proto.IExtensible).
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="packet"></param>
        /// <returns></returns>
        public static T DeserializeProtoBuf<T>(NetPacket packet) where T : class, ProtoBuf.IExtensible
        {
            Byte[] buffer = packet.GetBuffer();
            if (buffer == null)
            {
                return null;
            }
            using (var ms = new MemoryStream(buffer, NetPacket.PACK_HEAD_SIZE, buffer.Length - NetPacket.PACK_HEAD_SIZE))
            {
                return ProtoBuf.Serializer.Deserialize(typeof(T), ms) as T;
            }
        }

        #endregion

    }
}

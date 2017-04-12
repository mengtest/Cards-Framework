using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using System.Net;
using System.Threading;

namespace NCSpeedLight
{
    public class ServerConnection
    {
        public delegate void StatusDelegate(ServerConnection connection);
        public string Host;
        public int Port;
        public float ReconnectInterval = 1f;
        public Socket Socket;
        public string SocketErrorStr = string.Empty;
        public StatusDelegate OnConnectedFunc;
        public StatusDelegate OnDisconnectedFunc;
        public StatusDelegate OnReconnectedFunc;
        private static byte[] ReceivedHeader = new byte[NetPacket.PACK_HEAD_SIZE];
        public ServerConnection(string host, int port)
        {
            Host = host;
            Port = port;
        }
        public bool IsConnected()
        {
            return Socket.Connected;
        }
        private void OnSocketDisconnected()
        {
            CallOnDisconnected();
        }
        private void OnSocketConnected(IAsyncResult result)
        {
            try
            {
                Socket.EndConnect(result);
                StartListenReceive();
                CallOnConnected();
            }
            catch (Exception e)
            {
                SocketErrorStr = e.Message;
                OnSocketDisconnected();
            }
        }
        private void OnSocketReconnected(IAsyncResult result)
        {
            try
            {
                Socket.EndConnect(result);
                StartListenReceive();
                CallOnReconnected();
            }
            catch (Exception e)
            {
                SocketErrorStr = e.Message;
                RepeatReconnect();
            }
        }
        private void CallOnConnected()
        {
            Loom.QueueOnMainThread(() =>
            {
                if (OnConnectedFunc != null)
                {
                    OnConnectedFunc(this);
                }
            });
        }
        private void CallOnDisconnected()
        {
            Loom.QueueOnMainThread(() =>
            {
                if (OnDisconnectedFunc != null)
                {
                    OnDisconnectedFunc(this);
                }
            });
        }
        private void CallOnReconnected()
        {
            Loom.QueueOnMainThread(() =>
            {
                if (OnReconnectedFunc != null)
                {
                    OnReconnectedFunc(this);
                }
            });
        }
        public void StartListenReceive()
        {
            ReceivedHeader = new byte[NetPacket.PACK_HEAD_SIZE];
            Socket.BeginReceive(ReceivedHeader, 0, ReceivedHeader.Length, SocketFlags.None, OnReceiveCallback, this);
        }
        public static void OnReceiveCallback(IAsyncResult result)
        {
            ServerConnection connection = result as ServerConnection;
            try
            {
                int bytesReceived = connection.Socket.EndReceive(result);
                Helper.Log("OnReceiveCallback.bytesReceived: " + bytesReceived);
                if (bytesReceived == NetPacket.PACK_HEAD_SIZE)
                {
                    int msgID = BitConverter.ToInt32(ReceivedHeader, NetPacket.PACK_MESSAGEID_OFFSET);
                    Helper.Log("OnReceiveCallback.msgID: " + msgID);
                    int bufferSize = BitConverter.ToInt32(ReceivedHeader, NetPacket.PACK_LENGTH_OFFSET);
                    int bodySize = bufferSize - NetPacket.PACK_HEAD_SIZE;
                    NetPacket packet = new NetPacket(msgID, bodySize);
                    packet.SetHeader(ReceivedHeader);
                    if (bodySize <= 0)
                    {
                        // empty packet,ignore.
                    }
                    else
                    {
                        byte[] bodyBuffer = packet.GetBody();
                        connection.Socket.Receive(bodyBuffer, SocketFlags.None);
                        packet.SetBody(bodyBuffer);
                    }
                    Loom.QueueOnMainThread(() =>
                    {
                        NetManager.NotifyEvent(new Evt() { ID = packet.GetMessageID(), LuaParam = packet.GetBody() });
                    });
                    // continue listen.
                    ReceivedHeader = new byte[NetPacket.PACK_HEAD_SIZE];
                    connection.Socket.BeginReceive(ReceivedHeader, 0, ReceivedHeader.Length, SocketFlags.None, OnReceiveCallback, connection);
                }
                else
                {
                    if (connection.Socket.Connected)//上次socket的状态
                    {
                        connection.OnSocketDisconnected();
                    }
                }
            }
            catch (Exception e)
            {
                connection.SocketErrorStr = e.Message;
                Helper.LogError("SocketError: " + connection.SocketErrorStr);
                connection.Disconnect();
                connection.OnSocketDisconnected();//Keepalive检测网线断开引发的异常在这里捕获
            }
        }
        private void OnSendCallback(IAsyncResult result)
        {
            Helper.LogError("OnSendCallback");
            Socket.EndSend(result);
        }
        public bool Connect()
        {
            IPAddress[] addresses = null;
            try
            {
                addresses = Dns.GetHostAddresses(Host);
            }
            catch (Exception e)
            {
                SocketErrorStr = e.Message;
                OnSocketDisconnected();
                return false;
            }
            if (addresses == null || addresses.Length == 0)
            {
                OnSocketDisconnected();
                return false;
            }
            IPEndPoint remoteEP = new IPEndPoint(addresses[0], Port);
            Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            try
            {
                Socket.BeginConnect(remoteEP, OnSocketConnected, Socket);
            }
            catch (Exception e)
            {
                SocketErrorStr = e.Message;
                return false;
            }
            return true;
        }
        private void RepeatReconnect()
        {
            Loom.QueueOnMainThread(() =>
            {
                ExecuteReconnect();
            }, ReconnectInterval);
        }
        private bool ExecuteReconnect()
        {
            IPAddress[] addresses = null;
            try
            {
                addresses = Dns.GetHostAddresses(Host);
            }
            catch (Exception e)
            {
                SocketErrorStr = e.Message;
                RepeatReconnect();
                return false;
            }
            if (addresses == null || addresses.Length == 0)
            {
                RepeatReconnect();
                return false;
            }
            IPEndPoint remoteEP = new IPEndPoint(addresses[0], Port);
            Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            try
            {
                Socket.BeginConnect(remoteEP, OnSocketReconnected, Socket);
            }
            catch (Exception e)
            {
                SocketErrorStr = e.Message;
                RepeatReconnect();
                return false;
            }
            return true;
        }
        public bool Reconnect()
        {
            ExecuteReconnect();
            return true;
        }
        public bool Disconnect()
        {
            Socket.Disconnect(false);
            Socket.Close();
            Socket = null;
            return true;
        }
        public void Send(NetPacket packet)
        {
            Socket.BeginSend(packet.GetBuffer(), 0, packet.GetTotalSize(), SocketFlags.None, OnSendCallback, packet);
        }
    }
}

/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: NetConnection.cs
			// Describle:  单个网络连接
            // Created By:  Wells Hsu
			// Date&Time:  2016/3/3 19:11:09
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;
using System.Net.Sockets;
using System.Net;

namespace NCSpeedLight
{
    public class NetConnection
    {
        public enum CallbackType
        {
            OnConnected,
            OnDisconnected,
            OnReconnected,
            OnErrorrOccurred,
        }

        public delegate void StatusDelegate(NetConnection connection, object param);
        public string Host;
        public int Port;
        public Socket Socket;
        public string Error;
        public float ReconnectInterval = 1f;
        public byte[] Header = new byte[NetPacket.PACK_HEAD_SIZE];
        public StatusDelegate OnConnected;
        public StatusDelegate OnDisconnected;
        public StatusDelegate OnReconnected;
        public StatusDelegate OnErrorOccurred;

        public NetConnection(string host, int port, StatusDelegate onConnected, StatusDelegate onDisconnected, StatusDelegate onReconnected, StatusDelegate onErrorOccurred)
        {
            Host = host;
            Port = port;
            OnConnected = onConnected;
            OnDisconnected = onDisconnected;
            OnReconnected = onReconnected;
            OnErrorOccurred = onErrorOccurred;
        }

        public bool IsConnected
        {
            get
            {
                if (Socket == null)
                {
                    return false;
                }
                else
                {
                    return Socket.Connected;
                }
            }
        }

        public void Connect()
        {
            try
            {
                IPAddress[] addresses = Dns.GetHostAddresses(Host);
                IPEndPoint remoteEP = new IPEndPoint(addresses[0], Port);
                Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                Socket.BeginConnect(remoteEP, ConnectCallback, this);
            }
            catch (Exception e)
            {
                ErrorrOccurred(e.Message);
            }
        }

        public void Reconnect()
        {
            ExecuteReconnect();
        }

        public void Disconnect()
        {
            if (Socket != null)
            {
                if (IsConnected)
                {
                    Socket.Shutdown(SocketShutdown.Both);
                }
                Socket.Close();
            }
            Callback(CallbackType.OnDisconnected);
        }

        public void Send(NetPacket packet)
        {
            if (IsConnected)
            {
                Socket.BeginSend(packet.GetBuffer(), 0, packet.GetTotalSize(), SocketFlags.None, new AsyncCallback(SendCallback), this);
            }
            else
            {
                Helper.LogError("Can not send data,caused by not connected.");
            }
        }

        private void Callback(CallbackType type, object param = null)
        {
            StatusDelegate func = null;
            switch (type)
            {
                case CallbackType.OnConnected:
                    func = OnConnected;
                    break;

                case CallbackType.OnDisconnected:
                    func = OnDisconnected;
                    break;
                case CallbackType.OnReconnected:
                    func = OnReconnected;
                    break;
                case CallbackType.OnErrorrOccurred:
                    func = OnErrorOccurred;
                    break;
                default:
                    break;
            }
            Loom.QueueOnMainThread(() =>
            {
                if (func != null)
                {
                    func(this, param);
                }
            });
        }

        private void ErrorrOccurred(string error)
        {
            Error = error;
            if (Socket != null)
            {
                if (IsConnected)
                {
                    Socket.Shutdown(SocketShutdown.Both);
                }
                Socket.Close();
            }
            Callback(CallbackType.OnErrorrOccurred, error);
        }

        private void RepeatReconnect()
        {
            Loom.QueueOnMainThread(() =>
            {
                ExecuteReconnect();
            }, ReconnectInterval);
        }

        private void ExecuteReconnect()
        {
            try
            {
                IPAddress[] addresses = Dns.GetHostAddresses(Host);
                IPEndPoint remoteEP = new IPEndPoint(addresses[0], Port);
                Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                Socket.BeginConnect(remoteEP, ReconnectCallback, this);
            }
            catch
            {
                RepeatReconnect();
            }
        }

        private void ConnectCallback(IAsyncResult result)
        {
            try
            {
                Socket.EndConnect(result);
                Callback(CallbackType.OnConnected);
                StartReceivePacket();
            }
            catch (Exception e)
            {
                ErrorrOccurred(e.Message);
            }
        }

        private void ReconnectCallback(IAsyncResult result)
        {
            try
            {
                Socket.EndConnect(result);
                Callback(CallbackType.OnReconnected);
                StartReceivePacket();
            }
            catch
            {
                RepeatReconnect();
            }
        }

        private void StartReceivePacket()
        {
            Socket.BeginReceive(Header, 0, Header.Length, SocketFlags.None, new AsyncCallback(ReceivePacketCallback), this);
        }

        private void StartReceivePacketBody(NetPacket packet, int offset, int size)
        {
            Socket.BeginReceive(packet.GetBody(), offset, size, SocketFlags.None, new AsyncCallback(ReceivePacketBodyCallback), packet);
        }

        private void ReceivePacketCallback(IAsyncResult result)
        {
            try
            {
                int bytesRead = Socket.EndReceive(result);
                if (bytesRead == NetPacket.PACK_HEAD_SIZE)
                {
                    int id = BitConverter.ToInt32(Header, NetPacket.PACK_MESSAGEID_OFFSET);
                    int packetSize = BitConverter.ToInt32(Header, NetPacket.PACK_LENGTH_OFFSET);
                    int bodySize = packetSize - NetPacket.PACK_HEAD_SIZE;
                    NetPacket packet = new NetPacket(id, bodySize);
                    packet.SetHeader(Header);
                    if (bodySize > 0)
                    {
                        bytesRead = Socket.Receive(packet.GetBody(), 0, packet.GetBodySize(), SocketFlags.None);
                        while (bytesRead != packet.GetBodySize())
                        {
                            bytesRead += Socket.Receive(packet.GetBody(), bytesRead, packet.GetBodySize() - bytesRead, SocketFlags.None);
                        }
                    }
                    StartReceivePacket();
                    Loom.QueueOnMainThread(() =>
                    {
                        NetManager.NotifyEvent(new Evt() { ID = packet.GetMessageID(), LuaParam = packet.GetBody() });
                    });
                }
                else
                {
                    string err = "packet header read error,size is " + bytesRead;
                    ErrorrOccurred(err);
                }
            }
            catch (Exception e)
            {
                ErrorrOccurred(e.Message);
            }
        }

        private void ReceivePacketBodyCallback(IAsyncResult result)
        {
            try
            {
                NetPacket packet = result.AsyncState as NetPacket;
                int bytesRead = Socket.EndReceive(result);
                if (bytesRead == packet.GetBodySize())
                {
                    StartReceivePacket();
                    Loom.QueueOnMainThread(() =>
                    {
                        NetManager.NotifyEvent(new Evt() { ID = packet.GetMessageID(), LuaParam = packet.GetBody() });
                    });
                }
                else
                {
                    string err = "bytes read(" + bytesRead + ") does not equal body size(" + packet.GetBodySize() + ")";
                    Helper.LogError("NetConnection.ReceivePacketBodyCallback: error: " + err);
                    ErrorrOccurred(err);
                }
            }
            catch (Exception e)
            {
                ErrorrOccurred(e.Message);
            }
        }

        private void SendCallback(IAsyncResult result)
        {
            try
            {
                int bytesSent = Socket.EndSend(result);
            }
            catch (Exception e)
            {
                ErrorrOccurred(e.Message);
            }
        }
    }
}

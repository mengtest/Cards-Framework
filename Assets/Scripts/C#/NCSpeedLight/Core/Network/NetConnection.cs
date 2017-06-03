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
using UnityEngine;
using System.Collections;

namespace NCSpeedLight
{
    public class NetConnection
    {
        enum CallbackType
        {
            OnConnected,
            OnDisconnected,
            OnReconnected,
            OnErrorrOccurred,
        }

        public delegate void StatusDelegate(NetConnection connection, object param);

        private string Host;
        private int Port;
        private Socket Socket;
        private string Error;
        private float ReconnectInterval = 1f;
        private byte[] ReceiveHeader = new byte[NetPacket.PACK_HEAD_SIZE];

        private bool SigReconnectOne = false;
        private bool SigReconnecting = false;

        private StatusDelegate OnConnected;
        private StatusDelegate OnDisconnected;
        private StatusDelegate OnReconnected;
        private StatusDelegate OnErrorOccurred;

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
                Error = e.Message;
                ErrorOccurred();
            }
        }

        public void Reconnect()
        {
            if (SigReconnecting == false)
            {
                SigReconnecting = true;
                Game.Instance.StartCoroutine(ProcessReconnect());
            }
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
                Socket = null;
            }
            Callback(CallbackType.OnDisconnected);
        }

        public void Send(NetPacket packet)
        {
            if (Socket == null)
            {
                Error = "Can not send data,because socket is disposed.";
                ErrorOccurred();
                return;
            }
            if (IsConnected == false)
            {
                Error = "Can not send data,because socket is not connected.";
                ErrorOccurred();
                return;
            }
            if (Application.internetReachability == NetworkReachability.NotReachable)
            {
                Error = "Can not send data,because network is not reachable.";
                ErrorOccurred();
                return;
            }
            Socket.BeginSend(packet.GetBuffer(), 0, packet.GetTotalSize(), SocketFlags.None, new AsyncCallback(SendCallback), this);
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

        private void ErrorOccurred()
        {
            if (Socket != null)
            {
                if (IsConnected)
                {
                    Socket.Shutdown(SocketShutdown.Both);
                }
                Socket.Close();
                Socket = null;
            }
            Helper.LogError("NetConnection.ErrorOccurred: " + Error);
            Callback(CallbackType.OnErrorrOccurred, Error);
        }

        private IEnumerator ProcessReconnect()
        {
            while (IsConnected == false)
            {
                SigReconnectOne = false;
                try
                {
                    IPAddress[] addresses = Dns.GetHostAddresses(Host);
                    IPEndPoint remoteEP = new IPEndPoint(addresses[0], Port);
                    Socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                    IAsyncResult ret = Socket.BeginConnect(remoteEP, ReconnectCallback, this);
                }
                catch
                {

                }
                yield return new WaitWhile(() => { return SigReconnectOne; });
                if (IsConnected)
                {
                    SigReconnecting = false;
                    Game.Instance.StopCoroutine(ProcessReconnect());
                }
                else
                {
                    yield return new WaitForSeconds(ReconnectInterval);
                }
            }

        }

        private void ConnectCallback(IAsyncResult result)
        {
            try
            {
                Socket.EndConnect(result);
                Callback(CallbackType.OnConnected);
                StartReceive();
            }
            catch (Exception e)
            {
                Error = e.Message;
                ErrorOccurred();
            }
        }

        private void ReconnectCallback(IAsyncResult result)
        {
            try
            {
                Socket.EndConnect(result);
                Callback(CallbackType.OnReconnected);
                StartReceive();
            }
            catch
            {
            }
            SigReconnectOne = true;
        }

        private void StartReceive()
        {
            Socket.BeginReceive(ReceiveHeader, 0, ReceiveHeader.Length, SocketFlags.None, new AsyncCallback(ReceiveCallback), this);
        }

        private void ReceiveCallback(IAsyncResult result)
        {
            if (Socket != null)
            {
                try
                {
                    int bytesRead = Socket.EndReceive(result);
                    if (bytesRead == NetPacket.PACK_HEAD_SIZE)
                    {
                        int id = BitConverter.ToInt32(ReceiveHeader, NetPacket.PACK_MESSAGEID_OFFSET);
                        int packetSize = BitConverter.ToInt32(ReceiveHeader, NetPacket.PACK_LENGTH_OFFSET);
                        int bodySize = packetSize - NetPacket.PACK_HEAD_SIZE;
                        NetPacket packet = new NetPacket(id, bodySize);
                        packet.SetHeader(ReceiveHeader);
                        if (bodySize > 0)
                        {
                            bytesRead = Socket.Receive(packet.GetBody(), 0, packet.GetBodySize(), SocketFlags.None);
                            while (bytesRead != packet.GetBodySize())
                            {
                                bytesRead += Socket.Receive(packet.GetBody(), bytesRead, packet.GetBodySize() - bytesRead, SocketFlags.None);
                            }
                        }
                        StartReceive();
                        Loom.QueueOnMainThread(() =>
                        {
                            NetManager.NotifyEvent(new Evt() { ID = packet.GetMessageID(), LuaParam = packet.GetBody() });
                        });
                    }
                    else
                    {
                        Error = "packet header read error,size is " + bytesRead;
                        ErrorOccurred();
                    }
                }
                catch (Exception e)
                {
                    Error = e.Message;
                    ErrorOccurred();
                }
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
                Error = e.Message;
                ErrorOccurred();
            }
        }

    }
}

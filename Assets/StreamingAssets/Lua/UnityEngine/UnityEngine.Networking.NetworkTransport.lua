--create by yangxun
NetworkTransport={}

--- <summary>
--- 属性:Boolean
--- </summary>
NetworkTransport.IsStarted=nil
--- <summary>
--- C#声明:Int32 ConnectEndPoint(Int32, System.Net.EndPoint, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_xboxOneEndPoint">System.Net.EndPoint</param>
--- <param name="arg_exceptionConnectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.ConnectEndPoint(arg_hostId,arg_xboxOneEndPoint,arg_exceptionConnectionId,arg_error)
end
--- <summary>
--- C#声明:Void Init()
--- </summary>
--- <returns>System.Void</returns>
function NetworkTransport.Init()
end
--- <summary>
--- C#声明:Void Init(UnityEngine.Networking.GlobalConfig)
--- </summary>
--- <param name="arg_config">UnityEngine.Networking.GlobalConfig</param>
--- <returns>System.Void</returns>
function NetworkTransport.Init(arg_config)
end
--- <summary>
--- C#声明:Void Shutdown()
--- </summary>
--- <returns>System.Void</returns>
function NetworkTransport.Shutdown()
end
--- <summary>
--- C#声明:System.String GetAssetId(UnityEngine.GameObject)
--- </summary>
--- <param name="arg_go">UnityEngine.GameObject</param>
--- <returns>System.String</returns>
function NetworkTransport.GetAssetId(arg_go)
end
--- <summary>
--- C#声明:Void AddSceneId(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Void</returns>
function NetworkTransport.AddSceneId(arg_id)
end
--- <summary>
--- C#声明:Int32 GetNextSceneId()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkTransport.GetNextSceneId()
end
--- <summary>
--- C#声明:Void ConnectAsNetworkHost(Int32, System.String, Int32, UnityEngine.Networking.Types.NetworkID, UnityEngine.Networking.Types.SourceID, UnityEngine.Networking.Types.NodeID, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_address">System.String</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_network">UnityEngine.Networking.Types.NetworkID</param>
--- <param name="arg_source">UnityEngine.Networking.Types.SourceID</param>
--- <param name="arg_node">UnityEngine.Networking.Types.NodeID</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Void</returns>
function NetworkTransport.ConnectAsNetworkHost(arg_hostId,arg_address,arg_port,arg_network,arg_source,arg_node,arg_error)
end
--- <summary>
--- C#声明:Void DisconnectNetworkHost(Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Void</returns>
function NetworkTransport.DisconnectNetworkHost(arg_hostId,arg_error)
end
--- <summary>
--- C#声明:UnityEngine.Networking.NetworkEventType ReceiveRelayEventFromHost(Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>UnityEngine.Networking.NetworkEventType</returns>
function NetworkTransport.ReceiveRelayEventFromHost(arg_hostId,arg_error)
end
--- <summary>
--- C#声明:Int32 ConnectToNetworkPeer(Int32, System.String, Int32, Int32, Int32, UnityEngine.Networking.Types.NetworkID, UnityEngine.Networking.Types.SourceID, UnityEngine.Networking.Types.NodeID, Int32, Single, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_address">System.String</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_exceptionConnectionId">System.Int32</param>
--- <param name="arg_relaySlotId">System.Int32</param>
--- <param name="arg_network">UnityEngine.Networking.Types.NetworkID</param>
--- <param name="arg_source">UnityEngine.Networking.Types.SourceID</param>
--- <param name="arg_node">UnityEngine.Networking.Types.NodeID</param>
--- <param name="arg_bytesPerSec">System.Int32</param>
--- <param name="arg_bucketSizeFactor">System.Single</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.ConnectToNetworkPeer(arg_hostId,arg_address,arg_port,arg_exceptionConnectionId,arg_relaySlotId,arg_network,arg_source,arg_node,arg_bytesPerSec,arg_bucketSizeFactor,arg_error)
end
--- <summary>
--- C#声明:Int32 ConnectToNetworkPeer(Int32, System.String, Int32, Int32, Int32, UnityEngine.Networking.Types.NetworkID, UnityEngine.Networking.Types.SourceID, UnityEngine.Networking.Types.NodeID, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_address">System.String</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_exceptionConnectionId">System.Int32</param>
--- <param name="arg_relaySlotId">System.Int32</param>
--- <param name="arg_network">UnityEngine.Networking.Types.NetworkID</param>
--- <param name="arg_source">UnityEngine.Networking.Types.SourceID</param>
--- <param name="arg_node">UnityEngine.Networking.Types.NodeID</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.ConnectToNetworkPeer(arg_hostId,arg_address,arg_port,arg_exceptionConnectionId,arg_relaySlotId,arg_network,arg_source,arg_node,arg_error)
end
--- <summary>
--- C#声明:Int32 GetCurrentIncomingMessageAmount()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkTransport.GetCurrentIncomingMessageAmount()
end
--- <summary>
--- C#声明:Int32 GetCurrentOutgoingMessageAmount()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkTransport.GetCurrentOutgoingMessageAmount()
end
--- <summary>
--- C#声明:Int32 GetCurrentRtt(Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.GetCurrentRtt(arg_hostId,arg_connectionId,arg_error)
end
--- <summary>
--- C#声明:Int32 GetPacketSentRate(Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.GetPacketSentRate(arg_hostId,arg_connectionId,arg_error)
end
--- <summary>
--- C#声明:Int32 GetPacketReceivedRate(Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.GetPacketReceivedRate(arg_hostId,arg_connectionId,arg_error)
end
--- <summary>
--- C#声明:Int32 GetRemotePacketReceivedRate(Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.GetRemotePacketReceivedRate(arg_hostId,arg_connectionId,arg_error)
end
--- <summary>
--- C#声明:Int32 GetNetIOTimeuS()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkTransport.GetNetIOTimeuS()
end
--- <summary>
--- C#声明:Void GetConnectionInfo(Int32, Int32, System.String ByRef, Int32 ByRef, UnityEngine.Networking.Types.NetworkID ByRef, UnityEngine.Networking.Types.NodeID ByRef, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_address">System.String&</param>
--- <param name="arg_port">System.Int32&</param>
--- <param name="arg_network">UnityEngine.Networking.Types.NetworkID&</param>
--- <param name="arg_dstNode">UnityEngine.Networking.Types.NodeID&</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Void</returns>
function NetworkTransport.GetConnectionInfo(arg_hostId,arg_connectionId,arg_address,arg_port,arg_network,arg_dstNode,arg_error)
end
--- <summary>
--- C#声明:System.String GetConnectionInfo(Int32, Int32, Int32 ByRef, UInt64 ByRef, UInt16 ByRef, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_port">System.Int32&</param>
--- <param name="arg_network">System.UInt64&</param>
--- <param name="arg_dstNode">System.UInt16&</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.String</returns>
function NetworkTransport.GetConnectionInfo(arg_hostId,arg_connectionId,arg_port,arg_network,arg_dstNode,arg_error)
end
--- <summary>
--- C#声明:Int32 GetNetworkTimestamp()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkTransport.GetNetworkTimestamp()
end
--- <summary>
--- C#声明:Int32 GetRemoteDelayTimeMS(Int32, Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_remoteTime">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.GetRemoteDelayTimeMS(arg_hostId,arg_connectionId,arg_remoteTime,arg_error)
end
--- <summary>
--- C#声明:Boolean StartSendMulticast(Int32, Int32, Byte[], Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_channelId">System.Int32</param>
--- <param name="arg_buffer">System.Byte[]</param>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Boolean</returns>
function NetworkTransport.StartSendMulticast(arg_hostId,arg_channelId,arg_buffer,arg_size,arg_error)
end
--- <summary>
--- C#声明:Boolean SendMulticast(Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Boolean</returns>
function NetworkTransport.SendMulticast(arg_hostId,arg_connectionId,arg_error)
end
--- <summary>
--- C#声明:Boolean FinishSendMulticast(Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Boolean</returns>
function NetworkTransport.FinishSendMulticast(arg_hostId,arg_error)
end
--- <summary>
--- C#声明:Int32 AddWebsocketHost(UnityEngine.Networking.HostTopology, Int32)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <param name="arg_port">System.Int32</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddWebsocketHost(arg_topology,arg_port)
end
--- <summary>
--- C#声明:Int32 AddWebsocketHost(UnityEngine.Networking.HostTopology, Int32, System.String)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_ip">System.String</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddWebsocketHost(arg_topology,arg_port,arg_ip)
end
--- <summary>
--- C#声明:Int32 AddHost(UnityEngine.Networking.HostTopology, Int32)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <param name="arg_port">System.Int32</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddHost(arg_topology,arg_port)
end
--- <summary>
--- C#声明:Int32 AddHost(UnityEngine.Networking.HostTopology)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddHost(arg_topology)
end
--- <summary>
--- C#声明:Int32 AddHost(UnityEngine.Networking.HostTopology, Int32, System.String)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_ip">System.String</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddHost(arg_topology,arg_port,arg_ip)
end
--- <summary>
--- C#声明:Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <param name="arg_minTimeout">System.Int32</param>
--- <param name="arg_maxTimeout">System.Int32</param>
--- <param name="arg_port">System.Int32</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddHostWithSimulator(arg_topology,arg_minTimeout,arg_maxTimeout,arg_port)
end
--- <summary>
--- C#声明:Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology, Int32, Int32)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <param name="arg_minTimeout">System.Int32</param>
--- <param name="arg_maxTimeout">System.Int32</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddHostWithSimulator(arg_topology,arg_minTimeout,arg_maxTimeout)
end
--- <summary>
--- C#声明:Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology, Int32, Int32, Int32, System.String)
--- </summary>
--- <param name="arg_topology">UnityEngine.Networking.HostTopology</param>
--- <param name="arg_minTimeout">System.Int32</param>
--- <param name="arg_maxTimeout">System.Int32</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_ip">System.String</param>
--- <returns>System.Int32</returns>
function NetworkTransport.AddHostWithSimulator(arg_topology,arg_minTimeout,arg_maxTimeout,arg_port,arg_ip)
end
--- <summary>
--- C#声明:Boolean RemoveHost(Int32)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <returns>System.Boolean</returns>
function NetworkTransport.RemoveHost(arg_hostId)
end
--- <summary>
--- C#声明:Boolean get_IsStarted()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkTransport.get_IsStarted()
end
--- <summary>
--- C#声明:Int32 Connect(Int32, System.String, Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_address">System.String</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_exeptionConnectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Int32</returns>
function NetworkTransport.Connect(arg_hostId,arg_address,arg_port,arg_exeptionConnectionId,arg_error)
end
--- <summary>
--- C#声明:Int32 ConnectWithSimulator(Int32, System.String, Int32, Int32, Byte ByRef, UnityEngine.Networking.ConnectionSimulatorConfig)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_address">System.String</param>
--- <param name="arg_port">System.Int32</param>
--- <param name="arg_exeptionConnectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <param name="arg_conf">UnityEngine.Networking.ConnectionSimulatorConfig</param>
--- <returns>System.Int32</returns>
function NetworkTransport.ConnectWithSimulator(arg_hostId,arg_address,arg_port,arg_exeptionConnectionId,arg_error,arg_conf)
end
--- <summary>
--- C#声明:Boolean Disconnect(Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Boolean</returns>
function NetworkTransport.Disconnect(arg_hostId,arg_connectionId,arg_error)
end
--- <summary>
--- C#声明:Boolean Send(Int32, Int32, Int32, Byte[], Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32</param>
--- <param name="arg_channelId">System.Int32</param>
--- <param name="arg_buffer">System.Byte[]</param>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Boolean</returns>
function NetworkTransport.Send(arg_hostId,arg_connectionId,arg_channelId,arg_buffer,arg_size,arg_error)
end
--- <summary>
--- C#声明:UnityEngine.Networking.NetworkEventType Receive(Int32 ByRef, Int32 ByRef, Int32 ByRef, Byte[], Int32, Int32 ByRef, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32&</param>
--- <param name="arg_connectionId">System.Int32&</param>
--- <param name="arg_channelId">System.Int32&</param>
--- <param name="arg_buffer">System.Byte[]</param>
--- <param name="arg_bufferSize">System.Int32</param>
--- <param name="arg_receivedSize">System.Int32&</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>UnityEngine.Networking.NetworkEventType</returns>
function NetworkTransport.Receive(arg_hostId,arg_connectionId,arg_channelId,arg_buffer,arg_bufferSize,arg_receivedSize,arg_error)
end
--- <summary>
--- C#声明:UnityEngine.Networking.NetworkEventType ReceiveFromHost(Int32, Int32 ByRef, Int32 ByRef, Byte[], Int32, Int32 ByRef, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_connectionId">System.Int32&</param>
--- <param name="arg_channelId">System.Int32&</param>
--- <param name="arg_buffer">System.Byte[]</param>
--- <param name="arg_bufferSize">System.Int32</param>
--- <param name="arg_receivedSize">System.Int32&</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>UnityEngine.Networking.NetworkEventType</returns>
function NetworkTransport.ReceiveFromHost(arg_hostId,arg_connectionId,arg_channelId,arg_buffer,arg_bufferSize,arg_receivedSize,arg_error)
end
--- <summary>
--- C#声明:Void SetPacketStat(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_direction">System.Int32</param>
--- <param name="arg_packetStatId">System.Int32</param>
--- <param name="arg_numMsgs">System.Int32</param>
--- <param name="arg_numBytes">System.Int32</param>
--- <returns>System.Void</returns>
function NetworkTransport.SetPacketStat(arg_direction,arg_packetStatId,arg_numMsgs,arg_numBytes)
end
--- <summary>
--- C#声明:Boolean StartBroadcastDiscovery(Int32, Int32, Int32, Int32, Int32, Byte[], Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_broadcastPort">System.Int32</param>
--- <param name="arg_key">System.Int32</param>
--- <param name="arg_version">System.Int32</param>
--- <param name="arg_subversion">System.Int32</param>
--- <param name="arg_buffer">System.Byte[]</param>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_timeout">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Boolean</returns>
function NetworkTransport.StartBroadcastDiscovery(arg_hostId,arg_broadcastPort,arg_key,arg_version,arg_subversion,arg_buffer,arg_size,arg_timeout,arg_error)
end
--- <summary>
--- C#声明:Void StopBroadcastDiscovery()
--- </summary>
--- <returns>System.Void</returns>
function NetworkTransport.StopBroadcastDiscovery()
end
--- <summary>
--- C#声明:Boolean IsBroadcastDiscoveryRunning()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkTransport.IsBroadcastDiscoveryRunning()
end
--- <summary>
--- C#声明:Void SetBroadcastCredentials(Int32, Int32, Int32, Int32, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_key">System.Int32</param>
--- <param name="arg_version">System.Int32</param>
--- <param name="arg_subversion">System.Int32</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Void</returns>
function NetworkTransport.SetBroadcastCredentials(arg_hostId,arg_key,arg_version,arg_subversion,arg_error)
end
--- <summary>
--- C#声明:System.String GetBroadcastConnectionInfo(Int32, Int32 ByRef, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_port">System.Int32&</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.String</returns>
function NetworkTransport.GetBroadcastConnectionInfo(arg_hostId,arg_port,arg_error)
end
--- <summary>
--- C#声明:Void GetBroadcastConnectionInfo(Int32, System.String ByRef, Int32 ByRef, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_address">System.String&</param>
--- <param name="arg_port">System.Int32&</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Void</returns>
function NetworkTransport.GetBroadcastConnectionInfo(arg_hostId,arg_address,arg_port,arg_error)
end
--- <summary>
--- C#声明:Void GetBroadcastConnectionMessage(Int32, Byte[], Int32, Int32 ByRef, Byte ByRef)
--- </summary>
--- <param name="arg_hostId">System.Int32</param>
--- <param name="arg_buffer">System.Byte[]</param>
--- <param name="arg_bufferSize">System.Int32</param>
--- <param name="arg_receivedSize">System.Int32&</param>
--- <param name="arg_error">System.Byte&</param>
--- <returns>System.Void</returns>
function NetworkTransport.GetBroadcastConnectionMessage(arg_hostId,arg_buffer,arg_bufferSize,arg_receivedSize,arg_error)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function NetworkTransport:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function NetworkTransport:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkTransport:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function NetworkTransport:GetType()
end

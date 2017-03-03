--create by yangxun
Network={}

--- <summary>
--- 属性:String
--- </summary>
Network.incomingPassword=nil
--- <summary>
--- 属性:NetworkLogLevel
--- </summary>
Network.logLevel=nil
--- <summary>
--- 属性:NetworkPlayer[]
--- </summary>
Network.connections=nil
--- <summary>
--- 属性:NetworkPlayer
--- </summary>
Network.player=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Network.isClient=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Network.isServer=nil
--- <summary>
--- 属性:NetworkPeerType
--- </summary>
Network.peerType=nil
--- <summary>
--- 属性:Single
--- </summary>
Network.sendRate=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Network.isMessageQueueRunning=nil
--- <summary>
--- 属性:Double
--- </summary>
Network.time=nil
--- <summary>
--- 属性:Int32
--- </summary>
Network.minimumAllocatableViewIDs=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Network.useNat=nil
--- <summary>
--- 属性:String
--- </summary>
Network.natFacilitatorIP=nil
--- <summary>
--- 属性:Int32
--- </summary>
Network.natFacilitatorPort=nil
--- <summary>
--- 属性:String
--- </summary>
Network.connectionTesterIP=nil
--- <summary>
--- 属性:Int32
--- </summary>
Network.connectionTesterPort=nil
--- <summary>
--- 属性:Int32
--- </summary>
Network.maxConnections=nil
--- <summary>
--- 属性:String
--- </summary>
Network.proxyIP=nil
--- <summary>
--- 属性:Int32
--- </summary>
Network.proxyPort=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Network.useProxy=nil
--- <summary>
--- 属性:String
--- </summary>
Network.proxyPassword=nil
--- <summary>
--- C#声明:System.String get_connectionTesterIP()
--- </summary>
--- <returns>System.String</returns>
function Network.get_connectionTesterIP()
end
--- <summary>
--- C#声明:Void set_connectionTesterIP(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Network.set_connectionTesterIP(arg_value)
end
--- <summary>
--- C#声明:Int32 get_connectionTesterPort()
--- </summary>
--- <returns>System.Int32</returns>
function Network.get_connectionTesterPort()
end
--- <summary>
--- C#声明:Void set_connectionTesterPort(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Network.set_connectionTesterPort(arg_value)
end
--- <summary>
--- C#声明:Boolean HavePublicAddress()
--- </summary>
--- <returns>System.Boolean</returns>
function Network.HavePublicAddress()
end
--- <summary>
--- C#声明:Int32 get_maxConnections()
--- </summary>
--- <returns>System.Int32</returns>
function Network.get_maxConnections()
end
--- <summary>
--- C#声明:Void set_maxConnections(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Network.set_maxConnections(arg_value)
end
--- <summary>
--- C#声明:System.String get_proxyIP()
--- </summary>
--- <returns>System.String</returns>
function Network.get_proxyIP()
end
--- <summary>
--- C#声明:Void set_proxyIP(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Network.set_proxyIP(arg_value)
end
--- <summary>
--- C#声明:Int32 get_proxyPort()
--- </summary>
--- <returns>System.Int32</returns>
function Network.get_proxyPort()
end
--- <summary>
--- C#声明:Void set_proxyPort(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Network.set_proxyPort(arg_value)
end
--- <summary>
--- C#声明:Boolean get_useProxy()
--- </summary>
--- <returns>System.Boolean</returns>
function Network.get_useProxy()
end
--- <summary>
--- C#声明:Void set_useProxy(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Network.set_useProxy(arg_value)
end
--- <summary>
--- C#声明:System.String get_proxyPassword()
--- </summary>
--- <returns>System.String</returns>
function Network.get_proxyPassword()
end
--- <summary>
--- C#声明:Void set_proxyPassword(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Network.set_proxyPassword(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError InitializeServer(Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_connections">System.Int32</param>
--- <param name="arg_listenPort">System.Int32</param>
--- <param name="arg_useNat">System.Boolean</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.InitializeServer(arg_connections,arg_listenPort,arg_useNat)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError InitializeServer(Int32, Int32)
--- </summary>
--- <param name="arg_connections">System.Int32</param>
--- <param name="arg_listenPort">System.Int32</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.InitializeServer(arg_connections,arg_listenPort)
end
--- <summary>
--- C#声明:System.String get_incomingPassword()
--- </summary>
--- <returns>System.String</returns>
function Network.get_incomingPassword()
end
--- <summary>
--- C#声明:Void set_incomingPassword(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Network.set_incomingPassword(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.NetworkLogLevel get_logLevel()
--- </summary>
--- <returns>UnityEngine.NetworkLogLevel</returns>
function Network.get_logLevel()
end
--- <summary>
--- C#声明:Void set_logLevel(UnityEngine.NetworkLogLevel)
--- </summary>
--- <param name="arg_value">UnityEngine.NetworkLogLevel</param>
--- <returns>System.Void</returns>
function Network.set_logLevel(arg_value)
end
--- <summary>
--- C#声明:Void InitializeSecurity()
--- </summary>
--- <returns>System.Void</returns>
function Network.InitializeSecurity()
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(System.String, Int32)
--- </summary>
--- <param name="arg_IP">System.String</param>
--- <param name="arg_remotePort">System.Int32</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_IP,arg_remotePort)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(System.String, Int32, System.String)
--- </summary>
--- <param name="arg_IP">System.String</param>
--- <param name="arg_remotePort">System.Int32</param>
--- <param name="arg_password">System.String</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_IP,arg_remotePort,arg_password)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(System.String[], Int32)
--- </summary>
--- <param name="arg_IPs">System.String[]</param>
--- <param name="arg_remotePort">System.Int32</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_IPs,arg_remotePort)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(System.String[], Int32, System.String)
--- </summary>
--- <param name="arg_IPs">System.String[]</param>
--- <param name="arg_remotePort">System.Int32</param>
--- <param name="arg_password">System.String</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_IPs,arg_remotePort,arg_password)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(System.String)
--- </summary>
--- <param name="arg_GUID">System.String</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_GUID)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(System.String, System.String)
--- </summary>
--- <param name="arg_GUID">System.String</param>
--- <param name="arg_password">System.String</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_GUID,arg_password)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(UnityEngine.HostData)
--- </summary>
--- <param name="arg_hostData">UnityEngine.HostData</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_hostData)
end
--- <summary>
--- C#声明:UnityEngine.NetworkConnectionError Connect(UnityEngine.HostData, System.String)
--- </summary>
--- <param name="arg_hostData">UnityEngine.HostData</param>
--- <param name="arg_password">System.String</param>
--- <returns>UnityEngine.NetworkConnectionError</returns>
function Network.Connect(arg_hostData,arg_password)
end
--- <summary>
--- C#声明:Void Disconnect(Int32)
--- </summary>
--- <param name="arg_timeout">System.Int32</param>
--- <returns>System.Void</returns>
function Network.Disconnect(arg_timeout)
end
--- <summary>
--- C#声明:Void Disconnect()
--- </summary>
--- <returns>System.Void</returns>
function Network.Disconnect()
end
--- <summary>
--- C#声明:Void CloseConnection(UnityEngine.NetworkPlayer, Boolean)
--- </summary>
--- <param name="arg_target">UnityEngine.NetworkPlayer</param>
--- <param name="arg_sendDisconnectionNotification">System.Boolean</param>
--- <returns>System.Void</returns>
function Network.CloseConnection(arg_target,arg_sendDisconnectionNotification)
end
--- <summary>
--- C#声明:UnityEngine.NetworkPlayer[] get_connections()
--- </summary>
--- <returns>UnityEngine.NetworkPlayer[]</returns>
function Network.get_connections()
end
--- <summary>
--- C#声明:UnityEngine.NetworkPlayer get_player()
--- </summary>
--- <returns>UnityEngine.NetworkPlayer</returns>
function Network.get_player()
end
--- <summary>
--- C#声明:UnityEngine.NetworkViewID AllocateViewID()
--- </summary>
--- <returns>UnityEngine.NetworkViewID</returns>
function Network.AllocateViewID()
end
--- <summary>
--- C#声明:UnityEngine.Object Instantiate(UnityEngine.Object, UnityEngine.Vector3, UnityEngine.Quaternion, Int32)
--- </summary>
--- <param name="arg_prefab">UnityEngine.Object</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_group">System.Int32</param>
--- <returns>UnityEngine.Object</returns>
function Network.Instantiate(arg_prefab,arg_position,arg_rotation,arg_group)
end
--- <summary>
--- C#声明:Void Destroy(UnityEngine.NetworkViewID)
--- </summary>
--- <param name="arg_viewID">UnityEngine.NetworkViewID</param>
--- <returns>System.Void</returns>
function Network.Destroy(arg_viewID)
end
--- <summary>
--- C#声明:Void Destroy(UnityEngine.GameObject)
--- </summary>
--- <param name="arg_gameObject">UnityEngine.GameObject</param>
--- <returns>System.Void</returns>
function Network.Destroy(arg_gameObject)
end
--- <summary>
--- C#声明:Void DestroyPlayerObjects(UnityEngine.NetworkPlayer)
--- </summary>
--- <param name="arg_playerID">UnityEngine.NetworkPlayer</param>
--- <returns>System.Void</returns>
function Network.DestroyPlayerObjects(arg_playerID)
end
--- <summary>
--- C#声明:Void RemoveRPCs(UnityEngine.NetworkPlayer)
--- </summary>
--- <param name="arg_playerID">UnityEngine.NetworkPlayer</param>
--- <returns>System.Void</returns>
function Network.RemoveRPCs(arg_playerID)
end
--- <summary>
--- C#声明:Void RemoveRPCs(UnityEngine.NetworkPlayer, Int32)
--- </summary>
--- <param name="arg_playerID">UnityEngine.NetworkPlayer</param>
--- <param name="arg_group">System.Int32</param>
--- <returns>System.Void</returns>
function Network.RemoveRPCs(arg_playerID,arg_group)
end
--- <summary>
--- C#声明:Void RemoveRPCs(UnityEngine.NetworkViewID)
--- </summary>
--- <param name="arg_viewID">UnityEngine.NetworkViewID</param>
--- <returns>System.Void</returns>
function Network.RemoveRPCs(arg_viewID)
end
--- <summary>
--- C#声明:Void RemoveRPCsInGroup(Int32)
--- </summary>
--- <param name="arg_group">System.Int32</param>
--- <returns>System.Void</returns>
function Network.RemoveRPCsInGroup(arg_group)
end
--- <summary>
--- C#声明:Boolean get_isClient()
--- </summary>
--- <returns>System.Boolean</returns>
function Network.get_isClient()
end
--- <summary>
--- C#声明:Boolean get_isServer()
--- </summary>
--- <returns>System.Boolean</returns>
function Network.get_isServer()
end
--- <summary>
--- C#声明:UnityEngine.NetworkPeerType get_peerType()
--- </summary>
--- <returns>UnityEngine.NetworkPeerType</returns>
function Network.get_peerType()
end
--- <summary>
--- C#声明:Void SetLevelPrefix(Int32)
--- </summary>
--- <param name="arg_prefix">System.Int32</param>
--- <returns>System.Void</returns>
function Network.SetLevelPrefix(arg_prefix)
end
--- <summary>
--- C#声明:Int32 GetLastPing(UnityEngine.NetworkPlayer)
--- </summary>
--- <param name="arg_player">UnityEngine.NetworkPlayer</param>
--- <returns>System.Int32</returns>
function Network.GetLastPing(arg_player)
end
--- <summary>
--- C#声明:Int32 GetAveragePing(UnityEngine.NetworkPlayer)
--- </summary>
--- <param name="arg_player">UnityEngine.NetworkPlayer</param>
--- <returns>System.Int32</returns>
function Network.GetAveragePing(arg_player)
end
--- <summary>
--- C#声明:Single get_sendRate()
--- </summary>
--- <returns>System.Single</returns>
function Network.get_sendRate()
end
--- <summary>
--- C#声明:Void set_sendRate(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Network.set_sendRate(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isMessageQueueRunning()
--- </summary>
--- <returns>System.Boolean</returns>
function Network.get_isMessageQueueRunning()
end
--- <summary>
--- C#声明:Void set_isMessageQueueRunning(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Network.set_isMessageQueueRunning(arg_value)
end
--- <summary>
--- C#声明:Void SetReceivingEnabled(UnityEngine.NetworkPlayer, Int32, Boolean)
--- </summary>
--- <param name="arg_player">UnityEngine.NetworkPlayer</param>
--- <param name="arg_group">System.Int32</param>
--- <param name="arg_enabled">System.Boolean</param>
--- <returns>System.Void</returns>
function Network.SetReceivingEnabled(arg_player,arg_group,arg_enabled)
end
--- <summary>
--- C#声明:Void SetSendingEnabled(Int32, Boolean)
--- </summary>
--- <param name="arg_group">System.Int32</param>
--- <param name="arg_enabled">System.Boolean</param>
--- <returns>System.Void</returns>
function Network.SetSendingEnabled(arg_group,arg_enabled)
end
--- <summary>
--- C#声明:Void SetSendingEnabled(UnityEngine.NetworkPlayer, Int32, Boolean)
--- </summary>
--- <param name="arg_player">UnityEngine.NetworkPlayer</param>
--- <param name="arg_group">System.Int32</param>
--- <param name="arg_enabled">System.Boolean</param>
--- <returns>System.Void</returns>
function Network.SetSendingEnabled(arg_player,arg_group,arg_enabled)
end
--- <summary>
--- C#声明:Double get_time()
--- </summary>
--- <returns>System.Double</returns>
function Network.get_time()
end
--- <summary>
--- C#声明:Int32 get_minimumAllocatableViewIDs()
--- </summary>
--- <returns>System.Int32</returns>
function Network.get_minimumAllocatableViewIDs()
end
--- <summary>
--- C#声明:Void set_minimumAllocatableViewIDs(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Network.set_minimumAllocatableViewIDs(arg_value)
end
--- <summary>
--- C#声明:Boolean get_useNat()
--- </summary>
--- <returns>System.Boolean</returns>
function Network.get_useNat()
end
--- <summary>
--- C#声明:Void set_useNat(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Network.set_useNat(arg_value)
end
--- <summary>
--- C#声明:System.String get_natFacilitatorIP()
--- </summary>
--- <returns>System.String</returns>
function Network.get_natFacilitatorIP()
end
--- <summary>
--- C#声明:Void set_natFacilitatorIP(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Network.set_natFacilitatorIP(arg_value)
end
--- <summary>
--- C#声明:Int32 get_natFacilitatorPort()
--- </summary>
--- <returns>System.Int32</returns>
function Network.get_natFacilitatorPort()
end
--- <summary>
--- C#声明:Void set_natFacilitatorPort(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Network.set_natFacilitatorPort(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ConnectionTesterStatus TestConnection(Boolean)
--- </summary>
--- <param name="arg_forceTest">System.Boolean</param>
--- <returns>UnityEngine.ConnectionTesterStatus</returns>
function Network.TestConnection(arg_forceTest)
end
--- <summary>
--- C#声明:UnityEngine.ConnectionTesterStatus TestConnection()
--- </summary>
--- <returns>UnityEngine.ConnectionTesterStatus</returns>
function Network.TestConnection()
end
--- <summary>
--- C#声明:UnityEngine.ConnectionTesterStatus TestConnectionNAT(Boolean)
--- </summary>
--- <param name="arg_forceTest">System.Boolean</param>
--- <returns>UnityEngine.ConnectionTesterStatus</returns>
function Network.TestConnectionNAT(arg_forceTest)
end
--- <summary>
--- C#声明:UnityEngine.ConnectionTesterStatus TestConnectionNAT()
--- </summary>
--- <returns>UnityEngine.ConnectionTesterStatus</returns>
function Network.TestConnectionNAT()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Network:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Network:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Network:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Network:GetType()
end

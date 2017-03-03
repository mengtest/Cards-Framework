--create by yangxun
MasterServer={}

--- <summary>
--- 属性:String
--- </summary>
MasterServer.ipAddress=nil
--- <summary>
--- 属性:Int32
--- </summary>
MasterServer.port=nil
--- <summary>
--- 属性:Int32
--- </summary>
MasterServer.updateRate=nil
--- <summary>
--- 属性:Boolean
--- </summary>
MasterServer.dedicatedServer=nil
--- <summary>
--- C#声明:System.String get_ipAddress()
--- </summary>
--- <returns>System.String</returns>
function MasterServer.get_ipAddress()
end
--- <summary>
--- C#声明:Void set_ipAddress(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function MasterServer.set_ipAddress(arg_value)
end
--- <summary>
--- C#声明:Int32 get_port()
--- </summary>
--- <returns>System.Int32</returns>
function MasterServer.get_port()
end
--- <summary>
--- C#声明:Void set_port(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function MasterServer.set_port(arg_value)
end
--- <summary>
--- C#声明:Void RequestHostList(System.String)
--- </summary>
--- <param name="arg_gameTypeName">System.String</param>
--- <returns>System.Void</returns>
function MasterServer.RequestHostList(arg_gameTypeName)
end
--- <summary>
--- C#声明:UnityEngine.HostData[] PollHostList()
--- </summary>
--- <returns>UnityEngine.HostData[]</returns>
function MasterServer.PollHostList()
end
--- <summary>
--- C#声明:Void RegisterHost(System.String, System.String, System.String)
--- </summary>
--- <param name="arg_gameTypeName">System.String</param>
--- <param name="arg_gameName">System.String</param>
--- <param name="arg_comment">System.String</param>
--- <returns>System.Void</returns>
function MasterServer.RegisterHost(arg_gameTypeName,arg_gameName,arg_comment)
end
--- <summary>
--- C#声明:Void RegisterHost(System.String, System.String)
--- </summary>
--- <param name="arg_gameTypeName">System.String</param>
--- <param name="arg_gameName">System.String</param>
--- <returns>System.Void</returns>
function MasterServer.RegisterHost(arg_gameTypeName,arg_gameName)
end
--- <summary>
--- C#声明:Void UnregisterHost()
--- </summary>
--- <returns>System.Void</returns>
function MasterServer.UnregisterHost()
end
--- <summary>
--- C#声明:Void ClearHostList()
--- </summary>
--- <returns>System.Void</returns>
function MasterServer.ClearHostList()
end
--- <summary>
--- C#声明:Int32 get_updateRate()
--- </summary>
--- <returns>System.Int32</returns>
function MasterServer.get_updateRate()
end
--- <summary>
--- C#声明:Void set_updateRate(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function MasterServer.set_updateRate(arg_value)
end
--- <summary>
--- C#声明:Boolean get_dedicatedServer()
--- </summary>
--- <returns>System.Boolean</returns>
function MasterServer.get_dedicatedServer()
end
--- <summary>
--- C#声明:Void set_dedicatedServer(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function MasterServer.set_dedicatedServer(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function MasterServer:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function MasterServer:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function MasterServer:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function MasterServer:GetType()
end

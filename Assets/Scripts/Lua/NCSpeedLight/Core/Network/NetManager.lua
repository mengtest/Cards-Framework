----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: NetManager.lua
-- 	        // Describle:
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------

NetManager = { };

ServerType = { Login = 0, Logic = 1 };

function NetManager:Initialize()
    NCSpeedLight.NetManager.Initialize()
end

function NetManager:CreateConnection(serverType, host, port, onConnected, onDisconnected)
    local listener = NCSpeedLight.ServerConnection.Listener();
    listener.OnConnect = onConnected;
    listener.OnDisconnect = onDisconnected;
    return NCSpeedLight.NetManager.CreateConnection(serverType, host, port, listener);
end

function NetManager:DeleteConnection(serverType)
    return NCSpeedLight.NetManager.DeleteConnection(serverType);
end

function NetManager:GetConnection(serverType)
    return NCSpeedLight.NetManager.GetConnection(serverType);
end

function NetManager:Update()
    return NCSpeedLight.NetManager.Update();
end

function NetManager:DeleteAllConnections()
    return NCSpeedLight.NetManager.DeleteAllConnections();
end

function NetManager:SendEvent(id, buffer, playerID, serverID, serverType)
    return NCSpeedLight.NetManager.SendEvent(id, buffer, playerID, serverID, serverType);
end

function NetManager:RegisterEvent(id, func)
    return NCSpeedLight.NetManager.RegisterEvent(id, func);
end

function NetManager:UnregisterEvent(id, func)
    return NCSpeedLight.NetManager.UnregisterEvent(id, func);
end


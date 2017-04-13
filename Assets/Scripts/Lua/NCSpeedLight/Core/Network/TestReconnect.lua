TestReconnect = {};

function TestReconnect.Connect()
	NetManager.ConnectTo(99, "192.168.1.146", 11000, TestReconnect.OnConnectedToServer, TestReconnect.OnDisconnectedFromServer, TestReconnect.OnReconnectedToServer);
	NetManager.RegisterEvent(GameMessage.GM_PLAYERISINBATTLE_REQUEST, TestReconnect.OnRecvMsg);
end

function TestReconnect.SendMsg()
	local msg = {
		request = 555;
	};
	Log.Info("TestReconnect.SendMsg" .. msg.request);
	local buffer = NetManager.EncodeMsg(PBMessage.GM_Request, msg);
	NetManager.SendEvent(GameMessage.GM_PLAYERISINBATTLE_REQUEST, buffer, 0, 1, 99);
end

function TestReconnect.OnRecvMsg(evt)
	Log.Info("TestReconnect.OnRecvMsg");
end

function TestReconnect.OnConnectedToServer(conenction)
	Log.Info("TestReconnect.OnConnectedToServer");
end

function TestReconnect.OnDisconnectedFromServer(connection)
	Log.Info("TestReconnect.OnDisconnectedFromServer");
	connection:Reconnect();
end

function TestReconnect.OnReconnectedToServer(connection)
	Log.Info("TestReconnect.OnReconnectedToServer");
end 
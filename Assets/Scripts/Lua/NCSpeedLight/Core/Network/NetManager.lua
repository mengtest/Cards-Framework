-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: NetManager.lua
-- Describle:  网络收发包管理
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
NetManager = {
	ProtobufProcessor = require "protobuf",
	JsonProcessor = require "cjson",
};

ServerType = {Login = 0, Logic = 1};

local this = NetManager;

function NetManager.Initialize()
	Log.Info("Initialize");
	NCSpeedLight.NetManager.Initialize();
	NetManager.InitPBMessage();
end

-- 初始化PB文件，注册lua解析
function NetManager.InitPBMessage()
	local path;
	if Constants.SCRIPT_BUNDLE_MODE then
		path = Constants.LOCAL_SCRIPT_BUNDLE_PATH .. "PBMessage.pb";
	else
		path = UnityEngine.Application.dataPath .. "/Scripts/Lua/NCSpeedLight/Utils/Protocol/PBMessage.pb";
	end
	local buffer = Utility.OpenFile(path);
	if buffer == nil then
		Log.Error("InitPBMessage: open pb file error.");
	else
		NetManager.ProtobufProcessor.register(buffer);
		Log.Info("InitPBMessage: success.");
	end
end

function NetManager.ConnectTo(serverType, host, port, onConnected, onDisconnected, onReconnected, onErrorOccupied)
	return NCSpeedLight.NetManager.ConnectTo(serverType, host, port, onConnected, onDisconnected, onReconnected, onErrorOccupied);
end

function NetManager.DisconnectFrom(serverType)
	return NCSpeedLight.NetManager.DisconnectFrom(serverType);
end

function NetManager.GetConnection(serverType)
	return NCSpeedLight.NetManager.GetConnection(serverType);
end

function NetManager.DisconnectAll()
	return NCSpeedLight.NetManager.DisconnectAll();
end

-- 发送消息至登录服务器
function NetManager.SendEventToLoginServer(id, structName, msg)
	local buffer = NetManager.ProtobufProcessor.encode(structName, msg);
	if buffer == false then
		Log.Error("SendEventToLoginServer error.");
		return false;
	else
		return NetManager.SendEvent(id, buffer, 0, 1, ServerType.Login);
	end
end

-- 发送消息至逻辑服务器
function NetManager.SendEventToLogicServer(id, structName, msg)
	local buffer = NetManager.ProtobufProcessor.encode(structName, msg);
	if buffer == false then
		Log.Error("SendEventToLogicServer error.");
		return false;
	else
		local roleID = Player.ID;
		return NetManager.SendEvent(id, buffer, roleID, 1, ServerType.Logic);
	end
end

function NetManager.NotifyEvent(evt)
	return NCSpeedLight.NetManager.NotifyEvent(evt);
end

function NetManager.SendEvent(id, buffer, playerID, serverID, serverType)
	return NCSpeedLight.NetManager.SendEvent(id, buffer, playerID, serverID, serverType);
end

function NetManager.RegisterEvent(id, func)
	return NCSpeedLight.NetManager.RegisterEvent(id, func);
end

function NetManager.UnregisterEvent(id, func)
	return NCSpeedLight.NetManager.UnregisterEvent(id, func);
end

function NetManager.DecodeMsg(structName, evt)
	local obj = NetManager.ProtobufProcessor.decode(structName, evt.LuaParam);
	return obj;
end

function NetManager.EncodeMsg(structName, msg)
	buffer = NetManager.ProtobufProcessor.encode(structName, msg);
	return buffer;
end

function NetManager.DecodeJson(bytes)
	local str = tolua.tolstring(bytes);
	local obj = NetManager.JsonProcessor.decode(str);
	return obj;
end

function NetManager.DecodePB(structName, buffer)
	local obj = NetManager.ProtobufProcessor.decode(structName, buffer);
	return obj;
end

function NetManager.EncodePB(structName, msg)
	local buffer = NetManager.ProtobufProcessor.encode(structName, msg);
	return buffer;
end

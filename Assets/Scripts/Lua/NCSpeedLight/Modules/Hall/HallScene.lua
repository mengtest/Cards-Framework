-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: HallScene.lua
-- Describle:  游戏大厅，从该场景进入不同的游戏
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
HallScene =
{
	Name = SceneType.HallScene,
	IsInitialized = false,
}
function HallScene.Initialize()
	if HallScene.IsInitialized == false then
	end
end

function HallScene.Begin()
	HallScene.RegisterNetEvent();
	UIManager.CloseAllWindows();
	AssetManager.LoadScene(SceneType.HallScene);
	UIManager.OpenWindow('Hall/UI_Main');
	HallScene.RequestPlayerInFb();
end

function HallScene.Update()
end

function HallScene.End()
end

function HallScene.OnApplicationPause(status)
end

function HallScene.OnApplicationFocus(status)
end

function HallScene.OnConnectToLogicServer()
end

function HallScene.OnReconnectToLogicServer()
end

function HallScene.OnDisconnectFromLogicServer()
end

-- Create Room Logic Begin --
function HallScene.RegisterNetEvent()
	NetManager.RegisterEvent(GameMessage.GM_FBSERVERINFO_RETURN, HallScene.ReceiveFbInfo);
	NetManager.RegisterEvent(GameMessage.GM_MAJIANG_NOTIFY_ASKFIREND, HallScene.ReceiveInvitePlayMaJiang);
	NetManager.RegisterEvent(GameMessage.GM_MAJIANG_RETURN, HallScene.ReturnEnterMaJiangResult);
	NetManager.RegisterEvent(GameMessage.GM_ROOM_RECORD_RETURN, HallScene.ReturnRoomRecord);-- 包房记录;
	NetManager.RegisterEvent(GameMessage.GM_PLAYERISINBATTLE_RETURN, HallScene.ReturnPlayerInFb);  -- 返回玩家是否在副本中;
	NetManager.RegisterEvent(GameMessage.GM_LOGINFB_RETURN, HallScene.ReceiveRespondLoginBattle);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_CHANGE_LONG64, HallScene.NotifyChangeSomething);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_CHANGE_int32, HallScene.NotifyChangeSomethingInt32);
	NetManager.RegisterEvent(GameMessage.GM_KICKOFF_PLAYER, HallScene.NotifyRe_Register);
end

function HallScene.UnRegisterNetEvent()
	NetManager.UnregisterEvent(GameMessage.GM_FBSERVERINFO_RETURN, HallScene.ReceiveFbInfo);
	NetManager.UnregisterEvent(GameMessage.GM_MAJIANG_NOTIFY_ASKFIREND, HallScene.ReceiveInvitePlayMaJiang);
	NetManager.UnregisterEvent(GameMessage.GM_MAJIANG_RETURN, HallScene.ReturnEnterMaJiangResult);
	NetManager.UnregisterEvent(GameMessage.GM_ROOM_RECORD_RETURN, HallScene.ReturnRoomRecord);-- 包房记录;
	NetManager.UnregisterEvent(GameMessage.GM_PLAYERISINBATTLE_RETURN, HallScene.ReturnPlayerInFb);  -- 返回玩家是否在副本中;
	NetManager.UnregisterEvent(GameMessage.GM_LOGINFB_RETURN, HallScene.ReceiveRespondLoginBattle);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_CHANGE_LONG64, HallScene.NotifyChangeSomething);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_CHANGE_int32, HallScene.NotifyChangeSomethingInt32);
	NetManager.UnregisterEvent(GameMessage.GM_KICKOFF_PLAYER, HallScene.NotifyRe_Register);
end

-- 判断当前玩家是否在副本内
function HallScene.RequestPlayerInFb()
	local msg = {
		request = Player.ID;
	};
	Log.Info("HallScene.RequestPlayerInFb: request is " .. msg.request);
	NetManager.SendEventToLogicServer(GameMessage.GM_PLAYERISINBATTLE_REQUEST, PBMessage.GM_Request, msg);
end

function HallScene.RequestCreateRoom()
	Log.Info("HallScene.RequestCreateRoom");
	local msg = {};
	msg.m_roleid = Player.ID;
	if UI_CreateRoom.PlayerNum == 2 then
		msg.m_fbtypeid = MJRoomType.R_1; -- 二人场
	else
		msg.m_fbtypeid = MJRoomType.R_2; -- 四人场
	end
	msg.m_fbplayway = UI_CreateRoom.Playway; -- 玩法
	msg.m_roomcount = UI_CreateRoom.Round;-- 回合数
	msg.m_playerCount = UI_CreateRoom.PlayerNum;	
	NetManager.SendEventToLogicServer(GameMessage.GM_MAJIANG_REQUEST, PBMessage.GMMJRequest, msg);
end
function HallScene.RequestLoginFb()
	local msg = {
		m_FBID = SharedVariable.FBInfo.m_FBID,
		m_RoleID = Player.FullInfo.id,
		m_reallyPos = "(105,555)",
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_LOGINFB_REQUEST, PBMessage.GM_LoginFBServer, msg);
end
function HallScene.RequestJoinRoom(roomID)
	local msg =
	{
		m_Beinvited = Player.FullInfo.id;
		m_Roleid = 1,   -- 服务器不需要知道邀请者的角色id, 随便设置1个值;
		m_Name = "",
		m_FBID = roomID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MAJIANG_JOIN_VIPROOM, PBMessage.GM_AskFriend, msg);
end
function HallScene.ReceiveInvitePlayMaJiang(evt)
	Log.Info("HallScene.ReceiveInvitePlayMaJiang");
end
function HallScene.ReturnEnterMaJiangResult(evt)
	Log.Info("HallScene.ReturnEnterMaJiangResult");
	local msg = NetManager.DecodeMsg(PBMessage.GM_Result, evt);
	if msg == nil then
		return
	end
	local content = "MaJiang enter error" .. msg.m_Result;
	UIManager.OpenTipsDialog(content)
end
function HallScene.ReturnRoomRecord(evt)
	Log.Info("HallScene.ReturnRoomRecord");
end
function HallScene.ReturnPlayerInFb(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleFBServerInfo, evt);
	if msg == false then
		return;
	end
	Log.Info("HallScene.ReturnPlayerInFb: msg.m_Result is " .. msg.m_Result);
	if msg.m_Result == 0 then
		Log.Info("HallScene.ReturnPlayerInFb: 玩家在副本中");
		-- 房间已存在，提示是否进入
		SharedVariable.FBInfo = msg;
		local option = StandardDialogOption.New("提示", "当前房间未解散，是否进入？", true,
		function()
			MJScene.SetNeedReconnect(true);
			SceneManager.GotoScene(SceneType.MJScene);
		end,
		function()
		end);
		UIManager.OpenStandardDialog(option);
	else
		Log.Info("HallScene.ReturnPlayerInFb: 玩家不在副本中");
	end
end
function HallScene.ReceiveFbInfo(evt)
	Log.Info("HallScene.ReceiveFbInfo");
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleFBServerInfo, evt);
	if msg == nil then
		Log.Error("HallScene.ReceiveFbInfo parse msg error.");
	else -- required int32 m_Result=1;			//0 成功,1副本不存在,2 你已经在副本了,3副本已满，4副本人数已满
		if msg.m_Result == 0 then
			Log.Info("HallScene.ReceiveFbInfo：成功进入副本");
			SharedVariable.FBInfo = msg;
			HallScene.RequestLoginFb();
		elseif msg.m_Result == 1 then
			Log.Info("HallScene.ReceiveFbInfo：副本不存在");
		elseif msg.m_Result == 2 then
			Log.Info("HallScene.ReceiveFbInfo：你已经在副本了");
		elseif msg.m_Result == 3 then
			Log.Info("HallScene.ReceiveFbInfo：副本已满");
		elseif msg.m_Result == 4 then
			Log.Info("HallScene.ReceiveFbInfo：副本人数已满");
		end
	end
end
function HallScene.ReceiveRespondLoginBattle(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_LoginFBServerResult, evt);
	if msg == false then
		Log.Error("HallScene.ReceiveRespondLoginBattle: parse msg error," .. PBMessage.GM_LoginFBServerResult);
		return;
	end;
	if msg.result == 0 then
		Log.Info("HallScene.ReceiveRespondLoginBattle: FBID is " .. SharedVariable.FBInfo.m_FBID);
		MJScene.SetNeedReconnect(false);
		SceneManager.GotoScene(SceneType.MJScene);
	end
end
function HallScene.NotifyChangeSomething(evt)
	Log.Info("HallScene.NotifyChangeSomething");
end
function HallScene.NotifyChangeSomethingInt32(evt)
	Log.Info("HallScene.NotifyChangeSomethingInt32");
end
function HallScene.NotifyRe_Register(evt)
	Log.Info("HallScene.NotifyRe_Register");
end

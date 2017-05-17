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
	Name = SceneName.HallScene,
	
	IsInitialized = false,
	
	Announcement = nil, -- 公告信息
	
	-- region 副本信息 
	CurrentFBNeedReconnect = false, -- 当前副本是否需要重连
	
	CurrentFBID = 0, -- 麻将的ID
	
	CurrentFBType = 0, -- 副本类型
	
	CurrentFBPlayway = nil, -- 副本玩法
	
	CurrentFBMasterID = 0, -- 副本房主ID
	
	CurrentFBPlayerCount = 0, -- 副本人数
	
	CurrentFBRound = 0, -- 副本的当前回合
	
	CurrentFBTotalRound = 0,-- 副本总的回合数
	
	CurrentFBFinishedRound = 0, -- 副本已完成的回合数
	
	CurrentFBInfo = nil, -- 副本信息 【PBMessage.GM_BattleFBServerInfo】
	
	CurrentFBPlaybackMode = false, -- 副本回放模式
	
	CurrentFBPlaybackData = nil, -- 麻将回放数据
	
	CurrentFBStatus = FBStatus.Waitting, -- 副本状态
	
	CurrentFBCloseTime = 300, -- 副本被解散的倒计时
	
-- endregion
}

function HallScene.Initialize()
	if HallScene.IsInitialized == false then
	end
end

function HallScene.Begin()
	AudioManager.PlayMusic({BGMusic.Hall}, false);
	HallScene.CurrentFBCloseTime = 300;
	HallScene.RegisterNetEvent();
	NCSpeedLight.InternalUI.Instance:CloseBG();
	UIManager.CloseAllWindows();
	AssetManager.LoadScene(SceneName.HallScene);
	UIManager.OpenWindow(UIName.UI_Hall);
	if SceneManager.LastScene == LoginScene then
		HallScene.RequestPlayerInFb();
	end
	HallScene.RequestAnnouncement();
	if SceneManager.LastScene == MJScene then
		Player.RefreshAddress();
	end
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
	NetManager.RegisterEvent(GameMessage.GM_GET_CHAT_RETURN, HallScene.OnReceiveAnnouncement); -- 接收到公告信息
	NetManager.RegisterEvent(GameMessage.GM_PLAYER_PLAYBACK_RETURN, HallScene.OnRecvPlayback); -- 回放信息
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
	NetManager.UnregisterEvent(GameMessage.GM_GET_CHAT_RETURN, HallScene.OnReceiveAnnouncement); -- 接收到公告信息
	NetManager.UnregisterEvent(GameMessage.GM_PLAYER_PLAYBACK_RETURN, HallScene.OnRecvPlayback); -- 回放信息
end

function HallScene.SwitchFBStatus(status)
	Log.Info("HallScene.SwitchFBStatus: status is " .. FBStatus.ToString(status));
	HallScene.CurrentFBStatus = status;
end

-- 判断当前玩家是否在副本内
function HallScene.RequestPlayerInFb()
	local msg = {
		request = Player.ID;
	};
	Log.Info("HallScene.RequestPlayerInFb: request is " .. msg.request);
	NetManager.SendEventToLogicServer(GameMessage.GM_PLAYERISINBATTLE_REQUEST, PBMessage.GM_Request, msg);
end

-- 请求获取公告信息
function HallScene.RequestAnnouncement()
	local msg = {
		request = Player.ID;
	};
	Log.Info("HallScene.RequestAnnouncement: request is " .. msg.request);
	NetManager.SendEventToLogicServer(GameMessage.GMCOMMAND_GETONLINE_RETURN, PBMessage.GM_Request, msg);
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
		m_FBID = HallScene.CurrentFBID,
		m_RoleID = Player.ID,
		m_reallyPos = Player.Address,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_LOGINFB_REQUEST, PBMessage.GM_LoginFBServer, msg);
end

function HallScene.RequestJoinRoom(roomID)
	local msg =
	{
		m_Beinvited = Player.ID;
		m_Roleid = 1,   -- 服务器不需要知道邀请者的角色id, 随便设置1个值;
		m_Name = "",
		m_FBID = roomID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MAJIANG_JOIN_VIPROOM, PBMessage.GM_AskFriend, msg);
end

-- 请求排行榜数据
function HallScene.RequestRank()
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
		HallScene.CurrentFBInfo = msg;
		HallScene.CurrentFBID = msg.m_FBID;
		HallScene.CurrentFBType = msg.m_FBTypeID;
		HallScene.CurrentFBPlayway = msg.m_playWay;
		local option = ConfirmDialogOption.New("提示", "当前房间未解散，是否进入？", true,
		function()
			HallScene.CurrentFBNeedReconnect = true;
			SceneManager.Goto(SceneName.MJScene);
		end,
		function()
		end);
		UIManager.OpenConfirmDialog(option);
	else
		Log.Info("HallScene.ReturnPlayerInFb: 玩家不在副本中");
	end
end

function HallScene.ReceiveFbInfo(evt)
	Log.Info("HallScene.ReceiveFbInfo");
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleFBServerInfo, evt);
	if msg == false then
		Log.Error("HallScene.ReceiveFbInfo parse msg error.");
	else -- required int32 m_Result=1;			//0 成功,1副本不存在,2 你已经在副本了,3副本已满，4副本人数已满
		if msg.m_Result == 0 then
			Log.Info("HallScene.ReceiveFbInfo：成功进入房间");
			HallScene.CurrentFBInfo = msg;
			HallScene.CurrentFBID = msg.m_FBID;
			HallScene.CurrentFBType = msg.m_FBTypeID;
			HallScene.CurrentFBPlayway = msg.m_playWay;
			HallScene.RequestLoginFb();
		elseif msg.m_Result == 1 then
			UIManager.OpenTipsDialog("房间不存在");
			Log.Info("HallScene.ReceiveFbInfo：房间不存在");
		elseif msg.m_Result == 2 then
			UIManager.OpenTipsDialog("你已经在其他的房间内");
			Log.Info("HallScene.ReceiveFbInfo：你已经在其他的房间内");
		elseif msg.m_Result == 3 then
			UIManager.OpenTipsDialog("房间已满");
			Log.Info("HallScene.ReceiveFbInfo：房间已满");
		elseif msg.m_Result == 4 then
			UIManager.OpenTipsDialog("房间人数已满");
			Log.Info("HallScene.ReceiveFbInfo：房间人数已满");
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
		Log.Info("HallScene.ReceiveRespondLoginBattle: FBID is " .. HallScene.CurrentFBID);
		HallScene.CurrentFBNeedReconnect = false;
		SceneManager.Goto(SceneName.MJScene);
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

function HallScene.OnReceiveAnnouncement(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_GetChatInfo, evt);
	if msg == false then
		Log.Error("HallScene.OnReceiveAnnouncement: parse msg error," .. PBMessage.GM_GetChatInfo);
		return;
	end;
	Log.Info("HallScene.OnReceiveAnnouncement: word is " .. msg.word .. ",repeat " .. tostring(msg.repeatTimes));
	if msg.channel == 6 then
		HallScene.Announcement = {};
		HallScene.Announcement.Content = msg.word;
		HallScene.Announcement.RepeatTimes = msg.repeatTimes;
		UI_Hall.RefreshAnnouncement();
	end
end

function HallScene.OnRecvPlayback(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_PlayBack, evt);
	if msg == false then
		Log.Error("HallScene.OnRecvPlayback: parse msg error," .. PBMessage.GM_PlayBack);
		return;
	end;
	Log.Info("HallScene.OnRecvPlayback:");
	if msg.m_Result == 1 then
		UIManager.OpenTipsDialog("无此回放");
	else
		HallScene.PlaybackData = msg;
		HallScene.CurrentFBPlaybackMode = true;
		SceneManager.Goto(SceneName.MJScene);
	end
end

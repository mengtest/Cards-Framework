HallScene = {}

function HallScene:Initialize()
	if self.Instance == nil then
		HallScene:New();
		HallScene.RegisterNetEvent();
	end
	return self.Instance;
end

function HallScene:New()
	o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.HallScene;
	return o;
end

function HallScene.Begin()
	UIManager.CloseAllWindows();
	AssetManager.LoadScene(SceneType.HallScene);
	UIManager.OpenWindow('Hall/UI_Main');
	
end

function HallScene.Update()
end

function HallScene.End()
end

-- Create Room Logic Begin --
function HallScene.RegisterNetEvent()
	NetManager.RegisterEvent(GameMessage.GM_FBSERVERINFO_RETURN, HallScene.ReceiveFbInfo);
	NetManager.RegisterEvent(GameMessage.GM_MAJIANG_NOTIFY_ASKFIREND, HallScene.ReceiveInvitePlayMaJiang);
	NetManager.RegisterEvent(GameMessage.GM_MAJIANG_RETURN, HallScene.ReturnEnterMaJiangResult);
	NetManager.RegisterEvent(GameMessage.GM_ROOM_RECORD_RETURN, HallScene.ReturnRoomRecord);-- 包房记录;
	NetManager.RegisterEvent(GameMessage.GM_PLAYERISINBATTLE_RETURN, HallScene.ReturnPlayerInFb);  -- 返回玩家是否在副本中;
	NetManager.RegisterEvent(GameMessage.GM_PLAYERJOINBATTLEAGAIN_RETRUN, HallScene.ReturnAgainEnterFb);
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
	NetManager.UnregisterEvent(GameMessage.GM_PLAYERJOINBATTLEAGAIN_RETRUN, HallScene.ReturnAgainEnterFb);
	NetManager.UnregisterEvent(GameMessage.GM_LOGINFB_RETURN, HallScene.ReceiveRespondLoginBattle);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_CHANGE_LONG64, HallScene.NotifyChangeSomething);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_CHANGE_int32, HallScene.NotifyChangeSomethingInt32);
	NetManager.UnregisterEvent(GameMessage.GM_KICKOFF_PLAYER, HallScene.NotifyRe_Register);
end

-- 判断当前玩家是否在副本内
function HallScene.RequestPlayerInFb()
	local msg = {
		request = SharedVariable.SelfInfo.FullInfo.id;
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_PLAYERISINBATTLE_REQUEST, PBMessage.GM_Request, msg);
end

function HallScene.RequestCreateRoom()
	local msg = {
		m_roleid = Player.Hero.FullInfo.id,
		m_fbtypeid = RoomType.R_1,
		m_fbplayway = "2,",
		m_roomcount = 6,
		m_playerCount = 4,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MAJIANG_REQUEST, PBMessage.GMMJRequest, msg);
end

function HallScene.RequestLoginFb()
	local msg = {
		m_FBID = SharedVariable.FBInfo.m_FBID,
		m_RoleID = Player.Hero.FullInfo.id,
		m_reallyPos = "(105,555)",
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_LOGINFB_REQUEST, PBMessage.GM_LoginFBServer, msg);
end

function HallScene.RequestJoinRoom(roomID)
	local msg =
	{
		m_Beinvited = Player.Hero.FullInfo.id;
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
	Log.Info("HallScene.ReturnPlayerInFb");
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleFBServerInfo, evt);
	if msg == nil then
		return;
	end
	if msg.m_Result == 0 then
		-- 房间已存在，直接进入
		SharedVariable.FBInfo = msg;
		SceneManager.GotoScene(SceneType.MaJiangScene);
	else
		if SceneManager.Instance.CurrentScene ~= nil and SceneManager.Instance.CurrentScene.Name == SceneType.LoginScene then
			SceneManager.GotoScene(SceneType.HallScene);
		else
			HallScene.RequestCreateRoom();
		end
	-- local isInMaJiangRoom = msg.m_FBTypeID >= RoomType.R_1 and msg.m_FBTypeID <= RoomType.R_2;
	-- if msg.m_FBTypeID > 0 and isInMaJiangRoom == false then
	-- 	return;
	-- end
	-- local mFirstRequest = false;
	-- if mFirstRequest then
	-- else
	-- 	Player.Hero:NotifyEvent(PlayerEventType.PE_MjRoomExist, msg);
	-- end
	end
end

function HallScene.ReturnAgainEnterFb(evt)
	Log.Info("HallScene.ReturnAgainEnterFb");
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
	if msg == false then return end;
	if msg.result == 0 then
		Log.Info("HallScene.ReceiveRespondLoginBattle: FBID is " .. SharedVariable.FBInfo.m_FBID);
		SceneManager.GotoScene(SceneType.MaJiangScene);
		Player.Hero:NotifyEvent(PlayerEventType.PE_ReturnLoginFB, msg);
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

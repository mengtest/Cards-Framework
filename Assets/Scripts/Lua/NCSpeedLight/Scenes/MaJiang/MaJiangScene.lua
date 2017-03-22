MaJiangScene = {}

function MaJiangScene:Initialize()
	if self.Instance == nil then
		MaJiangScene:New();
	end
	return self.Instance;
end

function MaJiangScene:New()
	local o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.MaJiangScene;
	return o;
end

function MaJiangScene.Begin()
	AssetManager.LoadScene(SceneType.MaJiangScene);
	UIManager.OpenWindow(UIType.UI_MaJiang);
	UIManager.CloseAllWindowsExcept(UIType.UI_MaJiang);
	MaJiangScene.RegisterNetEvent();
	MaJiangScene.RequestAllPlayerInfo();
end

function MaJiangScene.Update()
end

function MaJiangScene.End()
	MaJiangScene.UnRegisterNetEvent();
end

function MaJiangScene.RegisterNetEvent()
	-- 新玩家进入;
	NetManager.RegisterEvent(GameMessage.GM_BATTLE_NEW_CHARACTER, MaJiangScene.ReturnGamePlayerInfo);
	
	-- 玩家手牌信息;
	NetManager.RegisterEvent(GameMessage.GM_HANDCARD_INFO, MaJiangScene.ReturnHandCardInfo);
	
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_PLAYER_OPERATOR, MaJiangScene.ReturnPlayerOutCard);
	
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_CAN_OPERATOR, MaJiangScene.ReturnCanOperatorType);
	
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_READY, MaJiangScene.NotifyOneReady);
	
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_BATTLEENDTIME, MaJiangScene.ReturnAllReady);
	
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_HuPai_OPERATOR, MaJiangScene.ReturnPlayerHu);
	
	NetManager.RegisterEvent(GameMessage.GM_BROADCAST_BATTLESCENE_LEAVE, MaJiangScene.NotifyPlayerLeave);
	
	NetManager.RegisterEvent(GameMessage.GM_ANSWER_FACE_RETURN, MaJiangScene.NotifyChat);
	
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_TRUSTTEE, MaJiangScene.NotifyTrust);
	
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_WANTCLOSEROOM, MaJiangScene.NotifyDissolveRoom);
	
	NetManager.RegisterEvent(GameMessage.GM_CHOOSE_IS_CLOSEROOM_RETURN, MaJiangScene.ChooseDissolveRoom);
	
	NetManager.RegisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, MaJiangScene.ReturnRoomMasterDissolve);
	
	--返回最终结算;
	NetManager.RegisterEvent(GameMessage.GM_ROOMCARDRESULT_RETURN, MaJiangScene.ReturnShowLastResult);
	
	-- 比赛场积分发生变化;
	NetManager.RegisterEvent(GameMessage.GM_MATCH_RATE_RETURN, MaJiangScene.ReturnRoomRate);
	
	--掷骰子返回
	NetManager.RegisterEvent(GameMessage.GM_PlayerRollTouZi_Request, MaJiangScene.ReturnCastDice);
	
	NetManager.RegisterEvent(GameMessage.GM_MJOperator_Error, MaJiangScene.ReturnOperateError);
end

function MaJiangScene.UnRegisterNetEvent()
	NetManager.UnregisterEvent(GameMessage.GM_BATTLE_NEW_CHARACTER, MaJiangScene.ReturnGamePlayerInfo);
	NetManager.UnregisterEvent(GameMessage.GM_HANDCARD_INFO, MaJiangScene.ReturnHandCardInfo);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_PLAYER_OPERATOR, MaJiangScene.ReturnPlayerOutCard);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_CAN_OPERATOR, MaJiangScene.ReturnCanOperatorType);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_READY, MaJiangScene.NotifyOneReady);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_BATTLEENDTIME, MaJiangScene.ReturnAllReady);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_HuPai_OPERATOR, MaJiangScene.ReturnPlayerHu);
	NetManager.UnregisterEvent(GameMessage.GM_BROADCAST_BATTLESCENE_LEAVE, MaJiangScene.NotifyPlayerLeave);
	NetManager.UnregisterEvent(GameMessage.GM_ANSWER_FACE_RETURN, MaJiangScene.NotifyChat);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_TRUSTTEE, MaJiangScene.NotifyTrust);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_WANTCLOSEROOM, MaJiangScene.NotifyDissolveRoom);
	NetManager.UnregisterEvent(GameMessage.GM_CHOOSE_IS_CLOSEROOM_RETURN, MaJiangScene.ChooseDissolveRoom);
	NetManager.UnregisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, MaJiangScene.ReturnRoomMasterDissolve);
	NetManager.UnregisterEvent(GameMessage.GM_ROOMCARDRESULT_RETURN, MaJiangScene.ReturnShowLastResult);
	NetManager.UnregisterEvent(GameMessage.GM_MATCH_RATE_RETURN, MaJiangScene.ReturnRoomRate);
	NetManager.UnregisterEvent(GameMessage.GM_PlayerRollTouZi_Request, MaJiangScene.ReturnCastDice);
	NetManager.UnregisterEvent(GameMessage.GM_MJOperator_Error, MaJiangScene.ReturnOperateError);
end

function MaJiangScene.RequestCloseRoom()
	local msg =
	{
		m_RoleID = Player.Hero.FullInfo.id,
		m_FBID = SharedVariable.FBInfo.m_FBID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MASTERCLOSEROOM_REQUEST, PBMessage.GM_LoginFBServer, msg);
end

-- 请求玩家位置，庄家是谁
function MaJiangScene.RequestAllPlayerInfo()
	local msg =
	{
		m_FBID = SharedVariable.FBInfo.m_FBID,
		m_RoleID = Player.Hero.FullInfo.id
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_ALL_CHARACTERINFO, PBMessage.GM_LoginFBServer, msg);
end


function MaJiangScene.ReceiveCloseRoom(evt)
	Log.Info("MaJiangScene.ReceiveCloseRoom");
end

-- 返回玩家位置，庄家是谁
function MaJiangScene.ReturnGamePlayerInfo(evt)
	Log.Info("MaJiangScene.ReturnGamePlayerInfo");
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleEntryInfo, evt);
	if msg == nil then
		Log.Error("MaJiangScene.ReturnGamePlayerInfo: parse msg error struct name is " .. PBMessage.GM_BattleEntryInfo);
	end
	local roomMasterID = msg.m_RoomMasterID;
	Log.Info("MaJiangScene.ReturnGamePlayerInfo: RoomMasterID is " .. roomMasterID .. ",current player count is " .. # msg.m_Character);
	SharedVariable.FBEntryInfo = msg;
	-- ;
	for i = 1, # SharedVariable.FBEntryInfo.m_Character do
		local playerEntry = SharedVariable.FBEntryInfo.m_Character[i];
		if playerEntry ~= nil and playerEntry.m_RoleData ~= nil then
			if playerEntry.m_RoleData.m_Roleid == Player.Hero.FullInfo.id then
				-- 计算桌面的偏移
				local pos = playerEntry.m_RoleData.m_Postion;
				SharedVariable.DeskOffset = pos;
			end
		end
		local a = playerEntry.m_reallyPos;
		
		local b = 1;
	end
	UI_MaJiang.SetupDeskStatus();
	MaJiangSceneController.SetupDicePanelDirection(SharedVariable.DeskOffset * 90);
end

function MaJiangScene.ReturnHandCardInfo(evt)
	Log.Info("MaJiangScene.ReturnHandCardInfo");
end

function MaJiangScene.ReturnPlayerOutCard(evt)
	Log.Info("MaJiangScene.ReturnPlayerOutCard");
end

function MaJiangScene.ReturnCanOperatorType(evt)
	Log.Info("MaJiangScene.ReturnCanOperatorType");
end

function MaJiangScene.NotifyOneReady(evt)
	Log.Info("MaJiangScene.NotifyOneReady");
end

function MaJiangScene.ReturnAllReady(evt)
	Log.Info("MaJiangScene.ReturnAllReady");
end

function MaJiangScene.ReturnPlayerHu(evt)
	Log.Info("MaJiangScene.ReturnPlayerHu");
end

function MaJiangScene.NotifyPlayerLeave(evt)
	Log.Info("MaJiangScene.NotifyPlayerLeave");
end

function MaJiangScene.NotifyChat(evt)
	Log.Info("MaJiangScene.NotifyChat");
end

function MaJiangScene.NotifyTrust(evt)
	Log.Info("MaJiangScene.NotifyTrust");
end

function MaJiangScene.NotifyDissolveRoom(evt)
	Log.Info("MaJiangScene.NotifyDissolveRoom");
end

function MaJiangScene.ChooseDissolveRoom(evt)
	Log.Info("MaJiangScene.ChooseDissolveRoom");
end

function MaJiangScene.ReturnRoomMasterDissolve(evt)
	Log.Info("MaJiangScene.ReturnRoomMasterDissolve");
	local option = StandardDialogOption:New();
	option.OnClickOK =
	function()
		SceneManager.GotoScene(SceneType.HallScene);
	end;
	option.DoubleButton = false;
	option.Content = "房间已解散,点击确定退出房间";
	option.Title = "提  示";
	UIManager.OpenStandardDialog(option);
end

function MaJiangScene.ReturnShowLastResult(evt)
	Log.Info("MaJiangScene.ReturnShowLastResult");
end

function MaJiangScene.ReturnRoomRate(evt)
	Log.Info("MaJiangScene.ReturnRoomRate");
end

function MaJiangScene.ReturnCastDice(evt)
	Log.Info("MaJiangScene.ReturnCastDice");
end

function MaJiangScene.ReturnOperateError(evt)
	Log.Info("MaJiangScene.ReturnOperateError");
end
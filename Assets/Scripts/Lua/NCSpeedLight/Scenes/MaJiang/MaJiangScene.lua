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
	self.Instance.Players = {};
	-- 当前操作的玩家
	self.Instance.CurrentOperator = nil;
	-- 上一个操作的玩家
	self.Instance.LastOperator = nil;
	return o;
end

function MaJiangScene.Begin()
	UIManager.OpenWindow(UIType.UI_Load);
	AssetManager.LoadScene(SceneType.MaJiangScene);
	UIManager.OpenWindow(UIType.UI_MaJiang);
	MaJiangScene.Instance.Players = {};
	MaJiangScene.RegisterNetEvent();
	MaJiangScene.RequestAllPlayerInfo();
end

function MaJiangScene.Update()
end

function MaJiangScene.End()
	MaJiangScene.UnRegisterNetEvent();
	MaJiangScene.Instance.Players = nil;
	MaJiangScene.Instance.CurrentOperator = nil;
	MaJiangScene.Instance.LastOperator = nil;
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

function MaJiangScene.AddPlayer(player)
	if MaJiangScene.Instance.Players[player.MJData.m_RoleData.m_Roleid] == nil then
		MaJiangScene.Instance.Players[player.MJData.m_RoleData.m_Roleid] = player;
	end
end

-- keys 
function MaJiangScene.GetPlayer(...)
	local keys = {...}
	for key1, value1 in pairs(MaJiangScene.Instance.Players) do
		for i = 1, # keys do
			local key2 = keys[i];
			if key1 == key2 then
				return value1;
			end
			if value1 ~= nil and value1.m_RoleData ~= nil and value1.m_RoleData.m_Postion == key2 then
				return value1;
			end
		end
	end
end

function MaJiangScene.RemovePlayer(id)
	for key, value in pairs(MaJiangScene.Instance.Players) do
		if key == id then
			table.remove(MaJiangScene.Instance.Players, key);
		end
	end
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

-- 请求准备，0取消准备，1准备;
function MaJiangScene.RequestReady(status)
	local var;
	if status then
		var = 1;
	else
		var = 0;
	end
	local msg = {
		roleID = var,
	}
	NetManager.SendEventToLogicServer(GameMessage.GM_SEND_READY, PBMessage.GM_LeaveBattle, msg);
end

-- 请求投掷骰子
function MaJiangScene.RequestCastDice()
	local msg = {
		m_roleid = Player.Hero.MJData.m_RoleData.m_Roleid,
		m_pos = Player.Hero.MJData.m_RoleData.m_Postion,
	};
	Log.Info("MaJiangScene.RequestCastDic: roleid is " .. Player.Hero.MJData.m_RoleData.m_Roleid .. ",pos is " .. Player.Hero.MJData.m_RoleData.m_Postion);
	NetManager.SendEventToLogicServer(GameMessage.GM_PlayerRollTouZi_Request, PBMessage.GM_PlayerRollRequest, msg);
end

function MaJiangScene.ReceiveCloseRoom(evt)
	Log.Info("MaJiangScene.ReceiveCloseRoom");
end


-- 请求麻将过
function MaJiangScene.RequestMJOperate_Guo()
	local cardNum = # Player.Hero.HandCardInfo.m_HandCard;
	Log.Info("MaJiangScene.RequestMJOperate_Guo: current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_GUO;
	msg.m_CardNum = cardNum;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将胡
function MaJiangScene.RequestMJOperate_Hu()
	local cardNum = # Player.Hero.HandCardInfo.m_HandCard;
	Log.Info("MaJiangScene.RequestMJOperate_Hu: current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_HU;
	msg.m_CardNum = cardNum;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将定胡
function MaJiangScene.RequestMJOperate_DingHu()
	Log.Info("MaJiangScene.RequestMJOperate_DingHu");
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_DingHU;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将过
function MaJiangScene.RequestMJOperate_Pass()
	local cardNum = # Player.Hero.HandCardInfo.m_HandCard;
	Log.Info("MaJiangScene.RequestMJOperate_Pass: current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_GUO;
	msg.m_CardNum = cardNum;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将出牌
function MaJiangScene.RequestMJOperate_OutCard(card)
	local cardNum = # Player.Hero.HandCardInfo.m_HandCard;
	Log.Info("MaJiangScene.RequestMJOperate_OutCard: current cards count is " .. cardNum .. ",card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_SendCard;
	msg.m_CardNum = cardNum;
	msg.m_HandCard = {
		card,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将操作
function MaJiangScene.RequestMJOperate(operateType)
	local cardNum = # Player.Hero.HandCardInfo.m_HandCard;
	Log.Info("MaJiangScene.RequestMJOperate: operate type is " .. MaJiangOperatorType.GetString(operateType) .. ",current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = operateType;
	msg.m_CardNum = # Player.Hero.HandCardInfo.m_HandCard;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 返回玩家位置，庄家是谁，有玩家进入就会调用一次
function MaJiangScene.ReturnGamePlayerInfo(evt)
	Log.Info("MaJiangScene.ReturnGamePlayerInfo");
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleEntryInfo, evt);
	if msg == false then
		Log.Error("MaJiangScene.ReturnGamePlayerInfo: parse msg error struct name is " .. PBMessage.GM_BattleEntryInfo);
	end
	local roomMasterID = msg.m_RoomMasterID;
	Log.Info("MaJiangScene.ReturnGamePlayerInfo: RoomMasterID is " .. roomMasterID .. ",current player count is " .. # msg.m_Character);
	SharedVariable.FBEntryInfo = msg;
	
	-- 计算desk offset,并设置骰子面板的朝向
	if MaJiangSceneController.IsSetupDicePanelRotation == false then
		for i = 1, # SharedVariable.FBEntryInfo.m_Character do
			local playerEntry = SharedVariable.FBEntryInfo.m_Character[i];
			if playerEntry ~= nil and playerEntry.m_RoleData ~= nil and playerEntry.m_RoleData.m_Roleid == Player.Hero.FullInfo.id then
				local pos = playerEntry.m_RoleData.m_Postion;
				SharedVariable.DeskOffset = pos;
				if SharedVariable.FBInfo.m_FBTypeID == RoomType.R_1 then
					SharedVariable.DeskOffset = SharedVariable.DeskOffset * 2;
				end
			end
		end
		Log.Info("MaJiangScene.ReturnGamePlayerInfo: desk offset is " .. SharedVariable.DeskOffset);
		MaJiangSceneController.SetupDicePanelDirection();
		MaJiangSceneController.IsSetupDicePanelRotation = true;
	end
	
	-- 设置玩家的UI
	for i = 1, # SharedVariable.FBEntryInfo.m_Character do
		local playerEntry = SharedVariable.FBEntryInfo.m_Character[i];
		if playerEntry ~= nil and playerEntry.m_RoleData ~= nil then
			local pos = playerEntry.m_RoleData.m_Postion;
			local uiIndex = 0;
			if SharedVariable.FBInfo.m_FBTypeID == RoomType.R_1 then
				if pos * 2 - SharedVariable.DeskOffset == 0 then
					uiIndex = 0;
				else
					uiIndex = 2;
				end
			elseif SharedVariable.FBInfo.m_FBTypeID == RoomType.R_2 then
				uiIndex = pos + 4 - SharedVariable.DeskOffset;
				uiIndex = uiIndex % 4;
			end
			if uiIndex == 0 then
				UI_Player0.Player:SetMJData(playerEntry);
				MaJiangScene.AddPlayer(UI_Player0.Player);
				UI_Player0.Player:SetupUI();
			elseif uiIndex == 1 then
				UI_Player1.Player:SetMJData(playerEntry);
				MaJiangScene.AddPlayer(UI_Player1.Player);
				UI_Player1.Player:SetupUI();
			elseif uiIndex == 2 then
				UI_Player2.Player:SetMJData(playerEntry);
				MaJiangScene.AddPlayer(UI_Player2.Player);
				UI_Player2.Player:SetupUI();
			elseif uiIndex == 3 then
				UI_Player3.Player:SetMJData(playerEntry);
				MaJiangScene.AddPlayer(UI_Player3.Player);
				UI_Player3.Player:SetupUI();
			end
			local str = "玩家 " .. playerEntry.m_RoleData.m_Name .. " 进入房间";
			UIManager.OpenTipsDialog(str);
		end
	end
	
	UIManager.CloseAllWindowsExcept(UIType.UI_MaJiang);
end

function MaJiangScene.ReturnHandCardInfo(evt)
	Log.Info("MaJiangScene.ReturnHandCardInfo");
	local msg = NetManager.DecodeMsg(PBMessage.GMHandCard, evt);
	if msg == false then
		Log.Error("MaJiangScene.ReturnHandCardInfo: parse msg error," .. PBMessage.GMHandCard);
		return;
	end
	Player.Hero:SetHandCardInfo(msg);
	for key, value in pairs(MaJiangScene.Instance.Players) do
		if value ~= nil then
			value:StartGame();
		end
	end
	
	UI_MaJiang.SetupCastDice(true);
	UI_MaJiang.SetupReadyAndInvite(false, false, false);
end

function MaJiangScene.ReturnPlayerOutCard(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_MJOperator, evt);
	if msg == false then
		Log.Error("MaJiangScene.ReturnPlayerOutCard: parse msg error," .. PBMessage.GM_MJOperator);
		return;
	end
	
	local player = MaJiangScene.GetPlayer(msg.m_roleid);
	if player == nil then
		Log.Error("MaJiangScene.ReturnPlayerOutCard: can not get player id is " .. msg.m_roleid);
		return;
	end
	
	Log.Info("MaJiangScene.ReturnPlayerOutCard: operator id is " .. msg.m_roleid .. ",operate type is " .. MaJiangOperatorType.GetString(msg.m_OperatorType) .. ", m_LastCard.m_Index is " .. msg.m_LastCard.m_Index .. " and m_Type is " .. msg.m_LastCard.m_Type .. ", m_HandCard.count is " .. # msg.m_HandCard);
	
	if msg.m_OperatorType == MaJiangOperatorType.MJOT_BEGIN then
		MaJiangScene.Instance.LastOperator = MaJiangScene.Instance.CurrentOperator;
		MaJiangScene.Instance.CurrentOperator = {Player = player, Data = msg};
		if MaJiangScene.Instance.LastOperator ~= nil and MaJiangScene.Instance.LastOperator.Player ~= nil then
			MaJiangScene.Instance.LastOperator.Player:PlayUIScale(false);
		end
		MaJiangScene.Instance.CurrentOperator.Player:PlayUIScale(true);
		player:MJOT_BEGIN(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_GetCard then
		player:MJOT_GetCard(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_BuCard then
		player:MJOT_BuCard(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_SendCard then
		player:MJOT_SendCard(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_Tan then
		player:MJOT_Tan(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_CHI then
		player:MJOT_CHI(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_SAO then
		player:MJOT_SAO(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_GANG then
		player:MJOT_GANG(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_AN_GANG then
		player:MJOT_AN_GANG(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_BuGang then
		player:MJOT_BuGang(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_GUO then
		player:MJOT_GUO(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_HU then
		player:MJOT_HU(msg);
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_DingHU then
		player:MJOT_DingHU(msg);
	end
end

function MaJiangScene.ReturnCanOperatorType(evt)
	Log.Info("MaJiangScene.ReturnCanOperatorType");
	local msg = NetManager.DecodeMsg(PBMessage.GM_MJCanOperator, evt);
	if msg == false then
		Log.Error("MaJiangScene.ReturnCanOperatorType: parse msg error," .. PBMessage.GM_MJCanOperator);
		return;
	end
	-- List<PBMessage.GM_OperatorData> tempList = tempData.m_Operator;  /
	local operatorsData = msg.m_Operator;
	local a = 1;
	
	UIManager.OpenTipsDialog("直接过");
	MaJiangScene.RequestMJOperate_Guo();
end

function MaJiangScene.NotifyOneReady(evt)
	Log.Info("MaJiangScene.NotifyOneReady");
	local msg = NetManager.DecodeMsg(PBMessage.GM_Result, evt);
	if msg == false then
		Log.Error("MaJiangScene.NotifyOneReady: parse msg error," .. PBMessage.GM_Result);
		return;
	end
	local player = MaJiangScene.GetPlayer(msg.m_Result);
	if player ~= nil then
		local status = msg.m_productid == 1;
		-- Log.Info("MaJiangScene.NotifyOneReady: " .. tostring(status) .. ",name is " .. player.transform.name);
		player:SetupReady(status);
	end
end

function MaJiangScene.ReturnAllReady(evt)
	Log.Info("MaJiangScene.ReturnAllReady");
	local msg = NetManager.DecodeMsg(PBMessage.GM_NotifyBattleEndTime, evt);
	UIManager.OpenTipsDialog("对局开始");
end

function MaJiangScene.ReturnPlayerHu(evt)
	Log.Info("MaJiangScene.ReturnPlayerHu");
end

function MaJiangScene.NotifyPlayerLeave(evt)
	Log.Info("MaJiangScene.NotifyPlayerLeave");
	local msg = NetManager.DecodeMsg(PBMessage.GM_LeaveBattle, evt);
	if msg == false then
		Log.Error("MaJiangScene.NotifyPlayerLeave: parse msg error: " .. PBMessage.GM_LeaveBattle);
		return;
	end
	local player = MaJiangScene.GetPlayer(msg.roleID);
	if player ~= nil then
		local str = "玩家 " .. player.MJData.m_RoleData.m_Name .. " 离开房间";
		UIManager.OpenTipsDialog(str);
		player:SetupEnterAndLeave(false, true);
	end
end

function MaJiangScene.NotifyChat(evt)
	Log.Info("MaJiangScene.NotifyChat");
end

function MaJiangScene.NotifyTrust(evt)
	Log.Info("MaJiangScene.NotifyTrust");
end

-- 有玩家发起解散房间
function MaJiangScene.NotifyDissolveRoom(evt)
	Log.Info("MaJiangScene.NotifyDissolveRoom");
	local msg = NetManager.DecodeMsg(PBMessage.GM_Result, evt);
	if msg == false then
		if msg == false then
			Log.Error("MaJiangScene.NotifyDissolveRoom: parse msg error: " .. PBMessage.GM_Result);
			return;
		end
		return;
	end
	UIManager.OpenWindow(UIType.UI_DissolveRoom);
	UI_DissolveRoom.DissolveID = msg.m_Result;
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
	local msg = NetManager.DecodeMsg(PBMessage.GM_PlayerRollRequest, evt);
	if msg == false then
		Log.Error("MaJiangScene.ReturnCastDice: parse msg error: " .. PBMessage.GM_PlayerRollRequest);
		return;
	end
	Log.Info("MaJiangScene.ReturnCastDice: dice number is : " .. msg.m_pos);
	UI_MaJiang.SetupCastDice(false);
	MaJiangSceneController.PlayDiceAnimation(Player.Hero.HandCardInfo.m_saizi[1], Player.Hero.HandCardInfo.m_saizi[2]);
	MaJiangSceneController.PlayDeskAnimation();
	for key, value in pairs(MaJiangScene.Instance.Players) do
		value:SetupCards();
	end
end

function MaJiangScene.ReturnOperateError(evt)
	Log.Info("MaJiangScene.ReturnOperateError");
	UIManager.OpenTipsDialog("操作失败");
end
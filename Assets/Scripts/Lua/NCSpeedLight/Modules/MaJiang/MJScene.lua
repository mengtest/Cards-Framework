MJScene =
{
	Name = SceneType.MJScene,
	IsInitialized = false,
	Players = nil,
	CurrentOperator = nil,
	LastOperator = nil,
}
function MJScene.Initialize()
	if MJScene.IsInitialized == false then
	end
end
function MJScene.Begin()
	UIManager.OpenWindow(UIType.UI_Load);
	AssetManager.LoadScene(SceneType.MJScene);
	MJScene.Players = {};
end
function MJScene.Update()
end
function MJScene.End()
	MJScene.UnRegisterNetEvent();
	MJScene.Players = nil;
	MJScene.CurrentOperator = nil;
	MJScene.LastOperator = nil;
end
function MJScene.OnSceneWasLoaded()
	Log.Info("MJScene.OnSceneWasLoaded: now bein to open majiang ui and request game fb info or reconnect info.");
	UIManager.OpenWindow(UIType.UI_MaJiang);
	MJScene.RegisterNetEvent();
	MJScene.RequestAllPlayerInfo();
end
function MJScene.RegisterNetEvent()
	-- 新玩家进入;
	NetManager.RegisterEvent(GameMessage.GM_BATTLE_NEW_CHARACTER, MJScene.ReturnGamePlayerInfo);
	-- 玩家手牌信息;
	NetManager.RegisterEvent(GameMessage.GM_HANDCARD_INFO, MJScene.ReturnHandCardInfo);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_PLAYER_OPERATOR, MJScene.ReturnPlayerOutCard);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_CAN_OPERATOR, MJScene.ReturnCanOperatorType);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_READY, MJScene.NotifyOneReady);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_BATTLEENDTIME, MJScene.ReturnAllReady);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_HuPai_OPERATOR, MJScene.ReturnPlayerHu);
	NetManager.RegisterEvent(GameMessage.GM_BROADCAST_BATTLESCENE_LEAVE, MJScene.NotifyPlayerLeave);
	NetManager.RegisterEvent(GameMessage.GM_ANSWER_FACE_RETURN, MJScene.NotifyChat);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_TRUSTTEE, MJScene.NotifyTrust);
	NetManager.RegisterEvent(GameMessage.GM_NOTIFY_WANTCLOSEROOM, MJScene.NotifyDissolveRoom);
	NetManager.RegisterEvent(GameMessage.GM_CHOOSE_IS_CLOSEROOM_RETURN, MJScene.ChooseDissolveRoom);
	NetManager.RegisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, MJScene.ReturnRoomMasterDissolve);
	--返回最终结算;
	NetManager.RegisterEvent(GameMessage.GM_ROOMCARDRESULT_RETURN, MJScene.ReturnShowLastResult);
	-- 比赛场积分发生变化;
	NetManager.RegisterEvent(GameMessage.GM_MATCH_RATE_RETURN, MJScene.ReturnRoomRate);
	--掷骰子返回
	NetManager.RegisterEvent(GameMessage.GM_PlayerRollTouZi_Request, MJScene.ReturnCastDice);
	NetManager.RegisterEvent(GameMessage.GM_MJOperator_Error, MJScene.ReturnOperateError);
end
function MJScene.UnRegisterNetEvent()
	NetManager.UnregisterEvent(GameMessage.GM_BATTLE_NEW_CHARACTER, MJScene.ReturnGamePlayerInfo);
	NetManager.UnregisterEvent(GameMessage.GM_HANDCARD_INFO, MJScene.ReturnHandCardInfo);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_PLAYER_OPERATOR, MJScene.ReturnPlayerOutCard);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_CAN_OPERATOR, MJScene.ReturnCanOperatorType);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_READY, MJScene.NotifyOneReady);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_BATTLEENDTIME, MJScene.ReturnAllReady);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_HuPai_OPERATOR, MJScene.ReturnPlayerHu);
	NetManager.UnregisterEvent(GameMessage.GM_BROADCAST_BATTLESCENE_LEAVE, MJScene.NotifyPlayerLeave);
	NetManager.UnregisterEvent(GameMessage.GM_ANSWER_FACE_RETURN, MJScene.NotifyChat);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_TRUSTTEE, MJScene.NotifyTrust);
	NetManager.UnregisterEvent(GameMessage.GM_NOTIFY_WANTCLOSEROOM, MJScene.NotifyDissolveRoom);
	NetManager.UnregisterEvent(GameMessage.GM_CHOOSE_IS_CLOSEROOM_RETURN, MJScene.ChooseDissolveRoom);
	NetManager.UnregisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, MJScene.ReturnRoomMasterDissolve);
	NetManager.UnregisterEvent(GameMessage.GM_ROOMCARDRESULT_RETURN, MJScene.ReturnShowLastResult);
	NetManager.UnregisterEvent(GameMessage.GM_MATCH_RATE_RETURN, MJScene.ReturnRoomRate);
	NetManager.UnregisterEvent(GameMessage.GM_PlayerRollTouZi_Request, MJScene.ReturnCastDice);
	NetManager.UnregisterEvent(GameMessage.GM_MJOperator_Error, MJScene.ReturnOperateError);
end
function MJScene.AddPlayer(ui, player)
	if MJScene.Players[ui] == nil then
		MJScene.Players[ui] = player;
	end
end
function MJScene.RemovePlayer(id)
	for key, value in pairs(MJScene.Players) do
		if key == id then
			table.remove(MJScene.Players, key);
		end
	end
end
function MJScene.InitPlayerData(data)
end
function MJScene.CreatePlayer()
end
-- 根据角标的位置获取玩家对象 
function MJScene.GetPlayerByUIPosition(pos)
	local str = "UI_Player" .. tostring(pos);
	for key, value in pairs(MJScene.Players) do
		if key ~= nil and key.name == str then
			return value;
		end
	end
end
-- 根据真实位置获取玩家对象
function MJScene.GetPlayerByPosition(pos)
	for key, value in pairs(MJScene.Players) do
		if value ~= nil and value.MJData.m_RoleData.m_Postion == pos then
			return value;
		end
	end
end
-- 根据ID获取玩家对象
function MJScene.GetPlayerByID(id)
	for key, value in pairs(MJScene.Players) do
		if value ~= nil and value.MJData.m_RoleData.m_Roleid == id then
			return value;
		end
	end
end
-- 当前是否是我的回合
function MJScene.IsMyTurn()
	if MJScene.CurrentOperator == nil or MJScene.CurrentOperator.Player == nil or MJScene.CurrentOperator.Player ~= MJPlayer.Hero then
		return false;
	else
		return true;
	end
end
function MJScene.RequestCloseRoom()
	local msg =
	{
		m_RoleID = MJPlayer.Hero.MJData.m_RoleData.m_Roleid,
		m_FBID = SharedVariable.FBInfo.m_FBID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MASTERCLOSEROOM_REQUEST, PBMessage.GM_LoginFBServer, msg);
end
-- 请求玩家位置，庄家是谁
function MJScene.RequestAllPlayerInfo()
	local msg =
	{
		m_FBID = SharedVariable.FBInfo.m_FBID,
		m_RoleID = Player.FullInfo.id,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_ALL_CHARACTERINFO, PBMessage.GM_LoginFBServer, msg);
end
-- 请求准备，0取消准备，1准备;
function MJScene.RequestReady(status)
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
function MJScene.RequestCastDice()
	local msg = {
		m_roleid = MJPlayer.Hero.MJData.m_RoleData.m_Roleid,
		m_pos = MJPlayer.Hero.MJData.m_RoleData.m_Postion,
	};
	Log.Info("MJScene.RequestCastDic: roleid is " .. MJPlayer.Hero.MJData.m_RoleData.m_Roleid .. ",pos is " .. MJPlayer.Hero.MJData.m_RoleData.m_Postion);
	NetManager.SendEventToLogicServer(GameMessage.GM_PlayerRollTouZi_Request, PBMessage.GM_PlayerRollRequest, msg);
end
function MJScene.ReceiveCloseRoom(evt)
	Log.Info("MJScene.ReceiveCloseRoom");
end
-- 请求麻将过
function MJScene.RequestMJOperate_Guo()
	local cardNum = # MJPlayer.Hero.HandCardInfo.m_HandCard;
	Log.Info("MJScene.RequestMJOperate_Guo: current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_GUO;
	msg.m_CardNum = cardNum;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end
-- 请求麻将胡
function MJScene.RequestMJOperate_Hu()
	local cardNum = # MJPlayer.Hero.HandCardInfo.m_HandCard;
	Log.Info("MJScene.RequestMJOperate_Hu: current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_HU;
	msg.m_CardNum = cardNum;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end
-- 请求麻将定胡
function MJScene.RequestMJOperate_DingHu()
	Log.Info("MJScene.RequestMJOperate_DingHu");
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_DingHU;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end
-- 请求麻将过
function MJScene.RequestMJOperate_Pass()
	local cardNum = # MJPlayer.Hero.HandCardInfo.m_HandCard;
	Log.Info("MJScene.RequestMJOperate_Pass: current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_GUO;
	msg.m_CardNum = cardNum;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end
-- 请求麻将出牌
function MJScene.RequestMJOperate_OutCard(card)
	local cardNum = # MJPlayer.Hero.HandCardInfo.m_HandCard;
	Log.Info("MJScene.RequestMJOperate_OutCard: current cards count is " .. cardNum .. ",card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_SendCard;
	msg.m_CardNum = cardNum;
	msg.m_HandCard = {
		card,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end
-- 请求麻将操作
function MJScene.RequestMJOperate(operateType)
	local cardNum = # MJPlayer.Hero.HandCardInfo.m_HandCard;
	Log.Info("MJScene.RequestMJOperate: operate type is " .. MaJiangOperatorType.GetString(operateType) .. ",current cards count is " .. cardNum);
	local msg = {};
	msg.m_OperatorType = operateType;
	msg.m_CardNum = # MJPlayer.Hero.HandCardInfo.m_HandCard;
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end
-- 返回玩家位置，庄家是谁，有玩家进入就会调用一次
function MJScene.ReturnGamePlayerInfo(evt)
	Log.Info("MJScene.ReturnGamePlayerInfo");
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleEntryInfo, evt);
	if msg == false then
		Log.Error("MJScene.ReturnGamePlayerInfo: parse msg error struct name is " .. PBMessage.GM_BattleEntryInfo);
	end
	local roomMasterID = msg.m_RoomMasterID;
	Log.Info("MJScene.ReturnGamePlayerInfo: RoomMasterID is " .. roomMasterID .. ",current player count is " .. # msg.m_Character);
	SharedVariable.FBEntryInfo = msg;
	-- 计算desk offset,并设置骰子面板的朝向
	if MJSceneController.IsSetupDicePanelRotation == false then
		for i = 1, # SharedVariable.FBEntryInfo.m_Character do
			local playerEntry = SharedVariable.FBEntryInfo.m_Character[i];
			if playerEntry ~= nil and playerEntry.m_RoleData ~= nil and playerEntry.m_RoleData.m_Roleid == Player.FullInfo.id then
				local pos = playerEntry.m_RoleData.m_Postion;
				SharedVariable.DeskOffset = pos;
				if SharedVariable.FBInfo.m_FBTypeID == RoomType.R_1 then
					SharedVariable.DeskOffset = SharedVariable.DeskOffset * 2;
				end
			end
		end
		Log.Info("MJScene.ReturnGamePlayerInfo: desk offset is " .. SharedVariable.DeskOffset);
		-- MJSceneController.SetupDicePanelDirection();
		-- MJSceneController.IsSetupDicePanelRotation = true;
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
				MJScene.AddPlayer(UI_Player0.transform, UI_Player0.Player);
				UI_Player0.Player:SetupUI();
			elseif uiIndex == 1 then
				UI_Player1.Player:SetMJData(playerEntry);
				MJScene.AddPlayer(UI_Player1.transform, UI_Player1.Player);
				UI_Player1.Player:SetupUI();
			elseif uiIndex == 2 then
				UI_Player2.Player:SetMJData(playerEntry);
				MJScene.AddPlayer(UI_Player2.transform, UI_Player2.Player);
				UI_Player2.Player:SetupUI();
			elseif uiIndex == 3 then
				UI_Player3.Player:SetMJData(playerEntry);
				MJScene.AddPlayer(UI_Player3.transform, UI_Player3.Player);
				UI_Player3.Player:SetupUI();
			end
			local str = "玩家 " .. playerEntry.m_RoleData.m_Name .. " 进入房间";
			UIManager.OpenTipsDialog(str);
		end
	end
	MJSceneController.SetupDicePanelDirection();
	MJSceneController.IsSetupDicePanelRotation = true;
	UIManager.CloseAllWindowsExcept(UIType.UI_MaJiang);
end
function MJScene.ReturnHandCardInfo(evt)
	Log.Info("MJScene.ReturnHandCardInfo");
	local msg = NetManager.DecodeMsg(PBMessage.GMHandCard, evt);
	if msg == false then
		Log.Error("MJScene.ReturnHandCardInfo: parse msg error," .. PBMessage.GMHandCard);
		return;
	end
	MJPlayer.Hero:SetHandCardInfo(msg);
	for key, value in pairs(MJScene.Players) do
		if value ~= nil then
			value:StartGame();
		end
	end
	UI_MaJiang.SetupCastDice(true);
	UI_MaJiang.SetupReadyAndInvite(false, false, false);
end
function MJScene.ReturnPlayerOutCard(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_MJOperator, evt);
	if msg == false then
		Log.Error("MJScene.ReturnPlayerOutCard: parse msg error," .. PBMessage.GM_MJOperator);
		return;
	end
	local player = MJScene.GetPlayerByID(msg.m_roleid);
	if player == nil then
		Log.Error("MJScene.ReturnPlayerOutCard: can not get player id is " .. msg.m_roleid);
		return;
	end
	Log.Info("MJScene.ReturnPlayerOutCard: operator id is " .. msg.m_roleid .. ",operate type is " .. MaJiangOperatorType.GetString(msg.m_OperatorType) .. ", m_LastCard.m_Index is " .. msg.m_LastCard.m_Index .. " and m_Type is " .. msg.m_LastCard.m_Type .. ", m_HandCard.count is " .. # msg.m_HandCard);
	if msg.m_OperatorType == MaJiangOperatorType.MJOT_BEGIN then
		MJScene.LastOperator = MJScene.CurrentOperator;
		MJScene.CurrentOperator = {Player = player, Data = msg};
		if MJScene.LastOperator ~= nil and MJScene.LastOperator.Player ~= nil then
			MJScene.LastOperator.Player:PlayUIScaleAndDicePanelGrow(false);
		end
		MJScene.CurrentOperator.Player:PlayUIScaleAndDicePanelGrow(true);
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
function MJScene.ReturnCanOperatorType(evt)
	Log.Info("MJScene.ReturnCanOperatorType");
	local msg = NetManager.DecodeMsg(PBMessage.GM_MJCanOperator, evt);
	if msg == false then
		Log.Error("MJScene.ReturnCanOperatorType: parse msg error," .. PBMessage.GM_MJCanOperator);
		return;
	end
	-- List<PBMessage.GM_OperatorData> tempList = tempData.m_Operator;  /
	local operatorsData = msg.m_Operator;
	local a = 1;
	UIManager.OpenTipsDialog("直接过");
	MJScene.RequestMJOperate_Guo();
end
function MJScene.NotifyOneReady(evt)
	Log.Info("MJScene.NotifyOneReady");
	local msg = NetManager.DecodeMsg(PBMessage.GM_Result, evt);
	if msg == false then
		Log.Error("MJScene.NotifyOneReady: parse msg error," .. PBMessage.GM_Result);
		return;
	end
	local player = MJScene.GetPlayerByID(msg.m_Result);
	if player ~= nil then
		local status = msg.m_productid == 1;
		-- Log.Info("MJScene.NotifyOneReady: " .. tostring(status) .. ",name is " .. player.transform.name);
		player:SetupReady(status);
	end
end
function MJScene.ReturnAllReady(evt)
	Log.Info("MJScene.ReturnAllReady");
	local msg = NetManager.DecodeMsg(PBMessage.GM_NotifyBattleEndTime, evt);
	UIManager.OpenTipsDialog("对局开始");
end
function MJScene.ReturnPlayerHu(evt)
	Log.Info("MJScene.ReturnPlayerHu");
end
function MJScene.NotifyPlayerLeave(evt)
	Log.Info("MJScene.NotifyPlayerLeave");
	local msg = NetManager.DecodeMsg(PBMessage.GM_LeaveBattle, evt);
	if msg == false then
		Log.Error("MJScene.NotifyPlayerLeave: parse msg error: " .. PBMessage.GM_LeaveBattle);
		return;
	end
	local player = MJScene.GetPlayerByID(msg.roleID);
	if player ~= nil then
		local str = "玩家 " .. player.MJData.m_RoleData.m_Name .. " 离开房间";
		UIManager.OpenTipsDialog(str);
		player:SetupEnterAndLeave(false, true);
	end
end
function MJScene.NotifyChat(evt)
	Log.Info("MJScene.NotifyChat");
end
function MJScene.NotifyTrust(evt)
	Log.Info("MJScene.NotifyTrust");
end
-- 有玩家发起解散房间
function MJScene.NotifyDissolveRoom(evt)
	Log.Info("MJScene.NotifyDissolveRoom");
	local msg = NetManager.DecodeMsg(PBMessage.GM_Result, evt);
	if msg == false then
		if msg == false then
			Log.Error("MJScene.NotifyDissolveRoom: parse msg error: " .. PBMessage.GM_Result);
			return;
		end
		return;
	end
	UIManager.OpenWindow(UIType.UI_DissolveRoom);
	UI_DissolveRoom.DissolveID = msg.m_Result;
end
function MJScene.ChooseDissolveRoom(evt)
	Log.Info("MJScene.ChooseDissolveRoom");
end
function MJScene.ReturnRoomMasterDissolve(evt)
	Log.Info("MJScene.ReturnRoomMasterDissolve");
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
function MJScene.ReturnShowLastResult(evt)
	Log.Info("MJScene.ReturnShowLastResult");
end
function MJScene.ReturnRoomRate(evt)
	Log.Info("MJScene.ReturnRoomRate");
end
function MJScene.ReturnCastDice(evt)
	Log.Info("MJScene.ReturnCastDice");
	local msg = NetManager.DecodeMsg(PBMessage.GM_PlayerRollRequest, evt);
	if msg == false then
		Log.Error("MJScene.ReturnCastDice: parse msg error: " .. PBMessage.GM_PlayerRollRequest);
		return;
	end
	Log.Info("MJScene.ReturnCastDice: dice number is : " .. msg.m_pos);
	UI_MaJiang.SetupCastDice(false);
	MJSceneController.PlayDiceAnimation(MJPlayer.Hero.HandCardInfo.m_saizi[1], MJPlayer.Hero.HandCardInfo.m_saizi[2], nil);
	MJSceneController.PlayDeskAnimation(function()
		MJScene.PlayStartGameEffect();
	end);
end
function MJScene.ReturnOperateError(evt)
	Log.Info("MJScene.ReturnOperateError");
	UIManager.OpenTipsDialog("操作失败");
end
function MJScene.PlayStartGameEffect()
	for key, value in pairs(MJScene.Players) do
		value:DisplayCards(true);
	end
end 
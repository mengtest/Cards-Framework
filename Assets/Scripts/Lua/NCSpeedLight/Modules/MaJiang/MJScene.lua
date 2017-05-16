-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: MJScene.lua
-- Describle:   麻将场景
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
require("NCSpeedLight.Modules.MaJiang.UI_MJPlayback")

MJScene =
{
	Name = SceneName.MJScene,
	
	IsInitialized = false,
	
	DiceNumbers = nil,
	
	-- 从第几墩开始取牌
	GetCardNumber = 0,
	
	-- 从谁的面前取牌
	GetCardRoleID = 0,
	
	Players = nil,
	
	CurrentOperator = nil,
	
	LastOperator = nil,
	
	-- 当前结算信息
	CurrentResultInfo = nil,
	
	-- 总结算信息
	TotalResultInfo = nil,
	
	-- 聊天的历史记录
	ChatHistory = nil,
}

function MJScene.Initialize()
	if MJScene.IsInitialized == false then
	end
end

function MJScene.Begin()
	Log.Info("MJScene.Begin");
	HallScene.SwitchFBStatus(FBStatus.WaitingPlayer);
	if HallScene.CurrentFBPlaybackMode == false then
		HallScene.CurrentFBTotalRound = HallScene.CurrentFBInfo.m_gameCount;
	end
	UIManager.OpenWindow(UIName.UI_SceneLoad);
	AssetManager.LoadScene(SceneName.MJScene);
	MJScene.Players = {};
	ChatHistory = {};
end

function MJScene.Update()
end

function MJScene.End()
	MJScene.UnRegisterNetEvent();
	MJScene.Players = nil;
	MJScene.CurrentOperator = nil;
	MJScene.LastOperator = nil;
	HallScene.CurrentFBNeedReconnect = false;
	HallScene.CurrentFBPlaybackMode = false;
	HallScene.CurrentFBRound = 0;
	HallScene.CurrentFBFinishedRound = 0;
	Log.Info("MJScene.End");
end

function MJScene.OnSceneWasLoaded()
	Log.Info("MJScene.OnSceneWasLoaded: now bein to open majiang ui and request game fb info or reconnect info.");
	if HallScene.CurrentFBPlaybackMode == false then
		RongCloudAdapter.Initialize(MJScene.OnReceiveVoiceMsg);
	end
	UIManager.OpenWindow(UIName.UI_MaJiang);
	MJScene.RegisterNetEvent();
	if HallScene.CurrentFBPlaybackMode == false then
		if HallScene.CurrentFBNeedReconnect then
			MJScene.RequestReconnectInfo();
		else
			MJScene.RequestAllPlayerInfo();
		end
	else
		UI_MaJiang.OnPlaybackMode();
		UI_MJPlayback.Play();
	end
end

function MJScene.OnApplicationPause(status)
	if status then
		Log.Info("MJScene.OnApplicationPause: 游戏进程暂停");
	else
		Log.Info("MJScene.OnApplicationPause: 游戏进程恢复，开始请求重连数据");
		MJScene.RequestReconnectInfo();
	end
end

function MJScene.OnApplicationFocus(status)
end

function MJScene.OnConnectToLogicServer()
end

function MJScene.OnReconnectToLogicServer()
	Log.Info("MJScene.OnReconnectToLogicServer");
	MJScene.RequestReconnectInfo();
end

function MJScene.OnDisconnectFromLogicServer()
	Log.Info("MJScene.OnDisconnectFromLogicServer");
end

-- 继续游戏
function MJScene.OnceAgain()
	Log.Info("MJScene.OnceAgain: 继续游戏");
	MJScene.Reset();
	MJScene.RequestReady(1);
end

-- 重置场景
function MJScene.Reset()
	Log.Info("MJScene.Reset()");
	MJSceneController.Reset();
	UI_MaJiang.Reset();
	for key, value in pairs(MJScene.Players) do
		value:Reset();
	end
end

function MJScene.RegisterNetEvent()
	Log.Info("MJScene.RegisterNetEvent");
	-- 新玩家进入;
	NetManager.RegisterEvent(GameMessage.GM_BATTLE_NEW_CHARACTER, MJScene.ReturnGamePlayerInfo);
	NetManager.RegisterEvent(GameMessage.GM_PLAYERJOINBATTLEAGAIN_RETRUN, MJScene.ReturnReconnectInfo);
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
	Log.Info("MJScene.UnRegisterNetEvent");
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

-- 保存聊天记录
function MJScene.AddChatHistory(roleID, type, content, duration, isRead)
	if MJScene.ChatHistory == nil then MJScene.ChatHistory = {}; end
	local item = {};
	item.RoleID = tonumber(roleID);
	item.Type = type;
	item.Content = content;
	item.Duration = duration;
	item.IsRead = isRead;
	item.GO = nil;
	table.insert(MJScene.ChatHistory, item);
	if UI_MJChat ~= nil then
		UI_MJChat.RefreshHistory();
	end
end

function MJScene.HasPlayer(player)
	if player == nil then return false end;
	for i = 1, #MJScene.Players do
		if player == MJScene.Players[i] then
			return true;
		end
	end
	return false;
end

function MJScene.AddPlayer(player)
	if MJScene.HasPlayer(player) then return false end;
	table.insert(MJScene.Players, player);
end

function MJScene.RemovePlayer(player)
	for i = 1, #MJScene.Players do
		if player == MJScene.Players[i] then
			table.remove(MJScene.Players, i);
			return true;
		end
	end
	return false;
end

-- 设置庄家
function MJScene.SetupBanker()
	for i = 1, #MJScene.Players do
		local player = MJScene.Players[i];
		if player.ServerPosition == HallScene.CurrentFBBankerPosition then
			MJPlayer.Banker = player;
		end
		UI_MJPlayer.SetBanker(player.UI);
	end
end

-- 设置房主
function MJScene.SetupMaster()
	local player = MJScene.GetPlayerByID(HallScene.CurrentFBMasterID);
	MJPlayer.RoomMaster = player;
end

-- 根据角标的位置获取玩家对象 
function MJScene.GetPlayerByUIPosition(pos)
	local str = "Player" .. tostring(pos);
	for key, value in pairs(MJScene.Players) do
		if value ~= nil and value.UI ~= nil and value.UI.transform.name == str then
			return value;
		end
	end
end

-- 根据真实位置获取玩家对象
function MJScene.GetPlayerByServerPosition(pos)
	for key, value in pairs(MJScene.Players) do
		if value ~= nil and value.ServerPosition == pos then
			return value;
		end
	end
end

-- 根据ID获取玩家对象
function MJScene.GetPlayerByID(id)
	for key, value in pairs(MJScene.Players) do
		if value ~= nil and value.ID == id then
			return value;
		end
	end
end

-- 获取玩家的个数
function MJScene.GetPlayerCount()
	return #MJScene.Players;
end

-- 当前是否是我的回合
function MJScene.IsMyTurn()
	if MJScene.CurrentOperator == nil or MJScene.CurrentOperator ~= MJPlayer.Hero then
		return false;
	else
		return true;
	end
end

-- 获取当前麻将的玩法
function MJScene.GetMJPlaywayStr()
	local playway = "";
	if HallScene.CurrentFBPlayway == nil then
		Log.Info("MJScene.GetMJPlaywayStr: error,HallScene.CurrentFBPlayway is nil.");
	end
	local playwayType = Utility.SplitString(HallScene.CurrentFBPlayway, ",");
	for i = 1, #playwayType do
		local playwayEnum = MJPlayWay.ToString(tonumber(playwayType[i]));
		local str = MJPlayWayStr[playwayEnum];
		if str == nil then
			Log.Info("MJScene.GetMJPlaywayStr: error,playway str is " .. HallScene.CurrentFBPlayway);
		else
		end
		playway = playway .. MJPlayWayStr[MJPlayWay.ToString(tonumber(playwayType[i]))];
		if i ~= #playwayType then
			playway = playway .. " · ";
		end
	end
	return playway;
end

-- 判断当前的牌是不是精
function MJScene.CardIsJing(type)
end

function MJScene.RequestCloseRoom()
	local msg =
	{
		m_RoleID = Player.ID,
		m_FBID = HallScene.CurrentFBID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MASTERCLOSEROOM_REQUEST, PBMessage.GM_LoginFBServer, msg);
end

-- 请求玩家位置，庄家是谁
function MJScene.RequestAllPlayerInfo()
	Log.Info("MJScene.RequestAllPlayerInfo");
	local msg =
	{
		m_FBID = HallScene.CurrentFBID,
		m_RoleID = Player.ID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_ALL_CHARACTERINFO, PBMessage.GM_LoginFBServer, msg);
end

-- 请求断线重连信息
function MJScene.RequestReconnectInfo()
	Log.Info("MJScene.RequestReconnectInfo:");
	local msg = {};
	msg.m_RoleID = Player.ID;
	msg.m_FBID = HallScene.CurrentFBID;
	NetManager.SendEventToLogicServer(GameMessage.GM_PLAYERJOINBATTLEAGAIN_REQUEST, PBMessage.GM_LoginFBServer, msg);
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
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_SEND_READY, PBMessage.GM_LeaveBattle, msg);
end

-- 请求投掷骰子
function MJScene.RequestCastDice()
	local msg = {
		m_roleid = MJPlayer.Hero.ID,
		m_pos = MJPlayer.Hero.ServerPosition,
	};
	Log.Info("MJScene.RequestCastDic: roleid is " .. MJPlayer.Hero.ID .. ",pos is " .. MJPlayer.Hero.ServerPosition);
	NetManager.SendEventToLogicServer(GameMessage.GM_PlayerRollTouZi_Request, PBMessage.GM_PlayerRollRequest, msg);
end

function MJScene.ReceiveCloseRoom(evt)
	Log.Info("MJScene.ReceiveCloseRoom");
end

-- 请求麻将过
function MJScene.RequestMJOperate_Guo()
	Log.Info("MJScene.RequestMJOperate_Guo: current cards count is " .. MJPlayer.Hero:GetHandCardCount());
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_GUO;
	msg.m_CardNum = MJPlayer.Hero:GetHandCardCount();
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将胡
function MJScene.RequestMJOperate_Hu()
	Log.Info("MJScene.RequestMJOperate_Hu: current cards count is " .. MJPlayer.Hero:GetHandCardCount());
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_HU;
	msg.m_CardNum = MJPlayer.Hero:GetHandCardCount();
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
	Log.Info("MJScene.RequestMJOperate_Pass: current cards count is " .. MJPlayer.Hero:GetHandCardCount());
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_GUO;
	msg.m_CardNum = MJPlayer.Hero:GetHandCardCount();
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将出牌
function MJScene.RequestMJOperate_OutCard(card)
	Log.Info("MJScene.RequestMJOperate_OutCard: current cards count is " .. MJPlayer.Hero:GetHandCardCount() .. ",card index is " .. card.m_Index .. ",type is " .. MaJiangType.ToString(card.m_Type));
	local msg = {};
	msg.m_OperatorType = MaJiangOperatorType.MJOT_SendCard;
	msg.m_CardNum = MJPlayer.Hero:GetHandCardCount();
	msg.m_HandCard = {
		card,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 请求麻将操作
function MJScene.RequestMJOperate(msg)
	Log.Info("MJScene.RequestMJOperate: operate type is " .. MaJiangOperatorType.GetString(msg.m_OperatorType));
	NetManager.SendEventToLogicServer(GameMessage.GM_CLIENT_REQUEST_OPERATOR, PBMessage.GM_OperatorData, msg);
end

-- 返回玩家位置，庄家是谁，有玩家进入就会调用一次
function MJScene.ReturnGamePlayerInfo(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_BattleEntryInfo, evt);
	if msg == false then
		Log.Error("MJScene.ReturnGamePlayerInfo: parse msg error struct name is " .. PBMessage.GM_BattleEntryInfo);
		return;
	end
	Log.Info("MJScene.ReturnGamePlayerInfo: RoomMasterID is " .. HallScene.CurrentFBMasterID .. ",current player count is " .. #msg.m_Character);
	HallScene.CurrentFBMasterID = msg.m_RoomMasterID;
	local hero = MJScene.GetPlayerByID(Player.ID);
	if hero == nil then
		-- 先创建自己的数据
		for i = 1, #msg.m_Character do
			local playerEntry = msg.m_Character[i];
			if playerEntry.m_RoleData.m_Roleid == Player.ID then
				hero = MJPlayer.New();
				MJPlayer.Hero = hero;
				local nickName = playerEntry.m_RoleData.m_NickName;
				if string.len(nickName) == 0 then
					nickName = playerEntry.m_RoleData.m_Name;
				end
				hero:SetData(playerEntry.m_RoleData.m_Roleid,
				playerEntry.m_RoleData.m_Name,
				nickName,
				playerEntry.m_RoleData.m_HeadPhotoUrl,
				playerEntry.m_RoleData.m_Sex,
				playerEntry.m_RoleData.m_Postion,
				playerEntry.m_isReady,
				playerEntry.m_totalScore,
				playerEntry.m_Longitude,
				playerEntry.m_Latitude,
				playerEntry.m_reallyPos);
				
				if HallScene.CurrentFBPlaybackMode == false then
					hero:SetUI();
				end
				
				MJScene.AddPlayer(hero);
				Log.Info("MJScene.ReturnGamePlayerInfo: Create hero id is " .. hero.ID .. ",server position is " .. hero.ServerPosition);
			end
		end
	end
	-- 创建其他玩家
	for i = 1, #msg.m_Character do
		local playerEntry = msg.m_Character[i];
		if playerEntry ~= nil and playerEntry.m_RoleData ~= nil then
			local player = MJScene.GetPlayerByID(playerEntry.m_RoleData.m_Roleid);
			if player == nil then
				player = MJPlayer.New();
				local nickName = playerEntry.m_RoleData.m_NickName;
				if string.len(nickName) == 0 then
					nickName = playerEntry.m_RoleData.m_Name;
				end
				player:SetData(playerEntry.m_RoleData.m_Roleid,
				playerEntry.m_RoleData.m_Name,
				nickName,
				playerEntry.m_RoleData.m_HeadPhotoUrl,
				playerEntry.m_RoleData.m_Sex,
				playerEntry.m_RoleData.m_Postion,
				playerEntry.m_isReady,
				playerEntry.m_totalScore,
				playerEntry.m_Longitude,
				playerEntry.m_Latitude,
				playerEntry.m_reallyPos);
				
				if HallScene.CurrentFBPlaybackMode == false then
					player:SetUI();
				end
				
				MJScene.AddPlayer(player);
				Log.Info("MJScene.ReturnGamePlayerInfo: Create a player id is " .. player.ID .. ",server position is " .. player.ServerPosition);
			end
		end
	end
	MJScene.SetupMaster();
	MJSceneController.SetPlayway();
	UIManager.CloseAllWindowsExcept(UIName.UI_MaJiang);
end

-- 收到断线重连信息
function MJScene.ReturnReconnectInfo(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_ReconnectMJData, evt);
	if msg == false then
		Log.Error("MJScene.ReturnReconnectInfo: parse msg error," .. PBMessage.GM_ReconnectMJData);
		return;
	end
	MJScene.Reset();
	Log.Info("MJScene.ReturnReconnectInfo: 收到重连信息");
	local msg = NetManager.DecodeMsg(PBMessage.GM_ReconnectMJData, evt);
	if msg == false then
		Log.Error("MJScene.ReturnReconnectInfo: parse msg error," .. PBMessage.GM_ReconnectMJData);
		return;
	end
	Log.Info("MJScene.ReturnReconnectInfo: 庄家的位置：" .. msg.m_bankerPos);
	Log.Info("MJScene.ReturnReconnectInfo: 房主的ID：" .. msg.m_RoomMasterID);
	Log.Info("MJScene.ReturnReconnectInfo: 剩余牌数：" .. msg.m_FreeCard);
	Log.Info("MJScene.ReturnReconnectInfo: 剩余局数：" .. msg.m_leftCount);
	Log.Info("MJScene.ReturnReconnectInfo: 总局数：" .. msg.m_totalCount);
	Log.Info("MJScene.ReturnReconnectInfo: 当前骰子转的次数：" .. msg.m_rollCount);
	Log.Info("MJScene.ReturnReconnectInfo: 麻将的人数：" .. msg.m_playerCount);
	Log.Info("MJScene.ReturnReconnectInfo: 打出最后一张牌的角色id：" .. msg.m_lastOutCardRoleId);
	Log.Info("MJScene.ReturnReconnectInfo: 解散房间剩余的时间：" .. msg.m_closeRoomLeftTime);
	if msg.m_huLastCard ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 最后被胡的那张牌：" .. msg.m_huLastCard);
	end
	Log.Info("MJScene.ReturnReconnectInfo: 从谁面前取牌：" .. msg.m_getCardId);
	Log.Info("MJScene.ReturnReconnectInfo: 从第几墩取牌：" .. msg.m_getCardNum);
	Log.Info("MJScene.ReturnReconnectInfo: 当前出牌人的ID（等到操作时赋值0）：" .. msg.m_sendCardID);
	Log.Info("MJScene.ReturnReconnectInfo: 房间玩法：" .. msg.m_fbplayway);
	if msg.m_saizi ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 筛子次数，以及内容：" .. #msg.m_saizi);
	end
	if msg.m_HandCard ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 手牌信息：" .. #msg.m_HandCard);
	end
	if msg.m_AllData ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 其他玩家信息：" .. #msg.m_AllData);
	end
	if msg.m_CloseRoomData ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 解散房间信息：" .. #msg.m_CloseRoomData);
	end
	if msg.m_huOperatorData ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 存在结算信息");
	end
	
	HallScene.CurrentFBBankerPosition = msg.m_bankerPos; -- 庄家的位置
	HallScene.CurrentFBMasterID = msg.m_RoomMasterID; -- 房主的位置
	MJScene.DiceNumbers = msg.m_saizi; -- 骰子的点数
	MJScene.GetCardRoleID = msg.m_getCardId;
	MJScene.GetCardNumber = msg.m_getCardNum;
	HallScene.CurrentFBPlayway = msg.m_fbplayway;
	HallScene.CurrentFBRound = msg.m_leftCount;
	HallScene.CurrentFBTotalRound = msg.m_totalCount;
	HallScene.CurrentFBFinishedRound = HallScene.CurrentFBRound - 1;
	if HallScene.CurrentFBFinishedRound < 0 then
		HallScene.CurrentFBFinishedRound = 0;
	end
	HallScene.CurrentFBCloseTime = msg.m_closeRoomLeftTime;
	
	-- player 为空，则代表当前场景内没有玩家，这时开始创建玩家
	if MJScene.GetPlayerCount() == 0 then
		-- 创建主角
		for i = 1, #msg.m_AllData do
			local data = msg.m_AllData[i];
			if data.m_roleid == Player.ID then
				local player = MJPlayer.New();
				MJPlayer.Hero = player;
				local nickName = data.m_NickName;
				if string.len(nickName) == 0 then
					nickName = data.m_Name;
				end
				player:SetData(data.m_roleid,
				data.m_Name,
				nickName,
				data.m_HeadPhotoUrl,
				data.m_Sex,
				data.m_Postion,
				data.m_IsReady,
				data.m_TotalScore,
				data.m_Longitude,
				data.m_Latitude,
				data.m_reallyPos);
				player:SetUI(true);
				MJScene.AddPlayer(player);
				Log.Info("MJScene.ReturnReconnectInfo: Create hero id is " .. player.ID .. ",server position is " .. player.ServerPosition);
			end
		end
		
		-- 创建其他玩家
		for i = 1, #msg.m_AllData do
			local data = msg.m_AllData[i];
			local player = MJScene.GetPlayerByID(data.m_roleid);
			if player == nil then
				player = MJPlayer.New();
				local nickName = data.m_NickName;
				if string.len(nickName) == 0 then
					nickName = data.m_Name;
				end
				player:SetData(data.m_roleid,
				data.m_Name,
				nickName,
				data.m_HeadPhotoUrl,
				data.m_Sex,
				data.m_Postion,
				data.m_IsReady,
				data.m_TotalScore,
				data.m_Longitude,
				data.m_Latitude,
				data.m_reallyPos);
				player:SetUI();
				MJScene.AddPlayer(player);
				Log.Info("MJScene.ReturnReconnectInfo: Create player id is " .. player.ID .. ",server position is " .. player.ServerPosition);
			end
		end
	else
		-- 创建其他玩家
		for i = 1, #msg.m_AllData do
			local data = msg.m_AllData[i];
			local player = MJScene.GetPlayerByID(data.m_roleid);
			if player ~= nil then
				local nickName = data.m_NickName;
				if string.len(nickName) == 0 then
					nickName = data.m_Name;
				end
				player:SetData(data.m_roleid,
				data.m_Name,
				nickName,
				data.m_HeadPhotoUrl,
				data.m_Sex,
				data.m_Postion,
				data.m_IsReady,
				data.m_TotalScore,
				data.m_Longitude,
				data.m_Latitude,
				data.m_reallyPos);
				player:SetUI();
			end
		end
	end
	
	-- 设置房主
	MJScene.SetupMaster();
	
	-- 设置玩法
	MJSceneController.SetPlayway();
	
	if msg.m_FreeCard == MJDefine.TOTAL_CARD_COUNT then
		-- 对局还没开始
		Log.Info("MJScene.ReturnReconnectInfo: 对局还没开始");
		HallScene.SwitchFBStatus(FBStatus.WaitingPlayer);
	else
		-- 设置自己的手牌信息
		MJPlayer.Hero:SetHandCards(msg.m_HandCard);
		-- 设置庄家
		MJScene.SetupBanker();
		-- 隐藏准备等按钮
		UI_MaJiang.SetupReadyAndInvite(false, false, false);
		-- 计算玩家的本地位置
		for i = 1, #MJScene.Players do
			local player = MJScene.Players[i];
			MJPlayer.ComputeClientPosition(player);
		end
		-- 设置骰子面板的朝向
		MJSceneController.SetDicePanelDirection();
		if msg.m_rollCount < MJDefine.MAX_CAST_DICE_NUMBER then
			HallScene.SwitchFBStatus(FBStatus.WaitingCastDice);
			-- 已经收到手牌信息了,但还没骰子骰子
			Log.Info("MJScene.ReturnReconnectInfo: 已经收到手牌信息了,掷骰子的次数还没达到最大值，当前次数：" .. tostring(msg.m_rollCount) .. ",最大值：" .. tostring(MJDefine.MAX_CAST_DICE_NUMBER));
			for key, value in pairs(MJScene.Players) do
				value:SetupReady(false);
			end
			if MJPlayer.Hero:IsBanker() then
				UI_MaJiang.SetupCastDice(true);
			end
			-- 隐藏
			MJSceneController.SetPaidunActive(false);
		else
			HallScene.SwitchFBStatus(FBStatus.Playing);
			-- 已经收到手牌信息了,正在对局中
			Log.Info("MJScene.ReturnReconnectInfo: 已经收到手牌信息了,正在对局中");
			-- 设置当前玩家以及上一个玩家
			MJScene.LastOperator = MJScene.GetPlayerByID(msg.m_lastOutCardRoleId);
			if msg.m_sendCardID ~= 0 then
				-- 有可能是等待玩家吃碰杠操作
				MJScene.CurrentOperator = MJScene.GetPlayerByID(msg.m_sendCardID);
				UI_MJPlayer.PlayUIScaleAndDicePanelGrow(MJScene.CurrentOperator.UI, true);
				UI_MaJiang.StartOperateCountdown();
			end
			-- 设置当前回合的显示
			-- HallScene.CurrentFBRound = HallScene.CurrentFBRound + 1;
			UI_MaJiang.SetupCurrentRound();
			-- 直接显示牌墩，不播放动画
			MJSceneController.SetPaidunActive(true);
			-- 设置牌墩
			local fromPlayer = MJScene.GetPlayerByID(MJScene.GetCardRoleID);
			Log.Info("MJScene.ReturnReconnectInfo: 从" .. fromPlayer:LogTag() .. "的第【" .. tostring(MJScene.GetCardNumber) .. "】墩开始抓牌");
			MJPaidunCtrl.Initialize(fromPlayer.UIPosition, MJScene.GetCardNumber);
			-- 先隐藏所有初始抓了的牌
			local totalInitialCardCount = msg.m_playerCount * MJDefine.XIAN_INITIAL_CARD_COUNT + 1;
			MJPaidunCtrl.InactiveFront(totalInitialCardCount);
			for i = 1, #msg.m_AllData do
				local reconnectPlayerData = msg.m_AllData[i];
				local player = MJScene.GetPlayerByID(reconnectPlayerData.m_roleid);
				player:SetHandCardCount(reconnectPlayerData.m_handCardNum);
				local popFrontCount = #reconnectPlayerData.m_OutHandCard;
				local popRearCount = 0;
				for j = 1, #reconnectPlayerData.m_FunHandCardList do
					local operateData = reconnectPlayerData.m_FunHandCardList[j];
					if operateData.m_OperatorType == MaJiangOperatorType.MJOT_AN_GANG then
						popRearCount = popRearCount + 1;
						player.UI:PutAnGangCardWhenReconnect(operateData);
						player:AddOperateTotalCount();
					elseif operateData.m_OperatorType == MaJiangOperatorType.MJOT_GANG then
						popRearCount = popRearCount + 1;
						player.UI:PutGangCardWhenReconnect(operateData);
						player:AddOperateTotalCount();
					elseif operateData.m_OperatorType == MaJiangOperatorType.MJOT_BuGang then
						popRearCount = popRearCount + 1;
						player.UI:PutBuGangCardWhenReconnect(operateData);
					elseif operateData.m_OperatorType == MaJiangOperatorType.MJOT_PENG then
						player.UI:PutPengCardWhenReconnect(operateData);
						player:AddOperateTotalCount();
					end
				end
				for j = 1, #reconnectPlayerData.m_OutHandCard do
					local card = reconnectPlayerData.m_OutHandCard[j];
					local tableCard = MJSceneController.GetOneUnuseCard(card.m_Index, card.m_Type, player.ID);
					local cardPos = player.UI:GetTableCardPos(player.TableCardCount);
					tableCard:Show(cardPos, player.UI.TableCardRotation);
					player:AddTableCardCount();
				end
				MJPaidunCtrl.InactiveFront(popFrontCount);
				MJPaidunCtrl.InactiveRear(popRearCount);
				player:SetupReady(false);
				if player == MJScene.CurrentOperator then
					player.UI:UpdateCards(true, true);
				else
					player.UI:UpdateCards(true, false);
				end
			end
		end
	end
	UIManager.CloseAllWindowsExcept(UIName.UI_MaJiang);
	
	if #msg.m_CloseRoomData > 0 then
		Log.Info("MJScene.ReturnReconnectInfo: 存在" .. tostring(#msg.m_CloseRoomData) .. "条解散房间信息。");
		UIManager.OpenWindow(UIName.UI_MJRequestDissolve);
		UI_MJRequestDissolve.OnReconnect(msg.m_CloseRoomData);
	else
		Log.Info("MJScene.ReturnReconnectInfo: 不存在解散房间信息。");
	end
	
	if msg.m_huOperatorData.m_huRoleid ~= - 1 then
		Log.Info("MJScene.ReturnReconnectInfo: 存在结算信息");
		HallScene.SwitchFBStatus(FBStatus.FinishedRound);
		HallScene.CurrentFBFinishedRound = HallScene.CurrentFBFinishedRound + 1;
		MJScene.CurrentResultInfo = msg.m_huOperatorData;
		if	MJScene.CurrentResultInfo.m_huRoleid == 0 then
			UIManager.OpenWindow(UIName.UI_MJDraw);
		else
			UIManager.OpenWindow(UIName.UI_MJResult);
		end
	else
		Log.Info("MJScene.ReturnReconnectInfo: 不存在结算信息");
	end
	
end

function MJScene.ReturnHandCardInfo(evt)
	Log.Info("MJScene.ReturnHandCardInfo: playback mode " .. tostring(HallScene.CurrentFBPlaybackMode));
	if HallScene.CurrentFBPlaybackMode then
		-- 回放模式
		local msg = NetManager.DecodeMsg(PBMessage.GMHandCard_PlayerBack, evt);
		if msg == false then
			Log.Error("MJScene.ReturnHandCardInfo: parse msg error," .. PBMessage.GMHandCard_PlayerBack);
			return;
		end
		HallScene.CurrentFBBankerPosition = msg.m_bankerPos;
		HallScene.CurrentFBPlayway = msg.m_fbplayway;
		HallScene.CurrentFBTotalRound = msg.m_totalCount;
		HallScene.CurrentFBRound = msg.m_leftCount;
		HallScene.CurrentFBType = msg.m_fbtypeid;
		HallScene.CurrentFBID = msg.m_roomid;
		HallScene.CurrentFBPlayway = msg.m_fbplayway;
		Log.Info("MJScene.ReturnHandCardInfo: 庄家的位置：" .. tostring(HallScene.CurrentFBBankerPosition));
		
		for i = 1, #msg.m_handCardData do
			local handCardInfo = msg.m_handCardData[i];
			local player = MJScene.GetPlayerByID(handCardInfo.m_roleid);
			player:SetUI(true);
			player:SetHandCards(handCardInfo.m_HandCard);
		end
		
		-- 设置庄家
		MJScene.SetupBanker();
		
		-- 打开回放控制面板
		UI_MaJiang.SetupPlaybackControl(true);
		
		-- 设置角色角标显示
		UI_MaJiang.SetupPlayerUIVisiable();		
		
		-- 设置回合
		UI_MaJiang.SetupCurrentRound();
		
		-- 设置骰子面板的朝向
		MJSceneController.SetDicePanelDirection();
		
		-- 设置房间号
		MJSceneController.SetRoomNumber();
		
		-- 设置玩法
		MJSceneController.SetPlayway();
		
		-- 开始回放
		for key, value in pairs(MJScene.Players) do
			if value:IsBanker() then
				value:SetHandCardCount(MJDefine.BANKER_INITIAL_CARD_COUNT);
				value.UI:UpdateCards(true, true);
			else
				value:SetHandCardCount(MJDefine.XIAN_INITIAL_CARD_COUNT);
				value.UI:UpdateCards(true, false);
			end
			value:StartGame();
		end
	else
		-- 正常游戏模式
		local msg = NetManager.DecodeMsg(PBMessage.GMHandCard, evt);
		if msg == false then
			Log.Error("MJScene.ReturnHandCardInfo: parse msg error," .. PBMessage.GMHandCard);
			return;
		end
		MJPlayer.Hero:SetHandCards(msg.m_HandCard);
		HallScene.CurrentFBBankerPosition = msg.m_bankerPos;
		MJScene.DiceNumbers = msg.m_saizi;
		MJScene.GetCardNumber = msg.m_getCardNum;
		MJScene.GetCardRoleID = msg.m_getCardId;
		Log.Info("MJScene.ReturnHandCardInfo: 庄家的位置：" .. tostring(HallScene.CurrentFBBankerPosition));
		-- 设置庄家
		MJScene.SetupBanker();
		-- 计算每个玩家的本地位置
		for i = 1, #MJScene.Players do
			local player = MJScene.Players[i];
			MJPlayer.ComputeClientPosition(player);
		end
		-- 设置骰子面板的朝向
		MJSceneController.SetDicePanelDirection();
		if MJPlayer.Hero:IsBanker() then
			UI_MaJiang.SetupCastDice(true);
		end
	end
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
	Log.Info("MJScene.ReturnPlayerOutCard: operator id is " .. msg.m_roleid .. ",operate type is " .. MaJiangOperatorType.GetString(msg.m_OperatorType) .. ", m_LastCard.m_Index is " .. msg.m_LastCard.m_Index .. " and m_Type is " .. msg.m_LastCard.m_Type .. ", m_HandCard.count is " .. #msg.m_HandCard);
	if msg.m_OperatorType == MaJiangOperatorType.MJOT_BEGIN then
		MJScene.LastOperator = MJScene.CurrentOperator;
		MJScene.CurrentOperator = player;
		if MJScene.LastOperator ~= nil then
			UI_MJPlayer.PlayUIScaleAndDicePanelGrow(MJScene.LastOperator.UI, false);
		end
		UI_MJPlayer.PlayUIScaleAndDicePanelGrow(MJScene.CurrentOperator.UI, true);
		
		UI_MaJiang.StartOperateCountdown();
		MJPlayer.MJOT_BEGIN(player, msg);
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
	elseif msg.m_OperatorType == MaJiangOperatorType.MJOT_PENG then
		player:MJOT_PENG(msg);
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
	Log.Info("MJScene.ReturnCanOperatorType: roleid is " .. msg.m_roleid);
	for i = 1, #msg.m_Operator do
		local data = msg.m_Operator[i];
		Log.Info("MJScene.ReturnCanOperatorType: operate data,m_OperatorType is " .. MaJiangOperatorType.GetString(data.m_OperatorType) .. ",m_FunID is " .. data.m_FunID .. ",m_OperatorCard is " .. data.m_OperatorCard .. ",m_CardNum is " .. data.m_CardNum);
		for j = 1, #data.m_HandCard do
			local handCard = data.m_HandCard[j];
			Log.Info("MJScene.ReturnCanOperatorType: operate data: handcard" .. tostring(j) .. ": card id is " .. handCard.m_Index .. ", card type is " .. MaJiangType.ToString(handCard.m_Type));
		end
	end
	UI_MaJiang.ShowOperateView(msg.m_Operator);
end

function MJScene.NotifyOneReady(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_Result, evt);
	if msg == false then
		Log.Error("MJScene.NotifyOneReady: parse msg error," .. PBMessage.GM_Result);
		return;
	end
	local player = MJScene.GetPlayerByID(msg.m_Result);
	Log.Info("MJScene.NotifyOneReady: player is " .. player.UITransform.name);
	if player ~= nil then
		local status = msg.m_productid == 1;
		player:SetupReady(status);
		if player:IsHero() then
			UI_MaJiang.SetupReadyAndInvite(not status, status, true);
		end
	end
end

function MJScene.ReturnAllReady(evt)
	HallScene.SwitchFBStatus(FBStatus.WaitingCastDice);
	HallScene.CurrentFBRound = HallScene.CurrentFBRound + 1;
	UI_MaJiang.SetupCurrentRound();
	Log.Info("MJScene.ReturnAllReady: 所有玩家就绪,第【" .. tostring(HallScene.CurrentFBRound) .. "】回合开始");
	local msg = NetManager.DecodeMsg(PBMessage.GM_NotifyBattleEndTime, evt);
	for key, value in pairs(MJScene.Players) do
		value:SetupReady(false);
	end
	UI_MaJiang.SetupReadyAndInvite(false, false, false);
	UIManager.OpenTipsDialog("对局开始");
end

function MJScene.ReturnPlayerHu(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_HUOperator, evt);
	if msg == false then
		Log.Error("MJScene.ReturnPlayerHu: parse msg error," .. PBMessage.GM_HUOperator);
		return;
	end
	HallScene.SwitchFBStatus(FBStatus.FinishedRound);
	Log.Info("MJScene.ReturnPlayerHu: hu role id is " .. msg.m_huRoleid);
	HallScene.CurrentFBFinishedRound = HallScene.CurrentFBFinishedRound + 1;
	MJScene.CurrentResultInfo = msg;
	if msg.m_huRoleid == 0 then
		UIManager.OpenWindow(UIName.UI_MJDraw);
	else
		UIManager.OpenWindow(UIName.UI_MJResult);
	end
end

function MJScene.NotifyPlayerLeave(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_LeaveBattle, evt);
	if msg == false then
		Log.Error("MJScene.NotifyPlayerLeave: parse msg error: " .. PBMessage.GM_LeaveBattle);
		return;
	end
	Log.Info("MJScene.NotifyPlayerLeave: id is " .. tostring(msg.roleID));
	local player = MJScene.GetPlayerByID(msg.roleID);
	if player ~= nil then
		local str = "玩家 " .. player.Name .. " 离开房间";
		UIManager.OpenTipsDialog(str);
		player:SetupEnterAndLeave(false, true);
	end
	MJScene.RemovePlayer(player);
end

function MJScene.NotifyChat(evt)
	Log.Info("MJScene.NotifyChat");
	local msg = NetManager.DecodeMsg(PBMessage.GM_AnswerFaceReturn, evt);
	if msg == false then
		Log.Error("MJScene.NotifyChat: parse msg error: " .. PBMessage.GM_AnswerFaceReturn);
		return;
	end
	if msg.faceid == MJChatType.CustomText then
		MJScene.AddChatHistory(msg.roleid, MJChatType.CustomText, msg.faceName, 0, true);
	end
	UI_MaJiang.HandleChat(msg);
end

function MJScene.OnReceiveVoiceMsg(roleid, uri, duration)
	Log.Info("MJScene.OnReceiveVoiceMsg: roleid is " .. roleid .. ",uri is " .. uri .. ",duration is " .. duration);
	MJScene.AddChatHistory(roleid, MJChatType.Voice, uri, duration, false);
	UI_MaJiang.HandleVoice(roleid, uri, duration);
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
	UIManager.OpenWindow(UIName.UI_MJRequestDissolve);
	UI_MJRequestDissolve.DissolveID = msg.m_Result;
end

function MJScene.ChooseDissolveRoom(evt)
	Log.Info("MJScene.ChooseDissolveRoom");
end

function MJScene.ReturnRoomMasterDissolve(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_Request, evt);
	if msg == false then
		Log.Error("MJScene.ReturnRoomMasterDissolve: parse msg error: " .. PBMessage.GM_Result);
		return;
	end
	Log.Info("MJScene.ReturnRoomMasterDissolve: msg.request is " .. tostring(msg.request));
	if msg.request == 0 then
		local option = ConfirmDialogOption:New();
		option.OnClickOK =
		function()
			UIManager.CloseWindow(UIName.UI_MJRequestDissolve);
			if HallScene.CurrentFBRound > 1 then
				UIManager.OpenWindow(UIName.UI_MJTotalResult);
			else
				SceneManager.Goto(SceneName.HallScene);
			end
		end;
		option.DoubleButton = false;
		option.Content = "房间已解散,点击确定退出房间";
		option.Title = "提  示";
		UIManager.OpenConfirmDialog(option);
	elseif msg.request == 3 then
		UIManager.CloseAllWindowsExcept(UIName.UI_MaJiang);
		local option = ConfirmDialogOption:New();
		option.DoubleButton = false;
		option.Content = "房间已解散,点击确定退出房间";
		option.Title = "提  示";
		local content = "[9F2D38]因玩家";
		for key, value in pairs(UI_MJRequestDissolve.Status) do
			if value == 1 then
				content = content .. "【" .. key.Name .. "】";
			end
		end
		content = content .. "不同意，解散失败[-]";
		option.Content = content;
		UIManager.OpenConfirmDialog(option);
	end
end

function MJScene.ReturnShowLastResult(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_MJCardRoomResult, evt);
	if msg == false then
		Log.Error("MJScene.ReturnShowLastResult: parse msg error: " .. PBMessage.GM_MJCardRoomResult);
		return;
	end
	MJScene.TotalResultInfo = msg;
	Log.Info("MJScene.ReturnShowLastResult: m_count is " .. msg.m_count);
end

function MJScene.ReturnRoomRate(evt)
	Log.Info("MJScene.ReturnRoomRate");
end

function MJScene.ReturnCastDice(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_PlayerRollRequest, evt);
	if msg == false then
		Log.Error("MJScene.ReturnCastDice: parse msg error: " .. PBMessage.GM_PlayerRollRequest);
		return;
	end
	Log.Info("MJScene.ReturnCastDice: dice number is : " .. msg.m_pos);
	HallScene.SwitchFBStatus(FBStatus.Playing);
	
	-- 设置墩牌
	local fromPlayer = MJScene.GetPlayerByID(MJScene.GetCardRoleID);
	Log.Info("MJScene.ReturnCastDice: 从" .. fromPlayer:LogTag() .. "的第【" .. tostring(MJScene.GetCardNumber) .. "】墩开始抓牌");
	MJPaidunCtrl.Initialize(fromPlayer.UIPosition, MJScene.GetCardNumber);
	
	UI_MaJiang.SetupCastDice(false);
	MJSceneController.PlayDiceAnimation(MJScene.DiceNumbers[1], MJScene.DiceNumbers[2], nil);
	MJSceneController.PlayPaidunAnimation(function()
		StartCoroutine(MJScene.PlaySendCardAnimation);
	end);
end

function MJScene.ReturnOperateError(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_MJOperatorError, evt);
	Log.Info("MJScene.ReturnOperateError: result is " .. tostring(msg.m_Result));
	MJScene.RequestReconnectInfo(); -- 操作失败时刷新桌面的数据
end

-- 播放发牌效果
function MJScene.PlaySendCardAnimation()
	MJPaidunCtrl.InactiveFront(MJScene.GetPlayerCount() * 4);
	for key, value in pairs(MJScene.Players) do
		if value:IsBanker() then
			value:SetHandCardCount(MJDefine.BANKER_INITIAL_CARD_COUNT);
		else
			value:SetHandCardCount(MJDefine.XIAN_INITIAL_CARD_COUNT);
		end
		value.UI:UpdateCards(false, false, 4);
	end
	WaitForSeconds(0.2);
	
	MJPaidunCtrl.InactiveFront(MJScene.GetPlayerCount() * 4);
	for key, value in pairs(MJScene.Players) do
		value.UI:UpdateCards(false, false, 8);
	end
	WaitForSeconds(0.2);
	
	MJPaidunCtrl.InactiveFront(MJScene.GetPlayerCount() * 4);
	for key, value in pairs(MJScene.Players) do
		value.UI:UpdateCards(false, false, 12);
	end
	WaitForSeconds(0.2);
	
	MJPaidunCtrl.InactiveFront(MJScene.GetPlayerCount() + 1);
	for key, value in pairs(MJScene.Players) do
		if value:IsBanker() then
			value.UI:UpdateCards(true, true);
		else
			value.UI:UpdateCards(true, false);
		end
		value:StartGame();
	end
end

function MJScene.StartPlayback()
	
end 
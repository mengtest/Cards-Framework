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
MJSceneStatus = {
	-- 等待其他玩家
	Waiting = 0,
	-- 所有玩家就绪
	AllReady = 1,
	-- 游戏中
	Game = 2,
	-- 计算
	Result = 3,
}
MJScene =
{
	Name = SceneType.MJScene,
	IsInitialized = false,
	NeedReconnect = false,
	IsSendReconnectEvent = false,
	RoomMasterID = 0,
	BankerPosition = 0,
	DiceNumbers = nil,
	-- 从第几墩开始取牌
	GetCardNumber = 0,
	-- 从谁的面前取牌
	GetCardRoleID = 0,
	Players = nil,
	CurrentOperator = nil,
	LastOperator = nil,
	-- 场景内牌的宽度
	TableCardX = 0.9635041,
	-- 场景内牌的高度
	TableCardY = 1.24706018,
	-- 场景内牌的厚度
	TableCardZ = 0.636123836,
	-- 手牌的宽度
	HandCardX = 0.8029202,
	-- 手牌的高度
	HandCardY = 1.03921676,
	-- 手牌的厚度
	HandCardZ = 0.5301034,
	-- 是否开启偷天换日
	OpenTest = true,
	-- 副本信息 【PBMessage.GM_BattleFBServerInfo】
	FBInfo = nil,
	-- 总回合数
	TotalRound = 0,
	-- 当前回合
	CurrentRound = 0,
	-- 当前结算信息
	CurrentResultInfo = nil,
	-- 总结算信息
	TotalResultInfo = nil,
	-- 当前场景的状态
	Status = MJSceneStatus.Waiting,
}
function MJScene.Initialize()
	if MJScene.IsInitialized == false then
	end
end
function MJScene.Begin()
	Log.Info("MJScene.Begin");
	MJScene.IsSendReconnectEvent = false;
	MJScene.FBInfo = SharedVariable.FBInfo;
	MJScene.TotalRound = MJScene.FBInfo.m_gameCount;
	MJScene.CurrentRound = 1;
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
	Log.Info("MJScene.End");
end
function MJScene.OnSceneWasLoaded()
	Log.Info("MJScene.OnSceneWasLoaded: now bein to open majiang ui and request game fb info or reconnect info.");
	UIManager.OpenWindow(UIType.UI_MaJiang);
	MJScene.RegisterNetEvent();
	MJScene.RequestAllPlayerInfo();
end
-- 继续游戏
function MJScene.OnceAgain()
	Log.Info("MJScene.OnceAgain: 继续游戏");
	MJScene.CurrentRound = MJScene.CurrentRound + 1;
	MJSceneController.Reset();
	UI_MaJiang.Reset();
	for key, value in pairs(MJScene.Players) do
		value:Reset();
	end
	MJScene.RequestReady(1);
end
-- 设置是否需要断线重连
function MJScene.SetNeedReconnect(var)
	Log.Info("MJScene.SetNeedReconnect: " .. tostring(var));
	MJScene.NeedReconnect = var;
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
function MJScene.HasPlayer(id)
	return MJScene.Players[id] == nil;
end
function MJScene.AddPlayer(id, player)
	if MJScene.Players[id] == nil then
		MJScene.Players[id] = player;
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
-- 设置庄家
function MJScene.SetupBanker()
	for key, value in pairs(MJScene.Players) do
		if value.ServerPosition == MJScene.BankerPosition then
			MJPlayer.Banker = value;
		end
	end
end
-- 设置房主
function MJScene.SetupMaster()
	local player = MJScene.GetPlayerByID(MJScene.RoomMasterID);
	MJPlayer.RoomMaster = player;
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
-- 获取玩家的个数
function MJScene.GetPlayerCount()
	local count = 0;
	for key, value in pairs(MJScene.Players) do
		count = count + 1;
	end
	return count;
end
-- 当前是否是我的回合
function MJScene.IsMyTurn()
	if MJScene.CurrentOperator == nil or MJScene.CurrentOperator ~= MJPlayer.Hero then
		return false;
	else
		return true;
	end
end
-- 判断当前的牌是不是精
function MJScene.CardIsJing(type)
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
-- 请求断线重连信息
function MJScene.RequestReconnectInfo()
	Log.Info("MJScene.RequestReconnectInfo:");
	MJScene.IsSendReconnectEvent = true;
	local msg = {};
	msg.m_RoleID = Player.ID;
	msg.m_FBID = SharedVariable.FBInfo.m_FBID;
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
	Log.Info("MJScene.ReturnGamePlayerInfo: RoomMasterID is " .. MJScene.RoomMasterID .. ",current player count is " .. # msg.m_Character);
	SharedVariable.FBEntryInfo = msg;
	local hero = MJScene.GetPlayerByID(Player.FullInfo.id);
	if hero == nil then
		-- 先创建自己的数据
		for i = 1, # SharedVariable.FBEntryInfo.m_Character do
			local playerEntry = SharedVariable.FBEntryInfo.m_Character[i];
			if playerEntry ~= nil and playerEntry.m_RoleData ~= nil and playerEntry.m_RoleData.m_Roleid == Player.FullInfo.id then
				hero = MJPlayer.New();
				hero:Initialize(playerEntry, true);
				MJScene.AddPlayer(hero.ID, hero);
				Log.Info("MJScene.ReturnGamePlayerInfo: Create hero id is " .. hero.ID .. ",server position is " .. hero.ServerPosition);
			end
		end
	end
	-- 创建其他玩家
	for i = 1, # SharedVariable.FBEntryInfo.m_Character do
		local playerEntry = SharedVariable.FBEntryInfo.m_Character[i];
		if playerEntry ~= nil and playerEntry.m_RoleData ~= nil then
			local player = MJScene.GetPlayerByID(playerEntry.m_RoleData.m_Roleid);
			if player == nil then
				player = MJPlayer.New();
				player:Initialize(playerEntry);
				MJScene.AddPlayer(player.ID, player);
				Log.Info("MJScene.ReturnGamePlayerInfo: Create a player id is " .. player.ID .. ",server position is " .. player.ServerPosition);
			end
		end
	end
	MJScene.RoomMasterID = msg.m_RoomMasterID;
	MJScene.SetupMaster();
	if MJScene.NeedReconnect == true then
		if MJScene.IsSendReconnectEvent == false then
			MJScene.RequestReconnectInfo();
		else
			Log.Info("MJScene.ReturnGamePlayerInfo: already send reconnect request,neednt send any more.");
		end
	else
		UIManager.CloseAllWindowsExcept(UIType.UI_MaJiang);
	end
end
-- 收到断线重连信息
function MJScene.ReturnReconnectInfo(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_ReconnectMJData, evt);
	if msg == false then
		Log.Error("MJScene.ReturnReconnectInfo: parse msg error," .. PBMessage.GM_ReconnectMJData);
		return;
	end
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
		Log.Info("MJScene.ReturnReconnectInfo: 筛子次数，以及内容：" .. # msg.m_saizi);
	end
	if msg.m_HandCard ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 手牌信息：" .. # msg.m_HandCard);
	end
	if msg.m_AllData ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 其他玩家信息：" .. # msg.m_AllData);
	end
	if msg.m_CloseRoomData ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 解散房间信息：" .. # msg.m_CloseRoomData);
	end
	if msg.m_huOperatorData ~= nil then
		Log.Info("MJScene.ReturnReconnectInfo: 存在结算信息");
	end
	MJScene.BankerPosition = msg.m_bankerPos;
	MJScene.RoomMasterID = msg.m_RoomMasterID;
	MJScene.DiceNumbers = msg.m_saizi;
	MJScene.GetCardRoleID = msg.m_getCardId;
	MJScene.GetCardNumber = msg.m_getCardNum;
	MJScene.SetupBanker();
	MJScene.SetupMaster();
	if msg.m_FreeCard == MJDefine.TOTAL_CARD_COUNT then
		-- 对局还没开始
		Log.Info("MJScene.ReturnReconnectInfo: 对局还没开始");
		MJScene.Status = MJSceneStatus.Waiting;
	else
		MJPlayer.Hero:SetHandCards(msg.m_HandCard);
		-- 设置庄家
		MJScene.SetupBanker();
		UI_MaJiang.SetupReadyAndInvite(false, false, false);
		MJSceneController.SetupDicePanelDirection();
		if msg.m_sendCardID == 0 then
			-- 已经收到手牌信息了,但还没骰子骰子
			Log.Info("MJScene.ReturnReconnectInfo: 已经收到手牌信息了,但还没骰子骰子");
			for key, value in pairs(MJScene.Players) do
				value:SetupReady(false);
			end
			if MJPlayer.Hero:IsBanker() then
				UI_MaJiang.SetupCastDice(true);
			end
		else
			-- 已经收到手牌信息了,正在对局中
			Log.Info("MJScene.ReturnReconnectInfo: 已经收到手牌信息了,正在对局中");
			-- 设置当前玩家以及上一个玩家
			MJScene.LastOperator = MJScene.GetPlayerByID(msg.m_lastOutCardRoleId);
			MJScene.CurrentOperator = MJScene.GetPlayerByID(msg.m_sendCardID);
			MJScene.CurrentOperator:PlayUIScaleAndDicePanelGrow(true);
			-- 直接显示牌墩，不播放动画
			MJSceneController.SetGroupCardActive(true);
			-- 设置牌墩
			local fromPlayer = MJScene.GetPlayerByID(MJScene.GetCardRoleID);
			Log.Info("MJScene.ReturnReconnectInfo: 从" .. fromPlayer:LogKey() .. "的第【" .. tostring(MJScene.GetCardNumber) .. "】墩开始抓牌");
			MJGroupCardQueue.PushAll(fromPlayer.UIPosition, MJScene.GetCardNumber);
			-- 先隐藏所有初始抓了的牌
			local totalInitialCardCount = msg.m_playerCount * MJDefine.XIAN_INITIAL_CARD_COUNT + 1;
			MJGroupCardQueue.PopFront(totalInitialCardCount);
			for i = 1, # msg.m_AllData do
				local reconnectPlayerData = msg.m_AllData[i];
				local player = MJScene.GetPlayerByID(reconnectPlayerData.m_roleid);
				player:SetHandCardCount(reconnectPlayerData.m_handCardNum);
				local popFrontCount = # reconnectPlayerData.m_OutHandCard;
				local popRearCount = 0;
				for j = 1, # reconnectPlayerData.m_FunHandCardList do
					local operateData = reconnectPlayerData.m_FunHandCardList[j];
					if operateData.m_OperatorType == MaJiangOperatorType.MJOT_AN_GANG or operateData.m_OperatorType == MaJiangOperatorType.MJOT_GANG or operateData.m_OperatorType == MaJiangOperatorType.MJOT_BuGang then
						popRearCount = popRearCount + 1;
					end
					player:AddOperateTotalCount();
				end
				for j = 1, # reconnectPlayerData.m_OutHandCard do
					local card = reconnectPlayerData.m_OutHandCard[j];
					local tableCard = MJSceneController.GetOneUnuseCard(card.m_Index, card.m_Type, player.ID);
					local cardPos = player:GetTableCardPos(player.TableCardCount);
					tableCard:Show(cardPos, player.TableCardRotation);
					player:AddTableCardCount();
				end
				MJGroupCardQueue.PopFront(popFrontCount);
				MJGroupCardQueue.PopRear(popRearCount);
				player:SetupReady(false);
				if player == MJScene.CurrentOperator then
					player:DisplayHandCard(true, true);
				else
					player:DisplayHandCard(true, false);
				end
			end
		end
	end
	UIManager.CloseAllWindowsExcept(UIType.UI_MaJiang);
end
function MJScene.ReturnHandCardInfo(evt)
	Log.Info("MJScene.ReturnHandCardInfo: 收到自己的手牌信息");
	local msg = NetManager.DecodeMsg(PBMessage.GMHandCard, evt);
	if msg == false then
		Log.Error("MJScene.ReturnHandCardInfo: parse msg error," .. PBMessage.GMHandCard);
		return;
	end
	MJPlayer.Hero:SetHandCards(msg.m_HandCard);
	MJScene.BankerPosition = msg.m_bankerPos;
	MJScene.DiceNumbers = msg.m_saizi;
	MJScene.GetCardNumber = msg.m_getCardNum;
	MJScene.GetCardRoleID = msg.m_getCardId;
	Log.Info("MJScene.ReturnHandCardInfo: 庄家的位置：" .. tostring(MJScene.BankerPosition));
	-- 设置庄家
	MJScene.SetupBanker();
	-- 设置骰子面板的朝向
	MJSceneController.SetupDicePanelDirection();
	if MJPlayer.Hero:IsBanker() then
		UI_MaJiang.SetupCastDice(true);
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
	Log.Info("MJScene.ReturnPlayerOutCard: operator id is " .. msg.m_roleid .. ",operate type is " .. MaJiangOperatorType.GetString(msg.m_OperatorType) .. ", m_LastCard.m_Index is " .. msg.m_LastCard.m_Index .. " and m_Type is " .. msg.m_LastCard.m_Type .. ", m_HandCard.count is " .. # msg.m_HandCard);
	if msg.m_OperatorType == MaJiangOperatorType.MJOT_BEGIN then
		MJScene.LastOperator = MJScene.CurrentOperator;
		MJScene.CurrentOperator = player;
		if MJScene.LastOperator ~= nil then
			MJScene.LastOperator:PlayUIScaleAndDicePanelGrow(false);
		end
		MJScene.CurrentOperator:PlayUIScaleAndDicePanelGrow(true);
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
	for i = 1, # msg.m_Operator do
		local data = msg.m_Operator[i];
		Log.Info("MJScene.ReturnCanOperatorType: operate data,m_OperatorType is " .. MaJiangOperatorType.GetString(data.m_OperatorType) .. ",m_FunID is " .. data.m_FunID .. ",m_OperatorCard is " .. data.m_OperatorCard .. ",m_CardNum is " .. data.m_CardNum);
		for j = 1, # data.m_HandCard do
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
	Log.Info("MJScene.ReturnAllReady: 所有玩家就绪，对局开始");
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
	Log.Info("MJScene.ReturnPlayerHu: hu role id is " .. msg.m_huRoleid);
	MJScene.CurrentResultInfo = msg;
	if msg.m_huRoleid == 0 then
		UIManager.OpenWindow(UIType.UI_MJDraw);
	else
		UIManager.OpenWindow(UIType.UI_MJResult);
		-- if msg.
	end
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
	UI_MaJiang.SetupCastDice(false);
	MJSceneController.PlayDiceAnimation(MJScene.DiceNumbers[1], MJScene.DiceNumbers[2], nil);
	MJSceneController.PlayGroupCardAnimation(function()
		MJScene.PlayStartGameEffect();
	end);
	-- 设置墩牌
	local fromPlayer = MJScene.GetPlayerByID(MJScene.GetCardRoleID);
	Log.Info("MJScene.ReturnCastDice: 从" .. fromPlayer:LogKey() .. "的第【" .. tostring(MJScene.GetCardNumber) .. "】墩开始抓牌");
	MJGroupCardQueue.PushAll(fromPlayer.UIPosition, MJScene.GetCardNumber);
	-- 开始游戏
	for key, value in pairs(MJScene.Players) do
		value:StartGame();
	end
end
function MJScene.ReturnOperateError(evt)
	Log.Info("MJScene.ReturnOperateError");
	UIManager.OpenTipsDialog("操作失败");
end
function MJScene.PlayStartGameEffect()
	for key, value in pairs(MJScene.Players) do
		value:DisplayHandCard(true, true);
	end
end 
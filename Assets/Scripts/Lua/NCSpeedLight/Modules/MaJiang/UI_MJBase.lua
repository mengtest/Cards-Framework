-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJBase.lua
-- Describle:   麻将主界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
require "NCSpeedLight.Modules.MaJiang.UI_MJHeroCtrl"
require "NCSpeedLight.Modules.MaJiang.UI_MJPlayer"
require "NCSpeedLight.Modules.MaJiang.UI_MJInteraction"

UI_MJBase = {
	transform,
	gameObject,
	UI_Player0,
	UI_Player1,
	UI_Player2,
	UI_Player3,
	CurrentTime = nil,
	OperateTime = 16, -- 操作的倒计时
	OperateCountdownFunc = nil,
	IsOpenChat = false,
	IsRecording = false, -- 是否正在录音
	RecordStartPos = Vector3.zero,
	RecordSuccess = false,
}

local this = UI_MJBase;

function UI_MJBase.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.IsOpenChat = false;
	this.IsRecording = false;
	this.RecordSuccess = false;
end

function UI_MJBase.Start()
	UIHelper.SetButtonEvent(this.transform, "top/topRight/Button (Set)", UI_MJBase.OnClickSetting);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/DissolveRoom", UI_MJBase.DissolveRoom);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Button (Message)", UI_MJBase.OnClickChat);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Button (Message2)", UI_MJBase.OnClickTest);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/Yes", UI_MJBase.OnClickYes);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/No", UI_MJBase.OnClickNo);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/Invite", UI_MJBase.OnClickInvite);
	UIHelper.SetButtonEvent(this.transform, "center/CastDice/Button", UI_MJBase.OnClickCastDice);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/Hu", UI_MJBase.OnClickHu);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/DingHu", UI_MJBase.OnClickDingHu);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/Pass", UI_MJBase.OnClickPass);
	UIHelper.SetButtonEvent(this.transform, "Texture", UI_MJBase.OnClickOtherArea);
	UIHelper.SetButtonEvent(this.transform, "center/Btn_BackToResult", UI_MJBase.OnClickBackToResult);
	UIHelper.SetButtonEvent(this.transform, "PlayJing/Btn_Yes", UI_MJHeroCtrl.OnClickJingYes);
	UIHelper.SetButtonEvent(this.transform, "PlayJing/Btn_No", UI_MJHeroCtrl.OnClickJingNo);
	
	-- 录音按钮相关事件监听逻辑
	local voiceBtnListener = UIHelper.GetComponent(this.transform, "bottom/right/Button (Voice)", typeof(UIEventListener));
	if voiceBtnListener == nil then
		voiceBtnListener = UIHelper.AddComponent(this.transform, "bottom/right/Button (Voice)", typeof(UIEventListener));
	end
	voiceBtnListener.onPress = UI_MJBase.OnVoiceBtnPress;
	voiceBtnListener.onDragStart = UI_MJBase.OnVoiceBtnDragStart;
	voiceBtnListener.onDrag = UI_MJBase.OnVoiceBtnDrag;
	voiceBtnListener.onDragEnd = UI_MJBase.OnVoiceBtnDragEnd;
	
	UI_MJBase.SetRound(false);
	
	UI_MJBase.SetupPlayerUIVisiable();
	
	if HallScene.CurrentFBPlaybackMode then
		UI_MJBase.SetupReadyAndInvite(false, false, false);
	else
		UI_MJBase.SetupReadyAndInvite(true, false, true);
	end
	UI_MJBase.InitPlayerUI();
end

function UI_MJBase.OnDestroy()
	UI_MJBase.transform = nil;
	UI_MJBase.gameObject = nil;
	UI_MJBase.UI_Player0 = nil;
	UI_MJBase.UI_Player1 = nil;
	UI_MJBase.UI_Player2 = nil;
	UI_MJBase.UI_Player3 = nil;
	UI_MJBase.CurrentTime = nil;
	UI_MJBase.OperateTime = 15;
	coroutine.stop(UI_MJBase.OperateCountdownCo);
	UI_MJBase.OperateCountdownCo = nil;
	UI_MJBase.IsOpenChat = false;
	UI_MJBase.IsRecording = false;
	UI_MJBase.RecordStartPos = Vector3.zero;
	UI_MJBase.RecordSuccess = false;
end

function UI_MJBase.Reset()
	UI_MJBase.SetRound(false);
	UI_MJBase.SetupReadyAndInvite(false, false, false);
	UI_MJBase.SetupReadyAndInvite(false, false, false);
	UI_MJBase.SetBackToResultButtonActive(false);
	UIHelper.SetActiveState(this.transform, "center/Time", false);
	UI_MJBase.SetPlayJingActive(false);
	UI_MJHeroCtrl.Reset();
end

-- 初始化玩家的UI
function UI_MJBase.InitPlayerUI()
	UI_MJBase.UI_Player0 = this.transform:Find("Player0");
	UI_MJBase.UI_Player1 = this.transform:Find("Player1");
	UI_MJBase.UI_Player2 = this.transform:Find("Player2");
	UI_MJBase.UI_Player3 = this.transform:Find("Player3");
	
	LuaComponent.Add(UI_MJBase.UI_Player0.gameObject, UI_MJPlayer);
	LuaComponent.Add(UI_MJBase.UI_Player1.gameObject, UI_MJPlayer);
	LuaComponent.Add(UI_MJBase.UI_Player2.gameObject, UI_MJPlayer);
	LuaComponent.Add(UI_MJBase.UI_Player3.gameObject, UI_MJPlayer);
	
	if not HallScene.CurrentFBPlaybackMode then
		UIHelper.SetButtonEvent(UI_MJBase.UI_Player0, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(0);
			UIManager.OpenWindow(UIName.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
		UIHelper.SetButtonEvent(UI_MJBase.UI_Player1, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(1);
			UIManager.OpenWindow(UIName.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
		UIHelper.SetButtonEvent(UI_MJBase.UI_Player2, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(2);
			UIManager.OpenWindow(UIName.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
		UIHelper.SetButtonEvent(UI_MJBase.UI_Player3, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(3);
			UIManager.OpenWindow(UIName.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
	end
end

-- 获取玩家的UI
function UI_MJBase.GetPlayerUI(serverPos)
	local heroPos = MJPlayer.Hero.ServerPosition;
	if HallScene.CurrentFBType == MJRoomType.R_1 then -- 二人场
		if heroPos == serverPos then
			local uiCom = LuaComponent.Get(UI_MJBase.UI_Player0.gameObject, UI_MJPlayer);
			return {uiCom, UI_MJBase.UI_Player0, 0};
		else
			local uiCom = LuaComponent.Get(UI_MJBase.UI_Player2.gameObject, UI_MJPlayer);
			return {uiCom, UI_MJBase.UI_Player2, 2};
		end
	elseif HallScene.CurrentFBType == MJRoomType.R_2 then -- 四人场
		if heroPos == serverPos then
			local uiCom = LuaComponent.Get(UI_MJBase.UI_Player0.gameObject, UI_MJPlayer);
			return {uiCom, UI_MJBase.UI_Player0, 0};
		else
			local offset = 4 - heroPos;
			local pos =(offset + serverPos) % 4;
			local uiTransform = UI_MJBase.GetPlayerUIByPosition(pos);
			local uiCom = LuaComponent.Get(uiTransform.gameObject, UI_OtherPlayer);
			return {uiCom, uiTransform, pos};
		end
	end
end

-- 通过UI的位置获取对象
function UI_MJBase.GetPlayerUIByPosition(pos)
	if pos == 0 then
		return UI_MJBase.UI_Player0;
	elseif pos == 1 then
		return UI_MJBase.UI_Player1;
	elseif pos == 2 then
		return UI_MJBase.UI_Player2;
	elseif pos == 3 then
		return UI_MJBase.UI_Player3;
	end
end

-- 设置player ui显示
function UI_MJBase.SetupPlayerUIVisiable()
	if HallScene.CurrentFBType == MJRoomType.R_1 then
		UIHelper.SetActiveState(this.transform, "Player1", false);
		UIHelper.SetActiveState(this.transform, "Player3", false);
	end
end

-- 设置准备和邀请按钮的显示状态 , ready/unready/invite
function UI_MJBase.SetupReadyAndInvite(ready, unready, invite)
	Log.Info("SetupReadyAndInvite: " .. tostring(ready) .. "," .. tostring(unready) .. "," .. tostring(invite));
	UIHelper.SetActiveState(this.transform, "center/Ready/Yes", ready);
	UIHelper.SetActiveState(this.transform, "center/Ready/No", unready);
	UIHelper.SetActiveState(this.transform, "center/Ready/Invite", invite);
end

function UI_MJBase.SetInviteBtnGray(status)
	if status == nil then
		status = HallScene.CurrentFBPlayerCount == MJScene.GetPlayerCount();
		UIHelper.SetSpriteGray(this.transform, "center/Ready/Invite/Background", status);
		UIHelper.SetSpriteGray(this.transform, "center/Ready/Invite/Sprite", status);
	else
		UIHelper.SetSpriteGray(this.transform, "center/Ready/Invite/Background", status);
		UIHelper.SetSpriteGray(this.transform, "center/Ready/Invite/Sprite", status);
	end
end

-- 设置掷骰子
function UI_MJBase.SetCastDice(status)
	Log.Info("SetCastDice: status is " .. tostring(status));
	UIHelper.SetActiveState(this.transform, "center/CastDice/Button", status);
end

-- 设置当前的局数
function UI_MJBase.SetRound(status)
	if status == nil then status = true; end;
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime", status);
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime/Label (Tips)", status);
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime/Label", status);
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainTime/Label (Tips)", "当前局数");
	local str = HallScene.CurrentFBRound .. "/" .. HallScene.CurrentFBTotalRound;
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainTime/Label", str);
	Log.Info("SetRound: status is " .. tostring(status) .. ",str is " .. str);
end

-- 设置剩余的牌的个数
function UI_MJBase.SetupRemainCardCount(count)
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainCards", true);
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainCards/Label", tostring(count));
end

-- 设置回放控制面板
function UI_MJBase.SetupPlaybackControl(status)
	UIHelper.SetActiveState(this.transform, "center/ContrlPanel", status);
end

function UI_MJBase.SetPlayJingActive(status)
	UIHelper.SetActiveState(this.transform, "PlayJing", status);
end

-- 回放模式
function UI_MJBase.OnPlaybackMode()
	UIHelper.SetActiveState(this.transform, "center/ContrlPanel", true);
	UIHelper.SetActiveState(this.transform, "top/topRight", false);
	UIHelper.SetActiveState(this.transform, "bottom", false);
end

function UI_MJBase.OnClickSetting(go)
	UI_MJBase.SetChatActive(false);
	UIManager.OpenWindow(UIName.UI_MJSetting);	
end

function UI_MJBase.DissolveRoom(go)
	local option = ConfirmDialogOption.New();
	if MJPlayer.Hero:IsRoomMaster() then
		option.OnClickOK =
		function()
			MJScene.RequestCloseRoom();
		end;
		option.DoubleButton = true;
		option.Content = "解散房间不扣除房卡，是否确定解散？";
		option.Title = "解散房间";
	else
		option.OnClickOK =
		function()
			SceneManager.Goto(SceneName.HallScene);
		end;
		option.DoubleButton = true;
		option.Content = "确定退出吗？";
		option.Title = "返回大厅";
	end
	UIManager.OpenConfirmDialog(option);
	
end

function UI_MJBase.OnClickChat(go)
	UI_MJBase.IsOpenChat = not UI_MJBase.IsOpenChat;
	UI_MJBase.SetChatActive(UI_MJBase.IsOpenChat);
end

-- 偷天换日
function UI_MJBase.OnClickTest(go)
	UIManager.OpenWindow(UIName.UI_MJTest);
end

function UI_MJBase.OnClickYes(go)
	MJScene.RequestReady(true);
end

function UI_MJBase.OnClickNo(go)
	MJScene.RequestReady(false);
end

function UI_MJBase.OnClickInvite(go)
	local shareText = "[" .. Player.Name .. "]" .. "邀你加入:" .. HallScene.CurrentFBTotalRound .. "局," .. HallScene.CurrentFBPlayerCount .. "人场," .. MJScene.GetMJPlaywayStr(HallScene.CurrentFBPlayway);
	ShareSDKAdapter.InviteWechatFriend(nil, HallScene.CurrentFBID, shareText);
end

function UI_MJBase.OnClickCastDice(go)
	MJScene.RequestCastDice();
end

function UI_MJBase.OnClickHu(go)
	UI_MJBase.HideOperateView();
	MJScene.RequestMJOperate_Hu();
end

function UI_MJBase.OnClickDingHu(go)
	UI_MJBase.HideOperateView();
	MJScene.RequestMJOperate_DingHu();
end

function UI_MJBase.OnClickPass(go)
	UI_MJBase.HideOperateView();
	MJScene.RequestMJOperate_Guo();
end

function UI_MJBase.OnClickOtherArea(go)
	if UI_MJBase.IsOpenChat then
		UI_MJBase.IsOpenChat = not UI_MJBase.IsOpenChat;
		UI_MJBase.SetChatActive(UI_MJBase.IsOpenChat);
	else
		UI_MJHeroCtrl.RecoverSelectedCard();
	end
end

function UI_MJBase.OnVoiceBtnPress(go, status)
	-- Log.Info("OnVoiceBtnPress: status is " .. tostring(status));
	UI_MJBase.IsRecording = status;
	UIHelper.SetActiveState(this.transform, "RecordVoice/Record", UI_MJBase.IsRecording);
	if UI_MJBase.IsRecording == true then
		UI_MJBase.RecordSuccess = true;
		RongCloudAdapter.StartRecordVoice(
		function(isTimeout, voiceUri, duration)
			if duration <= 0 then
				UIManager.OpenTipsDialog("录音时间小于1s，无法发送");
				return;		
			end
			Log.Info("OnVoiceBtnPress: 录音成功，文件路径为 " .. voiceUri .. ",长度为 " .. duration);
			
			if UI_MJBase.RecordSuccess then
				-- 广播给其他人
				for key, value in pairs(MJScene.Players) do
					if value:IsHero() == false then
						RongCloudAdapter.SendVoiceMessage(value.ID, voiceUri, duration);
					end
				end
				-- 同时播放自己的声音，确保在主线程里面调用，否则会闪退
				MJScene.AddChatHistory(MJPlayer.Hero.ID, MJChatType.Voice, voiceUri, duration);
				Loom.QueueOnMainThread(
				function()
					UI_MJBase.HandleVoice(MJPlayer.Hero.ID, voiceUri, duration);
				end, 0);
			end
		end,
		nil,
		function(errorCode)
			if errorCode == nil then
				UIManager.OpenTipsDialog("录音失败");
				Log.Error("OnVoiceBtnPress: 录音失败");
			else
				UIManager.OpenTipsDialog("录音失败，错误码：" .. tostring(errorCode));
				Log.Error("OnVoiceBtnPress: 录音失败，错误码：" .. tostring(errorCode));
			end
		end);
	else
		UIHelper.SetActiveState(this.transform, "RecordVoice/Record", UI_MJBase.IsRecording);
		UIHelper.SetActiveState(this.transform, "RecordVoice/StopRecord", UI_MJBase.IsRecording);
		RongCloudAdapter.StopRecordVoice();
	end
end

function UI_MJBase.OnVoiceBtnDragStart(go)
	-- Log.Info("OnVoiceBtnDragStart");
	UI_MJBase.RecordStartPos = UnityEngine.Input.mousePosition;
end

function UI_MJBase.OnVoiceBtnDrag(go, deltaPos)
	-- Log.Info("OnVoiceBtnDrag: deltaPos is " .. tostring(deltaPos));
	if UnityEngine.Input.mousePosition.y > UI_MJBase.RecordStartPos.y + 80 then
		-- 显示取消录音界面;
		UIHelper.SetActiveState(this.transform, "RecordVoice/Record", false);
		UIHelper.SetActiveState(this.transform, "RecordVoice/StopRecord", true);
		UI_MJBase.RecordSuccess = false;
	else
		-- 显示继续录音界面;
		UIHelper.SetActiveState(this.transform, "RecordVoice/Record", true);
		UIHelper.SetActiveState(this.transform, "RecordVoice/StopRecord", false);
		UI_MJBase.RecordSuccess = true;
	end
end

function UI_MJBase.OnVoiceBtnDragEnd(go)
	-- Log.Info("OnVoiceBtnDragEnd");
	UI_MJBase.RecordStartPos = Vector3.zero;
end

-- 显示吃碰杠胡界面
function UI_MJBase.ShowOperateView(operations)
	local tempDic = {};
	tempDic["ChooseOperate/Peng1"] = false;
	tempDic["ChooseOperate/Eat1"] = false;
	tempDic["ChooseOperate/Eat2"] = false;
	tempDic["ChooseOperate/Eat3"] = false;
	tempDic["ChooseOperate/Gang1"] = false;
	tempDic["ChooseOperate/Gang2"] = false;
	tempDic["ChooseOperate/Gang3"] = false;
	tempDic["Hu"] = false;
	tempDic["DingHu"] = false;
	local EatNum = 0;
	local GangNum = 0;
	for i = 1, #operations do
		local tempOperate = operations[i];
		if tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_CHI then
			EatNum = EatNum + 1;
			tempDic["ChooseOperate/Eat" .. tostring(EatNum)] = true;
			UI_MJBase.InitEatView(operations);
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_PENG then
			tempDic["ChooseOperate/Peng1"] = true;
			UI_MJBase.InitPengView(operations);
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_GANG or
		tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_BuGang or
		tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_AN_GANG then
			GangNum = GangNum + 1;
			tempDic["ChooseOperate/Gang" .. tostring(GangNum)] = true;
			UI_MJBase.InitGangView(operations);
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_HU then
			tempDic["Hu"] = true;
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_DingHU then
			tempDic["DingHu"] = true;
		end
	end
	local tempTrans = this.transform:Find("bottom/right/Operate");
	local tempBg = this.transform:Find("bottom/right/Bg");
	local tempChoose = tempTrans:FindChild("ChooseOperate");
	if tempTrans == nil then
		return;
	end
	for key, value in pairs(tempDic) do
		UIHelper.SetActiveState(tempTrans, key, value);
	end
	tempBg.gameObject:SetActive(true);
	tempTrans.gameObject:SetActive(true);
	local tempGrid = tempTrans:GetComponent(typeof(UIGrid));
	if tempGrid ~= nil then
		tempGrid:Reposition();
	end
	local ChooseOpGrid = tempChoose:GetComponent(typeof(UIGrid));
	if ChooseOpGrid ~= nil then
		ChooseOpGrid:Reposition();
	end
	if tempDic["ChooseOperate/Gang2"] ~= nil or tempDic["ChooseOperate/Gang3"] then
		local tempGang2Trans = tempTrans:FindChild("ChooseOperate/Gang2");
		tempGang2Trans.localPosition = Vector3.New(tempGang2Trans.localPosition.x - 56, 0, 0);
		local tempGang3Trans = tempTrans:FindChild("ChooseOperate/Gang3");
		tempGang3Trans.localPosition = Vector3.New(tempGang3Trans.localPosition.x - 112, 0, 0);
	end
end

-- 隐藏吃碰杠胡界面
function UI_MJBase.HideOperateView()
	UIHelper.SetActiveState(this.transform, "bottom/right/Operate", false);
	UIHelper.SetActiveState(this.transform, "bottom/right/Bg", false);
end

-- 初始化吃的界面
function UI_MJBase.InitEatView(operations)
	local tempList = {};
	for i = 1, #operations do
		local tempData = operations[i];
		if tempData.m_OperatorType == MaJiangOperatorType.MJOT_CHI then
			tempData.m_CardNum = MJPlayer.Hero:GetHandCardCount();
			table.insert(tempList, tempData);
		end
	end
	local tempTrans = this.transform:Find("bottom/right/Operate/ChooseOperate");
	for	i = 1, 3 do
		local tempPath = "Eat" .. tostring(i);
		local tempTarget = tempTrans:Find(tempPath);
		if #tempList >= i then
			local operateCom = LuaComponent.Get(tempTarget.gameObject, UI_MJOperate);
			if operateCom == nil then
				operateCom = LuaComponent.Add(tempTarget.gameObject, UI_MJOperate);
			end
			operateCom:SetData(tempList[i]);
			tempTarget.gameObject:SetActive(true);
		else
			tempTarget.gameObject:SetActive(false);
		end
	end
end

-- 初始化碰的界面
function UI_MJBase.InitPengView(operations)
	for i = 1, #operations do
		local tempData = operations[i];
		if tempData.m_OperatorType == MaJiangOperatorType.MJOT_PENG then
			tempData.m_CardNum = MJPlayer.Hero:GetHandCardCount();
			local tempTrans = this.transform:Find("bottom/right/Operate/ChooseOperate/Peng1");
			local operateCom = LuaComponent.Get(tempTrans.gameObject, UI_MJOperate);
			if operateCom == nil then
				operateCom = LuaComponent.Add(tempTrans.gameObject, UI_MJOperate);
			end
			operateCom:SetData(tempData);
			tempTrans.gameObject:SetActive(true);
		end
	end
end

-- 初始化杠的界面
function UI_MJBase.InitGangView(operations)
	local tempList = {};
	for i = 1, #operations do
		local tempData = operations[i];
		if tempData.m_OperatorType == MaJiangOperatorType.MJOT_GANG or
		tempData.m_OperatorType == MaJiangOperatorType.MJOT_AN_GANG or
		tempData.m_OperatorType == MaJiangOperatorType.MJOT_BuGang	then
			tempData.m_CardNum = MJPlayer.Hero:GetHandCardCount();
			table.insert(tempList, tempData);
		end
	end
	local tempTrans = this.transform:Find("bottom/right/Operate/ChooseOperate");
	for	i = 1, 3 do
		local tempPath = "Gang" .. tostring(i);
		local tempTarget = tempTrans:Find(tempPath);
		if #tempList >= i then
			local operateCom = LuaComponent.Get(tempTarget.gameObject, UI_MJOperate);
			if operateCom == nil then
				operateCom = LuaComponent.Add(tempTarget.gameObject, UI_MJOperate);
			end
			operateCom:SetData(tempList[i]);
			tempTarget.gameObject:SetActive(true);
		else
			tempTarget.gameObject:SetActive(false);
		end
	end
end

function UI_MJBase.HandleChat(msg)
	local player = MJScene.GetPlayerByID(msg.roleid);
	if player == nil then return end;
	local playerUI = player.UI;
	if playerUI == nil then return end;
	if msg.faceid == MJChatType.Interaction then
		-- 送花等交互行为
		local receivePlayer = MJScene.GetPlayerByID(msg.receiveid);
		if receivePlayer == nil then return end;
		local oriObj = this.transform:Find("Interaction");
		local interactionObj = NGUITools.AddChild(this.transform.gameObject, oriObj.gameObject);
		local com = LuaComponent.Add(interactionObj, UI_MJInteraction);
		local startPos = player.UI.transform:Find("Enter/Center").position;
		local targetPos = receivePlayer.UI.transform:Find("Enter/Center").position;
		startPos = this.transform:InverseTransformPoint(startPos);
		targetPos = this.transform:InverseTransformPoint(targetPos);
		UI_MJInteraction.Play(com, startPos, targetPos, msg.faceName);
	elseif msg.faceid == MJChatType.Face then
		-- 表情
		local tempSprite = UIHelper.SetSpriteName(playerUI.transform, "Enter/Center/Chat/Face/Sprite", msg.faceName);
		local tempSpriteAnimation = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Face/Sprite", typeof(UISpriteAnimation));
		tempSpriteAnimation.namePrefix = string.sub(msg.faceName, 1, 3);
		tempSpriteAnimation.enabled = true;
		tempSpriteAnimation:ResetToBeginning();
		tempSpriteAnimation:Play();
		UIHelper.SetActiveState(playerUI.transform, "Enter/Center/Chat/Face", true);
	elseif msg.faceid == MJChatType.DefaultText then
		-- 默认文字
		local strs = Utility.SplitString(msg.faceName, ".");
		local tempLabel = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Label", typeof(UILabel));
		tempLabel.text = strs[2];
		local tempSprite = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Kuang", typeof(UISprite));
		tempSprite.width = tempLabel.width + 34;
		UIHelper.SetActiveState(playerUI.transform, "Enter/Center/Chat/Text", true);
		local sound = UI_MJChat.GetDefaultTextSound(strs[1], player);
		AudioManager.PlaySound(sound);
	elseif msg.faceid == MJChatType.CustomText then
		-- 自定义文字
		local tempLabel = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Label", typeof(UILabel));
		tempLabel.text = msg.faceName;
		local tempSprite = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Kuang", typeof(UISprite));
		tempSprite.width = tempLabel.width + 34;
		UIHelper.SetActiveState(playerUI.transform, "Enter/Center/Chat/Text", true);
	end
end

function UI_MJBase.HandleVoice(roleid, uri, duration)
	local player = MJScene.GetPlayerByID(tonumber(roleid));
	if player == nil then return end;
	local playerUI = player.UI;
	if playerUI == nil then return end;
	if duration <= 0 then return end;
	Log.Info("HandleVoice: play.");
	local scheduleHide = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Voice", typeof(NCSpeedLight.ScheduleHide));
	scheduleHide.Time = duration;
	UIHelper.SetActiveState(playerUI.transform, "Enter/Center/Chat/Voice", true);
	RongCloudAdapter.PlayVoice(uri, 1);
end

-- 设置聊天面板是否显示
function UI_MJBase.SetChatActive(status)
	UI_MJBase.IsOpenChat = status;
	UIHelper.SetActiveState(this.transform, "bottom/right/Chat", status);
end

-- 启动操作倒计时
function UI_MJBase.StartOperateCountdown()
	UIHelper.SetActiveState(this.transform, "center/Time", true);
	UIHelper.SetActiveState(this.transform, "center/OperatorPrompt", false);
	coroutine.stop(UI_MJBase.OperateCountdownCo);
	UI_MJBase.OperateCountdownCo = coroutine.start(function()
		for i = 1, UI_MJBase.OperateTime do
			local time = UI_MJBase.OperateTime - i;
			local timeStr = tostring(time);
			local timeStr1 = "0";
			local timeStr2 = "0";
			if time >= 10 then
				timeStr1 = string.sub(timeStr, 1, 1);
				timeStr2 = string.sub(timeStr, 2, 2);
			else
				timeStr1 = "0";
				timeStr2 = string.sub(timeStr, 1, 1);
			end
			UIHelper.SetSpriteName(this.transform, "center/Time/1", timeStr1);
			UIHelper.SetSpriteName(this.transform, "center/Time/2", timeStr2);
			if time == 1 then
				if MJPlayer.IsHero(MJScene.CurrentOperator) then
					AudioManager.PlaySound("MJ_TimeOne");
				end
			elseif time == 2 then
				if MJPlayer.IsHero(MJScene.CurrentOperator) then
					AudioManager.PlaySound("MJ_TimeTwo");
				end
			end
			coroutine.wait(1);
		end
		if MJPlayer.IsHero(MJScene.CurrentOperator) then
			UIHelper.SetActiveState(this.transform, "center/OperatorPrompt", true);
			AudioManager.PlaySound("MJ_TimeZero");
		end
	end);
end

-- 停止操作倒计时
function UI_MJBase.StopOperateCountdown()
	UIHelper.SetActiveState(this.transform, "center/Time", false);
	UIHelper.SetActiveState(this.transform, "center/OperatorPrompt", false);
	coroutine.stop(UI_MJBase.OperateCountdownCo);
end

-- 设置返回结算按钮的显示
function UI_MJBase.SetBackToResultButtonActive(status)
	UIHelper.SetActiveState(this.transform, "center/Btn_BackToResult", status);
end

function UI_MJBase.OnClickBackToResult()
	UI_MJBase.SetBackToResultButtonActive(false);
	local huPlayerID = MJScene.CurrentResultInfo.m_huRoleid;
	local huPlayer = MJScene.GetPlayerByID(huPlayerID);	
	if huPlayer == nil then
		UIManager.OpenWindow(UIName.UI_MJDraw);
	else
		UIManager.OpenWindow(UIName.UI_MJResult);
	end
end


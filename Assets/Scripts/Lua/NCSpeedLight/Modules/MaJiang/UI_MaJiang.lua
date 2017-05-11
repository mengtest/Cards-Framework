-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MaJiang.lua
-- Describle:   麻将主界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
require "NCSpeedLight.Modules.MaJiang.UI_HeroPlayer"
require "NCSpeedLight.Modules.MaJiang.UI_OtherPlayer"
require "NCSpeedLight.Modules.MaJiang.UI_MJInteraction"

UI_MaJiang = {
	transform,
	gameObject,
	UI_Player0,
	UI_Player1,
	UI_Player2,
	UI_Player3,
	CurrentTime = nil,
	IsOpenChat = false,
	IsRecording = false, -- 是否正在录音
	RecordStartPos = Vector3.zero,
	RecordSuccess = false,
}
local this = UI_MaJiang

function UI_MaJiang.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	IsOpenChat = false;
	IsRecording = false;
	RecordSuccess = false;
end

function UI_MaJiang.Start()
	UIHelper.SetButtonEvent(this.transform, "top/topRight/Button (Set)", UI_MaJiang.OnClickSetting);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/DissolveRoom", UI_MaJiang.DissolveRoom);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Button (Message)", UI_MaJiang.OnClickChat);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Button (Message2)", UI_MaJiang.OnClickTest);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/Yes", UI_MaJiang.OnClickYes);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/No", UI_MaJiang.OnClickNo);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/Invite", UI_MaJiang.OnClickInvite);
	UIHelper.SetButtonEvent(this.transform, "center/CastDice/Button", UI_MaJiang.OnClickCastDice);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/Hu", UI_MaJiang.OnClickHu);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/DingHu", UI_MaJiang.OnClickDingHu);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/Pass", UI_MaJiang.OnClickPass);
	UIHelper.SetButtonEvent(this.transform, "Texture", UI_MaJiang.OnClickOtherArea);
	
	-- 录音按钮相关事件监听逻辑
	local voiceBtnListener = UIHelper.GetComponent(this.transform, "bottom/right/Button (Voice)", typeof(UIEventListener));
	if voiceBtnListener == nil then
		voiceBtnListener = UIHelper.AddComponent(this.transform, "bottom/right/Button (Voice)", typeof(UIEventListener));
	end
	voiceBtnListener.onPress = UI_MaJiang.OnVoiceBtnPress;
	voiceBtnListener.onDragStart = UI_MaJiang.OnVoiceBtnDragStart;
	voiceBtnListener.onDrag = UI_MaJiang.OnVoiceBtnDrag;
	voiceBtnListener.onDragEnd = UI_MaJiang.OnVoiceBtnDragEnd;
	
	UI_MaJiang.SetupCurrentRound();
	UI_MaJiang.SetupPlayerUIVisiable();
	if HallScene.CurrentFBPlaybackMode then
		UI_MaJiang.SetupReadyAndInvite(false, false, false);
	else
		UI_MaJiang.SetupReadyAndInvite(true, false, true);
	end
	UI_MaJiang.InitPlayerUI();
end

function UI_MaJiang.Update()
	-- UI_MaJiang.CurrentTime = os.date("%H:%M");
	-- UIHelper.SetLabelText(this.transform, "top/topLeft/CurrentLatency/Label", tostring(UI_MaJiang.CurrentTime));
end

function UI_MaJiang.OnDestroy()
end

function UI_MaJiang.Reset()
	UI_MaJiang.SetupCurrentRound();
	if HallScene.CurrentFBPlaybackMode then
		UI_MaJiang.SetupReadyAndInvite(false, false, false);
	else
		UI_MaJiang.SetupReadyAndInvite(true, false, true);
	end
end

-- 初始化玩家的UI
function UI_MaJiang.InitPlayerUI()
	UI_MaJiang.UI_Player0 = this.transform:Find("Player0");
	UI_MaJiang.UI_Player1 = this.transform:Find("Player1");
	UI_MaJiang.UI_Player2 = this.transform:Find("Player2");
	UI_MaJiang.UI_Player3 = this.transform:Find("Player3");
	
	LuaComponent.Add(UI_MaJiang.UI_Player0.gameObject, UI_HeroPlayer);
	LuaComponent.Add(UI_MaJiang.UI_Player1.gameObject, UI_OtherPlayer);
	LuaComponent.Add(UI_MaJiang.UI_Player2.gameObject, UI_OtherPlayer);
	LuaComponent.Add(UI_MaJiang.UI_Player3.gameObject, UI_OtherPlayer);
	
	if not HallScene.CurrentFBPlaybackMode then
		UIHelper.SetButtonEvent(UI_MaJiang.UI_Player0, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(0);
			UIManager.OpenWindow(UIType.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
		UIHelper.SetButtonEvent(UI_MaJiang.UI_Player1, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(1);
			UIManager.OpenWindow(UIType.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
		UIHelper.SetButtonEvent(UI_MaJiang.UI_Player2, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(2);
			UIManager.OpenWindow(UIType.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
		UIHelper.SetButtonEvent(UI_MaJiang.UI_Player3, "Enter/Center/Icon/Sprite (Photo)", function()
			local player = MJScene.GetPlayerByUIPosition(3);
			UIManager.OpenWindow(UIType.UI_MJPlayerInfo);
			UI_MJPlayerInfo.CurrentPlayer = player;
		end);
	end
end

-- 获取玩家的UI
function UI_MaJiang.GetPlayerUI(serverPos)
	local heroPos = MJPlayer.Hero.ServerPosition;
	if HallScene.CurrentFBType == MJRoomType.R_1 then -- 二人场
		if heroPos == serverPos then
			local uiCom = LuaComponent.Get(UI_MaJiang.UI_Player0.gameObject, UI_HeroPlayer);
			return {uiCom, UI_MaJiang.UI_Player0, 0};
		else
			local uiCom = LuaComponent.Get(UI_MaJiang.UI_Player2.gameObject, UI_OtherPlayer);
			return {uiCom, UI_MaJiang.UI_Player2, 2};
		end
	elseif HallScene.CurrentFBType == MJRoomType.R_2 then -- 四人场
		if heroPos == serverPos then
			local uiCom = LuaComponent.Get(UI_MaJiang.UI_Player0.gameObject, UI_HeroPlayer);
			return {uiCom, UI_MaJiang.UI_Player0, 0};
		else
			local offset = 4 - heroPos;
			local pos =(offset + serverPos) % 4;
			local uiTransform = UI_MaJiang.GetPlayerUIByPosition(pos);
			local uiCom = LuaComponent.Get(uiTransform.gameObject, UI_OtherPlayer);
			return {uiCom, uiTransform, pos};
		end
	end
end

-- 通过UI的位置获取对象
function UI_MaJiang.GetPlayerUIByPosition(pos)
	if pos == 0 then
		return UI_MaJiang.UI_Player0;
	elseif pos == 1 then
		return UI_MaJiang.UI_Player1;
	elseif pos == 2 then
		return UI_MaJiang.UI_Player2;
	elseif pos == 3 then
		return UI_MaJiang.UI_Player3;
	end
end

-- 设置player ui显示
function UI_MaJiang.SetupPlayerUIVisiable()
	if HallScene.CurrentFBType == MJRoomType.R_1 then
		UIHelper.SetActiveState(this.transform, "Player1", false);
		UIHelper.SetActiveState(this.transform, "Player3", false);
	end
end

-- 设置准备和邀请按钮的显示状态 , ready/unready/invite
function UI_MaJiang.SetupReadyAndInvite(ready, unready, invite)
	Log.Info("UI_MaJiang.SetupReadyAndInvite: " .. tostring(ready) .. "," .. tostring(unready) .. "," .. tostring(invite));
	UIHelper.SetActiveState(this.transform, "center/Ready/Yes", ready);
	UIHelper.SetActiveState(this.transform, "center/Ready/No", unready);
	UIHelper.SetActiveState(this.transform, "center/Ready/Invite", invite);
end

-- 设置掷骰子
function UI_MaJiang.SetupCastDice(status)
	Log.Info("UI_MaJiang.SetupCastDice: status is " .. tostring(status));
	UIHelper.SetActiveState(this.transform, "center/CastDice/Button", status);
end

-- 设置当前的局数
function UI_MaJiang.SetupCurrentRound()
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime", true);
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime/Label (Tips)", true);
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime/Label", true);
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainTime/Label (Tips)", "当前局数");
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainTime/Label", HallScene.CurrentFBRound .. "/" .. HallScene.CurrentFBTotalRound);
end

-- 设置剩余的牌的个数
function UI_MaJiang.SetupRemainCardCount(count)
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainCards", true);
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainCards/Label", tostring(count));
end

-- 设置回放控制面板
function UI_MaJiang.SetupPlaybackControl(status)
	UIHelper.SetActiveState(this.transform, "center/ContrlPanel", status);
end

-- 回放模式
function UI_MaJiang.OnPlaybackMode()
	UIHelper.SetActiveState(this.transform, "center/ContrlPanel", true);
	UIHelper.SetActiveState(this.transform, "top/topRight", false);
	UIHelper.SetActiveState(this.transform, "bottom", false);
end

function UI_MaJiang.OnClickSetting(go)
	UIManager.OpenWindow(UIType.UI_MJSetting);	
end

function UI_MaJiang.DissolveRoom(go)
	local option = StandardDialogOption:New();
	option.OnClickOK =
	function()
		MJScene.RequestCloseRoom();
	end;
	option.DoubleButton = true;
	option.Content = "解散房间不扣除房卡，是否确定解散？";
	option.Title = "解散房间";
	UIManager.OpenStandardDialog(option);
end

function UI_MaJiang.OnClickChat(go)
	UI_MaJiang.IsOpenChat = not UI_MaJiang.IsOpenChat;
	UI_MaJiang.SetChatActive(UI_MaJiang.IsOpenChat);
end

-- 偷天换日
function UI_MaJiang.OnClickTest(go)
	UIManager.OpenWindow(UIType.UI_MJTest);
end

function UI_MaJiang.OnClickYes(go)
	MJScene.RequestReady(true);
end

function UI_MaJiang.OnClickNo(go)
	MJScene.RequestReady(false);
end

function UI_MaJiang.OnClickInvite(go)
end

function UI_MaJiang.OnClickCastDice(go)
	MJScene.RequestCastDice();
end

function UI_MaJiang.OnClickHu(go)
	UI_MaJiang.HideOperateView();
	MJScene.RequestMJOperate_Hu();
end

function UI_MaJiang.OnClickDingHu(go)
	UI_MaJiang.HideOperateView();
	MJScene.RequestMJOperate_DingHu();
end

function UI_MaJiang.OnClickPass(go)
	UI_MaJiang.HideOperateView();
	MJScene.RequestMJOperate_Guo();
end

function UI_MaJiang.OnClickOtherArea(go)
	if UI_MaJiang.IsOpenChat then
		UI_MaJiang.IsOpenChat = not UI_MaJiang.IsOpenChat;
		UI_MaJiang.SetChatActive(UI_MaJiang.IsOpenChat);
	else
		if MJPlayer.Hero ~= nil and MJPlayer.Hero.UI ~= nil then
			MJPlayer.Hero.UI:RecoverSelectedCard();
		end
	end
end

function UI_MaJiang.OnVoiceBtnPress(go, status)
	-- Log.Info("UI_MaJiang.OnVoiceBtnPress: status is " .. tostring(status));
	UI_MaJiang.IsRecording = status;
	UIHelper.SetActiveState(this.transform, "RecordVoice/Record", UI_MaJiang.IsRecording);
	if UI_MaJiang.IsRecording == true then
		UI_MaJiang.RecordSuccess = true;
		RongCloudAdapter.StartRecordVoice(
		function(isTimeout, voiceUri, duration)
			if duration <= 0 then
				UIManager.OpenTipsDialog("录音时间小于1s，无法发送");
				return;		
			end
			Log.Info("UI_MaJiang.OnVoiceBtnPress: 录音成功，文件路径为 " .. voiceUri .. ",长度为 " .. duration);
			
			if UI_MaJiang.RecordSuccess then
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
					UI_MaJiang.HandleVoice(MJPlayer.Hero.ID, voiceUri, duration);
				end, 0);
			end
		end,
		nil,
		function(errorCode)
			if errorCode == nil then
				UIManager.OpenTipsDialog("录音失败");
				Log.Error("UI_MaJiang.OnVoiceBtnPress: 录音失败");
			else
				UIManager.OpenTipsDialog("录音失败，错误码：" .. tostring(errorCode));
				Log.Error("UI_MaJiang.OnVoiceBtnPress: 录音失败，错误码：" .. tostring(errorCode));
			end
		end);
	else
		UIHelper.SetActiveState(this.transform, "RecordVoice/Record", UI_MaJiang.IsRecording);
		UIHelper.SetActiveState(this.transform, "RecordVoice/StopRecord", UI_MaJiang.IsRecording);
		RongCloudAdapter.StopRecordVoice();
	end
end

function UI_MaJiang.OnVoiceBtnDragStart(go)
	-- Log.Info("UI_MaJiang.OnVoiceBtnDragStart");
	UI_MaJiang.RecordStartPos = UnityEngine.Input.mousePosition;
end

function UI_MaJiang.OnVoiceBtnDrag(go, deltaPos)
	-- Log.Info("UI_MaJiang.OnVoiceBtnDrag: deltaPos is " .. tostring(deltaPos));
	if UnityEngine.Input.mousePosition.y > UI_MaJiang.RecordStartPos.y + 80 then
		-- 显示取消录音界面;
		UIHelper.SetActiveState(this.transform, "RecordVoice/Record", false);
		UIHelper.SetActiveState(this.transform, "RecordVoice/StopRecord", true);
		UI_MaJiang.RecordSuccess = false;
	else
		-- 显示继续录音界面;
		UIHelper.SetActiveState(this.transform, "RecordVoice/Record", true);
		UIHelper.SetActiveState(this.transform, "RecordVoice/StopRecord", false);
		UI_MaJiang.RecordSuccess = true;
	end
end

function UI_MaJiang.OnVoiceBtnDragEnd(go)
	-- Log.Info("UI_MaJiang.OnVoiceBtnDragEnd");
	UI_MaJiang.RecordStartPos = Vector3.zero;
end

-- 显示吃碰杠胡界面
function UI_MaJiang.ShowOperateView(operations)
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
			UI_MaJiang.InitEatView(operations);
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_PENG then
			tempDic["ChooseOperate/Peng1"] = true;
			UI_MaJiang.InitPengView(operations);
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_GANG or
		tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_BuGang or
		tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_AN_GANG then
			GangNum = GangNum + 1;
			tempDic["ChooseOperate/Gang" .. tostring(GangNum)] = true;
			UI_MaJiang.InitGangView(operations);
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
function UI_MaJiang.HideOperateView()
	UIHelper.SetActiveState(this.transform, "bottom/right/Operate", false);
	UIHelper.SetActiveState(this.transform, "bottom/right/Bg", false);
end

-- 初始化吃的界面
function UI_MaJiang.InitEatView(operations)
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
function UI_MaJiang.InitPengView(operations)
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
function UI_MaJiang.InitGangView(operations)
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

function UI_MaJiang.HandleChat(msg)
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
		com:Play(startPos, targetPos, msg.faceName);
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
		local tempLabel = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Label", typeof(UILabel));
		tempLabel.text = msg.faceName;
		local tempSprite = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Kuang", typeof(UISprite));
		tempSprite.width = tempLabel.width + 34;
		UIHelper.SetActiveState(playerUI.transform, "Enter/Center/Chat/Text", true);
	elseif msg.faceid == MJChatType.CustomText then
		-- 自定义文字
		local tempLabel = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Label", typeof(UILabel));
		tempLabel.text = msg.faceName;
		local tempSprite = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Text/Kuang", typeof(UISprite));
		tempSprite.width = tempLabel.width + 34;
		UIHelper.SetActiveState(playerUI.transform, "Enter/Center/Chat/Text", true);
	end
end

function UI_MaJiang.HandleVoice(roleid, uri, duration)
	local player = MJScene.GetPlayerByID(tonumber(roleid));
	if player == nil then return end;
	local playerUI = player.UI;
	if playerUI == nil then return end;
	if duration <= 0 then return end;
	Log.Info("UI_MaJiang.HandleVoice: play.");
	local scheduleHide = UIHelper.GetComponent(playerUI.transform, "Enter/Center/Chat/Voice", typeof(NCSpeedLight.ScheduleHide));
	scheduleHide.Time = duration;
	UIHelper.SetActiveState(playerUI.transform, "Enter/Center/Chat/Voice", true);
	RongCloudAdapter.PlayVoice(uri, 1);
end

-- 设置聊天面板是否显示
function UI_MaJiang.SetChatActive(status)
	UI_MaJiang.IsOpenChat = status;
	UIHelper.SetActiveState(this.transform, "bottom/right/Chat", status);
end 
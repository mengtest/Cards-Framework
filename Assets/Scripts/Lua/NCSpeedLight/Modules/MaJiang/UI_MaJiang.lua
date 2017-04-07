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
UI_MaJiang = {
	transform,
	gameObject,
	UI_Player0,
	UI_Player1,
	UI_Player2,
	UI_Player3,
	CurrentTime = nil,
}
local this = UI_MaJiang
function UI_MaJiang.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end
function UI_MaJiang.Start()
	UIHelper.SetButtonEvent(this.transform, "bottom/right/DissolveRoom", UI_MaJiang.DissolveRoom);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Button (Message2)", UI_MaJiang.OnClickTest);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/Yes", UI_MaJiang.OnClickYes);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/No", UI_MaJiang.OnClickNo);
	UIHelper.SetButtonEvent(this.transform, "center/Ready/Invite", UI_MaJiang.OnClickInvite);
	UIHelper.SetButtonEvent(this.transform, "center/CastDice/Button", UI_MaJiang.OnClickCastDice);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/Hu", UI_MaJiang.OnClickHu);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/DingHu", UI_MaJiang.OnClickDingHu);
	UIHelper.SetButtonEvent(this.transform, "bottom/right/Operate/Pass", UI_MaJiang.OnClickPass);
	UI_MaJiang.SetupCurrentRound();
	UI_MaJiang.SetupPlayerUIVisiable();
	UI_MaJiang.SetupReadyAndInvite(true, false, true);
	UI_MaJiang.InitPlayerUI();
end
function UI_MaJiang.Update()
	UI_MaJiang.CurrentTime = os.date("%H:%M");
	UIHelper.SetLabelText(this.transform, "top/topLeft/CurrentLatency/Label", tostring(UI_MaJiang.CurrentTime));
end
function UI_MaJiang.OnDestroy()
end
function UI_MaJiang.Reset()
	UI_MaJiang.SetupCurrentRound();
	UI_MaJiang.SetupReadyAndInvite(true, false, true);
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
end
function UI_MaJiang.GetPlayerUI(realPos)
	local heroPos = MJPlayer.Hero.MJData.m_RoleData.m_Postion;
	if SharedVariable.FBInfo.m_FBTypeID == MJRoomType.R_1 then
		if heroPos == realPos then
			local uiCom = LuaComponent.Get(UI_MaJiang.UI_Player0.gameObject, UI_HeroPlayer);
			return {uiCom, UI_MaJiang.UI_Player0, 0};
		else
			local uiCom = LuaComponent.Get(UI_MaJiang.UI_Player2.gameObject, UI_OtherPlayer);
			return {uiCom, UI_MaJiang.UI_Player2, 2};
		end
	else
		return nil;
	end
end
-- 设置player ui显示
function UI_MaJiang.SetupPlayerUIVisiable()
	if SharedVariable.FBInfo.m_FBTypeID == MJRoomType.R_1 then
		UIHelper.SetActiveState(this.transform, "Player1", false);
		UIHelper.SetActiveState(this.transform, "Player3", false);
	end
end
-- 设置准备和邀请按钮的显示状态 , Yes/No/Invite
function UI_MaJiang.SetupReadyAndInvite(...)
	local states = {...};
	UIHelper.SetActiveState(this.transform, "center/Ready/Yes", states[1]);
	UIHelper.SetActiveState(this.transform, "center/Ready/No", states[2]);
	UIHelper.SetActiveState(this.transform, "center/Ready/Invite", states[3]);
end
-- 设置掷骰子
function UI_MaJiang.SetupCastDice(status)
	Log.Info("UI_MaJiang.SetupCastDice: status is " .. tostring(status));
	if status then
		if MJPlayer.Hero.MJData.m_RoleData.m_Postion == MJPlayer.Hero.HandCardInfo.m_bankerPos then
			NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/CastDice/Button", true);
		else
			NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/CastDice/Button", false);
		end
	else
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/CastDice/Button", false);
	end
end
-- 设置当前的局数
function UI_MaJiang.SetupCurrentRound()
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime", true);
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime/Label (Tips)", true);
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainTime/Label", true);
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainTime/Label (Tips)", "当前局数");
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainTime/Label", MJScene.CurrentRound .. "/" .. MJScene.TotalRound);
end
-- 设置剩余的牌的个数
function UI_MaJiang.SetupRemainCardCount(count)
	UIHelper.SetActiveState(this.transform, "top/topLeft/RemainCards", true);
	UIHelper.SetLabelText(this.transform, "top/topLeft/RemainCards/Label", tostring(count));
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
	for i = 1, # operations do
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
	for i = 1, # operations do
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
		if # tempList >= i then
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
	for i = 1, # operations do
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
	for i = 1, # operations do
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
		if # tempList >= i then
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
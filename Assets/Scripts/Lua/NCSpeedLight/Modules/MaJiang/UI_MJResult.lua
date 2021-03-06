﻿-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJResult.lua
-- Describle:  单局结算界面
-- Created By:  Wells Hsu
-- DateTime:  2017/05/26 14:28:51
-- Modify History:
--
-----------------------------------------------
UI_MJResult = {
	transform = nil,
	gameObject = nil,
};

local this = UI_MJResult;

-- Called by mono.
function UI_MJResult.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

-- Use this for initialization.
function UI_MJResult.Start()
	UI_MJResult.InitBtnEvent();
	UI_MJResult.SetWinOrLose();
	UI_MJResult.SetJiangMa();
	UI_MJResult.SetHuType();
	UI_MJResult.SetHuCards();
	UI_MJResult.SetPlayerInfo();
	UI_MJResult.SetPlayway();
	UI_MJResult.SetRound();
	UI_MJResult.iOSCheck();
end

-- Use this for destruction.
function UI_MJResult.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

-- Called when pre reload script.
function UI_MJResult.OnPreReload()
end

-- Called when post reload script.
function UI_MJResult.OnPostReload()
end

function UI_MJResult.iOSCheck()
	UIHelper.SetActiveState(this.transform, "Button/Share", not Constants.IOS_CHECK);
end

-- 设置按钮事件
function UI_MJResult.InitBtnEvent()
	-- 继续游戏
	UIHelper.SetButtonEvent(this.transform, "Button/Continue", function(obj)
		MJScene.OnceAgain();
		UIManager.CloseAllWindowsExcept(UIName.UI_MJBase);
	end);
	-- 分享
	UIHelper.SetButtonEvent(this.transform, "Button/Share", UI_MJResult.OnClickShare);
	-- 查看总成绩
	UIHelper.SetButtonEvent(this.transform, "Button/TotalScore", function(obj)
		UIManager.CloseAllWindowsExcept(UIName.UI_MJBase);
		UIManager.OpenWindow(UIName.UI_MJTotalResult);
	end);
	-- 查看牌局
	UIHelper.SetButtonEvent(this.transform, "Button/TableCard", function(obj)
		UIManager.CloseWindow(UIName.UI_MJResult);
		if HallScene.CurrentFBPlaybackMode then
			UI_MJPlayback.WaitReplay();
		else
			UI_MJBase.SetBackToResultButtonActive(true);
		end
	end);
	-- 重新播放
	UIHelper.SetButtonEvent(this.transform, "Button/Replay", function(obj)
		UIManager.CloseWindow(UIName.UI_MJResult);
		UI_MJPlayback.Replay();
	end);
	if HallScene.CurrentFBPlaybackMode == false then
		if HallScene.CurrentFBRound >= HallScene.CurrentFBTotalRound then
			UIHelper.SetActiveState(this.transform, "Button/TotalScore", true);
			UIHelper.SetActiveState(this.transform, "Button/Continue", false);
			UIHelper.SetActiveState(this.transform, "Button/Replay", false);
		else
			UIHelper.SetActiveState(this.transform, "Button/TotalScore", false);
			UIHelper.SetActiveState(this.transform, "Button/Continue", true);
			UIHelper.SetActiveState(this.transform, "Button/Replay", false);
		end
	else
		UIHelper.SetActiveState(this.transform, "Button/TotalScore", false);
		UIHelper.SetActiveState(this.transform, "Button/Continue", false);
		UIHelper.SetActiveState(this.transform, "Button/Replay", true);
	end
end

-- 设置赢或输或平局
function UI_MJResult.SetWinOrLose()
	local myscore;
	local tempList = MJScene.CurrentResultInfo.m_Data;
	for i = 1, #tempList do
		local tempData = tempList[i];
		if tempData.m_roleid == MJPlayer.Hero.ID then
			myscore = tempData.m_score;
		end
	end
	if myscore > 0 then
		UIHelper.SetSpriteName(this.transform, "bk/title/win", "js1");
		UIHelper.SetSpriteName(this.transform, "bk/title/belt", "js7");
		UIHelper.SetSpriteName(this.transform, "bk/title/belt2", "js7");
		UIHelper.SetActiveState(this.transform, "bk/star1", true);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite1", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite2", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite3", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite4", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite5", false);
		UIHelper.SetActiveState(this.transform, "Button/Button3", true);
	elseif myscore < 0 then
		UIHelper.SetSpriteName(this.transform, "bk/title/win", "js2");
		UIHelper.SetSpriteName(this.transform, "bk/title/belt", "js6");
		UIHelper.SetSpriteName(this.transform, "bk/title/belt", "js6");
		UIHelper.SetActiveState(this.transform, "bk/star1", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite1", true);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite2", true);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite3", true);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite4", true);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite5", true);
	else
		UIHelper.SetSpriteName(this.transform, "bk/title/win", "js1-1");
		UIHelper.SetSpriteName(this.transform, "bk/title/belt", "js7");
		UIHelper.SetSpriteName(this.transform, "bk/title/belt2", "js7");
		UIHelper.SetActiveState(this.transform, "bk/star1", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite1", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite2", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite3", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite4", false);
		UIHelper.SetSpriteGray(this.transform, "bk/star2/Sprite5", false);
	end
end

-- 设置奖码
function UI_MJResult.SetJiangMa()
	local tempCloneTrans = this.transform:Find("Reward/Clone");
	local tempParent = this.transform:Find("Reward/RewardCard");
	for i = 1, #MJScene.CurrentResultInfo.m_MaCardType do
		local tempType = MJScene.CurrentResultInfo.m_MaCardType[i];
		local tempNewObj = NGUITools.AddChild(tempParent.gameObject, tempCloneTrans.gameObject);
		tempNewObj.name = tostring(i - 1);
		tempNewObj.transform.localScale = tempCloneTrans.localScale;
		UIHelper.SetSpriteName(tempNewObj.transform, "Sprite", MaJiangType.ToString(tempType));
		tempNewObj:SetActive(true);
	end
	for i = 1, #MJScene.CurrentResultInfo.m_MaCardSign do
		local tempClone = tempParent:Find(MJScene.CurrentResultInfo.m_MaCardSign[i]);
		UIHelper.SetActiveState(tempClone, "Kuang", true);
	end
	local tempGrid = tempParent:GetComponent(typeof(UIGrid));
	tempGrid:Reposition();
	tempGrid.enabled = true;
end

-- 展示胡的类型
function UI_MJResult.SetHuType()
	--  只有自摸和抢杠 1.自摸
	if MJScene.CurrentResultInfo.m_huType == 1 then
		UIHelper.SetSpriteName(this.transform, "Card/Type", "js14");
	else
		UIHelper.SetSpriteName(this.transform, "Card/Type", "js12");
	end
	UIHelper.SetActiveState(this.transform, "Card/Type", true);
end

-- 展示胡了的牌
function UI_MJResult.SetHuCards()
	local tempHuId = MJScene.CurrentResultInfo.m_huRoleid;
	local tempFpId = MJScene.CurrentResultInfo.m_fpid;
	local roleDatas = MJScene.CurrentResultInfo.m_Data;
	for i = 1, #roleDatas do
		local roleData = roleDatas[i];
		if roleData.m_roleid == tempHuId then
			local player = MJScene.GetPlayerByID(roleData.m_roleid);
			local tempCloneTrans = this.transform:Find("Card/Clone");
			local tempParent = this.transform:Find("Card/Grid");
			local tempFirstCardTrans = nil;
			local displayCards = {};
			for j = 1, #roleData.m_HandCardType do
				local cardType = roleData.m_HandCardType[j];
				local card = {};
				card.Type = cardType;
				card.Operate = 0;
				table.insert(displayCards, card);
			end
			for j = 1, #player.PengCards do
				local cardType = player.PengCards[j].m_Type;
				local card = {};
				card.Type = cardType;
				card.Operate = 1;
				table.insert(displayCards, card);
			end
			for j = 1, #player.GangCards do
				local cardType = player.GangCards[j].m_Type;
				local card = {};
				card.Type = cardType;
				card.Operate = 2;
				table.insert(displayCards, card);
			end
			for j = 1, #roleData.m_SaoType do
				local cardType = #roleData.m_SaoType[j];
				for k = 1, 4 do
					local card = {};
					card.Type = cardType;
					card.Operate = 2;
					table.insert(displayCards, card);
				end
			end
			table.sort(displayCards, function(o1, o2)
				local type1 = o1.Type;
				local type2 = o2.Type;
				if MJScene.IsJingCard(type1) then
					type1 = - 100;
				end
				if MJScene.IsJingCard(type2) then
					type2 = - 100;
				end
				return type1 < type2;
			end);
			local card = {};
			card.Type = MJScene.CurrentResultInfo.m_huCard.m_Type;
			card.Operate = 0;
			table.insert(displayCards, 1, card);
			local currentLocalPos = Vector3.New(- 18, 0, 0);
			for j = 1, #displayCards do
				local tempItem = NGUITools.AddChild(tempParent.gameObject, tempCloneTrans.gameObject);
				tempItem:SetActive(true);
				tempItem.transform.localScale = tempCloneTrans.localScale;
				tempItem.transform.localPosition = currentLocalPos;
				currentLocalPos = Vector3.New(40, 0, 0) * j;
				local card = displayCards[j];
				UIHelper.SetSpriteName(tempItem.transform, "Sprite", MaJiangType.ToString(card.Type));
				UIHelper.SetActiveState(tempItem.transform, "Jing", MJScene.IsJingCard(card.Type));
				if card.Operate == 2 then
					UIHelper.SetActiveState(tempItem.transform, "Jing", true);
					UIHelper.SetSpriteName(tempItem.transform, "Jing", "MJ-96")
				end
			end
		end
	end
end

-- 展示玩家信息
function UI_MJResult.SetPlayerInfo()
	local tempHuId = MJScene.CurrentResultInfo.m_huRoleid;
	local tempFpId = MJScene.CurrentResultInfo.m_fpid;
	local allRoleHandCards = MJScene.CurrentResultInfo.m_Data;
	for i = 1, #allRoleHandCards do
		local card = allRoleHandCards[i];
		local tempPlayer = MJScene.GetPlayerByID(card.m_roleid);
		local tempTran = this.transform:Find("Grid/" .. tempPlayer.UIPosition);
		tempTran.gameObject:SetActive(true);
		if tempPlayer:IsBanker() then
			UIHelper.SetActiveState(tempTran, "Role/Banker", true);
		end
		if tempPlayer:IsRoomMaster() then
			UIHelper.SetActiveState(tempTran, "Role/Master", true);
		end
		UIHelper.SetLabelText(tempTran, "Label (Name)", Utility.TrimNickName(tempPlayer.Name));
		UIHelper.SetLabelText(tempTran, "Label (ID)", "ID:" .. tostring(tempPlayer.DisplayID));
		local tempScore = tempTran:FindChild("Score");
		UIHelper.SetLabelText(tempScore, "Label (Gang)/Label", tostring(card.m_anGang + card.m_Gang));
		UIHelper.SetLabelText(tempScore, "Label (Hu)/Label", tostring(card.m_Hufeng));
		UIHelper.SetLabelText(tempScore, "Label (Jiang)/Label", tostring(card.m_reward));
		UIHelper.SetLabelText(tempScore, "Label (Score)/Label", tostring(card.m_score));
		UIHelper.SetLabelText(tempTran, "Label (Total)/Label", tostring(card.m_TotalScore));
		
		-- 设置头像
		UIHelper.SetTexture(tempTran, "Role/Sprite (Photo)", tempPlayer.HeadURL);
		
		-- 设置胡牌放炮
		if card.m_roleid == tempHuId then
			UIHelper.SetSpriteName(tempTran, "Sprite (Type)", "js4");
			UIHelper.SetActiveState(tempTran, "Sprite (Type)", true);
		elseif card.m_roleid == tempFpId then
			UIHelper.SetSpriteName(tempTran, "Sprite (Type)", "js5");
			UIHelper.SetActiveState(tempTran, "Sprite (Type)", true);
		end
		
		local tempGrid = tempScore:GetComponent(typeof(UIGrid));
		tempGrid.enabled = true;
		tempGrid:Reposition();
	end
	local tempParentGrid = UIHelper.GetComponent(this.transform, "Grid", typeof(UIGrid));
	tempParentGrid.enabled = true;
	tempParentGrid:Reposition();
end

function UI_MJResult.SetPlayway()
	UIHelper.SetLabelText(this.transform, "LeftTop/Way", MJScene.GetMJPlaywayStr());
end

function UI_MJResult.SetRound()
	local str = "当前局数: " .. HallScene.CurrentFBFinishedRound .. "/" .. HallScene.CurrentFBTotalRound;
	UIHelper.SetLabelText(this.transform, "LeftTop/Rounds", str);
end

function UI_MJResult.OnClickShare(go)
	Screenshot.Take(
	function()
		UIManager.OpenWindow(UIName.UI_Share);
		UI_Share.ShareWithScreenshot = true;
	end);
end

function UI_MJResult.PlayTakeShotAnimation()
	local alphaTweener = UIHelper.GetComponent(this.transform, "WhiteMask/Sprite", typeof(TweenAlpha));
	alphaTweener.from = 0;
	alphaTweener.to = 1;
	alphaTweener.duration = 0.2;
	alphaTweener:ResetToBeginning();
	alphaTweener.enabled = true;
	
	coroutine.wait(0.2);
	
	alphaTweener:ResetToBeginning();
	alphaTweener.from = 1;
	alphaTweener.to = 0;
	alphaTweener.duration = 0.5;
	alphaTweener.enabled = true;
	
	coroutine.wait(0.5);
	Screenshot.Take();
	UIManager.OpenWindow(UIName.UI_Share);
	UI_Share.ShareWithScreenshot = true;
end 
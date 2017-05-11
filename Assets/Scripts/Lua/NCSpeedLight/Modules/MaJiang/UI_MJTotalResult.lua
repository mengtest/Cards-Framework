-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJTotalResult.lua
-- Describle:   总结算界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_MJTotalResult = {
	transform = nil,
	gameObject = nil,
	TotalScores = nil;
}

local this = UI_MJTotalResult;

function UI_MJTotalResult.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJTotalResult.Start()
	UI_MJTotalResult.TotalScores = {};
	UI_MJTotalResult.InitBtnEvent();
	UI_MJTotalResult.DisplayPlaywayAndRound();
	UI_MJTotalResult.DisplayPlayerInfo();
	UI_MJTotalResult.DisplayWinner();
end

function UI_MJTotalResult.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_MJTotalResult.InitBtnEvent()
	-- 返回
	UIHelper.SetButtonEvent(this.transform, "Button/Back", function(obj)
		SceneManager.GotoScene(SceneType.HallScene);
	end);
	-- 分享
	UIHelper.SetButtonEvent(this.transform, "Button/Share", function(obj)
	end);
end

function UI_MJTotalResult.DisplayPlayerInfo()
	local parent = UIHelper.GetComponent(this.transform, "Grid", typeof(UnityEngine.Transform));
	if MJScene.TotalResultInfo == nil or MJScene.TotalResultInfo.m_count == 0 then
		-- 一局也没打
		for key, value in pairs(MJScene.Players) do
			local tempPlayer = value;
			local tempTrans = parent:FindChild(tostring(tempPlayer.UIPosition));
			tempTrans.gameObject:SetActive(true);
			if tempPlayer:IsBanker() then
				UIHelper.SetActiveState(tempTrans, "Role/Banker", true);
			end
			if tempPlayer:IsRoomMaster() then
				UIHelper.SetActiveState(tempTrans, "Role/Master", true);
			end
			UIHelper.SetLabelText(tempTrans, "Role/Label (Name)", tempPlayer.Name);
			UIHelper.SetLabelText(tempTrans, "Role/Label (ID)", "ID:" .. tempPlayer.ID);
			-- 设置头像
			UIHelper.SetTexture(tempTrans, "Role/Sprite (Photo)", tempPlayer.HeadURL);
		end
	else
		for i = 1, #MJScene.TotalResultInfo.m_OneData do
			local tempResultInfo = MJScene.TotalResultInfo.m_OneData[i].m_ResultInfo;
			
			for j = 1, #tempResultInfo do
				local singleResultInfo = tempResultInfo[j];
				local tempPlayer = MJScene.GetPlayerByID(singleResultInfo.m_roleid);
				local tempTrans = parent:FindChild(tempPlayer.UIPosition);
				tempTrans.gameObject:SetActive(true);
				if tempPlayer:IsBanker() then
					UIHelper.SetActiveState(tempTrans, "Role/Banker", true);
				end
				if tempPlayer:IsRoomMaster() then
					UIHelper.SetActiveState(tempTrans, "Role/Master", true);
				end
				UIHelper.SetLabelText(tempTrans, "Role/Label (Name)", tempPlayer.Name);
				UIHelper.SetLabelText(tempTrans, "Role/Label (ID)", "ID:" .. tempPlayer.ID);
				-- 设置头像
				UIHelper.SetTexture(tempTrans, "Role/Sprite (Photo)", tempPlayer.HeadURL);
				local tempItem = tempTrans:FindChild("ScrollView/UIGrid/Item");
				local tempClone = UnityEngine.Object.Instantiate(tempItem);
				tempClone:SetParent(tempItem.parent);
				tempClone.localScale = Vector3.New(1, 1, 1);
				local tempStr = "";
				if i <= 9 then
					tempStr = "第" .. MJResultText.ToString(i - 1) .. "局: ";
				else
					tempStr = "第" .. MJResultText.ToString(9) .. MJResultText.ToString(i - 10) .. "局: ";
				end
				tempStr = tempStr .. tostring(singleResultInfo.m_score);
				-- 单局结算信息
				UIHelper.SetLabelText(tempClone, "Label", tempStr);
				tempClone.gameObject:SetActive(true);
				-- 记录至集合中，便于统计总得分
				local tempScore = UI_MJTotalResult.TotalScores[tempPlayer];
				if tempScore == nil then
					tempScore = singleResultInfo.m_score;
				else
					tempScore = tempScore + singleResultInfo.m_score;
				end
				UI_MJTotalResult.TotalScores[tempPlayer] = tempScore;
				
				-- 设置总成绩
				UIHelper.SetLabelText(tempTrans, "Label (Total)", tostring(tempScore));
				
				local uiGrid = UIHelper.GetComponent(tempTrans, "ScrollView/UIGrid", typeof(UIGrid));
				uiGrid:Reposition();
				uiGrid.enabled = true;
				
			end
		end
	end
	local tempGrid = UIHelper.GetComponent(this.transform, "Grid", typeof(UIGrid));
	tempGrid:Reposition();
	tempGrid.enabled = true;
end

-- 设置大赢家的显示
function UI_MJTotalResult.DisplayWinner()
	local winner;
	local maxScore = - 9999999;
	for key, value in pairs(UI_MJTotalResult.TotalScores) do
		if value > maxScore then
			winner = key;
			maxScore = value;
		end
	end
	if winner ~= nil then
		local parent = UIHelper.GetComponent(this.transform, "Grid", typeof(UnityEngine.Transform));
		local tempTrans = parent:FindChild(tostring(winner.UIPosition));
		UIHelper.SetActiveState(tempTrans, "bk/Winner", true);
	end
end

-- 显示玩法和局数
function UI_MJTotalResult.DisplayPlaywayAndRound()
	local tempRounds = "已打局数: " .. tostring(HallScene.CurrentFBFinishedRound);
	UIHelper.SetLabelText(this.transform, "LeftTop/Rounds", tempRounds);
	UIHelper.SetLabelText(this.transform, "LeftTop/Way", MJScene.GetMJPlayWayStr());
end 
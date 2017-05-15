-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJDraw.lua
-- Describle:   流局界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_MJDraw = {
	transform = nil,
	gameObject = nil,
}

local this = UI_MJDraw;

function UI_MJDraw.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJDraw.Start()
	UI_MJDraw.InitBtnEvent();
	UI_MJDraw.InitView();
	UI_MJDraw.SetupPlaywayAndRound();
end

function UI_MJDraw.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_MJDraw.InitBtnEvent()
	UIHelper.SetButtonEvent(this.transform, "Buttom/OnceAgain", function(obj)
		MJScene.OnceAgain();
		UIManager.CloseAllWindowsExcept(UIName.UI_MaJiang);
	end);
	UIHelper.SetButtonEvent(this.transform, "Buttom/LookTotalResult", function(obj)
		UIManager.CloseAllWindowsExcept(UIName.UI_MaJiang);
		UIManager.OpenWindow(UIName.UI_MJTotalResult);
	end);
	UIHelper.SetButtonEvent(this.transform, "Buttom/ReturnDeskBtn", function(obj)
		-- 查看牌局
		UIManager.CloseWindow(UIName.UI_MJDraw);
		if HallScene.CurrentFBPlaybackMode then
			UI_MJPlayback.WaitReplay();
		end
	end);
	UIHelper.SetButtonEvent(this.transform, "Buttom/Replay", function(obj)
		UIManager.CloseWindow(UIName.UI_MJDraw);
		UI_MJPlayback.Replay();
	end);
end

function UI_MJDraw.InitView()
	if HallScene.CurrentFBPlaybackMode then
		UIHelper.SetActiveState(this.transform, "Buttom/LookTotalResult", false);
		UIHelper.SetActiveState(this.transform, "Buttom/OnceAgain", false);
		UIHelper.SetActiveState(this.transform, "Buttom/Replay", true);
	else
		if HallScene.CurrentFBRound >= HallScene.CurrentFBTotalRound then
			UIHelper.SetActiveState(this.transform, "Buttom/LookTotalResult", true);
			UIHelper.SetActiveState(this.transform, "Buttom/OnceAgain", false);
		end
	end
	local allRoleHandCards = MJScene.CurrentResultInfo.m_Data;
	for i = 1, #allRoleHandCards do
		local card = allRoleHandCards[i];
		local tempPlayer = MJScene.GetPlayerByID(card.m_roleid);
		local tempTran = this.transform:Find("Center/" .. tempPlayer.UIPosition);
		tempTran.gameObject:SetActive(true);
		if tempPlayer:IsBanker() then
			UIHelper.SetActiveState(tempTran, "Role/Banker", true);
		end
		if tempPlayer:IsRoomMaster() then
			UIHelper.SetActiveState(tempTran, "Role/Master", true);
		end
		UIHelper.SetLabelText(tempTran, "Label (Name)", tempPlayer.Name);
		UIHelper.SetLabelText(tempTran, "Label (ID)", "ID:" .. tostring(tempPlayer.ID));
		local tempScore = tempTran:FindChild("Score");
		UIHelper.SetLabelText(tempScore, "Label (Gang)/Label", tostring(card.m_anGang + card.m_Gang));
		UIHelper.SetLabelText(tempScore, "Label (Hu)/Label", tostring(card.m_Hufeng));
		UIHelper.SetLabelText(tempScore, "Label (Jiang)/Label", tostring(card.m_reward));
		UIHelper.SetLabelText(tempScore, "Label (Score)/Label", tostring(card.m_score));
		UIHelper.SetLabelText(tempTran, "Label (Total)/Label", tostring(tostring(card.m_TotalScore)));
		local tempGrid = tempScore:GetComponent(typeof(UIGrid));
		tempGrid.enabled = true;
		tempGrid:Reposition();
		-- 设置头像
		UIHelper.SetTexture(tempTran, "Role/Sprite (Photo)", tempPlayer.HeadURL);
	end
	local tempParentGrid = UIHelper.GetComponent(this.transform, "Center", typeof(UIGrid));
	tempParentGrid.enabled = true;
	tempParentGrid:Reposition();
end

-- 设置玩法和局数
function UI_MJDraw.SetupPlaywayAndRound()
	local tempRounds = "当前局数: " .. HallScene.CurrentFBRound .. "/" .. HallScene.CurrentFBTotalRound;
	UIHelper.SetLabelText(this.transform, "LeftTop/Rounds", tempRounds);
	UIHelper.SetLabelText(this.transform, "LeftTop/Way", MJScene.GetMJPlayWayStr());
end 
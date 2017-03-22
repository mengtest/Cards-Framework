UI_MaJiang = {
	transform,
	gameObject,
}

local this = UI_MaJiang

function UI_MaJiang.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MaJiang.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "bottom/right/DissolveRoom", UI_MaJiang.DissolveRoom);
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "center/Ready/Yes", UI_MaJiang.OnClickYes);
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "center/Ready/No", UI_MaJiang.OnClickNo);
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "center/Ready/Invite", UI_MaJiang.OnClickInvite);
	UI_MaJiang.SetupPlayerUIVisiable();
	UI_MaJiang.SetupReadyAndInvite(true, false, true);
end

-- 设置player ui显示
function UI_MaJiang.SetupPlayerUIVisiable()
	if SharedVariable.FBInfo.m_FBTypeID == RoomType.R_1 then
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "Player1", false);
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "Player3", false);
	end
end

-- 设置准备和邀请按钮的显示状态 , Yes/No/Invite
function UI_MaJiang.SetupReadyAndInvite(...)
	local states = {...};
	NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/Ready/Yes", states[1]);
	NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/Ready/No", states[2]);
	NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/Ready/Invite", states[3]);
end

-- 设置桌面状态，房主/是否准备等
function UI_MaJiang.SetupDeskStatus()
	if SharedVariable.FBEntryInfo == nil then
		Log.Error("UI_MaJiang.SetupDeskStatus: error caused by nil SharedVariable.FBEntryInfo");
	end
	local roomMasterID = SharedVariable.FBEntryInfo.m_RoomMasterID;
	for i = 1, # SharedVariable.FBEntryInfo.m_Character do
		local playerEntry = SharedVariable.FBEntryInfo.m_Character[i];
		if playerEntry ~= nil and playerEntry.m_RoleData ~= nil then
			local pos = playerEntry.m_RoleData.m_Postion;
			if SharedVariable.FBInfo.m_FBTypeID == RoomType.R_1 then
				pos = pos + SharedVariable.DeskOffset;
			elseif SharedVariable.FBInfo.m_FBTypeID == RoomType.R_2 then
				pos = pos + 4 - SharedVariable.DeskOffset;
				pos = pos % 4;
			end
			if pos == 0 then
				UI_Player0.Player:SetMJData(playerEntry);
				UI_Player0.Player:SetupHeroUI();
			elseif pos == 1 then
				UI_Player1.Player:SetMJData(playerEntry);
				UI_Player1.Player:SetupOtherPlayerUI();
			elseif pos == 2 then
				UI_Player2.Player:SetMJData(playerEntry);
				UI_Player2.Player:SetupOtherPlayerUI();
			elseif pos == 3 then
				UI_Player3.Player:SetMJData(playerEntry);
				UI_Player3.Player:SetupOtherPlayerUI();
			end
		end
	end
end

function UI_MaJiang.DissolveRoom(go)
	local option = StandardDialogOption:New();
	option.OnClickOK =
	function()
		MaJiangScene.RequestCloseRoom();
	end;
	option.DoubleButton = true;
	option.Content = "解散房间不扣除房卡，是否确定解散？";
	option.Title = "解散房间";
	UIManager.OpenStandardDialog(option);
end

function UI_MaJiang.OnClickYes(go)
end

function UI_MaJiang.OnClickNo(go)
end

function UI_MaJiang.OnClickInvite(go)
end
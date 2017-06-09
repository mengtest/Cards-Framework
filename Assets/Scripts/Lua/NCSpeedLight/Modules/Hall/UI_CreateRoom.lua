-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_CreateRoom.lua
-- Describle:  
-- Created By:  Wells Hsu
-- DateTime:  2017/06/01 17:20:11
-- Modify History:
--
-----------------------------------------------
UI_CreateRoom = {
	transform = nil,
	gameObject = nil,
	Round = nil,
	PlayerNum = nil,
	Playway = nil,
};

local this = UI_CreateRoom;

-- Called by mono
function UI_CreateRoom.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

-- Use this for initialization
function UI_CreateRoom.Start()
	UIHelper.SetButtonEvent(this.transform, "top/topLeft/BackButton", UI_CreateRoom.OnClickClose);
	UIHelper.SetButtonEvent(this.transform, "Center/Button", UI_CreateRoom.OnClickConfirm);
	local roundBtn = UIHelper.GetComponent(this.transform, "Center/RadioBtn_Round/" .. HallScene.HZCreateRoomConfig.RoundCount, typeof(UIToggle));
	local playerBtn = UIHelper.GetComponent(this.transform, "Center/RadioBtn_Player/" .. HallScene.HZCreateRoomConfig.PlayerCount, typeof(UIToggle));
	roundBtn.value = true;
	playerBtn.value = true;
	local playwayStrs = Utility.SplitString(HallScene.HZCreateRoomConfig.Playway, ",");
	for i = 1, #playwayStrs do
		if i == 1 then
			local maBtn = UIHelper.GetComponent(this.transform, "Center/RadioBtn_Playway/Playway1/" .. MJPlayway.ToString(tonumber(playwayStrs[1])), typeof(UIToggle));
			maBtn.value = true;
		elseif i == 2 then
			local duiBtn = UIHelper.GetComponent(this.transform, "Center/RadioBtn_Playway/Playway2/" .. MJPlayway.ToString(tonumber(playwayStrs[2])), typeof(UIToggle));
			duiBtn.value = true;
		end
	end
	UI_CreateRoom.iOSCheck();
	HallScene.RequestPlayerInFb();
end

-- Use this for destruction
function UI_CreateRoom.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

-- Called when pre reload script.
function UI_CreateRoom.OnPreReload()
end

-- Called when post reload script.
function UI_CreateRoom.OnPostReload()
end

function UI_CreateRoom.OnClickClose(go)
	UIManager.CloseWindow(UIName.UI_CreateRoom);
end

function UI_CreateRoom.OnClickConfirm(go)
	local roundBtn = UIToggle.GetActiveToggle(1);
	local playerBtn = UIToggle.GetActiveToggle(2);
	local playway1Btn = UIToggle.GetActiveToggle(3);
	local playway2Btn = UIToggle.GetActiveToggle(0); -- 单选
	UI_CreateRoom.Round = tonumber(roundBtn.name);
	UI_CreateRoom.PlayerNum = tonumber(playerBtn.name);
	if playway2Btn == nil then
		UI_CreateRoom.Playway = MJPlayway.ToInt(playway1Btn.name);
	else
		UI_CreateRoom.Playway = MJPlayway.ToInt(playway1Btn.name) .. "," .. MJPlayway.ToInt(playway2Btn.name);
	end
	HallScene.RequestCreateRoom();
end

function UI_CreateRoom.iOSCheck()
	if Constants.IOS_CHECK then
		UIHelper.SetLabelText(this.transform, "Center/RadioBtn_Round/6/Label", "6局");
		UIHelper.SetLabelText(this.transform, "Center/RadioBtn_Round/12/Label", "12局");
	else
		UIHelper.SetLabelText(this.transform, "Center/RadioBtn_Round/6/Label", "6局(房卡X1)");
		UIHelper.SetLabelText(this.transform, "Center/RadioBtn_Round/12/Label", "12局(房卡X2)");
	end
	UIHelper.SetActiveState(this.transform, "Center/Label", not Constants.IOS_CHECK);
end 
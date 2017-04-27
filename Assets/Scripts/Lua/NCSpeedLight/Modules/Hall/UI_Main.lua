-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_Main.lua
-- Describle:  大厅UI
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_Main = {
	transform,
	gameObject,
}

local this = UI_Main;

function UI_Main.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_Main.Start()
	UI_Main.InitBtnEvt();
	UI_Main.InitSelfInfo();
end

function UI_Main.InitBtnEvt()
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Share", UI_Main.OnClickShare);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Record", UI_Main.OnClickRecord);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Message", UI_Main.OnClickMessage);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/More", UI_Main.OnClickMore);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Return", UI_Main.OnClickReturn);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Return/PlayMethod", UI_Main.OnClickPlayway);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Return/Setting", UI_Main.OnClickSetting);
	UIHelper.SetButtonEvent(this.transform, "right/rightButton/CreateRoom", UI_Main.OnClickCreateRoom);
	UIHelper.SetButtonEvent(this.transform, "right/rightButton/JoinRoom", UI_Main.OnClickJoinRoom);
end

function UI_Main.InitSelfInfo()
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Info/Label (Name)", Player.FullInfo.nickName);
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Info/Label (ID)", "ID:" .. tostring(Player.ID));
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Info/Label (IP)", Player.FullInfo.name);
	UIHelper.SetTexture(this.transform, "left/RoleInfo/Info/Sprite (Photo)", Player.FullInfo.headPhotoUrl);
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Card/Label (Card)", Player.FullInfo.roomcard);
end

function UI_Main.OnClickShare(go)
	UIManager.OpenWindow("Hall/UI_Share");
end

function UI_Main.OnClickRecord(go)
	UIManager.OpenWindow("Hall/UI_Record");
end

function UI_Main.OnClickMessage(go)
	UIManager.OpenWindow(UIType.UI_SystemEmail);
end

function UI_Main.OnClickMore(go)
	UIHelper.SetActiveState(UI_Main.transform, "bottom/function/More", false);
	UIHelper.SetActiveState(UI_Main.transform, "bottom/function/Return", true);	
end

function UI_Main.OnClickReturn(go)
	UIHelper.SetActiveState(UI_Main.transform, "bottom/function/More", true);
	UIHelper.SetActiveState(UI_Main.transform, "bottom/function/Return", false);
end

function UI_Main.OnClickPlayway(go)
	UIManager.OpenWindow(UIType.UI_Playway);
end

function UI_Main.OnClickSetting(go)
	UIManager.OpenWindow(UIType.UI_Setting);
end

function UI_Main.OnClickCreateRoom(go)
	UIManager.OpenWindow(UIType.UI_CreateRoom);
end

function UI_Main.OnClickJoinRoom(go)
	UIManager.OpenWindow(UIType.UI_JoinRoom);
end 
UI_Main = {
}

local transform;
local gameObject;

function UI_Main.Awake(go)
	gameObject = go;
	transform = go.transform;
	isRecordPanelOpen = false;
end

function UI_Main.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Share', UI_Main.OnClickShare);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Record', UI_Main.OnClickRecord);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Message', UI_Main.OnClickMessage);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/More', UI_Main.OnClickMore);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'right/rightButton/CreateRoom', UI_Main.OnClickCreateRoom);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'right/rightButton/JoinRoom', UI_Main.OnClickJoinRoom);
	UI_Main.InitSelfInfo();
end

function UI_Main.InitSelfInfo()
	if SharedVariable.SelfInfo == nil then
		Log.Error("UI_Main: Cannot init self info because of nil SharedVariable.SelfInfo instance.");
	else
		NCSpeedLight.UIHelper.SetLabelText(transform, "left/RoleInfo/Info/Label (Name)", SharedVariable.SelfInfo.FullInfo.nickName);
		NCSpeedLight.UIHelper.SetLabelText(transform, "left/RoleInfo/Info/Label (ID)", "ID:" .. tostring(SharedVariable.SelfInfo.FullInfo.id));
		NCSpeedLight.UIHelper.SetLabelText(transform, "left/RoleInfo/Info/Label (IP)", SharedVariable.SelfInfo.FullInfo.name);
		NCSpeedLight.UIHelper.SetLabelText(transform, "left/RoleInfo/Card/Label (Card)", SharedVariable.SelfInfo.FullInfo.roomcard);
	end
end

function UI_Main.OnClickShare(go)
	UIManager.OpenWindow('Hall/UI_Share');
end

function UI_Main.OnClickRecord(go)
	UIManager.OpenWindow('Hall/UI_Record');
end

function UI_Main.OnClickMessage(go)
	UIManager.OpenWindow('Hall/UI_Share');
end

function UI_Main.OnClickMore(go)
	UIManager.OpenWindow('Hall/UI_Share');
end

function UI_Main.OnClickCreateRoom(go)
	UIManager.OpenWindow(UIType.UI_CreateRoom);
end

function UI_Main.OnClickJoinRoom(go)
	UIManager.OpenWindow(UIType.UI_JoinRoom);
end
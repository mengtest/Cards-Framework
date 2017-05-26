UI_JoinRoom =
{
	transform = nil,
	gameObject = nil,
	RoomNumber = nil,
	LB_Number = nil,
};
this = UI_JoinRoom;
function UI_JoinRoom.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.LB_Number = UIHelper.GetComponent(this.transform, "number", typeof(UILabel));
	local a = 1;
end

function UI_JoinRoom.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Button", UI_JoinRoom.OnClickClose);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/0", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/1", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/2", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/3", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/4", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/5", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/6", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/7", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/8", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/9", UI_JoinRoom.OnClickDialPanelNumber);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/anew", UI_JoinRoom.OnClickDialPanelReinput);
	NCSpeedLight.UIHelper.SetButtonEvent(UI_JoinRoom.transform, "Figure/delete", UI_JoinRoom.OnClickDialPanelDelete);
end

function UI_JoinRoom.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	this.RoomNumber = nil;
	this.LB_Number = nil;
end

function UI_JoinRoom.OnClickClose(go)
	UIManager.CloseWindow(UIName.UI_JoinRoom);
end

function UI_JoinRoom.OnClickDialPanelNumber(go)
	local number = go.name;
	if UI_JoinRoom.RoomNumber == nil then
		UI_JoinRoom.RoomNumber = number;
	else
		if string.len(UI_JoinRoom.RoomNumber) >= 4 then
			return;
		end
		UI_JoinRoom.RoomNumber = UI_JoinRoom.RoomNumber .. number;
	end
	this.LB_Number.text = UI_JoinRoom.RoomNumber;
	if string.len(UI_JoinRoom.RoomNumber) >= 4 then
		HallScene.RequestJoinRoom(tonumber(UI_JoinRoom.RoomNumber));
	end
end

function UI_JoinRoom.OnClickDialPanelReinput(go)
	UI_JoinRoom.RoomNumber = nil;
	this.LB_Number.text = "请输入房间号";
end

function UI_JoinRoom.OnClickDialPanelDelete(go)
	if UI_JoinRoom.RoomNumber == nil then return end;
	UI_JoinRoom.RoomNumber = string.sub(UI_JoinRoom.RoomNumber, 0, string.len(UI_JoinRoom.RoomNumber) - 1);
	if string.len(UI_JoinRoom.RoomNumber) == 0 then
		this.LB_Number.text = "请输入房间号";
	else
		this.LB_Number.text = UI_JoinRoom.RoomNumber;
	end
end 
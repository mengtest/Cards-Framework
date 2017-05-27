UI_Hall = {
	transform,
	gameObject,
}

local this = UI_Hall;

function UI_Hall.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_Hall.Start()
	UI_Hall.InitBtnEvt();
	UI_Hall.InitSelfInfo();
	UI_Hall.RefreshAnnouncement();
end

function UI_Hall.InitBtnEvt()
	UIHelper.SetButtonEvent(this.transform, "bottom/function/More", UI_Hall.OnClickMore);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Share", UI_Hall.OnClickShare);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Record", UI_Hall.OnClickRecord);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Message", UI_Hall.OnClickMessage);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Return", UI_Hall.OnClickReturn);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Return/PlayMethod", UI_Hall.OnClickPlayway);
	UIHelper.SetButtonEvent(this.transform, "bottom/function/Return/Setting", UI_Hall.OnClickSetting);
	UIHelper.SetButtonEvent(this.transform, "right/rightButton/CreateRoom", UI_Hall.OnClickCreateRoom);
	UIHelper.SetButtonEvent(this.transform, "right/rightButton/JoinRoom", UI_Hall.OnClickJoinRoom);
	UIHelper.SetButtonEvent(this.transform, "right/rightButton/JoinRoom", UI_Hall.OnClickJoinRoom);
	UIHelper.SetButtonEvent(this.transform, "left/RoleInfo/Card/Add", UI_Hall.OnClickAddCard);
end

function UI_Hall.InitSelfInfo()
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Info/Label (Name)", Player.Name);
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Info/Label (ID)", "ID:" .. Player.DisplayID);
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Info/Label (IP)", Player.FullInfo.name);
	UIHelper.SetTexture(this.transform, "left/RoleInfo/Info/Sprite (Photo)", Player.FullInfo.headPhotoUrl);
	UIHelper.SetLabelText(this.transform, "left/RoleInfo/Card/Label (Card)", Player.FullInfo.roomcard);
end

function UI_Hall.OnClickShare(go)
	UIManager.OpenWindow(UIName.UI_Share);
end

function UI_Hall.OnClickRecord(go)
	UIManager.OpenWindow(UIName.UI_Record);
end

function UI_Hall.OnClickMessage(go)
	UIManager.OpenWindow(UIName.UI_SystemEmail);
end

function UI_Hall.OnClickMore(go)
	UIHelper.SetActiveState(this.transform, "bottom/function/More", false);
	UIHelper.SetActiveState(this.transform, "bottom/function/Return", true);	
end

function UI_Hall.OnClickReturn(go)
	UIHelper.SetActiveState(this.transform, "bottom/function/More", true);
	UIHelper.SetActiveState(this.transform, "bottom/function/Return", false);
end

function UI_Hall.OnClickPlayway(go)
	UIManager.OpenWindow(UIName.UI_HZRule);
end

function UI_Hall.OnClickSetting(go)
	UIManager.OpenWindow(UIName.UI_Setting);
end

function UI_Hall.OnClickCreateRoom(go)
	UIManager.OpenWindow(UIName.UI_CreateRoom);
end

function UI_Hall.OnClickJoinRoom(go)
	UIManager.OpenWindow(UIName.UI_JoinRoom);
end

function UI_Hall.OnClickAddCard(go)
	UIManager.OpenWindow(UIName.UI_GetRoomCardHint);
end

function UI_Hall.RefreshAnnouncement()
	if HallScene.Announcement == nil then
		UIHelper.SetActiveState(this.transform, "top/Announcement", false);
	else
		UIHelper.SetActiveState(this.transform, "top/Announcement", true);
		local tweener = UIHelper.GetComponent(this.transform, "top/Announcement/Label (Message)", typeof(TweenPosition));
		local label = UIHelper.GetComponent(this.transform, "top/Announcement/Label (Message)", typeof(UILabel));
		label.text = HallScene.Announcement.Content;
		local x = utf8.len(HallScene.Announcement.Content) *(- 26) - 350;
		local tweenFrom = Vector3.New(412, 0, 0);
		local tweenTo = Vector3.New(x, 0, 0);
		tweener.from = tweenFrom;
		tweener.to = tweenTo;
		tweener.duration = 18;
		tweener.delay = 1;
	end
end

function UI_Hall.ShowMailRedPoint(number)
	local showRedPoint = number ~= 0;
	UIHelper.SetActiveState(this.transform, "bottom/function/Message/RedPoint", showRedPoint);
end 
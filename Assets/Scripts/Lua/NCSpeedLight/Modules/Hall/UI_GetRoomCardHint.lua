UI_GetRoomCardHint = {
	transform = nil,
	gameObject = nil,
}

local this = UI_GetRoomCardHint;

function UI_GetRoomCardHint.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_GetRoomCardHint.Start()
	UIHelper.SetButtonEvent(this.transform, "Button", UI_GetRoomCardHint.OnClickClose);
	UIHelper.SetButtonEvent(this.transform, "CopyWX_Btn", UI_GetRoomCardHint.OnClickCopy);
end

function UI_GetRoomCardHint.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_GetRoomCardHint.OnClickClose()
	UIManager.CloseWindow(UIName.UI_GetRoomCardHint);
end

function UI_GetRoomCardHint.OnClickCopy()
end 
UI_CreateRoom = {}

local transform;
local gameObject;

function UI_CreateRoom.Awake(go)
	gameObject = go;
	transform = go.transform;
end

function UI_CreateRoom.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "top/topLeft/BackButton", UI_CreateRoom.OnClickClose);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Center/Button", UI_CreateRoom.OnClickConfirm);
end

function UI_CreateRoom.OnDestroy()
end

function UI_CreateRoom.OnClickClose(go)
	UIManager.CloseWindow(UIType.UI_CreateRoom);
end

function UI_CreateRoom.OnClickConfirm(go)
	HallScene.RequestPlayerInFb();
end
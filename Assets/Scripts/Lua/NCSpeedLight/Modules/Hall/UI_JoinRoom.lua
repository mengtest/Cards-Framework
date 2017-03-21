UI_JoinRoom = {}

local transform;
local gameObject;

function UI_JoinRoom.Awake(go)
	gameObject = go;
	transform = go.transform;
end

function UI_JoinRoom.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Mrin/Button", UI_JoinRoom.OnClickClose);
end

function UI_JoinRoom.OnDestory()
end

function UI_JoinRoom.OnClickClose(go)
	UIManager.CloseWindow(UIType.UI_JoinRoom);
end

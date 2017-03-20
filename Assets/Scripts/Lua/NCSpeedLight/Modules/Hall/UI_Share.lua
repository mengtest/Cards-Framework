UI_Share = {
}

local transform;
local gameObject;

function UI_Share.Awake(go)
	gameObject = go;
	transform = go.transform;
end

function UI_Share.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Bg/Close", UI_Share.OnClickClose);
end

function UI_Share.OnClickClose(go)
	UIManager.CloseWindow(UIType.UI_Share);
end
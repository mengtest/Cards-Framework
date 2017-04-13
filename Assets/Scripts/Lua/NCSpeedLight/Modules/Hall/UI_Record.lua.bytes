UI_Record = {
}

local transform;
local gameObject;

function UI_Record.Awake(go)
	gameObject = go;
	transform = go.transform;
end

function UI_Record.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Mrin/Close", UI_Record.OnClickClose);
end

function UI_Record.OnClickClose(go)
	UIManager.CloseWindow(UIType.UI_Record);
end
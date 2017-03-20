UI_Template = {
}

local transform;
local gameObject;

function UI_Template.Awake(go)
	gameObject = go;
	transform = go.transform;
end

function UI_Template.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Bg/Close", UI_Main.OnClickShare);
end
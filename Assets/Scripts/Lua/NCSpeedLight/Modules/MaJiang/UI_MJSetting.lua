UI_MJSetting = {
	transform = nil,
	gameObject = nil,
}

local this = UI_MJSetting;

function UI_MJSetting.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJSetting.Start()
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", function()
		UIManager.CloseWindow(UIType.UI_MJSetting);
	end);
end

function UI_MJSetting.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
UI_Setting = {
	transform = nil,
	gameObject = nil,
}

local this = UI_Setting;

function UI_Setting.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_Setting.Start()
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", function()
		UIManager.CloseWindow(UIType.UI_Setting);
	end);
end

function UI_Setting.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
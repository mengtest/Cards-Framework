UI_SystemEmail = {
	transform = nil,
	gameObject = nil,
}

local this = UI_SystemEmail;

function UI_SystemEmail.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_SystemEmail.Start()
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", function()
		UIManager.CloseWindow(UIType.UI_SystemEmail);
	end);
end

function UI_SystemEmail.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
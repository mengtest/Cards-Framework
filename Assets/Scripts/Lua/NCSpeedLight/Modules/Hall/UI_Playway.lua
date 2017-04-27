UI_Playway = {
	transform = nil,
	gameObject = nil,
}

local this = UI_Playway;

function UI_Playway.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_Playway.Start()
	UIHelper.SetButtonEvent(this.transform, "Close", function()
		UIManager.CloseWindow(UIType.UI_Playway);
	end);
end

function UI_Playway.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
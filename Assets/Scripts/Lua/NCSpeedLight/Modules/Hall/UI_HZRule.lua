UI_HZRule = {
	transform = nil,
	gameObject = nil,
}

local this = UI_HZRule;

function UI_HZRule.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_HZRule.Start()
	UIHelper.SetButtonEvent(this.transform, "Close", function()
		UIManager.CloseWindow(UIType.UI_HZRule);
	end);
end

function UI_HZRule.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
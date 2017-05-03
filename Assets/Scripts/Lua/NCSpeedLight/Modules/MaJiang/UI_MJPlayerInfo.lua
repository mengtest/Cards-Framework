UI_MJPlayerInfo = {
	transform = nil,
	gameObject = nil,
	CurrentPlayer = nil,
}

local this = UI_MJPlayerInfo;

function UI_MJPlayerInfo.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJPlayerInfo.Start()
	UIHelper.SetButtonEvent(this.transform, "Texture", function()
		UIManager.CloseWindow(UIType.UI_MJPlayerInfo);
	end)
end

function UI_MJPlayerInfo.OnEnable()
end

function UI_MJPlayerInfo.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
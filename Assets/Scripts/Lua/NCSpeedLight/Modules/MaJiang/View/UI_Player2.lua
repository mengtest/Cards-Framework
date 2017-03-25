UI_Player2 = {
	transform = nil,
	gameObject = nil,
	Player = nil,
}

local this = UI_Player2;

function UI_Player2.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.Player = Player:New();
	Log.Info("UI_Player2: player instance is " .. tostring(this.Player));
	this.Player:Initialize(this.transform);
end

function UI_Player2.Start()
end

function UI_Player2.OnDestroy()
	this.gameObject = nil;
	this.transform = nil;
	this.Player:OnUIDestroy();
	this.Player = nil;
end
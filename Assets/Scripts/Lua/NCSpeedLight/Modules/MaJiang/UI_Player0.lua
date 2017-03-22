UI_Player0 = {
	transform = nil,
	gameObject = nil,
	Player = nil,
}

local this = UI_Player0;

function UI_Player0.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.Player = Player.Hero;
	this.Player:Initialize(this.transform);
end

function UI_Player0.Start()
end

function UI_Player0.OnDestroy()
	this.gameObject = nil;
	this.transform = nil;
	this.Player:OnUIDestroy();
end
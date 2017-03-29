UI_OtherPlayer = {
	transform = nil,
	gameObject = nil,
	Player = nil,
}
local this = UI_OtherPlayer;
this.__index = UI_OtherPlayer;
function UI_OtherPlayer.New()
	local obj = {};
	setmetatable(obj, this);
	return obj;
end
function UI_OtherPlayer:Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.Player = MJPlayer.New();
	Log.Info("UI_OtherPlayer.Awake: player instance is " .. tostring(this.Player));
	this.Player:Initialize(this.transform);
end
function UI_OtherPlayer:Start()
end
function UI_OtherPlayer:OnDestroy()
	this.gameObject = nil;
	this.transform = nil;
	this.Player:OnUIDestroy();
	this.Player = nil;
end 
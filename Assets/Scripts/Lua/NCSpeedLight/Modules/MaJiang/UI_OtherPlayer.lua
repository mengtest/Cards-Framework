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
	self.gameObject = go;
	self.transform = go.transform;
end
function UI_OtherPlayer:Start()
end
function UI_OtherPlayer:OnDestroy()
	self.gameObject = nil;
	self.transform = nil;
	if self.Player ~= nil then
		self.Player:OnUIDestroy();
		self.Player = nil;
	end
end
function UI_OtherPlayer:Initialize(player)
	self.Player = player;
end 
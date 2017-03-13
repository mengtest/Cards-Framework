GameScene = {}

function GameScene:New()
	o = {};
	setmetatable(o, self);
	self.__index = self;
	self.Name = SceneType.GameScene;
	return o;
end

function GameScene:OnInit()
end

function GameScene:Begin()
end

function GameScene:Update()
end

function GameScene:End()
end
GameScene = { }

local this = GameScene

function this:New()
	o = { };
	setmetatable(o, self);
	self.__index = self;
	self.Name = SceneType.GameScene;
	return o;
end

function this:OnInit()
end 

function this:Begin()
end

function this:Update()
end

function this:End()
end
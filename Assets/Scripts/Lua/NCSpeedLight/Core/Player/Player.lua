PlayerType =
{
	Hero = 0,
	Player = 1,
	Robot = 2,
}

Player =
{
	Hero,
}

function Player:New(data)
	local o = {}
	setmetatable(o, self)
	self.EvtProcessor = EvtProcessor:New();
	self.Data = data;
	return self;
end

function Player:RegisterEvent(id, func)
	self.EvtProcessor.Register(id, func);
end

function Player:UnregisterEvent(id, func)
	self.EvtProcessor.Unregister(id, player);
end

function Player:UpdateData(data)
	self.Data = data;
end
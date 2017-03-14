PlayerType =
{
	PT_Hero = 0,
	PT_Player = 1,
	PT_Robot = 2,
}

PlayerState =
{
	PS_Idle = 0,
	PS_Game = 1,
}

PlayerManager =
{
	Players = {},
}

function PlayerManager:Initialize()
	PlayerManager:Instance();
end

function PlayerManager:Instance()
	if self == nil then
		PlayerManager:New()
	end
	return self;
end

function PlayerManager:New()
	local obj = {};
	obj.Players = {};
	return obj;
end

function PlayerManager:AddPlayer(playerData)
	if playerData == nil then
		Log.Error('Can not add player because of nil playerdata,please check it.');
	end
end

function PlayerManager:RemovePlayer(id)
end

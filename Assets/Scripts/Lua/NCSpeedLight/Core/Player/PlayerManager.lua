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
	Instance = nil,
}

function PlayerManager:Initialize()
	if self.Instance == nil then
		PlayerManager:New();
	end
	return PlayerManager.Instance;
end

function PlayerManager:New()
	local o = {};
	setmetatable(o, self);
	self.Instance = o;
	self.Instance.Players = {};
	return o;
end

function PlayerManager.SetHero(player)
	if Player.Hero ~= nil then
		Player.Hero:UpdateData(player.Data);
	else
		Player.Hero = player;
	end
end

function PlayerManager.AddPlayer(player)
	if player == nil then
		Log.Error('Can not add player because of nil player,please check it.');
	end
	if player.Data == nil then
		Log.Error("Can not add player because of nil player data,please check it.")
	end
	if PlayerManager.Instance.Players[player.Data.id] ~= nil then
		PlayerManager.Instance.Players[player.Data.id].UpdateData(player.Data);
	else
		PlayerManager.Instance.Players[player.Data.id] = player;
	end
end

function PlayerManager.RemovePlayer(id)
	if PlayerManager.Instance.Players[id] ~= nil then
		table.remove(PlayerManager.Instance.Players, id);
	end
end

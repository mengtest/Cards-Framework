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
    Players = { },
}


function PlayerManager:New()
    local obj = { };
    obj.Players = { };
    return obj;
end
function PlayerManager.AddPlayer(playerData)
end

function PlayerManager.RemovePlayer(id)
end

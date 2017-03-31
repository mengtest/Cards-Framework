-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Player.lua
-- Describle:  大厅玩家，单例
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
Player =
{
	EvtProcessor = EvtProcessor.New();
	FullInfo = nil;
};
-- 设置当前玩家的完整信息
function Player.SetFullInfo(data)
	Log.Info("Player.SetFullInfo");
	Player.FullInfo = data;
end
function Player.RegisterEvent(id, func)
	Player.EvtProcessor:Register(id, func);
end
function Player.UnregisterEvent(id, func)
	Player.EvtProcessor:Unregister(id, player);
end
function Player.NotifyEvent(id, param)
	Player.EvtProcessor:Notify(id, param);
end

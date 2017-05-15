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
	ID = 0,
	DisplayID = nil,
	Name = nil,
	Address = nil,
};

-- 设置当前玩家的完整信息
function Player.SetFullInfo(data)
	Log.Info("Player.SetFullInfo: id is " .. tostring(data.id));
	Player.FullInfo = data;
	Player.ID = data.id;
	Player.Name = Player.FullInfo.nickName;
	if string.len(Player.Name) == 0 then
		Player.Name = Player.FullInfo.name;
	end
	Player.DisplayID = Player.FullInfo.name;
	Player.RefreshAddress();
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

-- 刷新当前玩家的地理位置
function Player.RefreshAddress()
	AMapAdapter.GetLocation(Player.OnGetLocation);
end

function Player.OnGetLocation(address)
	if address == nil or string.len(address) == 0 then
		Log.Error("Player.OnGetLocation: address is nil,未获取到有效地址信息.");
		Player.Address = "未获取到有效地址信息";
	else
		Log.Info("Player.OnGetLocation: address is " .. address);
		Player.Address = address;
	end
end

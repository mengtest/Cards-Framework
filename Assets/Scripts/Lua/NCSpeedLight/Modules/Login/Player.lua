Player =
{
	EvtProcessor = EvtProcessor.New();
	FullInfo = nil;
	ID = 0,
	DisplayID = nil,
	Name = nil,
	HeadUrl = nil,
	RoomCard = nil,
	Address = nil,
};

-- 设置当前玩家的完整信息
function Player.SetFullInfo(data)
	Log.Info("SetFullInfo: id is " .. tostring(data.id) .. ",name is " .. tostring(data.name) .. ",nickname is " .. data.nickName .. ",roomcard is " .. data.roomcard .. ",headurl is " .. data.headPhotoUrl);
	Player.FullInfo = data;
	Player.ID = data.id;
	Player.HeadUrl = data.headPhotoUrl;
	Player.Name = data.nickName;
	Player.RoomCard = data.roomcard;
	-- 自有平台nickname为空，显示为ID
	if string.len(Player.Name) == 0 then
		Player.Name = data.name;
	end
	Player.DisplayID = data.name;
	Player.CompareAndUpdateInfo();
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
		Log.Info("OnGetLocation: address is nil(未获取到有效地址信息).");
		Player.Address = "未获取到有效地址信息";
	else
		Log.Info("OnGetLocation: address is " .. address);
		Player.Address = address;
	end
end

-- 对比并且更新服务器的玩家数据
function Player.CompareAndUpdateInfo()
	if LoginScene.WechatAuth ~= nil then
		-- 处理微信登录，改名改头像等逻辑
		-- if LoginScene.WechatAuth.userIcon ~= Player.HeadUrl then
		local msg = {};
		if LoginScene.WechatAuth.userGender == "m" then
			msg.sex = 0;
		else
			msg.sex = 1;
		end
		msg.sex = 0;
		msg.head = 0;
		msg.frame = 0;
		msg.headurl = LoginScene.WechatAuth.userIcon;
		NetManager.SendEventToLogicServer(GameMessage.GM_NOTIFY_SEXCHANGE, PBMessage.GM_Player_changeSex, msg);
		-- end
		if LoginScene.WechatAuth.userName ~= Player.Name then
			local msg = {};
			msg.Name = LoginScene.WechatAuth.userName;
			-- msg.Name = "wellshsu";
			msg.type = 2;
			msg.result = 0;
			NetManager.SendEventToLogicServer(GameMessage.GM_NOTIFY_NAMECHANGE, PBMessage.GMRoleNameReturn, msg);
		end
		Player.Name = LoginScene.WechatAuth.userName;
		Player.HeadUrl = LoginScene.WechatAuth.userIcon;
	else
		-- local msg = {};
		-- msg.sex = 1;
		-- msg.head = 0;
		-- msg.frame = 0;
		-- msg.headurl = "666666666666";
		-- NetManager.SendEventToLogicServer(GameMessage.GM_NOTIFY_SEXCHANGE, PBMessage.GM_Player_changeSex, msg);
		-- local msg2 = {};
		-- msg2.Name = "HHHHHH";
		-- msg2.type = 2;
		-- msg2.result = 0;
		-- NetManager.SendEventToLogicServer(GameMessage.GM_NOTIFY_NAMECHANGE, PBMessage.GMRoleNameReturn, msg2);
	end
end 
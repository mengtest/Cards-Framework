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

function Player:New()
	o = {}
	setmetatable(o, self)
	self.__index = self;
	self.EvtProcessor = EvtProcessor:New();
	return o;
end

function Player.CreateHero(fullInfo)
	if Player.Hero == nil then
		Player.Hero = Player:New();
	end
	Player.Hero.FullInfo = fullInfo;
	return Player.Hero;
end

function Player:RegisterEvent(id, func)
	self.EvtProcessor:Register(id, func);
end

function Player:UnregisterEvent(id, func)
	self.EvtProcessor:Unregister(id, player);
end

function Player:NotifyEvent(id, param)
	self.EvtProcessor:Notify(id, param);
end

function Player:Initialize(transform)
	self.transform = transform;
end

function Player:OnUIDestroy()
end

-- data= PBMessage.GM_EntryInfo_Single
function Player:SetMJData(data)
	self.MJData = data;
end

-- 设置玩家UI
function Player:SetupUI()
	NCSpeedLight.UIHelper.SetLabelText(self.transform, "Enter/Center/Label (Name)", self.MJData.m_RoleData.m_Name);
	
	-- 显示房主标识
	if self.MJData.m_RoleData.m_Roleid == SharedVariable.FBEntryInfo.m_RoomMasterID then
		NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Master", true);
	end
	
	self:SetupReady(self.MJData.m_isReady == 1);
end

-- 设置Ready标识
function Player:SetupReady(status)
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Label (Prepare)", status);
	if self == Player.Hero then
		UI_MaJiang.SetupReadyAndInvite(not status, status, true);
	end
end
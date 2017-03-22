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

-- 设置主角UI
function Player:SetupHeroUI()
	NCSpeedLight.UIHelper.SetLabelText(self.transform, "Enter/Center/Label (Name)", self.Hero.FullInfo.nickName);
end

-- 设置其他玩家UI
function Player:SetupOtherPlayerUI(data)
	NCSpeedLight.UIHelper.SetLabelText(self.transform, "Enter/Center/Label (Name)", self.MJData.m_RoleData.m_Name);
end
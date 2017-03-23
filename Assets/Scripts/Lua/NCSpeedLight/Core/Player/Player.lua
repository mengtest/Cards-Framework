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

-- data= PBMessage.GMHandCard
function Player:SetHandCardInfo(data)
	self.HandCardInfo = data;
end

-- 设置玩家UI
function Player:SetupUI()
	NCSpeedLight.UIHelper.SetLabelText(self.transform, "Enter/Center/Label (Name)", self.MJData.m_RoleData.m_Name);
	
	-- 显示房主标识
	if self.MJData.m_RoleData.m_Roleid == SharedVariable.FBEntryInfo.m_RoomMasterID then
		NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Master", true);
	end
	
	self:SetupReady(self.MJData.m_isReady == 1);
	self:SetupEnterAndLeave(true, false);
end

-- 设置Ready标识
function Player:SetupReady(status)
	Log.Info("Addr is : " .. tostring(self));
	Log.Info("MaJiangScene.NotifyOneReady: " .. tostring(status) .. ",name is " .. self.transform.name);
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Label (Prepare)", status);
	if self == Player.Hero then
		UI_MaJiang.SetupReadyAndInvite(not status, status, true);
	end
end

-- 设置庄家标识
function Player:SetupBanker()
	local status = self.MJData.m_RoleData.m_Postion == Player.Hero.HandCardInfo.m_bankerPos;
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Banker", status);
end

-- 设置进入/离开状态 Enter/Leave
function Player:SetupEnterAndLeave(...)
	local args = {...};
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter", args[1]);
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Leave", args[2]);
end

function Player:StartGame()
	self:SetupReady(false);
	self:SetupBanker();
-- self:SetupCards();
end

function Player:SetupCards()
	if self == Player.Hero then
		table.sort(self.HandCardInfo.m_HandCard, function(o1, o2)
			return o1.m_Type < o2.m_Type;
		end);
		local cardGridPanel = self.transform:Find("Cards/CardGrid");
		for i = 1, # self.HandCardInfo.m_HandCard do
			local cardObj = cardGridPanel:Find(tostring(i));
			NCSpeedLight.UIHelper.SetSpriteName(cardObj, "Sprite", MaJiangType.GetString(self.HandCardInfo.m_HandCard[i].m_Type));
			cardObj.gameObject:SetActive(true);
		end
	else
		
	end
end
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
	self:SortHandCard();
end

-- 根据牌的位置索引获取牌的信息
function Player:GetHandCardByPosition(pos)
	local var = 1;
	for key, value in pairs(self.HandCardInfo.m_HandCard) do
		if pos == var then
			return value;
		end
		var = var + 1;
	end
end

-- 根据牌的ID获取牌的信息
function Player:GetHandCardByIndex(index)
	for key, value in pairs(self.HandCardInfo.m_HandCard) do
		if value.m_Index == index then
			return value;
		end
	end
end

-- 移除一张牌
function Player:RemoveHandCard(index)
	local var = 1;
	for key, value in pairs(self.HandCardInfo.m_HandCard) do
		if value.m_Index == index then
			table.remove(self.HandCardInfo.m_HandCard, var);
			break;
		end
		var = var + 1;
	end
end

function Player:AddHandCard(card)
	table.insert(self.HandCardInfo.m_HandCard, card);
end

function Player:SortHandCard()
	table.sort(self.HandCardInfo.m_HandCard, function(o1, o2)
		return o1.m_Type < o2.m_Type;
	end);
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
end

function Player:SetupCards()
	if self == Player.Hero then
		self:SortHandCard();
		local cardGridPanel = self.transform:Find("Cards/CardGrid");
		local gridCom = cardGridPanel:GetComponent(typeof(UIGrid));
		local index = 1;
		for i = 1, # self.HandCardInfo.m_HandCard do
			local card = self.HandCardInfo.m_HandCard[i];
			local cardObj = cardGridPanel:Find(tostring(i));
			NCSpeedLight.UIHelper.SetSpriteName(cardObj, "Sprite", MaJiangType.GetString(card.m_Type));
			cardObj.gameObject:SetActive(true);
			index = index + 1;
		end
		for i = index, 14 do
			local cardObj = cardGridPanel:Find(tostring(i));
			cardObj.gameObject:SetActive(false);
		end
	else
		
	end
end

-- 播放UI框的缩放
function Player:PlayUIScale(status)
	-- Log.Info("Player:PlayUIScale: this is " .. self.transform.name);
	local scaleAnimation = self.transform:Find("Enter/Center"):GetComponent(typeof(TweenScale));
	scaleAnimation.enabled = status;
	if self == Player.Hero then
		NCSpeedLight.UIHelper.SetActiveState(UI_MaJiang.transform, "center/OperatorPrompt", status);
	end
end

-- 播放出牌效果
function Player:PlayOutCard(status, cardType)
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "OutCard/Card", status);
	NCSpeedLight.UIHelper.SetSpriteName(self.transform, "OutCard/Card/Sprite", MaJiangType.GetString(cardType));
end

--开始
function Player:MJOT_BEGIN(data)
	self:SetupCards();
end

--抓牌
function Player:MJOT_GetCard(data)
	if self == Player.Hero then
		local card = data.m_HandCard[1];
		Log.Info("Player:MJOT_GetCard: card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
	end
	self:SetupCards();
end

--补牌
function Player:MJOT_BuCard(data)
	if self == Player.Hero then
		local card = data.m_HandCard[1];
		Log.Info("Player:MJOT_BuCard: card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
	end
	self:SetupCards();
end

--出牌
function Player:MJOT_SendCard(data)
	if self == Player.Hero then
		local card = data.m_HandCard[1];
		Log.Info("Player:MJOT_SendCard: card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
		if card ~= nil then
			self:RemoveHandCard(card.m_Index);
		end
	end
	self:SetupCards();
end

--摊
function Player:MJOT_Tan(data)
end

--吃 
function Player:MJOT_CHI(data)
end

--勺
function Player:MJOT_SAO(data)
end

--碰
function Player:MJOT_PENG(data)
end

--杠
function Player:MJOT_GANG(data)
end

--暗杠
function Player:MJOT_AN_GANG(data)
end

--补杠
function Player:MJOT_BuGang(data)
end

--过
function Player:MJOT_GUO(data)
end

--胡
function Player:MJOT_HU(data)
end

--定胡
function Player:MJOT_DingHU(data)
end
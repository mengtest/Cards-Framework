MJPlayer =
{
	Hero = nil,
	MJData = nil,
	HandCardInfo = nil,
	ServerHandCards = nil,
	HandCards = nil,
};
local meta = {};
meta.__index = MJPlayer;
function MJPlayer.New()
	local o = {};
	setmetatable(o, meta);
	return o;
end
-- 判断是否是自己
function MJPlayer:IsHero()
	return self == MJPlayer.Hero;
end
function MJPlayer:RegisterEvent(id, func)
	self.EvtProcessor:Register(id, func);
end
function MJPlayer:UnregisterEvent(id, func)
	self.EvtProcessor:Unregister(id, MJPlayer);
end
function MJPlayer:NotifyEvent(id, param)
	self.EvtProcessor:Notify(id, param);
end
function MJPlayer:Initialize(transform)
	self.transform = transform;
	if self:IsHero() == false then
		self.sceneTransform = MJSceneController.transform:Find("majiangzhuo/backCard/" .. self.transform.name);
	end
end
function MJPlayer:OnUIDestroy()
end
-- data= PBMessage.GM_EntryInfo_Single
function MJPlayer:SetMJData(data)
	self.MJData = data;
end
-- data= PBMessage.GMHandCard
function MJPlayer:SetHandCardInfo(data)
	self.HandCardInfo = data;
	self:SortHandCard();
end
-- 根据牌的位置索引获取牌的信息
function MJPlayer:GetHandCardByPosition(pos)
	local var = 1;
	for key, value in pairs(self.HandCardInfo.m_HandCard) do
		if pos == var then
			return value;
		end
		var = var + 1;
	end
end
-- 获取手牌数量
function MJPlayer:GetHandCardCount()
	return # self.HandCardInfo.m_HandCard;
end
-- 根据牌的ID获取牌的信息
function MJPlayer:GetHandCardByIndex(index)
	for key, value in pairs(self.HandCardInfo.m_HandCard) do
		if value.m_Index == index then
			return value;
		end
	end
end
-- 移除一张牌
function MJPlayer:RemoveHandCard(index)
	local var = 1;
	for key, value in pairs(self.HandCardInfo.m_HandCard) do
		if value.m_Index == index then
			table.remove(self.HandCardInfo.m_HandCard, var);
			break;
		end
		var = var + 1;
	end
end
function MJPlayer:AddHandCard(card)
	table.insert(self.HandCardInfo.m_HandCard, card);
end
function MJPlayer:SortHandCard()
	table.sort(self.HandCardInfo.m_HandCard, function(o1, o2)
		return o1.m_Type < o2.m_Type;
	end);
end
-- 根据牌的对象获取所在的位置
function MJPlayer:GetHandCardIndex(card)
	for i = 1, # self.HandCardInfo.m_HandCard do
		if self.HandCardInfo.m_HandCard[i] == card then
			return i;
		end
	end
	return - 1;
end
-- 根据牌的ID获取位置
function MJPlayer:GetHandCardPositionByID(id)
	for i = 1, # self.HandCardInfo.m_HandCard do
		local card = self.HandCardInfo.m_HandCard[i];
		if card.m_Index == id then
			return i;
		end
	end
	return - 1;
end
-- 设置玩家UI
function MJPlayer:SetupUI()
	NCSpeedLight.UIHelper.SetLabelText(self.transform, "Enter/Center/Label (Name)", self.MJData.m_RoleData.m_Name);
	-- 显示房主标识
	if self.MJData.m_RoleData.m_Roleid == SharedVariable.FBEntryInfo.m_RoomMasterID then
		NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Master", true);
	end
	self:SetupReady(self.MJData.m_isReady == 1);
	self:SetupEnterAndLeave(true, false);
end
-- 设置Ready标识
function MJPlayer:SetupReady(status)
	Log.Info("MJScene.NotifyOneReady: " .. tostring(status) .. ",name is " .. self.transform.name);
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Label (Prepare)", status);
	if self == MJPlayer.Hero then
		UI_MaJiang.SetupReadyAndInvite(not status, status, true);
	end
end
-- 设置庄家标识
function MJPlayer:SetupBanker()
	local status = self.MJData.m_RoleData.m_Postion == MJPlayer.Hero.HandCardInfo.m_bankerPos;
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter/Center/Banker", status);
end
-- 设置进入/离开状态 Enter/Leave
function MJPlayer:SetupEnterAndLeave(...)
	local args = {...};
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Enter", args[1]);
	NCSpeedLight.UIHelper.SetActiveState(self.transform, "Leave", args[2]);
end
function MJPlayer:StartGame()
	self:SetupReady(false);
	self:SetupBanker();
end
function MJPlayer:DisplayCards(sort)
	if self == MJPlayer.Hero then
		if sort then
			self:SortHandCard();
		end
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
function MJPlayer:PlayUIScale(status)
	-- Log.Info("MJPlayer:PlayUIScale: this is " .. self.transform.name);
	local scaleAnimation = self.transform:Find("Enter/Center"):GetComponent(typeof(TweenScale));
	scaleAnimation.enabled = status;
	if self == MJPlayer.Hero then
		NCSpeedLight.UIHelper.SetActiveState(UI_MaJiang.transform, "center/OperatorPrompt", status);
	end
end
-- -- 播放出牌效果
-- function MJPlayer:PlayOutCard(status, cardType)
-- 	NCSpeedLight.UIHelper.SetActiveState(self.transform, "OutCard/Card", status);
-- 	NCSpeedLight.UIHelper.SetSpriteName(self.transform, "OutCard/Card/Sprite", MaJiangType.GetString(cardType));
-- end
--开始
function MJPlayer:MJOT_BEGIN(data)
	-- self:DisplayCards(true);
end
--抓牌
function MJPlayer:MJOT_GetCard(data)
	if self:IsHero() then
		local card = data.m_HandCard[1];
		Log.Info("MJPlayer:MJOT_GetCard: card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
		-- self:DisplayCards(false);
		UI_Player0.PlayGetCardAnimation();
	end
end
--补牌
function MJPlayer:MJOT_BuCard(data)
	if self == MJPlayer.Hero then
		local card = data.m_HandCard[1];
		Log.Info("MJPlayer:MJOT_BuCard: card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
	end
end
--出牌
function MJPlayer:MJOT_SendCard(data)
	if self:IsHero() then
		local card = data.m_HandCard[1];
		Log.Info("MJPlayer:MJOT_SendCard: card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
		local cardPosition = self:GetHandCardPositionByID(card.m_Index);
		local newCardPosition = self:GetHandCardCount();
		local newCard = self:GetHandCardByPosition(newCardPosition);
		self:RemoveHandCard(card.m_Index);
		self:SortHandCard();
		local newCardTargetPosition = self:GetHandCardIndex(newCard);
		UI_Player0.PlayOutCardAnimation(card.m_Type);
		UI_Player0.PlayInsertCardAnimation(cardPosition, newCardPosition, newCardTargetPosition);
	end
end
--摊
function MJPlayer:MJOT_Tan(data)
end
--吃 
function MJPlayer:MJOT_CHI(data)
end
--勺
function MJPlayer:MJOT_SAO(data)
end
--碰
function MJPlayer:MJOT_PENG(data)
end
--杠
function MJPlayer:MJOT_GANG(data)
end
--暗杠
function MJPlayer:MJOT_AN_GANG(data)
end
--补杠
function MJPlayer:MJOT_BuGang(data)
end
--过
function MJPlayer:MJOT_GUO(data)
end
--胡
function MJPlayer:MJOT_HU(data)
end
--定胡
function MJPlayer:MJOT_DingHU(data)
end

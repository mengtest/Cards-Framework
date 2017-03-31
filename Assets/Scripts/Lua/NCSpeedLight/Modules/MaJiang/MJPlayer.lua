MJPlayerPos = {
	-- 东
	EAST = 0,
	-- 南
	SOUTH = 1,
	-- 西
	WEST = 2,
	-- 北
	NORTH = 3,
	GetString = function(index)
		for key, value in pairs(MJPlayerPos) do
			if value == index then
				return tostring(key);
			end
		end
	end
}
MJPlayer =
{
	-- 主角
	Hero = nil,
	-- 角色ID
	ID,
	-- 游戏数据
	MJData = nil,
	-- 手牌信息
	HandCardInfo = nil,
	-- 桌面牌的起始位置
	TableCardStartPos = nil,
	-- 桌面牌的横向位置偏移
	TableCardHorizontalOffset = nil,
	-- 桌面牌的纵向位置偏移
	TableCardVerticalOffset = nil,
	-- 桌面牌的旋转
	TableCardRotation = nil,
	-- 桌面牌的列数限制
	TableCardColumnLimit = nil,
	-- 手牌牌的起始位置
	HandCardStartPos = nil,
	-- 手牌的横向位置偏移
	HandCardOffset = nil,
	-- 手牌的旋转
	HandCardRotation = nil,
	-- 操作的牌的起始位置
	OperateCardStartPos = nil,
	-- 操作的牌的偏移
	OperateCardOffset = nil,
	-- 操作的牌的旋转
	OperateCardRotation = nil,
	-- UI牌的起始位置
	UICardStartPos = nil,
	-- UI牌的宽度
	UICardWidth = nil,
	-- UI牌在场景内的宽度
	UICardWorldSpaceWidth = nil,
	-- UI牌距离操作牌的边距
	UICardHeadMargin = nil,
	-- UI最后一张牌的边距
	UICardLastMargin = nil,
	-- UI的位置
	UIPosition,
	-- 服务器的位置
	RealPosition,
	-- 相对位置
	Position,
	-- 对应的UI
	UI,
	-- 对应的UI物体
	UITransform,
	-- 已经打出牌的个数，不包括吃，碰杠的牌
	TableCardCount = 0,
	-- 碰的牌个数
	PengCardCount = 0,
	-- 碰的次数
	PengCount = 0,
	-- 杠的牌个数
	GangCardCount = 0,
	-- 杠的次数
	GangCount = 0,
	-- 吃的牌个数
	ChiCardCount = 0,
	-- 吃的次数
	ChiCount = 0,
};
MJPlayer.__index = MJPlayer;
function MJPlayer.New()
	local obj = {};
	setmetatable(obj, MJPlayer);
	return obj;
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
function MJPlayer:Initialize(data, ishero)
	Log.Info("MJPlayer:Initialize: begin,self " .. tostring(self));
	if ishero then
		MJPlayer.Hero = self;
	end
	self:SetMJData(data);
	self.ID = data.m_RoleData.m_Roleid;
	self.RealPosition = data.m_RoleData.m_Postion;
	self.Position = self.RealPosition;
	local vals = UI_MaJiang.GetPlayerUI(self.RealPosition);
	self.UI = vals[1];
	self.UITransform = vals[2];
	self.UIPosition = vals[3];
	local isTwoPlayers = SharedVariable.FBInfo.m_FBTypeID == MJRoomType.R_1;
	if ishero == nil or ishero == false then
		if isTwoPlayers then
			if MJPlayer.Hero.Position == 0 then
				self.Position = 2;
			elseif MJPlayer.Hero.Position == 1 then
				self.Position = 3;
			elseif MJPlayer.Hero.Position == 2 then
				self.Position = 0;
			else
				self.Position = 1;
			end
		end
	end
	self.UI:Initialize(self);
	self:SetupUI();
	Log.Info("MJPlayer:Initialize: ID is " .. self.ID);
	Log.Info("MJPlayer:Initialize: UI is " .. self.UITransform.name);
	Log.Info("MJPlayer:Initialize: RealPosition is " .. self.RealPosition);
	Log.Info("MJPlayer:Initialize: UIPosition is " .. self.UIPosition);
	Log.Info("MJPlayer:Initialize: Position is " .. self.Position);
	if self.UIPosition == 0 then
		-- 手牌
		self.HandCardRotation = Vector3.New(- 18, 90, 0);
		self.HandCardOffset = Vector3.New(MJScene.CardWidth, 0, 0);
		self.HandCardStartPos = Vector3.New(- 6.5, 3.6, - 9.5);
		-- 桌面的牌
		if isTwoPlayers then
			self.TableCardColumnLimit = 13;
			self.TableCardStartPos = Vector3.New(- 6.02, 3.82, - 1.1);
		else
			self.TableCardColumnLimit = 8;
			self.TableCardStartPos = Vector3.New(- 6.5, 3.6, - 9.5);
		end
		self.TableCardRotation = Vector3.New(90, 0, 0);
		self.TableCardHorizontalOffset = Vector3.New(MJScene.CardWidth, 0, 0);
		self.TableCardVerticalOffset = Vector3.New(0, 0, - MJScene.CardHeight);
		-- 操作的牌
		self.OperateCardStartPos = Vector3.New(- 9.390512, 3.6, - 9.5);
		self.OperateCardOffset = Vector3.New(MJScene.CardWidth, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 0, 0);
		self.UICardStartPos = Vector3.New(- 468, 0, 0);
		self.UICardWidth = 72;
		self.UICardLastMargin = 18;
		self.UICardHeadMargin = 36;
		self.UICardWorldSpaceWidth = 56.7;
	elseif self.UIPosition == 1 then
		-- 手牌
		self.HandCardRotation = Vector3.New(0, - 90, 0);
		self.HandCardOffset = Vector3.New(0, 0, MJScene.CardWidth);
		self.HandCardStartPos = Vector3.New(10, 4, - 5.36);
		-- 桌面的牌
		self.TableCardColumnLimit = 8;
		self.TableCardStartPos = Vector3.New(3.29, 3.67, - 2.3);
		self.TableCardRotation = Vector3.New(90, - 90, 0);
		self.TableCardHorizontalOffset = Vector3.New(0, 0, MJScene.CardWidth);
		self.TableCardVerticalOffset = Vector3.New(MJScene.CardHeight, 0, 0);
		-- 操作的牌
		self.OperateCardStartPos = Vector3.New(- 9.390512, 3.6, - 9.5);
		self.OperateCardOffset = Vector3.New(MJScene.CardWidth, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 0, 0);
	elseif self.UIPosition == 2 then
		-- 手牌
		self.HandCardRotation = Vector3.New(0, 180, 0);
		self.HandCardOffset = Vector3.New(- MJScene.CardWidth, 0, 0);
		self.HandCardStartPos = Vector3.New(5.6, 4, 8.7);
		-- 桌面的牌
		if isTwoPlayers then
			self.TableCardColumnLimit = 13;
			self.TableCardStartPos = Vector3.New(5.98, 3.67, 0.905);
		else
			self.TableCardColumnLimit = 8;
			self.TableCardStartPos = Vector3.New(2.13, 3.67, 3.4);
		end
		self.TableCardRotation = Vector3.New(90, 180, 0);
		self.TableCardHorizontalOffset = Vector3.New(- MJScene.CardWidth, 0, 0);
		self.TableCardVerticalOffset = Vector3.New(0, 0, MJScene.CardHeight);
		-- 操作的牌
		self.OperateCardStartPos = Vector3.New(8.490512, 4, 8.7);
		self.OperateCardOffset = Vector3.New(- MJScene.CardWidth, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 180, 0);
	elseif self.UIPosition == 3 then
		-- 手牌
		self.HandCardRotation = Vector3.New(0, 90, 0);
		self.HandCardOffset = Vector3.New(0, 0, - MJScene.CardWidth);
		self.HandCardStartPos = Vector3.New(- 10.5, 4, 4.8);
		-- 桌面的牌
		self.TableCardColumnLimit = 8;
		self.TableCardStartPos = Vector3.New(- 3.32, 3.67, 2.22);
		self.TableCardRotation = Vector3.New(90, - 90, 0);
		self.TableCardHorizontalOffset = Vector3.New(0, 0, - MJScene.CardWidth);
		self.TableCardVerticalOffset = Vector3.New(- MJScene.CardHeight, 0, 0);
		-- 操作的牌
		self.OperateCardStartPos = Vector3.New(8.490512, 4, 8.7);
		self.OperateCardOffset = Vector3.New(- MJScene.CardWidth, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 180, 0);
	else
	end
	Log.Info("MJPlayer:Initialize: HandCardRotation is " .. tostring(self.HandCardRotation));
	Log.Info("MJPlayer:Initialize: HandCardOffset is " .. tostring(self.HandCardOffset));
	Log.Info("MJPlayer:Initialize: HandCardStartPos is " .. tostring(self.HandCardStartPos));
	Log.Info("MJPlayer:Initialize: TableCardColumnLimit is " .. tostring(self.TableCardColumnLimit));
	Log.Info("MJPlayer:Initialize: TableCardStartPos is " .. tostring(self.TableCardStartPos));
	Log.Info("MJPlayer:Initialize: TableCardRotation is " .. tostring(self.TableCardRotation));
	Log.Info("MJPlayer:Initialize: TableCardHorizontalOffset is " .. tostring(self.TableCardHorizontalOffset));
	Log.Info("MJPlayer:Initialize: TableCardVerticalOffset is " .. tostring(self.TableCardVerticalOffset));
	Log.Info("MJPlayer:Initialize: OperateCardStartPos is " .. tostring(self.OperateCardStartPos));
	Log.Info("MJPlayer:Initialize: OperateCardOffset is " .. tostring(self.OperateCardOffset));
	Log.Info("MJPlayer:Initialize: OperateCardRotation is " .. tostring(self.OperateCardRotation));
	Log.Info("MJPlayer:Initialize: finish,self " .. tostring(self));
	-- if self:IsHero() == false then
	-- 	self.sceneTransform = MJSceneController.transform:Find("majiangzhuo/backCard/" .. self.UITransform.name);
	-- end
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
	NCSpeedLight.UIHelper.SetLabelText(self.UITransform, "Enter/Center/Label (Name)", self.MJData.m_RoleData.m_Name);
	-- 显示房主标识
	if self.MJData.m_RoleData.m_Roleid == SharedVariable.FBEntryInfo.m_RoomMasterID then
		NCSpeedLight.UIHelper.SetActiveState(self.UITransform, "Enter/Center/Master", true);
	end
	self:SetupReady(self.MJData.m_isReady == 1);
	self:SetupEnterAndLeave(true, false);
end
-- 设置Ready标识
function MJPlayer:SetupReady(status)
	Log.Info("MJScene.NotifyOneReady: " .. tostring(status) .. ",name is " .. self.UITransform.name);
	NCSpeedLight.UIHelper.SetActiveState(self.UITransform, "Enter/Center/Label (Prepare)", status);
	if self == MJPlayer.Hero then
		UI_MaJiang.SetupReadyAndInvite(not status, status, true);
	end
end
-- 设置庄家标识
function MJPlayer:SetupBanker()
	local status = self.MJData.m_RoleData.m_Postion == MJPlayer.Hero.HandCardInfo.m_bankerPos;
	NCSpeedLight.UIHelper.SetActiveState(self.UITransform, "Enter/Center/Banker", status);
end
-- 设置进入/离开状态 Enter/Leave
function MJPlayer:SetupEnterAndLeave(...)
	local args = {...};
	NCSpeedLight.UIHelper.SetActiveState(self.UITransform, "Enter", args[1]);
	NCSpeedLight.UIHelper.SetActiveState(self.UITransform, "Leave", args[2]);
end
function MJPlayer:StartGame()
	self:SetupReady(false);
	self:SetupBanker();
end
function MJPlayer:DisplayCards(sort)
	if self:IsHero() then
		if sort then
			self:SortHandCard();
		end
		local cardGridPanel = self.UITransform:Find("Cards/CardGrid");
		local gridCom = cardGridPanel:GetComponent(typeof(UIGrid));
		local currentPos = self.UICardStartPos;
		local operateTotalCount = self.ChiCount + self.PengCount + self.GangCount;
		if operateTotalCount > 0 then
			currentPos = currentPos + Vector3.New(operateTotalCount * 3 * self.UICardWorldSpaceWidth + self.UICardHeadMargin, 0, 0);
		end
		local index = 1;
		for i = 1, # self.HandCardInfo.m_HandCard do
			local card = self.HandCardInfo.m_HandCard[i];
			local cardObj = cardGridPanel:Find(tostring(i));
			NCSpeedLight.UIHelper.SetSpriteName(cardObj, "Sprite", MaJiangType.GetString(card.m_Type));
			local offset = nil;
			cardObj.localPosition = currentPos;
			cardObj.gameObject:SetActive(true);
			if i == # self.HandCardInfo.m_HandCard then
				offset = Vector3.New(self.UICardWidth + self.UICardLastMargin, 0, 0);
			else
				offset = Vector3.New(self.UICardWidth, 0, 0);
			end
			currentPos = currentPos + offset;
			index = index + 1;
		end
		for i = index, 14 do
			local cardObj = cardGridPanel:Find(tostring(i));
			cardObj.localPosition = currentPos;
			local offset = Vector3.New(self.UICardWidth, 0, 0);
			currentPos = currentPos + offset;
			cardObj.gameObject:SetActive(false);
		end
	else
	end
end
-- 播放UI框的缩放,以及投资面板的闪光效果
function MJPlayer:PlayUIScaleAndDicePanelGrow(status)
	-- Log.Info("MJPlayer:PlayUIScaleAndDicePanelGrow: this is " .. self.UITransform.name);
	local scaleAnimation = self.UITransform:Find("Enter/Center"):GetComponent(typeof(TweenScale));
	local name = MJPlayerPos.GetString(self.Position);
	MJSceneController.PlayDicePanelGrowEffect(name, status);
	scaleAnimation.enabled = status;
	if self == MJPlayer.Hero then
		NCSpeedLight.UIHelper.SetActiveState(UI_MaJiang.transform, "center/OperatorPrompt", status);
	end
end
-- 自己的回合
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
		self.UI:PlayGetCardAnimation();
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
		self.UI:PlayGetCardAnimation();
	end
end
--出牌
function MJPlayer:MJOT_SendCard(data)
	self.TableCardCount = self.TableCardCount + 1;
	local card = data.m_HandCard[1];
	Log.Info("MJPlayer:MJOT_SendCard: card index is " .. card.m_Index .. ",type is " .. MaJiangType.GetString(card.m_Type));
	if self:IsHero() then
		local cardPosition = self:GetHandCardPositionByID(card.m_Index);
		local newCardPosition = self:GetHandCardCount();
		local newCard = self:GetHandCardByPosition(newCardPosition);
		self:RemoveHandCard(card.m_Index);
		if self.TableCardCount == nil then
			self.TableCardCount = 0;
		end
		self:SortHandCard();
		local newCardTargetPosition = self:GetHandCardIndex(newCard);
		self.UI:PlayOutCardAnimation(card);
		self.UI:PlayInsertCardAnimation(cardPosition, newCardPosition, newCardTargetPosition);
	else
		self.UI:PlayOutCardAnimation(card);
	end
end
--摊
function MJPlayer:MJOT_Tan(data)
end
--吃 
function MJPlayer:MJOT_CHI(data)
	self.ChiCardCount = self.ChiCardCount + 3;
	self.ChiCount = self.ChiCount + 1;
end
--勺
function MJPlayer:MJOT_SAO(data)
end
--碰
function MJPlayer:MJOT_PENG(data)
	self.PengCardCount = self.PengCardCount + 3;
	self.PengCount = self.PengCount + 1;
	if self:IsHero() then
		for i = 1, # data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
			self:DisplayCards(true);
		end
	end
end
--杠
function MJPlayer:MJOT_GANG(data)
	self.GangCardCount = self.GangCardCount + 4;
	self.GangCount = self.GangCount + 1;
	if self:IsHero() then
		for i = 1, # data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
			self:DisplayCards(true);
		end
	end
end
--暗杠
function MJPlayer:MJOT_AN_GANG(data)
	if self:IsHero() then
		for i = 1, # data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
			self:DisplayCards(true);
		end
	end
end
--补杠
function MJPlayer:MJOT_BuGang(data)
	if self:IsHero() then
		for i = 1, # data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
			self:DisplayCards(true);
		end
	end
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
-- 计算桌子上的点
function MJPlayer:GetTableCardPos(varIndex)
	local tempPos = self.TableCardStartPos;
	local tempLine = 0;
	local tempNum = 0;
	local tempPlayerNum = MJScene.GetPlayerCount();
	if tempPlayerNum == 2 then
		if varIndex < 16 then
			tempLine = math.floor(varIndex / 8);
			tempNum = varIndex % 8;
			if tempNum > 3 then
				tempNum = tempNum + 5;
			end
		else
			varIndex = varIndex - 16;
			tempLine = 2 + math.floor(varIndex / self.TableCardColumnLimit);
			tempNum = varIndex % self.TableCardColumnLimit;
		end
	else
		tempLine = math.floor(varIndex / self.TableCardColumnLimit);
		tempNum = varIndex % self.TableCardColumnLimit;
	end
	tempPos = tempPos + Vector3.New(self.TableCardVerticalOffset.x * tempLine, self.TableCardVerticalOffset.y * tempLine, self.TableCardVerticalOffset.z * tempLine);
	tempPos = tempPos + Vector3.New(self.TableCardHorizontalOffset.x * tempNum, self.TableCardHorizontalOffset.y * tempNum, self.TableCardHorizontalOffset.z * tempNum);
	return tempPos;
end

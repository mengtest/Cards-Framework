UI_MJPlayer = {
	
	transform = nil,
	gameObject = nil,
	Player = nil,
	Cards = nil,
	
	TableCardStartPos = nil, -- 桌面牌的起始位置
	TableCardHorizontalOffset = nil, -- 桌面牌的横向位置偏移
	TableCardVerticalOffset = nil, -- 桌面牌的纵向位置偏移
	TableCardRotation = nil, -- 桌面牌的旋转
	TableCardColumnLimit = nil, -- 桌面牌的列数限制
	HandCardStartPos = nil, -- 手牌牌的起始位置
	HandCardOffset = nil, -- 手牌的横向位置偏移
	HandCardRotation = nil, -- 手牌的旋转
	OperateCardStartPos = nil, -- 操作的牌的起始位置
	OperateCardOffset = nil, -- 操作的牌的偏移
	OperateCardRotation = nil, -- 操作的牌的旋转
	UICardStartPos = nil, -- UI牌的起始位置
	UICardWidth = nil, -- UI牌的宽度
	UICardWorldSpaceWidth = nil, -- UI牌在场景内的宽度
	UICardHeadMargin = nil, -- UI牌距离操作牌的边距
	UICardLastMargin = nil, -- UI最后一张牌的边距
	HuCardPos = nil, -- 胡牌的位置
	
}

local this = UI_MJPlayer;

this.__index = UI_MJPlayer;

function UI_MJPlayer.New()
	local obj = {};
	setmetatable(obj, this);
	return obj;
end

function UI_MJPlayer:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end

function UI_MJPlayer:Start()
end

function UI_MJPlayer:OnDestroy()
	self.gameObject = nil;
	self.transform = nil;
	self.Player = nil;
end

function UI_MJPlayer:Initialize(player)
	self.Player = player;
	self:SetCardDisplayParam();
end

-- 设置该玩家牌展示的相关参数
function UI_MJPlayer:SetCardDisplayParam()
	local isTwoPlayers = HallScene.CurrentFBType == MJRoomType.R_1;
	if self.Player.UIPosition == 0 then
		-- 手牌
		self.HandCardRotation = Vector3.New(- 18, 90, 0);
		self.HandCardOffset = Vector3.New(MJDefine.TableCardX, 0, 0);
		self.HandCardStartPos = Vector3.New(- 6.5, 3.6, - 9.5);
		-- 桌面的牌
		if isTwoPlayers then
			self.TableCardColumnLimit = 13;
			self.TableCardStartPos = Vector3.New(- 5.8, 3.82, - 1.1);
		else
			self.TableCardColumnLimit = 8;
			self.TableCardStartPos = Vector3.New(- 2.1, 3.82, - 3.6);
		end
		self.TableCardRotation = Vector3.New(90, 0, 0);
		self.TableCardHorizontalOffset = Vector3.New(MJDefine.TableCardX, 0, 0);
		self.TableCardVerticalOffset = Vector3.New(0, 0, - MJDefine.TableCardY);
		-- 操作的牌
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3.5;
		self.OperateCardOffset = Vector3.New(MJDefine.TableCardX, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 0, 0);
		self.UICardStartPos = Vector3.New(- 468, 0, 0);
		self.UICardWidth = 82;
		self.UICardLastMargin = 18;
		self.UICardHeadMargin = 36;
		self.UICardWorldSpaceWidth = 52;
	elseif self.Player.UIPosition == 1 then
		-- 手牌
		self.HandCardRotation = Vector3.New(0, - 90, 0);
		self.HandCardOffset = Vector3.New(0, 0, MJDefine.HandCardX);
		self.HandCardStartPos = Vector3.New(10, 4, - 5.36);
		-- 桌面的牌
		self.TableCardColumnLimit = 8;
		self.TableCardStartPos = Vector3.New(3.29, 3.67, - 2.3);
		self.TableCardRotation = Vector3.New(90, - 90, 0);
		self.TableCardHorizontalOffset = Vector3.New(0, 0, MJDefine.TableCardX);
		self.TableCardVerticalOffset = Vector3.New(MJDefine.TableCardY, 0, 0);
		-- 操作的牌
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3.5;
		self.OperateCardOffset = Vector3.New(0, 0, MJDefine.TableCardX);
		self.OperateCardRotation = Vector3.New(90, - 90, 0);
	elseif self.Player.UIPosition == 2 then
		-- 手牌
		self.HandCardRotation = Vector3.New(0, 180, 0);
		self.HandCardOffset = Vector3.New(- MJDefine.HandCardX, 0, 0);
		self.HandCardStartPos = Vector3.New(5.6, 4, 8.7);
		-- 桌面的牌
		if isTwoPlayers then
			self.TableCardColumnLimit = 13;
			self.TableCardStartPos = Vector3.New(5.76, 3.67, 0.905);
		else
			self.TableCardColumnLimit = 8;
			self.TableCardStartPos = Vector3.New(2.13, 3.67, 3.4);
		end
		self.TableCardRotation = Vector3.New(90, 180, 0);
		self.TableCardHorizontalOffset = Vector3.New(- MJDefine.TableCardX, 0, 0);
		self.TableCardVerticalOffset = Vector3.New(0, 0, MJDefine.TableCardY);
		-- 操作的牌
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3.5;
		self.OperateCardOffset = Vector3.New(- MJDefine.TableCardX, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 180, 0);
	elseif self.Player.UIPosition == 3 then
		-- 手牌
		self.HandCardRotation = Vector3.New(0, 90, 0);
		self.HandCardOffset = Vector3.New(0, 0, - MJDefine.HandCardX);
		self.HandCardStartPos = Vector3.New(- 10.5, 4, 4.8);
		self.TableCardColumnLimit = 8;
		self.TableCardStartPos = Vector3.New(- 3.32, 3.67, 2.22);
		self.TableCardRotation = Vector3.New(90, - 90, 0);
		self.TableCardHorizontalOffset = Vector3.New(0, 0, - MJDefine.TableCardX);
		self.TableCardVerticalOffset = Vector3.New(- MJDefine.TableCardY, 0, 0);
		-- 操作的牌
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3.5;
		self.OperateCardOffset = Vector3.New(0, 0, - MJDefine.TableCardX);
		self.OperateCardRotation = Vector3.New(90, 90, 0);
	else
	end
end

function UI_MJPlayer:Reset()
	self:PlayUIScaleAndDicePanelGrow(false);
end

-- 出牌效果
function UI_MJPlayer:OutCard(card)
	local cardPos = self:GetTableCardPos(self.Player.TableCardCount);
	MJSceneController.PutOneCard(card.m_Index, card.m_Type, self.Player.ID, cardPos, self.TableCardRotation);
end

-- 抓牌效果
function UI_MJPlayer:GetCard()
	if self.Player:IsHero() then
		local actionLine = ActionLine.New(ActionLinePlayMode.Parallel, true);
		local firstAction = Action.New(0, 0.1);
		firstAction.OnBegin = function()
			local cardPos = self.Player:GetHandCardCount();
			local cardObj = UI_MJHeroCtrl.GetCardObjByPosition(cardPos);
			local card = self.Player:GetHandCardByPosition(cardPos);
			UIHelper.SetSpriteName(cardObj.transform, "Sprite", MaJiangType.ToString(card.m_Type));
			cardObj:SetActive(true);
			local leftCardObj = UI_MJHeroCtrl.GetCardObjByPosition(cardPos - 1);
		end;
		local downAction = Action.New(0, 0.3);
		downAction.OnBegin = function()
			Log.Info("UI_MJPlayer.GetCard: downAction.OnBegin");
			local cardPos = self.Player:GetHandCardCount();
			local cardObj = UI_MJHeroCtrl.GetCardObjByPosition(cardPos);
			local positionFrom = UnityEngine.Vector3(cardObj.transform.localPosition.x, 100, cardObj.transform.localPosition.z);
			local positionTo = cardObj.transform.localPosition;
			cardObj.transform.localPosition = positionFrom;
			SpringPosition.Begin(cardObj, positionTo, 50);
		end
		actionLine:AddAction(firstAction);
		actionLine:AddAction(downAction);
		actionLine:Start();
		-- self.AnimationQueue:Push(actionLine);
		-- self.AnimationQueue:Resume();
	end
end

-- 刷新牌,sort-是否需要排序,lastMargin-最后一张牌是否需要间距,maxCount-最多显示的牌数
-- 麻将的排序逻辑在这里执行
function UI_MJPlayer:UpdateCards(sort, lastMargin, maxCount)
	if HallScene.CurrentFBPlaybackMode == false then
		if self.Player:IsHero() then
			local arrayCount = 0;
			if maxCount == nil then
				arrayCount = #self.Player.HandCards;
			else
				arrayCount = maxCount > #self.Player.HandCards and self.Player.HandCards or maxCount;
			end
			if sort then
				table.sort(self.Player.HandCards, function(o1, o2)
					return o1.m_Type < o2.m_Type;
				end);	
			end
			local cardGridPanel = self.transform:Find("Cards/CardGrid");
			local gridCom = cardGridPanel:GetComponent(typeof(UIGrid));
			local currentPos = self.UICardStartPos - Vector3.New(self.UICardWidth, 0, 0);
			if self.Player.OperateTotalCount > 0 then
				currentPos = currentPos + Vector3.New(self.Player.OperateTotalCount * 3 * self.UICardWorldSpaceWidth + self.UICardHeadMargin, 0, 0);
			end
			local index = 1;
			for i = 1, arrayCount do
				local card = self.Player.HandCards[i];
				local cardObj = cardGridPanel:Find(tostring(i));
				UIHelper.SetSpriteName(cardObj, "Sprite", MaJiangType.ToString(card.m_Type));
				local offset = nil;
				if i == arrayCount and lastMargin == true then
					offset = Vector3.New(self.UICardWidth + self.UICardLastMargin, 0, 0);
				else
					offset = Vector3.New(self.UICardWidth, 0, 0);
				end
				currentPos = currentPos + offset;
				cardObj.localPosition = currentPos;
				cardObj.gameObject:SetActive(true);
				index = index + 1;
			end
			for i = index, 14 do
				local cardObj = cardGridPanel:Find(tostring(i));
				local offset = Vector3.New(self.UICardWidth, 0, 0);
				currentPos = currentPos + offset;
				cardObj.localPosition = currentPos;
				cardObj.gameObject:SetActive(false);
			end
		else
			local arrayCount = 0;
			if maxCount == nil then
				arrayCount = self.Player:GetHandCardCount();
			else
				arrayCount = maxCount > self.Player:GetHandCardCount() and self.Player:GetHandCardCount() or maxCount;
			end
			local cardGridPanel = MJSceneController.transform:Find("majiangzhuo/backCard/" .. self.transform.name);
			if cardGridPanel.gameObject.activeSelf == false then
				cardGridPanel.gameObject:SetActive(true);
			end
			local currentPos = self.HandCardStartPos - self.HandCardOffset;
			if self.Player.OperateTotalCount > 0 then
				local operateCardCurrentPos = self.OperateCardStartPos + self.OperateCardOffset * self.Player.OperateTotalCount * 3;
				currentPos = operateCardCurrentPos -(self.HandCardOffset / 2); -- 间隔
			end
			local index = 1;
			for i = 1, arrayCount do
				local cardObj = cardGridPanel:Find(tostring(i));
				local offset = self.HandCardOffset;
				if i == arrayCount and lastMargin == true then
					offset = offset + self.HandCardOffset / 2;
				end
				currentPos = currentPos + offset;
				cardObj.localPosition = currentPos;
				cardObj.localRotation = Quaternion.Euler(self.HandCardRotation);
				cardObj.gameObject:SetActive(true);
				index = index + 1;
			end
			for i = index, 14 do
				local cardObj = cardGridPanel:Find(tostring(i));
				local offset = self.HandCardOffset;
				currentPos = currentPos + offset;
				cardObj.localPosition = currentPos;
				cardObj.localRotation = Quaternion.Euler(self.HandCardRotation);
				cardObj.gameObject:SetActive(false);
			end
		end
	else
		if self.Cards ~= nil then
			for i = 1, #self.Cards do
				local card = self.Cards[i];
				card:Reset();
			end
		end
		self.Cards = {};
		if sort then
			table.sort(self.Player.HandCards, function(o1, o2)
				return o1.m_Type < o2.m_Type;
			end);	
		end
		for i = 1, #self.Player.HandCards do
			local handCard = self.Player.HandCards[i];
			local card = MJSceneController.GetOneUnuseCard(handCard.m_Index, handCard.m_Type, self.Player.ID);
			local startPos = nil;
			local factor = 0;
			local operateCount = self.Player:GetOperateTotalCount();
			if operateCount ~= 0 then
				startPos = self.OperateCardStartPos;
				factor = operateCount * 3 + i;
			else
				startPos = self.HandCardStartPos;
				factor = i - 1;
			end
			local cardPos = startPos + self.OperateCardOffset * factor;
			card:Show(cardPos, self.OperateCardRotation);
			table.insert(self.Cards, card);
		end
	end
end


-- 放置吃的牌
function UI_MJPlayer:PutChiCard(data)
end

-- 放置杠的牌
function UI_MJPlayer:PutGangCard(data)
	Log.Info("UI_MJPlayer:PutGangCard: " .. self.Player:LogTag());
	local card1 = MJSceneController.GetCardByID(data.m_LastCard.m_Index, self.Player.ID);
	local player = MJScene.GetPlayerByID(card1.LastRoleID);
	player:SubTableCardCount();
	local card2 = MJSceneController.GetOneUnuseCard(data.m_HandCard[1].m_Index, data.m_HandCard[1].m_Type, self.Player.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_HandCard[2].m_Index, data.m_HandCard[2].m_Type, self.Player.ID);
	local card4 = MJSceneController.GetOneUnuseCard(data.m_HandCard[3].m_Index, data.m_HandCard[3].m_Type, self.Player.ID);
	local factor = self.Player:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	local card4Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	card1:Show(card1Pos, self.OperateCardRotation);
	card2:Show(card2Pos, self.OperateCardRotation);
	card3:Show(card3Pos, self.OperateCardRotation);
	card4:Show(card4Pos, self.OperateCardRotation);
end

-- 放置暗杠的牌
function UI_MJPlayer:PutAnGangCard(data)
	Log.Info("UI_MJPlayer:PutAnGangCard: " .. self.Player:LogTag());
	local factor = self.Player:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	local card4Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	if self.Player:IsHero() then
		-- 自己暗杠会发详细的牌信息
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		local card4 = MJSceneController.GetOneUnuseCard(data.m_HandCard[1].m_Index, data.m_HandCard[1].m_Type, self.Player.ID);
		card4:Show(card4Pos, self.OperateCardRotation);
	else
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card4Pos, self.OperateCardRotation);
	end
	Log.Info("UI_MJPlayer:PutAnGangCard: card1Pos=" .. tostring(card1Pos) .. ",card2Pos=" .. tostring(card2Pos) .. ",card3Pos=" .. tostring(card3Pos) .. ",card4Pos=" .. tostring(card4Pos));
end

-- 放置补杠的牌
function UI_MJPlayer:PutBuGangCard(data)
	Log.Info("UI_MJPlayer:PutBuGangCard: " .. self.Player:LogTag());
	local card1 = MJSceneController.GetOneUnuseCard(data.m_LastCard.m_Index, data.m_LastCard.m_Type, self.Player.ID);
	table.sort(data.m_HandCard, function(o1, o2)
		return o1.m_Index < o2.m_Index;
	end);
	local cards = MJSceneController.GetCardByRoleIDAndType(card1.Type, self.Player.ID);
	table.sort(cards, function(o1, o2)
		return o1.ID < o2.ID;
	end);
	local card2 = cards[2];
	local card2Pos = card2.GO.transform.position;
	local card1Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	card1:Show(card1Pos, self.OperateCardRotation);
end

-- 放置碰的牌
function UI_MJPlayer:PutPengCard(data)
	Log.Info("UI_MJPlayer:PutPengCard: " .. self.Player:LogTag());
	local card1 = MJSceneController.GetCardByID(data.m_LastCard.m_Index, self.Player.ID);
	local player = MJScene.GetPlayerByID(card1.LastRoleID);
	player:SubTableCardCount();
	local card2 = MJSceneController.GetOneUnuseCard(data.m_HandCard[1].m_Index, data.m_HandCard[1].m_Type, self.Player.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_HandCard[2].m_Index, data.m_HandCard[2].m_Type, self.Player.ID);
	local factor = self.Player:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	-- 根据索引排序位置，方便后面的补杠计算位置
	local cards = {card1, card2, card3};
	table.sort(cards, function(o1, o2)
		return o1.ID < o2.ID;
	end);
	cards[1]:Show(card1Pos, self.OperateCardRotation);
	cards[2]:Show(card2Pos, self.OperateCardRotation);
	cards[3]:Show(card3Pos, self.OperateCardRotation);
end

-- 断线重连时，放置杠的牌
function UI_MJPlayer:PutGangCardWhenReconnect(data)
	Log.Info("UI_MJPlayer:PutGangCardWhenReconnect: " .. self.Player:LogTag());
	local card1 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.Player.ID);
	local card2 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[2].m_Index, data.m_FunHandCard[2].m_Type, self.Player.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[3].m_Index, data.m_FunHandCard[3].m_Type, self.Player.ID);
	local card4 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[4].m_Index, data.m_FunHandCard[4].m_Type, self.Player.ID);
	local factor = self.Player:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	local card4Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	card1:Show(card1Pos, self.OperateCardRotation);
	card2:Show(card2Pos, self.OperateCardRotation);
	card3:Show(card3Pos, self.OperateCardRotation);
	card4:Show(card4Pos, self.OperateCardRotation);
end

-- 断线重连时，放置暗杠的牌
function UI_MJPlayer:PutAnGangCardWhenReconnect(data)
	Log.Info("UI_MJPlayer:PutAnGangCardWhenReconnect: " .. self.Player:LogTag());
	local factor = self.Player:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	local card4Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	if self.Player:IsHero() then
		-- 自己暗杠会发详细的牌信息
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		local card4 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.Player.ID);
		card4:Show(card4Pos, self.OperateCardRotation);
	else
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card4Pos, self.OperateCardRotation);
	end
	Log.Info("UI_MJPlayer:PutAnGangCardWhenReconnect: card1Pos=" .. tostring(card1Pos) .. ",card2Pos=" .. tostring(card2Pos) .. ",card3Pos=" .. tostring(card3Pos) .. ",card4Pos=" .. tostring(card4Pos));
end

-- 断线重连时，放置补杠的牌
function UI_MJPlayer:PutBuGangCardWhenReconnect(data)
	Log.Info("UI_MJPlayer:PutBuGangCardWhenReconnect: " .. self.Player:LogTag());
	-- local card1Data = data.m_FunHandCard[1];
	-- local card2Data = data.m_FunHandCard[2];
	local card1 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.Player.ID);
	local cards = MJSceneController.GetCardByRoleIDAndType(card1.Type, self.Player.ID);
	table.sort(cards, function(o1, o2)
		return o1.ID < o2.ID;
	end);
	local card2 = cards[2];
	local card2Pos = card2.GO.transform.position;
	local card1Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	card1:Show(card1Pos, self.OperateCardRotation);
end

-- 断线重连时，放置碰的牌
function UI_MJPlayer:PutPengCardWhenReconnect(data)
	Log.Info("UI_MJPlayer:PutPengCardWhenReconnect: " .. self.Player:LogTag());
	local card1 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.Player.ID);
	local card2 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[2].m_Index, data.m_FunHandCard[2].m_Type, self.Player.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[3].m_Index, data.m_FunHandCard[3].m_Type, self.Player.ID);
	local factor = self.Player:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	-- 根据索引排序位置，方便后面的补杠计算位置
	local cards = {card1, card2, card3};
	table.sort(cards, function(o1, o2)
		return o1.ID < o2.ID;
	end);
	cards[1]:Show(card1Pos, self.OperateCardRotation);
	cards[2]:Show(card2Pos, self.OperateCardRotation);
	cards[3]:Show(card3Pos, self.OperateCardRotation);
end

-- 计算桌子上的点
function UI_MJPlayer:GetTableCardPos(varIndex)
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

-- 播放UI框的缩放,以及骰子面板的闪光效果
function UI_MJPlayer:PlayUIScaleAndDicePanelGrow(status)
	local scaleAnimation = self.transform:Find("Enter/Center"):GetComponent(typeof(TweenScale));
	local name = MJPlayerSeatEnum.ToString(self.Player.ClientPosition);
	MJSceneController.PlayDicePanelGrowEffect(name, status);
	scaleAnimation.enabled = status;
end

function UI_MJPlayer:SetBanker()
	UIHelper.SetActiveState(self.transform, "Enter/Center/Banker", MJPlayer.IsBanker(self.Player));
end 
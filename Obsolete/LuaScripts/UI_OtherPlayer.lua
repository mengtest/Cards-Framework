UI_OtherPlayer = {
	transform = nil,
	gameObject = nil,
	Player = nil,
	Cards = nil,
}

local this = UI_OtherPlayer;

this.__index = UI_OtherPlayer;

function UI_OtherPlayer.New()
	local obj = {};
	setmetatable(obj, this);
	return obj;
end

function UI_OtherPlayer:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end

function UI_OtherPlayer:Start()
end

function UI_OtherPlayer:OnDestroy()
	self.gameObject = nil;
	self.transform = nil;
	if self.Player ~= nil then
		self.Player:OnUIDestroy();
		self.Player = nil;
	end
end

function UI_OtherPlayer:Initialize(player)
	self.Player = player;
end

function UI_OtherPlayer:Reset()
end

-- 播放出牌效果
function UI_OtherPlayer:PlayOutCardAnimation(card)
	-- local outCardTran = self.transform:Find("OutCard/Card");
	-- local tweener = outCardTran:GetComponent(typeof(TweenTransform));
	-- local tweenerUtils = outCardTran:GetComponent(typeof(NCSpeedLight.InvisiableOnTweenFinish));
	-- tweenerUtils.OnFinish = function()
	-- 	if UI_HeroPlayer.DragingCardObj ~= nil then
	-- 		UnityEngine.GameObject.Destroy(UI_HeroPlayer.DragingCardObj);
	-- 	end
	-- end
	-- tweener.enabled = true;
	-- tweener.duration = 0.5;
	-- tweener.from = UI_HeroPlayer.DragingCardObj.transform;
	-- tweener:ResetToBeginning();
	-- NCSpeedLight.UIHelper.SetSpriteName(outCardTran, "Sprite", MaJiangType.ToString(card.m_Type));
	-- outCardTran.gameObject:SetActive(true);
	-- local tableCard = MJSceneController.GetOneUnuseCard(card.m_Index, card.m_Type, self.Player.ID);
	-- local cardPos = self.Player:GetTableCardPos(self.Player.TableCardCount);
	-- tableCard:Show(cardPos, self.Player.TableCardRotation);
	local cardPos = self.Player:GetTableCardPos(self.Player.TableCardCount);
	MJSceneController.PutOneCard(card.m_Index, card.m_Type, self.Player.ID, cardPos, self.Player.TableCardRotation);
end

-- 刷新牌,sort-是否需要排序,lastMargin-最后一张牌是否需要间距,maxCount-最多显示的牌数
-- 麻将的排序逻辑在这里执行
function UI_OtherPlayer:UpdateCards(sort, lastMargin, maxCount)
	if HallScene.CurrentFBPlaybackMode == false then
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
		local currentPos = self.Player.HandCardStartPos - self.Player.HandCardOffset;
		if self.Player.OperateTotalCount > 0 then
			local operateCardCurrentPos = self.Player.OperateCardStartPos + self.Player.OperateCardOffset * self.Player.OperateTotalCount * 3;
			currentPos = operateCardCurrentPos -(self.Player.HandCardOffset / 2); -- 间隔
		end
		local index = 1;
		for i = 1, arrayCount do
			local cardObj = cardGridPanel:Find(tostring(i));
			local offset = self.Player.HandCardOffset;
			if i == arrayCount and lastMargin == true then
				offset = offset + self.Player.HandCardOffset / 2;
			end
			currentPos = currentPos + offset;
			cardObj.localPosition = currentPos;
			cardObj.localRotation = Quaternion.Euler(self.Player.HandCardRotation);
			cardObj.gameObject:SetActive(true);
			index = index + 1;
		end
		for i = index, 14 do
			local cardObj = cardGridPanel:Find(tostring(i));
			local offset = self.Player.HandCardOffset;
			currentPos = currentPos + offset;
			cardObj.localPosition = currentPos;
			cardObj.localRotation = Quaternion.Euler(self.Player.HandCardRotation);
			cardObj.gameObject:SetActive(false);
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
				startPos = self.Player.OperateCardStartPos;
				factor = operateCount * 3 + i;
			else
				startPos = self.Player.HandCardStartPos;
				factor = i - 1;
			end
			local cardPos = startPos + self.Player.OperateCardOffset * factor;
			card:Show(cardPos, self.Player.OperateCardRotation);
			table.insert(self.Cards, card);
		end
	end
end 
-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_OtherPlayer.lua
-- Describle:   其他麻将玩家
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_OtherPlayer = {
	transform = nil,
	gameObject = nil,
	Player = nil,
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
end 
UI_HeroPlayer = {
	transform = nil,
	gameObject = nil,
	Player = nil,
	-- 当前被拖拽的那张牌
	DragingCardObj = nil,
	-- 当前选中的牌
	SelectedCardObj = nil,
	-- 出牌的动画
	OutCardAnimation = nil,
	AnimationQueue = nil,
}

UI_HeroPlayer.__index = UI_HeroPlayer;

function UI_HeroPlayer.New()
	local obj = {};
	setmetatable(obj, UI_HeroPlayer);
	return obj;
end

function UI_HeroPlayer:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
	self.AnimationQueue = AnimationQueue.New();
end

function UI_HeroPlayer:Start()
	local cardGridPanel = self.transform:Find("Cards/CardGrid");
	local childCount = cardGridPanel.childCount;
	for i = 0, cardGridPanel.childCount - 1 do
		local cardObj = cardGridPanel:GetChild(i)
		local listener = cardObj.gameObject:AddComponent(typeof(UIEventListener));
		listener.onDragStart = UI_HeroPlayer.OnStartDragCard;
		listener.onDrag = UI_HeroPlayer.OnDragCard;
		listener.onDragEnd = UI_HeroPlayer.OnStopDragCard;
		listener.onClick = function(go)
			if go ~= nil then
				if self.SelectedCardObj == go then
					if MJScene.IsMyTurn() == false then
						UIManager.OpenTipsDialog("不是你的回合，无法出牌");
					else
						-- 出牌,重置牌的位置以及显示
						go.transform.localPosition = Vector3(go.transform.localPosition.x, 0, go.transform.localPosition.z);
						UIHelper.SetActiveState(go.transform, "UpCard", false);
						UIHelper.SetActiveState(go.transform, false);
						
						local cardIndex = tonumber(go.name);
						local card = self.Player:GetHandCardByPosition(cardIndex);
						if card == nil then
							Log.Error("UI_HeroPlayer.OnClickCard: cannot out card caused by nil card instance");
						else
							MJScene.RequestMJOperate_OutCard(card);
						end
						
						self.SelectedCardObj = nil;
					end
				else
					if self.SelectedCardObj ~= nil then
						self.SelectedCardObj.transform.localPosition = Vector3(self.SelectedCardObj.transform.localPosition.x, 0, self.SelectedCardObj.transform.localPosition.z);
						UIHelper.SetActiveState(self.SelectedCardObj.transform, "UpCard", false);
					end
					
					self.SelectedCardObj = go;
					self.SelectedCardObj.transform.localPosition = Vector3(self.SelectedCardObj.transform.localPosition.x, 30, self.SelectedCardObj.transform.localPosition.z);
					UIHelper.SetActiveState(self.SelectedCardObj.transform, "UpCard", true);
					UIHelper.SetActiveState(self.SelectedCardObj.transform, true);
				end
			end
		end
	end
end

function UI_HeroPlayer:OnDestroy()
	self.gameObject = nil;
	self.transform = nil;
	if self.Player ~= nil then
		self.Player:OnUIDestroy();
	end
	self.Player = nil;
	UI_HeroPlayer.DragingCardObj = nil;
	UI_HeroPlayer.SelectedCardObj = nil;
end

function UI_HeroPlayer:Initialize(player)
	self.Player = player;
end

function UI_HeroPlayer:Reset()
	local cardGridTrans = self.transform:Find("Cards/CardGrid");
	for i = 0, cardGridTrans.childCount - 1 do
		cardGridTrans:GetChild(i).gameObject:SetActive(false);
	end
	if UI_HeroPlayer.DragingCardObj ~= nil then
		UnityEngine.GameObject.Destroy(UI_HeroPlayer.DragingCardObj);
	end
end

function UI_HeroPlayer.OnStartDragCard(go)
	-- Log.Info("UI_HeroPlayer.OnStartDragCard: " .. go.name);
	if UI_HeroPlayer.DragingCardObj ~= nil then
		UnityEngine.GameObject.Destroy(UI_HeroPlayer.DragingCardObj);
	end
	UI_HeroPlayer.DragingCardObj = UnityEngine.GameObject.Instantiate(go);
	UI_HeroPlayer.DragingCardObj.name = "DragingCard";
	UI_HeroPlayer.DragingCardObj.transform:SetParent(UI_MaJiang.transform);
	UI_HeroPlayer.DragingCardObj.transform.localPosition = UnityEngine.Vector3.zero;
	UI_HeroPlayer.DragingCardObj.transform.localScale = UnityEngine.Vector3.one;
	UI_HeroPlayer.DragingCardObj.transform.localRotation = UnityEngine.Quaternion.identity;
	UI_HeroPlayer.DragingCardObj.transform.position = go.transform.position;
end

function UI_HeroPlayer.OnDragCard(go, delta)
	if UI_HeroPlayer.DragingCardObj ~= nil then
		delta = delta * UIManager.UIRoot.pixelSizeAdjustment;
		local deltaPos = UnityEngine.Vector3(delta.x, delta.y, 0);
		local newPos = UI_HeroPlayer.DragingCardObj.transform:TransformPoint(deltaPos);
		UI_HeroPlayer.DragingCardObj.transform.position = newPos;
	end
end

function UI_HeroPlayer.OnStopDragCard(go)
	-- Log.Info("UI_HeroPlayer.OnStopDragCard: " .. go.name);
	if UI_HeroPlayer.DragingCardObj ~= nil then
		UI_HeroPlayer.DragingCardObj:SetActive(false);
		if UI_HeroPlayer.DragingCardObj.transform.localPosition.y < - 105 then
			return;
		end
	end
	if MJScene.IsMyTurn() then
		local cardIndex = tonumber(go.name);
		local card = MJPlayer.Hero:GetHandCardByPosition(cardIndex);
		if card == nil then
			Log.Error("UI_HeroPlayer.OnStopDragCard: cannot out card caused by nil card instance");
		else
			MJScene.RequestMJOperate_OutCard(card);
		end
	else
		UIManager.OpenTipsDialog("不是你的回合，无法出牌");
	end
end

-- 播放出牌效果
function UI_HeroPlayer:PlayOutCardAnimation(card)
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
	-- tableCard:Show(cardPos, self.Player.TableCardRotation);
	local cardPos = self.Player:GetTableCardPos(self.Player.TableCardCount);
	MJSceneController.PutOneCard(card.m_Index, card.m_Type, self.Player.ID, cardPos, self.Player.TableCardRotation);
end

-- 播放插牌动画
function UI_HeroPlayer:PlayInsertCardAnimation(outCardPosition, newCardPosition, newCardTargetPosition)
	local actionLine = ActionLine.New(ActionLinePlayMode.Queue, true);
	Log.Info("UI_HeroPlayer.PlayInsertCardAnimation: OUTCARD AT " .. tostring(outCardPosition) .. ",NEWCARD FROM " .. tostring(newCardPosition) .. " TO " .. tostring(newCardTargetPosition));
	local outCardObj = self:GetCardObjByPosition(outCardPosition);
	local newCardObj = self:GetCardObjByPosition(newCardPosition);
	if outCardPosition == newCardPosition then
		outCardObj:SetActive(false);
		return;
	end
	local targetCardObj = self:GetCardObjByPosition(newCardTargetPosition);
	local newCardDownPos1 = newCardObj.transform.localPosition;
	local newCardUpPos1 = UnityEngine.Vector3(newCardObj.transform.localPosition.x, 100, newCardObj.transform.localPosition.z);
	local newCardDownPos2 = targetCardObj.transform.localPosition;
	local newCardUpPos2 = UnityEngine.Vector3(targetCardObj.transform.localPosition.x, 100, targetCardObj.transform.localPosition.z);
	local inactiveOutCardAction = Action.New();
	-- 1.隐藏打出的牌
	inactiveOutCardAction.OnBegin = function(line)
		Log.Info("UI_HeroPlayer.PlayInsertCardAnimation: inactiveOutCardAction.OnBegin -- 隐藏打出的牌");
		outCardObj:SetActive(false);
		outCardObj.transform.position = newCardObj.transform.position;
		line:Next();
	end;
	-- 2.新牌上升
	local newCardUpAction = Action.New();
	newCardUpAction.OnBegin = function(line)
		Log.Info("UI_HeroPlayer.PlayInsertCardAnimation: newCardUpAction.OnBegin -- 新牌上升");
		local sp = SpringPosition.Begin(newCardObj, newCardUpPos1, 10);
		sp.onFinished = function()
			line:Next();
		end;
	end
	-- 3.新牌横移至目标位
	local newCardMoveAction = Action.New();
	newCardMoveAction.OnBegin = function(line)
		Log.Info("UI_HeroPlayer.PlayInsertCardAnimation: newCardMoveAction.OnBegin -- 新牌横移至目标位");
		local sp = SpringPosition.Begin(newCardObj, newCardUpPos2, 32);
		sp.onFinished = function()
			line:Next();
		end;
	end
	-- 4.新牌下落至槽位中
	local newCardDownAction = Action.New();
	newCardDownAction.OnBegin = function(line)
		Log.Info("UI_HeroPlayer.PlayInsertCardAnimation: newCardDownAction.OnBegin -- 新牌下落至槽位中，同时开始偏移其他牌");
		SpringPosition.Begin(newCardObj, newCardDownPos2, 15);
		local rotationFrom = UnityEngine.Quaternion.Euler(UnityEngine.Vector3(0, 0, 15));
		local rotationTo = UnityEngine.Quaternion.Euler(UnityEngine.Vector3(0, 0, 0));
		newCardObj.transform.rotation = rotationFrom;
		TweenRotation.Begin(newCardObj, 0.5, rotationTo);
		line:Next();--同时执行下一个行为
	end
	-- 5.偏移其他牌
	local offsetCardsAction = Action.New();
	offsetCardsAction.OnBegin = function(line)
		Log.Info("UI_HeroPlayer.PlayInsertCardAnimation: offsetCardsAction.OnBegin -- 偏移其他牌");
		local offsetX = 0;
		local sp = nil;
		if newCardTargetPosition > outCardPosition then
			offsetX = - 72;
			for i = outCardPosition, newCardTargetPosition do
				if i ~= outCardPosition then
					local cardObj = self:GetCardObjByPosition(i);
					local cardObjNewPos = UnityEngine.Vector3(cardObj.transform.localPosition.x + offsetX, cardObj.transform.localPosition.y, cardObj.transform.localPosition.z);
					sp = SpringPosition.Begin(cardObj, cardObjNewPos, 15);
				end
			end
		elseif newCardTargetPosition < outCardPosition then
			offsetX = 72;
			for i = newCardTargetPosition, outCardPosition do
				if i ~= outCardPosition then
					local cardObj = self:GetCardObjByPosition(i);
					local cardObjNewPos = UnityEngine.Vector3(cardObj.transform.localPosition.x + offsetX, cardObj.transform.localPosition.y, cardObj.transform.localPosition.z);
					sp = SpringPosition.Begin(cardObj, cardObjNewPos, 15);
				end
			end
		else
		end
		if sp ~= nil then
			sp.onFinished = function()
				line:Next();
			end
		else
			line:Next();
		end
	end
	-- 6.重命名牌，按照顺序
	local renameCardObjsAction = Action.New();
	renameCardObjsAction.OnBegin = function(line)
		Log.Info("UI_HeroPlayer.PlayInsertCardAnimation: renameCardObjsAction.OnBegin -- 按照x坐标的升序命名牌的名字");
		local gridTran = self.transform:Find("Cards/CardGrid");
		local cardObjs = {};
		for i = 0, gridTran.childCount - 1 do
			table.insert(cardObjs, gridTran:GetChild(i));
		end
		table.sort(cardObjs, function(o1, o2)
			local o1X = o1.localPosition.x;
			local o2X = o2.localPosition.x;
			return o1X < o2X;
		end);
		for i = 1, #cardObjs do
			local cardObj = cardObjs[i];
			cardObj.name = tostring(i);
		end
		-- 播完动画之后再刷新一遍牌,确保数据的正确性
		-- self.Player:DisplayHandCard(true, false);
		line:Next();
	end;
	actionLine:AddAction(inactiveOutCardAction);
	actionLine:AddAction(newCardUpAction);
	actionLine:AddAction(newCardMoveAction);
	actionLine:AddAction(newCardDownAction);
	actionLine:AddAction(offsetCardsAction);
	actionLine:AddAction(renameCardObjsAction);
	self.AnimationQueue:Push(actionLine);
	self.AnimationQueue:Resume();
end

-- 播放抓牌效果
function UI_HeroPlayer:PlayGetCardAnimation()
	local actionLine = ActionLine.New(ActionLinePlayMode.Parallel, true);
	local firstAction = Action.New(0, 0.1);
	firstAction.OnBegin = function()
		local cardPos = self.Player:GetHandCardCount();
		local cardObj = self:GetCardObjByPosition(cardPos);
		local card = self.Player:GetHandCardByPosition(cardPos);
		UIHelper.SetSpriteName(cardObj.transform, "Sprite", MaJiangType.ToString(card.m_Type));
		cardObj:SetActive(true);
		local leftCardObj = self:GetCardObjByPosition(cardPos - 1);
	end;
	local shakeAction = Action.New(0, 0.3);
	shakeAction.OnBegin = function()
		Log.Info("UI_HeroPlayer.PlayGetCardAnimation: shakeAction.OnBegin -- 抖动牌面");
		local cardPos = self.Player:GetHandCardCount();
		local cardObj = self:GetCardObjByPosition(cardPos);
		local rotationFrom = UnityEngine.Quaternion.Euler(UnityEngine.Vector3(0, 0, 15));
		local rotationTo = UnityEngine.Quaternion.Euler(UnityEngine.Vector3(0, 0, 0));
		cardObj.transform.rotation = rotationFrom;
		TweenRotation.Begin(cardObj, 0.2, rotationTo);
	end
	local downAction = Action.New(0, 0.3);
	downAction.OnBegin = function()
		Log.Info("UI_HeroPlayer.PlayGetCardAnimation: downAction.OnBegin -- 下落至槽位中");
		local cardPos = self.Player:GetHandCardCount();
		local cardObj = self:GetCardObjByPosition(cardPos);
		local positionFrom = UnityEngine.Vector3(cardObj.transform.localPosition.x, 100, cardObj.transform.localPosition.z);
		local positionTo = cardObj.transform.localPosition;
		cardObj.transform.localPosition = positionFrom;
		SpringPosition.Begin(cardObj, positionTo, 50);
	end
	actionLine:AddAction(firstAction);
	-- actionLine:AddAction(shakeAction);
	actionLine:AddAction(downAction);
	self.AnimationQueue:Push(actionLine);
	self.AnimationQueue:Resume();
end

-- 根据索引获取牌的对象
function UI_HeroPlayer:GetCardObjByPosition(pos)
	local tran = self.transform:Find("Cards/CardGrid/" .. tostring(pos));
	if tran ~= nil then
		return	tran.gameObject;
	else
		return nil;
	end
end

-- 刷新牌,sort-是否需要排序,lastMargin-最后一张牌是否需要间距,maxCount-最多显示的牌数
-- 麻将的排序逻辑在这里执行
function UI_HeroPlayer:UpdateCards(sort, lastMargin, maxCount)
	if HallScene.CurrentFBPlaybackMode == false then
		if self.Player == nil then
			return;
		else
			local arrayCount = 0;
			if maxCount == nil then
				arrayCount = #self.Player.HandCards;
			else
				arrayCount = maxCount > #self.Player.HandCards and self.Player.HandCards or maxCount;
			end
			-- local visitArray = {};
			-- for i = 1, arrayCount do
			-- end
			if sort then
				table.sort(self.Player.HandCards, function(o1, o2)
					return o1.m_Type < o2.m_Type;
				end);	
			end
			local cardGridPanel = self.transform:Find("Cards/CardGrid");
			local gridCom = cardGridPanel:GetComponent(typeof(UIGrid));
			local currentPos = self.Player.UICardStartPos - Vector3.New(self.Player.UICardWidth, 0, 0);
			if self.Player.OperateTotalCount > 0 then
				currentPos = currentPos + Vector3.New(self.Player.OperateTotalCount * 3 * self.Player.UICardWorldSpaceWidth + self.Player.UICardHeadMargin, 0, 0);
			end
			local index = 1;
			for i = 1, arrayCount do
				local card = self.Player.HandCards[i];
				local cardObj = cardGridPanel:Find(tostring(i));
				UIHelper.SetSpriteName(cardObj, "Sprite", MaJiangType.ToString(card.m_Type));
				local offset = nil;
				if i == arrayCount and lastMargin == true then
					offset = Vector3.New(self.Player.UICardWidth + self.Player.UICardLastMargin, 0, 0);
				else
					offset = Vector3.New(self.Player.UICardWidth, 0, 0);
				end
				currentPos = currentPos + offset;
				cardObj.localPosition = currentPos;
				cardObj.gameObject:SetActive(true);
				index = index + 1;
			end
			for i = index, 14 do
				local cardObj = cardGridPanel:Find(tostring(i));
				local offset = Vector3.New(self.Player.UICardWidth, 0, 0);
				currentPos = currentPos + offset;
				cardObj.localPosition = currentPos;
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

-- 重置当前选中的牌
function UI_HeroPlayer:RecoverSelectedCard()
	if self.SelectedCardObj ~= nil then
		self.SelectedCardObj.transform.localPosition = Vector3(self.SelectedCardObj.transform.localPosition.x, 0, self.SelectedCardObj.transform.localPosition.z);
		UIHelper.SetActiveState(self.SelectedCardObj.transform, "UpCard", false);
		self.SelectedCardObj = nil;
	end
end 
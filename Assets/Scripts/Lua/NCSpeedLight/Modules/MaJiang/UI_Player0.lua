UI_Player0 = {
	transform = nil,
	gameObject = nil,
	Player = nil,
	DragingCardObj = nil,
}

local this = UI_Player0;

function UI_Player0.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.Player = MJPlayer.New();
	MJPlayer.Hero = this.Player;
	Log.Info("UI_Player0.Awake: player instance is " .. tostring(this.Player));
	this.Player:Initialize(go.transform);
end

function UI_Player0.Start()
	local cardGridPanel = this.transform:Find("Cards/CardGrid");
	local childCount = cardGridPanel.childCount;
	for i = 1, cardGridPanel.childCount do
		local cardObj = cardGridPanel:GetChild(i - 1)
		local listener = cardObj.gameObject:AddComponent(typeof(UIEventListener));
		listener.onDragStart = UI_Player0.OnStartDragCard;
		listener.onDrag = UI_Player0.OnDragCard;
		listener.onDragEnd = UI_Player0.OnStopDragCard;
	end
end

function UI_Player0.OnStartDragCard(go)
	-- Log.Info("UI_Player0.OnStartDragCard: " .. go.name);
	if this.DragingCardObj ~= nil then
		UnityEngine.GameObject.Destroy(this.DragingCardObj);
	end
	this.DragingCardObj = UnityEngine.GameObject.Instantiate(go);
	this.DragingCardObj.name = "DragingCard";
	this.DragingCardObj.transform:SetParent(UI_MaJiang.transform);
	this.DragingCardObj.transform.localPosition = UnityEngine.Vector3.zero;
	this.DragingCardObj.transform.localScale = UnityEngine.Vector3.one;
	this.DragingCardObj.transform.localRotation = UnityEngine.Quaternion.identity;
	this.DragingCardObj.transform.position = go.transform.position;
end

function UI_Player0.OnDragCard(go, delta)
	if this.DragingCardObj ~= nil then
		delta = delta * UIManager.UIRoot.pixelSizeAdjustment;
		local deltaPos = UnityEngine.Vector3(delta.x, delta.y, 0);
		local newPos = this.DragingCardObj.transform:TransformPoint(deltaPos);
		this.DragingCardObj.transform.position = newPos;
	end
end

function UI_Player0.OnStopDragCard(go)
	-- Log.Info("UI_Player0.OnStopDragCard: " .. go.name);
	if this.DragingCardObj ~= nil then
		this.DragingCardObj:SetActive(false);
		if this.DragingCardObj.transform.localPosition.y < 30 then
			return;
		end
	end
	if MJScene.CurrentOperator.Player == MJPlayer.Hero then
		local cardIndex = tonumber(go.name);
		local card = MJPlayer.Hero:GetHandCardByPosition(cardIndex);
		if card == nil then
			Log.Error("UI_Player0.OnStopDragCard: cannot out card caused by nil card instance");
		else
			this.PlayOutCardAnimation(this.DragingCardObj.transform, card.m_Type);
			MJScene.RequestMJOperate_OutCard(card);
		end
	else
		UIManager.OpenTipsDialog("不是你的回合，无法出牌");
	end
end

-- 播放出牌效果
function UI_Player0.PlayOutCardAnimation(from, cardType)
	local outCardTran = this.transform:Find("OutCard/Card");
	local tweener = outCardTran:GetComponent(typeof(TweenTransform));
	local tweenerUtils = outCardTran:GetComponent(typeof(NCSpeedLight.InvisiableOnTweenFinish));
	tweenerUtils.OnFinish = function()
		if this.DragingCardObj ~= nil then
			UnityEngine.GameObject.Destroy(this.DragingCardObj);
		end
	end
	tweener.enabled = true;
	tweener.duration = 0.5;
	tweener.from = from;
	tweener:ResetToBeginning();
	NCSpeedLight.UIHelper.SetSpriteName(outCardTran, "Sprite", MaJiangType.GetString(cardType));
	outCardTran.gameObject:SetActive(true);
end

-- 播放抓牌效果
function UI_Player0.PlayGetCardAnimation()
	local index = this.Player:GetHandCardCount();
	local card = this.GetCardObjByIndex(index);
	
	local rotationFrom = UnityEngine.Quaternion.Euler(UnityEngine.Vector3(0, 0, 15));
	local rotationTo = UnityEngine.Quaternion.Euler(UnityEngine.Vector3(0, 0, 0));
	card.rotation = rotationFrom;
	TweenRotation.Begin(card.gameObject, 0.5, rotationTo);
	
	-- Log.Info("UI_Player0.PlayGetCardAnimation: card position is " .. tostring(card.position));
	-- Log.Info("UI_Player0.PlayGetCardAnimation: card localPosition is " .. tostring(card.localPosition));
	local positionFrom = UnityEngine.Vector3(card.localPosition.x, 70, card.localPosition.z);
	local positionTo = card.localPosition;
	card.localPosition = positionFrom;
	SpringPosition.Begin(card.gameObject, positionTo, 8);
end

-- 根据索引获取牌的对象
function UI_Player0.GetCardObjByIndex(index)
	return this.transform:Find("Cards/CardGrid/" .. tostring(index));
end

function UI_Player0.OnDestroy()
	this.gameObject = nil;
	this.transform = nil;
	this.Player:OnUIDestroy();
	this.Player = nil;
	MJPlayer.Hero = nil;
	this.DragingCardObj = nil;
end
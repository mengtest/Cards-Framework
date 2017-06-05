UI_MJHeroCtrl = {
	transform = nil,
	
	gameObject = nil,
	
	Player = nil,
	
	-- 当前被拖拽的那张牌
	DragingCardObj = nil,
	
	-- 当前选中的牌
	SelectedCardObj = nil,
}

local this = UI_MJHeroCtrl;

function UI_MJHeroCtrl.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJHeroCtrl.Start()
	local cardGridPanel = this.transform:Find("Cards/CardGrid");
	local childCount = cardGridPanel.childCount;
	for i = 0, cardGridPanel.childCount - 1 do
		local cardObj = cardGridPanel:GetChild(i)
		local listener = cardObj.gameObject:AddComponent(typeof(UIEventListener));
		listener.onDragStart = UI_MJHeroCtrl.OnStartDragCard;
		listener.onDrag = UI_MJHeroCtrl.OnDragCard;
		listener.onDragEnd = UI_MJHeroCtrl.OnStopDragCard;
		listener.onClick = UI_MJHeroCtrl.OnClickCard;
	end
end

function UI_MJHeroCtrl.OnDestroy()
	this.gameObject = nil;
	this.transform = nil;
	this.Player = nil;
	UI_MJHeroCtrl.DragingCardObj = nil;
	UI_MJHeroCtrl.SelectedCardObj = nil;
end

function UI_MJHeroCtrl.Reset()
	UIHelper.SetActiveState(this.transform, "Cards/CardGrid", false);
	if UI_MJHeroCtrl.DragingCardObj ~= nil then
		UnityEngine.GameObject.Destroy(UI_MJHeroCtrl.DragingCardObj);
	end
end

function UI_MJHeroCtrl.OnStartDragCard(go)
	if UI_MJHeroCtrl.DragingCardObj ~= nil then
		UnityEngine.GameObject.Destroy(UI_MJHeroCtrl.DragingCardObj);
	end
	UI_MJHeroCtrl.DragingCardObj = UnityEngine.GameObject.Instantiate(go);
	UI_MJHeroCtrl.DragingCardObj.name = "DragingCard";
	UI_MJHeroCtrl.DragingCardObj.transform:SetParent(UI_MJBase.transform);
	UI_MJHeroCtrl.DragingCardObj.transform.localPosition = UnityEngine.Vector3.zero;
	UI_MJHeroCtrl.DragingCardObj.transform.localScale = UnityEngine.Vector3.one;
	UI_MJHeroCtrl.DragingCardObj.transform.localRotation = UnityEngine.Quaternion.identity;
	UI_MJHeroCtrl.DragingCardObj.transform.position = go.transform.position;
end

function UI_MJHeroCtrl.OnDragCard(go, delta)
	if UI_MJHeroCtrl.DragingCardObj ~= nil then
		delta = delta * UIManager.UIRoot.pixelSizeAdjustment;
		local deltaPos = UnityEngine.Vector3(delta.x, delta.y, 0);
		local newPos = UI_MJHeroCtrl.DragingCardObj.transform:TransformPoint(deltaPos);
		UI_MJHeroCtrl.DragingCardObj.transform.position = newPos;
	end
end

function UI_MJHeroCtrl.OnStopDragCard(go)
	if UI_MJHeroCtrl.DragingCardObj ~= nil then
		UI_MJHeroCtrl.DragingCardObj:SetActive(false);
		if UI_MJHeroCtrl.DragingCardObj.transform.localPosition.y < - 105 then
			return;
		end
	end
	if MJScene.IsMyTurn() then
		local cardIndex = tonumber(go.name);
		local card = MJPlayer.Hero:GetHandCardByPosition(cardIndex);
		if MJScene.IsJingCard(card.m_Type) then
			UI_MJBase.SetPlayJingActive(true);
		else
			MJScene.RequestMJOperate_OutCard(card);
		end
	else
		-- UIManager.OpenTipsDialog("不是你的回合，无法出牌");
	end
end

-- 根据索引获取牌的对象
function UI_MJHeroCtrl.GetCardObjByPosition(pos)
	local tran = this.transform:Find("Cards/CardGrid/" .. tostring(pos));
	if tran ~= nil then
		return	tran.gameObject;
	else
		return nil;
	end
end

-- 重置当前选中的牌
function UI_MJHeroCtrl.RecoverSelectedCard()
	if this.SelectedCardObj ~= nil then
		this.SelectedCardObj.transform.localPosition = Vector3(this.SelectedCardObj.transform.localPosition.x, 0, this.SelectedCardObj.transform.localPosition.z);
		UIHelper.SetActiveState(this.SelectedCardObj.transform, "UpCard", false);
		this.SelectedCardObj = nil;
	end
end

function UI_MJHeroCtrl.OnClickCard(go)
	if go ~= nil then
		if this.SelectedCardObj == go then
			if MJScene.IsMyTurn() == false then
				-- UIManager.OpenTipsDialog("不是你的回合，无法出牌");
			else
				local cardIndex = tonumber(go.name);
				local card = this.Player:GetHandCardByPosition(cardIndex);
				if MJScene.IsJingCard(card.m_Type) then
					UI_MJBase.SetPlayJingActive(true);
				else
					MJScene.RequestMJOperate_OutCard(card);
					UIHelper.SetActiveState(go.transform, "UpCard", false);
					UIHelper.SetActiveState(go.transform, false);
					go.transform.localPosition = Vector3(go.transform.localPosition.x, 0, go.transform.localPosition.z);
					this.SelectedCardObj = nil;
					UI_MJBase.SetPlayJingActive(false);
				end
			end
		else
			if this.SelectedCardObj ~= nil then
				this.SelectedCardObj.transform.localPosition = Vector3(this.SelectedCardObj.transform.localPosition.x, 0, this.SelectedCardObj.transform.localPosition.z);
				UIHelper.SetActiveState(this.SelectedCardObj.transform, "UpCard", false);
			end
			
			this.SelectedCardObj = go;
			this.SelectedCardObj.transform.localPosition = Vector3(this.SelectedCardObj.transform.localPosition.x, 30, this.SelectedCardObj.transform.localPosition.z);
			UIHelper.SetActiveState(this.SelectedCardObj.transform, "UpCard", true);
			UIHelper.SetActiveState(this.SelectedCardObj.transform, true);
		end
	end
end

function UI_MJHeroCtrl.OnClickJingYes()
	UI_MJBase.SetPlayJingActive(false);
	local go = this.SelectedCardObj;
	if go ~= nil then
		local cardIndex = tonumber(go.name);
		local card = this.Player:GetHandCardByPosition(cardIndex);
		MJScene.RequestMJOperate_OutCard(card);
		go.transform.localPosition = Vector3(go.transform.localPosition.x, 0, go.transform.localPosition.z);
		UIHelper.SetActiveState(go.transform, "UpCard", false);
		UIHelper.SetActiveState(go.transform, false);
		this.SelectedCardObj = nil;
		return;
	end
	go = this.DragingCardObj;
	if go ~= nil then
		local cardIndex = tonumber(go.name);
		local card = this.Player:GetHandCardByPosition(cardIndex);
		MJScene.RequestMJOperate_OutCard(card);
	end
end

function UI_MJHeroCtrl.OnClickJingNo()
	UI_MJBase.SetPlayJingActive(false);
	local go = this.SelectedCardObj;
	if go ~= nil then
		go.transform.localPosition = Vector3(go.transform.localPosition.x, 0, go.transform.localPosition.z);
		UIHelper.SetActiveState(go.transform, "UpCard", false);
		this.SelectedCardObj = nil;
	end
end 
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
		listener.onClick = function(go)
			if go ~= nil then
				if this.SelectedCardObj == go then
					if MJScene.IsMyTurn() == false then
						-- UIManager.OpenTipsDialog("不是你的回合，无法出牌");
					else
						-- 出牌,重置牌的位置以及显示
						go.transform.localPosition = Vector3(go.transform.localPosition.x, 0, go.transform.localPosition.z);
						UIHelper.SetActiveState(go.transform, "UpCard", false);
						UIHelper.SetActiveState(go.transform, false);
						
						local cardIndex = tonumber(go.name);
						local card = this.Player:GetHandCardByPosition(cardIndex);
						if card == nil then
							Log.Error("OnClickCard: cannot out card caused by nil card instance");
						else
							MJScene.RequestMJOperate_OutCard(card);
						end
						
						this.SelectedCardObj = nil;
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
	local cardGridTrans = this.transform:Find("Cards/CardGrid");
	for i = 0, cardGridTrans.childCount - 1 do
		cardGridTrans:GetChild(i).gameObject:SetActive(false);
	end
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
	UI_MJHeroCtrl.DragingCardObj.transform:SetParent(UI_MaJiang.transform);
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
		if card == nil then
			Log.Error("OnStopDragCard: cannot out card caused by nil card instance");
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
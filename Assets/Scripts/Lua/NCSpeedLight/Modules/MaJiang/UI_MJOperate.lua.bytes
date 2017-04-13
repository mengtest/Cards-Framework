UI_MJOperate = {
	transform = nil,
	gameObject = nil,
	OperateData = nil,
	OperateType = nil,
	Card1Transform = nil;
};

UI_MJOperate.__index = UI_MJOperate;

function UI_MJOperate.New()
	local obj = {};
	setmetatable(obj, UI_MJOperate);
	return obj;
end

function UI_MJOperate:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
	self.Card1Transform = go.transform:Find("Card1");
end

function UI_MJOperate:Start()
end

function UI_MJOperate:OnDestroy()
	self.transform = nil;
	self.gameObject = nil;
end

function UI_MJOperate:SetData(data)
	self.OperateData = data;
	self.OperateType = data.m_OperatorType;
	self:InitView();
end

function UI_MJOperate:InitView()
	if self.OperateType == MaJiangOperatorType.MJOT_PENG then
		self:ShowPengCard();
	elseif self.OperateType == MaJiangOperatorType.MJOT_CHI then
		self:ShowEatCard();
	elseif self.OperateType == MaJiangOperatorType.MJOT_AN_GANG or self.OperateType == MaJiangOperatorType.MJOT_GANG or self.OperateType == MaJiangOperatorType.MJOT_BuGang then
		self:ShowGangCard();
	end
	UIHelper.SetButtonEvent(self.transform, function(go)
		UI_MaJiang.HideOperateView();
		MJScene.RequestMJOperate(self.OperateData);
	end);
end

-- 显示碰的牌
function UI_MJOperate:ShowPengCard()
	local tempType = self.OperateData.m_HandCard[1].m_Type;
	UIHelper.SetActiveState(self.Card1Transform, "Sprite", tempType == self.OperateData.m_OperatorCard);
	for i = 1, 3 do
		local tempTransform = self.transform:Find("Card" .. i);
		UIHelper.SetSpriteName(tempTransform, MaJiangType.ToString(tempType));
		-- if (varPlayer != null) 
		-- {
		--     Helper.SetActiveState(tempTransform, "Jing", varPlayer.CardIsJing(tempType));
		-- }
		tempTransform.localScale = Vector3.New(0.55, 0.55, 1);
	end
end

-- 显示吃的牌
function UI_MJOperate:ShowEatCard()
	for i = 1, 3 do
		local tempType = self.OperateData.m_HandCard[i].m_Type;
		local tempTransform = self.transform:Find("Card" .. i);
		UIHelper.SetSpriteName(tempTransform, MaJiangType.ToString(tempType));
		UIHelper.SetActiveState(tempTransform, "Sprite", tempType == self.OperateData.m_OperatorCard);
		-- if (varPlayer != null) 
		-- {
		--     Helper.SetActiveState(tempTransform, "Jing", varPlayer.CardIsJing(tempType));
		-- }
		-- tempTransform.localScale = Vector3.New(0.55, 0.55, 1);
	end
end

-- 显示杠的牌
function UI_MJOperate:ShowGangCard()
	local tempType = self.OperateData.m_HandCard[1].m_Type;
	UIHelper.SetActiveState(self.Card1Transform, "Sprite", tempType == self.OperateData.m_OperatorCard);
	for i = 1, 4 do
		local tempTransform = self.transform:Find("Card" .. i);
		UIHelper.SetSpriteName(tempTransform, MaJiangType.ToString(tempType));
		-- if (varPlayer != null) 
		-- {
		--     Helper.SetActiveState(tempTransform, "Jing", varPlayer.CardIsJing(tempType));
		-- }
		tempTransform.localScale = Vector3.New(0.55, 0.55, 1);
	end
end 
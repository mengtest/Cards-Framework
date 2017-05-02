-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: MJPlayer.lua
-- Describle:   麻将玩家
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
MJPlayerSeatEnum = {
	-- 东
	EAST = 0,
	-- 南
	SOUTH = 1,
	-- 西
	WEST = 2,
	-- 北
	NORTH = 3,
	ToString = function(index)
		for key, value in pairs(MJPlayerSeatEnum) do
			if value == index then
				return tostring(key);
			end
		end
	end
}

MJPlayer = {
	-- 主角
	Hero = nil,
	
	-- 房主
	RoomMaster = nil,
	
	-- 庄家
	Banker = nil,
	
	-- 角色ID
	ID = nil,
	
	-- 名字
	Name = nil,
	
	-- 头像URL
	HeadURL = nil,
	
	-- 性别
	Sex = 0,
	
	-- 是否举手
	IsReady = false,
	
	-- 总分
	TotalScore = nil,
	
	-- 经度
	Longitude = nil,
	
	-- 纬度
	Latitude = nil,
	
	-- 手牌
	HandCards = nil,
	
	-- UI的位置
	UIPosition,
	
	-- 服务器分配的位置
	ServerPosition,
	
	-- 相对位置
	Position,
	
	-- 对应的UI
	UI,
	
	-- 对应的UI物体
	UITransform,
	
	-- 已经打出牌的个数，不包括吃，碰杠的牌
	TableCardCount = 0,
	
	-- 玩家手上的牌的个数
	HandCardCount = 0,
	
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
	
	-- 吃碰杠的总次数
	OperateTotalCount = 0,
	
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
};

MJPlayer.__index = MJPlayer;

function MJPlayer.New()
	local obj = {};
	setmetatable(obj, MJPlayer);
	obj.TableCardCount = 0;
	return obj;
end

-- 判断是否是自己
function MJPlayer:IsHero()
	return self == MJPlayer.Hero;
end

-- 判断是否是房主
function MJPlayer:IsRoomMaster()
	return self == MJPlayer.RoomMaster;
end

-- 判断是否是庄家
function MJPlayer:IsBanker()
	return self == MJPlayer.Banker;
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

-- 设置玩家的数据 id/name/headurl/sex/serverposition/isready/totalscore/longitude/latitude
function MJPlayer:SetData(id, name, headurl, sex, serverposition, isready, totalscore, longitude, latitude)
	self.ID = id;
	self.Name = name;
	self.HeadURL = headurl;
	self.Sex = sex;
	self.ServerPosition = serverposition;
	self.IsReady = isready;
	self.TotalScore = totalscore;
	self.Longitude = longitude;
	self.Latitude = latitude;
	if self:IsHero() then
		RongCloudAdapter.Login(self.ID, self.Name, self.HeadURL);
	end
	Log.Info("MJPlayer:SetData: ID is " .. self.ID);
end

function MJPlayer:SetUI()
	Log.Info("MJPlayer:SetUI: begin,self " .. tostring(self));
	if self.ID == MJScene.RoomMasterID then
		MJPlayer.RoomMaster = self;
	end
	-- 获取玩家的UI位置
	local vals = UI_MaJiang.GetPlayerUI(self.ServerPosition);
	self.UI = vals[1];
	self.UITransform = vals[2];
	self.UIPosition = vals[3];
	
	-- 定位玩家的东南西北位置
	self.Position = self.ServerPosition;
	if self:IsHero() == false then
		local isTwoPlayers = SharedVariable.FBInfo.m_FBTypeID == MJRoomType.R_1;
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
	Log.Info("MJPlayer:SetUI: ID is " .. self.ID);
	Log.Info("MJPlayer:SetUI: UI is " .. self.UITransform.name);
	Log.Info("MJPlayer:SetUI: ServerPosition is " .. self.ServerPosition);
	Log.Info("MJPlayer:SetUI: UIPosition is " .. self.UIPosition);
	Log.Info("MJPlayer:SetUI: Position is " .. self.Position);
end

-- 设置该玩家牌展示的相关参数
function MJPlayer:SetCardDisplayParam()
	local isTwoPlayers = SharedVariable.FBInfo.m_FBTypeID == MJRoomType.R_1;
	if self.UIPosition == 0 then
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
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3;
		self.OperateCardOffset = Vector3.New(MJDefine.TableCardX, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 0, 0);
		self.UICardStartPos = Vector3.New(- 468, 0, 0);
		self.UICardWidth = 72;
		self.UICardLastMargin = 18;
		self.UICardHeadMargin = 36;
		self.UICardWorldSpaceWidth = 52;
	elseif self.UIPosition == 1 then
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
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3;
		self.OperateCardOffset = Vector3.New(0, 0, MJDefine.TableCardX);
		self.OperateCardRotation = Vector3.New(90, - 90, 0);
	elseif self.UIPosition == 2 then
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
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3;
		self.OperateCardOffset = Vector3.New(- MJDefine.TableCardX, 0, 0);
		self.OperateCardRotation = Vector3.New(90, 180, 0);
	elseif self.UIPosition == 3 then
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
		self.OperateCardStartPos = self.HandCardStartPos - self.HandCardOffset * 3;
		self.OperateCardOffset = Vector3.New(0, 0, - MJDefine.TableCardX);
		self.OperateCardRotation = Vector3.New(90, 90, 0);
	else
	end
end

-- 重置
function MJPlayer:Reset()
	if self:IsHero() == false then
		local handCardTrans = MJSceneController.transform:Find("majiangzhuo/backCard/" .. self.UITransform.name);
		if handCardTrans ~= nil then
			handCardTrans.gameObject:SetActive(false);
		end
	end
	self:PlayUIScaleAndDicePanelGrow(false);
	self.UI:Reset();
	self.TableCardCount = 0;
	self.OperateTotalCount = 0;
end

-- 断线重连时重置数据
function MJPlayer:OnReconnect()
end

function MJPlayer:OnUIDestroy()
end

function MJPlayer:LogKey()
	local str = "【" .. tostring(self.ID) .. "," .. self.UITransform.name .. "】";
	return str;
end

-- 获取头像的图片
function MJPlayer:GetHeadTexture()
	if self.UI == nil then return nil end;
	local uiTexture = UIHelper.GetComponent(self.UI.transform, "Enter/Center/Icon/Sprite (Photo)", typeof(UITexture));
	return uiTexture.mainTexture;
end

-- data= PBMessage.GMHandCard
function MJPlayer:SetHandCards(data)
	self.HandCards = data;
end

-- 根据牌的位置索引获取牌的信息
function MJPlayer:GetHandCardByPosition(pos)
	local var = 1;
	for key, value in pairs(self.HandCards) do
		if pos == var then
			return value;
		end
		var = var + 1;
	end
end

-- 根据牌的ID获取牌的信息
function MJPlayer:GetHandCardByIndex(index)
	for key, value in pairs(self.HandCards) do
		if value.m_Index == index then
			return value;
		end
	end
end

-- 移除一张牌
function MJPlayer:RemoveHandCard(index)
	local var = 1;
	for key, value in pairs(self.HandCards) do
		if value.m_Index == index then
			table.remove(self.HandCards, var);
			break;
		end
		var = var + 1;
	end
end

function MJPlayer:AddHandCard(card)
	table.insert(self.HandCards, card);
end

function MJPlayer:SortHandCard()
	table.sort(self.HandCards, function(o1, o2)
		return o1.m_Type < o2.m_Type;
	end);
end

-- 根据牌的对象获取所在的位置
function MJPlayer:GetHandCardIndex(card)
	for i = 1, #self.HandCards do
		if self.HandCards[i] == card then
			return i;
		end
	end
	return - 1;
end

-- 根据牌的ID获取位置
function MJPlayer:GetHandCardPositionByID(id)
	for i = 1, #self.HandCards do
		local card = self.HandCards[i];
		if card.m_Index == id then
			return i;
		end
	end
	return - 1;
end

-- 当前玩家桌面上牌的数量 +1
function MJPlayer:AddTableCardCount()
	self.TableCardCount = self.TableCardCount + 1;
	Log.Info("MJPlayer:AddTableCardCount: " .. self:LogKey() .. ",tablecard count is " .. tostring(self.TableCardCount));
	return self.TableCardCount;
end

-- 当前玩家桌面上牌的数量 -1
function MJPlayer:SubTableCardCount()
	self.TableCardCount = self.TableCardCount - 1;
	Log.Info("MJPlayer:SubTableCardCount: " .. self:LogKey() .. ",tablecard count is " .. tostring(self.TableCardCount));
	return self.TableCardCount;
end

-- 获取当前玩家打出去牌的数量
function MJPlayer:GetTableCardCount()
	return self.TableCardCount;
end

-- 设置手牌的数量
function MJPlayer:SetHandCardCount(val)
	self.HandCardCount = val;
	return self.HandCardCount;
end

-- 获取手牌的数量
function MJPlayer:GetHandCardCount()
	return self.HandCardCount;
end

-- 增加手牌的数量
function MJPlayer:AddHandCardCount(val)
	if val ~= nil then
		self.HandCardCount = self.HandCardCount + val;
	else
		self.HandCardCount = self.HandCardCount + 1;
	end
	Log.Info("MJPlayer:AddHandCardCount: " .. self:LogKey() .. ",handcard count is " .. tostring(self.HandCardCount));
	return self.HandCardCount;
end

-- 减少手牌的数量
function MJPlayer:SubHandCardCount(val)
	if val ~= nil then
		self.HandCardCount = self.HandCardCount - val;
	else
		self.HandCardCount = self.HandCardCount - 1;
	end
	Log.Info("MJPlayer:SubHandCardCount: " .. self:LogKey() .. ",handcard count is " .. tostring(self.HandCardCount));
	return self.HandCardCount;
end

-- 增加吃碰杠的次数
function MJPlayer:AddOperateTotalCount(val)
	if val ~= nil then
		self.OperateTotalCount = self.OperateTotalCount + val;
	else
		self.OperateTotalCount = self.OperateTotalCount + 1;
	end
	Log.Info("MJPlayer:AddOperateTotalCount: " .. self:LogKey() .. ",operate total count is " .. tostring(self.OperateTotalCount));
	return self.OperateTotalCount;
end

-- 减少吃碰杠的次数
function MJPlayer:SubOperateTotalCount(val)
	if val ~= nil then
		self.OperateTotalCount = self.OperateTotalCount - val;
	else
		self.OperateTotalCount = self.OperateTotalCount - 1;
	end
	Log.Info("MJPlayer:SubOperateTotalCount:  " .. self:LogKey() .. ",operate total count is " .. tostring(self.OperateTotalCount));
	return self.OperateTotalCount;
end

-- 获取吃碰杠的次数
function MJPlayer:GetOperateTotalCount()
	return self.OperateTotalCount;
end

-- 设置当前玩家的总积分
function MJPlayer:GetTotalScore()
	return self.TotalScore;
end

-- 获取当前玩家的总积分
function MJPlayer:SetTotalScore(score)
	self.TotalScore = score;
end

-- 增加总积分
function MJPlayer:AddTotalScore(score)
	self.TotalScore = self.TotalScore + score;
	return self.TotalScore;
end

-- 设置玩家UI
function MJPlayer:SetupUI()
	UIHelper.SetLabelText(self.UITransform, "Enter/Center/Label (Name)", self.Name);
	UIHelper.SetTexture(self.UITransform, "Enter/Center/Icon/Sprite (Photo)", self.HeadURL);
	-- 显示房主标识
	if self:IsRoomMaster() then
		UIHelper.SetActiveState(self.UITransform, "Enter/Center/Master", true);
	end
	self:SetupReady(self.IsReady == 1);
	self:SetupEnterAndLeave(true, false);
end

-- 设置Ready标识
function MJPlayer:SetupReady(status)
	Log.Info("MJPlayer:SetupReady: " .. self:LogKey() .. "status is " .. tostring(status));
	UIHelper.SetActiveState(self.UITransform, "Enter/Center/Label (Prepare)", status);
end

-- 设置庄家标识
function MJPlayer:SetupBanker()
	UIHelper.SetActiveState(self.UITransform, "Enter/Center/Banker", self:IsBanker());
end

-- 设置进入/离开状态 Enter/Leave
function MJPlayer:SetupEnterAndLeave(...)
	local args = {...};
	UIHelper.SetActiveState(self.UITransform, "Enter", args[1]);
	UIHelper.SetActiveState(self.UITransform, "Leave", args[2]);
end

function MJPlayer:StartGame()
	Log.Info("MJPlayer:StartGame: " .. self:LogKey());
	self:SetupReady(false);
	self:SetupBanker();
	-- if self:IsBanker() then
	-- 	self:SetHandCardCount(MJDefine.BANKER_INITIAL_CARD_COUNT);
	-- else
	-- 	self:SetHandCardCount(MJDefine.XIAN_INITIAL_CARD_COUNT);
	-- end
end

-- 播放UI框的缩放,以及骰子面板的闪光效果
function MJPlayer:PlayUIScaleAndDicePanelGrow(status)
	-- Log.Info("MJPlayer:PlayUIScaleAndDicePanelGrow: this is " .. self.UITransform.name);
	local scaleAnimation = self.UITransform:Find("Enter/Center"):GetComponent(typeof(TweenScale));
	local name = MJPlayerSeatEnum.ToString(self.Position);
	MJSceneController.PlayDicePanelGrowEffect(name, status);
	scaleAnimation.enabled = status;
	if self:IsHero() then
		UIHelper.SetActiveState(UI_MaJiang.transform, "center/OperatorPrompt", status);
	end
end

-- 自己的回合
function MJPlayer:MJOT_BEGIN(data)
	Log.Info("MJPlayer:MJOT_BEGIN: " .. self:LogKey());
end
--抓牌
function MJPlayer:MJOT_GetCard(data)
	Log.Info("MJPlayer:MJOT_GetCard: " .. self:LogKey());
	MJGroupCardQueue.PopFront();
	self:AddHandCardCount();
	if self:IsHero() then
		local card = data.m_HandCard[1];
		Log.Info("MJPlayer:MJOT_GetCard: hero get one card, card id is " .. card.m_Index .. ",type is " .. MaJiangType.ToString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
		self.UI:PlayGetCardAnimation();
	end
	self.UI:UpdateCards(false, true);
end

--补牌
function MJPlayer:MJOT_BuCard(data)
	Log.Info("MJPlayer:MJOT_BuCard: " .. self:LogKey());
	MJGroupCardQueue.PopRear();
	self:AddHandCardCount();
	if self == MJPlayer.Hero then
		local card = data.m_HandCard[1];
		Log.Info("MJPlayer:MJOT_BuCard: hero get one card, card id is " .. card.m_Index .. ",type is " .. MaJiangType.ToString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
		self.UI:PlayGetCardAnimation();
	end
	self.UI:UpdateCards(false, true);
end

--出牌
function MJPlayer:MJOT_SendCard(data)
	local card = data.m_HandCard[1];
	Log.Info("MJPlayer:MJOT_SendCard: " .. self:LogKey() .. ",card id is " .. card.m_Index .. ",type is " .. MaJiangType.ToString(card.m_Type));
	self.UI:PlayOutCardAnimation(card);
	self:AddTableCardCount();
	if self:IsHero() then
		-- local cardPosition = self:GetHandCardPositionByID(card.m_Index);
		-- local newCardPosition = self:GetHandCardCount();
		-- local newCard = self:GetHandCardByPosition(newCardPosition);
		-- self:RemoveHandCard(card.m_Index);
		-- self:SortHandCard();
		-- local newCardTargetPosition = self:GetHandCardIndex(newCard);
		-- self.UI:PlayOutCardAnimation(card);
		-- self.UI:PlayInsertCardAnimation(cardPosition, newCardPosition, newCardTargetPosition);
		-- self:SubHandCardCount();
		-- self:AddTableCardCount();
		self:RemoveHandCard(card.m_Index);
	end
	self:SubHandCardCount();
	self.UI:UpdateCards(true, false);
end

--摊
function MJPlayer:MJOT_Tan(data)
end

--吃 
function MJPlayer:MJOT_CHI(data)
	self.ChiCardCount = self.ChiCardCount + 3;
	self.ChiCount = self.ChiCount + 1;
	self.PutChiCard(data);
	self:AddOperateTotalCount();
	MJSceneController.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_CHI);
end

--勺
function MJPlayer:MJOT_SAO(data)
end

--碰
function MJPlayer:MJOT_PENG(data)
	self:PutPengCard(data);
	self:AddOperateTotalCount();
	self:SubHandCardCount(2);
	if self:IsHero() then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	MJSceneController.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_PENG);
end

--杠
function MJPlayer:MJOT_GANG(data)
	self:PutGangCard(data);
	self:AddOperateTotalCount();
	self:SubHandCardCount(3);
	if self:IsHero() then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	MJSceneController.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_GANG);
end

--暗杠
function MJPlayer:MJOT_AN_GANG(data)
	self:PutAnGangCard(data);
	self:AddOperateTotalCount();
	self:SubHandCardCount(4);
	if self:IsHero() then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	MJSceneController.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_AN_GANG);
end

--补杠
function MJPlayer:MJOT_BuGang(data)
	self:PutBuGangCard(data);
	self:SubHandCardCount(1);
	if self:IsHero() then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	MJSceneController.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_BuGang);
end

--过
function MJPlayer:MJOT_GUO(data)
end

--胡
function MJPlayer:MJOT_HU(data)
	MJSceneController.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_HU);
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

-- 放置吃的牌
function MJPlayer:PutChiCard(data)
end

-- 放置杠的牌
function MJPlayer:PutGangCard(data)
	Log.Info("MJPlayer:PutGangCard: " .. self:LogKey());
	local card1 = MJSceneController.GetCardByID(data.m_LastCard.m_Index, self.ID);
	local player = MJScene.GetPlayerByID(card1.LastRoleID);
	player:SubTableCardCount();
	local card2 = MJSceneController.GetOneUnuseCard(data.m_HandCard[1].m_Index, data.m_HandCard[1].m_Type, self.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_HandCard[2].m_Index, data.m_HandCard[2].m_Type, self.ID);
	local card4 = MJSceneController.GetOneUnuseCard(data.m_HandCard[3].m_Index, data.m_HandCard[3].m_Type, self.ID);
	local factor = self:GetOperateTotalCount() * 3;
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
function MJPlayer:PutAnGangCard(data)
	Log.Info("MJPlayer:PutAnGangCard: " .. self:LogKey());
	local factor = self:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	local card4Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	if self:IsHero() then
		-- 自己暗杠会发详细的牌信息
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		local card4 = MJSceneController.GetOneUnuseCard(data.m_HandCard[1].m_Index, data.m_HandCard[1].m_Type, self.ID);
		card4:Show(card4Pos, self.OperateCardRotation);
	else
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card4Pos, self.OperateCardRotation);
	end
	Log.Info("MJPlayer:PutAnGangCard: card1Pos=" .. tostring(card1Pos) .. ",card2Pos=" .. tostring(card2Pos) .. ",card3Pos=" .. tostring(card3Pos) .. ",card4Pos=" .. tostring(card4Pos));
end

-- 放置补杠的牌
function MJPlayer:PutBuGangCard(data)
	Log.Info("MJPlayer:PutBuGangCard: " .. self:LogKey());
	local card1 = MJSceneController.GetOneUnuseCard(data.m_LastCard.m_Index, data.m_LastCard.m_Type, self.ID);
	table.sort(data.m_HandCard, function(o1, o2)
		return o1.m_Index < o2.m_Index;
	end);
	local cards = MJSceneController.GetCardByRoleIDAndType(card1.Type, self.ID);
	table.sort(cards, function(o1, o2)
		return o1.ID < o2.ID;
	end);
	local card2 = cards[2];
	local card2Pos = card2.GO.transform.position;
	local card1Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	card1:Show(card1Pos, self.OperateCardRotation);
end

-- 放置碰的牌
function MJPlayer:PutPengCard(data)
	Log.Info("MJPlayer:PutPengCard: " .. self:LogKey());
	local card1 = MJSceneController.GetCardByID(data.m_LastCard.m_Index, self.ID);
	local player = MJScene.GetPlayerByID(card1.LastRoleID);
	player:SubTableCardCount();
	local card2 = MJSceneController.GetOneUnuseCard(data.m_HandCard[1].m_Index, data.m_HandCard[1].m_Type, self.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_HandCard[2].m_Index, data.m_HandCard[2].m_Type, self.ID);
	local factor = self:GetOperateTotalCount() * 3;
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
function MJPlayer:PutGangCardWhenReconnect(data)
	Log.Info("MJPlayer:PutGangCardWhenReconnect: " .. self:LogKey());
	local card1 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.ID);
	local card2 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[2].m_Index, data.m_FunHandCard[2].m_Type, self.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[3].m_Index, data.m_FunHandCard[3].m_Type, self.ID);
	local card4 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[4].m_Index, data.m_FunHandCard[4].m_Type, self.ID);
	local factor = self:GetOperateTotalCount() * 3;
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
function MJPlayer:PutAnGangCardWhenReconnect(data)
	Log.Info("MJPlayer:PutAnGangCardWhenReconnect: " .. self:LogKey());
	local factor = self:GetOperateTotalCount() * 3;
	local card1Pos = self.OperateCardStartPos + Vector3.New(self.OperateCardOffset.x * factor, self.OperateCardOffset.y * factor, self.OperateCardOffset.z * factor);
	local card2Pos = card1Pos + self.OperateCardOffset;
	local card3Pos = card2Pos + self.OperateCardOffset;
	local card4Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	if self:IsHero() then
		-- 自己暗杠会发详细的牌信息
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		local card4 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.ID);
		card4:Show(card4Pos, self.OperateCardRotation);
	else
		MJSceneController.PutOneBackCard(card1Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card2Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card3Pos, self.OperateCardRotation);
		MJSceneController.PutOneBackCard(card4Pos, self.OperateCardRotation);
	end
	Log.Info("MJPlayer:PutAnGangCardWhenReconnect: card1Pos=" .. tostring(card1Pos) .. ",card2Pos=" .. tostring(card2Pos) .. ",card3Pos=" .. tostring(card3Pos) .. ",card4Pos=" .. tostring(card4Pos));
end

-- 断线重连时，放置补杠的牌
function MJPlayer:PutBuGangCardWhenReconnect(data)
	Log.Info("MJPlayer:PutBuGangCardWhenReconnect: " .. self:LogKey());
	-- local card1Data = data.m_FunHandCard[1];
	-- local card2Data = data.m_FunHandCard[2];
	local card1 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.ID);
	local cards = MJSceneController.GetCardByRoleIDAndType(card1.Type, self.ID);
	table.sort(cards, function(o1, o2)
		return o1.ID < o2.ID;
	end);
	local card2 = cards[2];
	local card2Pos = card2.GO.transform.position;
	local card1Pos = Vector3.New(card2Pos.x, card2Pos.y + MJDefine.TableCardZ, card2Pos.z);
	card1:Show(card1Pos, self.OperateCardRotation);
end

-- 断线重连时，放置碰的牌
function MJPlayer:PutPengCardWhenReconnect(data)
	Log.Info("MJPlayer:PutPengCardWhenReconnect: " .. self:LogKey());
	local card1 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[1].m_Index, data.m_FunHandCard[1].m_Type, self.ID);
	local card2 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[2].m_Index, data.m_FunHandCard[2].m_Type, self.ID);
	local card3 = MJSceneController.GetOneUnuseCard(data.m_FunHandCard[3].m_Index, data.m_FunHandCard[3].m_Type, self.ID);
	local factor = self:GetOperateTotalCount() * 3;
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

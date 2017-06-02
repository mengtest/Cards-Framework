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
MJPlayer = {
	-- 主角
	Hero = nil,
	
	-- 房主
	RoomMaster = nil,
	
	-- 庄家
	Banker = nil,
	
	-- 角色ID
	ID = nil,
	
	-- 用于显示的ID
	DisplayID = nil,
	
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
	
	-- 地理位置
	Address = nil,
	
	-- 手牌
	HandCards = nil,
	
	-- UI的位置
	UIPosition = 0,
	
	-- 服务器分配的位置
	ServerPosition = 0,
	
	-- 客户端的位置，东西南北
	ClientPosition = 0,
	
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

-- 设置玩家的数据 id/name/headurl/sex/serverposition/isready/totalscore/longitude/latitude/address
function MJPlayer:SetData(id, displayID, name, headurl, sex, serverposition, isready, totalscore, longitude, latitude, address)
	self.ID = id;
	self.DisplayID = displayID;
	self.Name = name;
	self.HeadURL = headurl;
	self.Sex = sex;
	self.ServerPosition = serverposition;
	self.IsReady = isready;
	self.TotalScore = totalscore;
	self.Longitude = longitude;
	self.Latitude = latitude;
	self.Address = address;
	if self:IsHero() then
		RongCloudAdapter.Login(self.ID, self.Name, self.HeadURL);
	end
	Log.Info("SetData: ID is " .. self.ID);
end

function MJPlayer:SetUI()
	Log.Info("SetUI: begin,self " .. tostring(self));
	if self.ID == HallScene.CurrentFBMasterID then
		MJPlayer.RoomMaster = self;
	end
	-- 获取玩家的UI位置
	local vals = UI_MJBase.GetPlayerUI(self.ServerPosition);
	self.UI = vals[1];
	self.UITransform = vals[2];
	self.UIPosition = vals[3];
	
	if self:IsHero() then
		UI_MJHeroCtrl.Player = self;
	end
	UI_MJPlayer.Initialize(self.UI, self);
	UI_MJPlayer.SetBaseInfo(self.UI);
	UI_MJPlayer.SetEnterOrLeave(self.UI, true, false);
	UI_MJPlayer.SetScore(self.UI);
	Log.Info("SetUI: ServerPosition is " .. self.ServerPosition);
	Log.Info("SetUI: UIPosition is " .. self.UIPosition);
end

-- 计算客户端的位置
function MJPlayer:ComputeClientPosition()
	self.ClientPosition = self.ServerPosition;
	if HallScene.CurrentFBType == MJRoomType.R_1 and not self:IsBanker() then -- 二人场
		if MJPlayer.Banker.ServerPosition == 0 then
			self.ClientPosition = 2;
		elseif MJPlayer.Banker.ServerPosition == 1 then
			self.ClientPosition = 3;
		elseif MJPlayer.Banker.ServerPosition == 2 then
			self.ClientPosition = 0;
		else
			self.ClientPosition = 1;
		end
	end
	Log.Info("ComputeClientPosition:" .. self:LogTag() .. self.ClientPosition);
end

-- 重置
function MJPlayer:Reset()
	if self:IsHero() == false then
		local handCardTrans = MJDeskCtrl.transform:Find("backCard/" .. self.UITransform.name);
		if handCardTrans ~= nil then
			handCardTrans.gameObject:SetActive(false);
		end
	end
	UI_MJPlayer.Reset(self.UI);
	self.TableCardCount = 0;
	self.OperateTotalCount = 0;
end

-- Log 标签
function MJPlayer:LogTag()
	local str = "【" .. tostring(self.ID) .. "," .. self.UITransform.name .. "】";
	return str;
end

-- 获取头像的图片
function MJPlayer:GetHeadTexture()
	if self.UI == nil then return nil end;
	local uiTexture = UIHelper.GetComponent(self.UI.transform, "Enter/Center/Icon/Sprite (Photo)", typeof(UITexture));
	return uiTexture.mainTexture;
end

-- 获取显示的名字，...
function MJPlayer:GetDisplayName()
	local str = "test测试名字@#@";
	local len = utf8.len(str);
	
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
	Log.Info("AddTableCardCount: " .. self:LogTag() .. ",tablecard count is " .. tostring(self.TableCardCount));
	return self.TableCardCount;
end

-- 当前玩家桌面上牌的数量 -1
function MJPlayer:SubTableCardCount()
	self.TableCardCount = self.TableCardCount - 1;
	Log.Info("SubTableCardCount: " .. self:LogTag() .. ",tablecard count is " .. tostring(self.TableCardCount));
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
	Log.Info("AddHandCardCount: " .. self:LogTag() .. ",handcard count is " .. tostring(self.HandCardCount));
	return self.HandCardCount;
end

-- 减少手牌的数量
function MJPlayer:SubHandCardCount(val)
	if val ~= nil then
		self.HandCardCount = self.HandCardCount - val;
	else
		self.HandCardCount = self.HandCardCount - 1;
	end
	Log.Info("SubHandCardCount: " .. self:LogTag() .. ",handcard count is " .. tostring(self.HandCardCount));
	return self.HandCardCount;
end

-- 增加吃碰杠的次数
function MJPlayer:AddOperateTotalCount(val)
	if val ~= nil then
		self.OperateTotalCount = self.OperateTotalCount + val;
	else
		self.OperateTotalCount = self.OperateTotalCount + 1;
	end
	Log.Info("AddOperateTotalCount: " .. self:LogTag() .. ",operate total count is " .. tostring(self.OperateTotalCount));
	return self.OperateTotalCount;
end

-- 减少吃碰杠的次数
function MJPlayer:SubOperateTotalCount(val)
	if val ~= nil then
		self.OperateTotalCount = self.OperateTotalCount - val;
	else
		self.OperateTotalCount = self.OperateTotalCount - 1;
	end
	Log.Info("SubOperateTotalCount:  " .. self:LogTag() .. ",operate total count is " .. tostring(self.OperateTotalCount));
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

-- 对局开始
function MJPlayer:OnRoundStart()
	UI_MJPlayer.SetReady(self.UI, false);
end

-- 对局结束
function MJPlayer:OnRoundEnd()
end

-- 自己的回合
function MJPlayer:MJOT_BEGIN(data)
	Log.Info("MJOT_BEGIN: " .. self:LogTag());
end

--抓牌
function MJPlayer:MJOT_GetCard(data)
	Log.Info("MJOT_GetCard: " .. self:LogTag());
	MJPaidunCtrl.InactiveFront();
	self:AddHandCardCount();
	if self:IsHero() or HallScene.CurrentFBPlaybackMode then
		local card = data.m_HandCard[1];
		Log.Info("MJOT_GetCard: hero get one card, card id is " .. card.m_Index .. ",type is " .. MaJiangType.ToString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
		if HallScene.CurrentFBPlaybackMode == false then
			UI_MJPlayer.GetCard(self.UI);
		end
	end
	UI_MJPlayer.UpdateCards(self.UI, false, true);
end

--补牌
function MJPlayer:MJOT_BuCard(data)
	Log.Info("MJOT_BuCard: " .. self:LogTag());
	MJPaidunCtrl.InactiveRear();
	self:AddHandCardCount();
	if self == MJPlayer.Hero or HallScene.CurrentFBPlaybackMode then
		local card = data.m_HandCard[1];
		Log.Info("MJOT_BuCard: hero get one card, card id is " .. card.m_Index .. ",type is " .. MaJiangType.ToString(card.m_Type));
		if card ~= nil then
			self:AddHandCard(card);
		end
		if HallScene.CurrentFBPlaybackMode == false then
			self.UI:GetCard();
		end
	end
	self.UI:UpdateCards(false, true);
end

--出牌
function MJPlayer:MJOT_SendCard(data)
	local card = data.m_HandCard[1];
	Log.Info("MJOT_SendCard: " .. self:LogTag() .. ",card id is " .. card.m_Index .. ",type is " .. MaJiangType.ToString(card.m_Type));
	if self:IsHero() or HallScene.CurrentFBPlaybackMode then
		self:RemoveHandCard(card.m_Index);
	end
	self:SubHandCardCount();
	self.UI:UpdateCards(true, false);
	self.UI:OutCard(card);
	self:AddTableCardCount();
	self:PlaySound(MaJiangType.ToString(card.m_Type));
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
	MJDeskCtrl.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_CHI);
	self:PlaySound("chi");
end

--勺
function MJPlayer:MJOT_SAO(data)
end

--碰
function MJPlayer:MJOT_PENG(data)
	if self:IsHero() or HallScene.CurrentFBPlaybackMode then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	self.UI:PutPengCard(data);
	self:AddOperateTotalCount();
	self.UI:UpdateCards(true, false);
	self:SubHandCardCount(2);
	MJDeskCtrl.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_PENG);
	self:PlaySound("peng");
end

--杠
function MJPlayer:MJOT_GANG(data)
	if self:IsHero() or HallScene.CurrentFBPlaybackMode then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	self.UI:PutGangCard(data);
	self:AddOperateTotalCount();
	self.UI:UpdateCards(true, false);
	self:SubHandCardCount(3);
	MJDeskCtrl.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_GANG);
	self:PlaySound("gang");
end

--暗杠
function MJPlayer:MJOT_AN_GANG(data)
	if self:IsHero() or HallScene.CurrentFBPlaybackMode then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	self.UI:PutAnGangCard(data);
	self:AddOperateTotalCount();
	self.UI:UpdateCards(true, false);
	self:SubHandCardCount(4);
	MJDeskCtrl.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_AN_GANG);
	self:PlaySound("gang");
end

--补杠
function MJPlayer:MJOT_BuGang(data)
	if self:IsHero() or HallScene.CurrentFBPlaybackMode then
		for i = 1, #data.m_HandCard do
			local card = data.m_HandCard[i];
			self:RemoveHandCard(card.m_Index);
		end
	end
	self.UI:UpdateCards(true, false);
	self.UI:PutBuGangCard(data);
	self:SubHandCardCount(1);
	MJDeskCtrl.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_BuGang);
	self:PlaySound("gang");
end

--过
function MJPlayer:MJOT_GUO(data)
end

--胡
function MJPlayer:MJOT_HU(data)
	MJDeskCtrl.PlayOperateEffect(self.UITransform.name, MaJiangOperatorType.MJOT_HU);
	self:PlaySound("hu");
end

--定胡
function MJPlayer:MJOT_DingHU(data)
end

-- 播放角色语音
function MJPlayer:PlaySound(prefix)
	local sound = prefix;
	if LoginScene.SoundMode == 0 then
		if self.Sex == 1 then
			sound = sound .. "_PTNv_101102";
		else
			sound = sound .. "_PTNan_103104";
		end
		Log.Info("PlaySound: " .. self:LogTag() .. ",sound name is " .. sound);
		AudioManager.PlaySound(sound);
	else
		if self.Sex == 1 then
			sound = sound .. "_FYNv_101102";
		else
			sound = sound .. "_FYNan_103104";
		end
		Log.Info("PlaySound: " .. self:LogTag() .. ",sound name is " .. sound);
		AudioManager.PlaySound(sound);
	end
end

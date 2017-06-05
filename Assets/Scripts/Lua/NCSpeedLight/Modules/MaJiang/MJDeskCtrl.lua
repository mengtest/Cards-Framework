-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: MJDeskCtrl.lua
-- Describle:   麻将桌控制
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
MJDeskCtrl = {
	transform = nil,
	gameObject = nil,
	MJPaidunAnimation = nil,
	ArrowObj = nil,
	IsSetupDicePanelRotation = false,
	DeskAnimationTimer = nil,
	DeskAnimationTime = 1.333,
	DiceAnimationTimer = nil,
	DiceAnimationTime = 1.25,
	-- 场景中所有的牌
	AllCards = nil,
	-- 场景中所有的牌的物体对象
	AllCardsObj = nil,
	-- 场景中背面的牌
	BackCards = nil,
	
	-- 墩牌的显示状态
	GroupCardActive = false,
}

local this = MJDeskCtrl;

function MJDeskCtrl.Awake(go)
	if go ~= nil then
		MJDeskCtrl.gameObject = go;
		MJDeskCtrl.transform = go.transform;
		MJDeskCtrl.ArrowObj = go.transform:Find("Arrow").gameObject;
		MJDeskCtrl.MJPaidunAnimation = MJDeskCtrl.transform:GetComponent(typeof(UnityEngine.Animation));
	end
	MJDeskCtrl.CloneTableCards();
	MJDeskCtrl.IsSetupDicePanelRotation = false;
	MJScene.OnSceneWasLoaded();
end

function MJDeskCtrl.Start()
	if HallScene.CurrentFBPlaybackMode == false then
		MJDeskCtrl.SetRoomNumber();
	end
end

function MJDeskCtrl.OnDestroy()
	MJDeskCtrl.transform = nil;
	MJDeskCtrl.gameObject = nil;
	MJDeskCtrl.MJPaidunAnimation = nil;
	MJDeskCtrl.DeskAnimationTimer = nil;
	MJDeskCtrl.DiceAnimationTimer = nil;
end

-- 重置场景，再来一次时触发
function MJDeskCtrl.Reset()
	-- 重置所有的桌面牌对象
	for key, value in pairs(this.AllCards) do
		for i = 1, #value do
			local card = value[i];
			card:Reset();
		end
	end
	if MJDeskCtrl.BackCards ~= nil then
		for i = 1, #MJDeskCtrl.BackCards do
			local obj = MJDeskCtrl.BackCards[i];
			if obj ~= nil then
				UnityEngine.GameObject.Destroy(obj);
			end
		end
	end
	MJDeskCtrl.BackCards = {};
	MJDeskCtrl.DeskAnimationTimer = nil;
	MJDeskCtrl.DiceAnimationTimer = nil;
	MJDeskCtrl.HideArrow();
	MJDeskCtrl.SetPaidunActive(false);
end

-- 设置牌墩的显示/隐藏
function MJDeskCtrl.SetPaidunActive(status)
	if status == true then
		if	MJDeskCtrl.GroupCardActive == false then
			MJDeskCtrl.GroupCardActive = true;
			MJDeskCtrl.MJPaidunAnimation:Play("Active");
		end
	else
		if	MJDeskCtrl.GroupCardActive == true then
			MJDeskCtrl.GroupCardActive = false;
			MJDeskCtrl.MJPaidunAnimation:Play("Inactive");
		end
	end
end

function MJDeskCtrl.PlayPaidunAnimation(onFinishCallback)
	Log.Info("PlayPaidunAnimation");
	MJDeskCtrl.GroupCardActive = true;
	if MJDeskCtrl.MJPaidunAnimation ~= nil then
		MJDeskCtrl.MJPaidunAnimation:Play();
		if MJDeskCtrl.DeskAnimationTimer ~= nil then
			MJDeskCtrl.DeskAnimationTimer:Reset();
		else
			MJDeskCtrl.DeskAnimationTimer = Timer.New(
			function()
				Log.Info("PlayPaidunAnimation: finish.");
				if onFinishCallback ~= nil then
					onFinishCallback();
				end
			end,
			MJDeskCtrl.DeskAnimationTime, false, false);
		end
		MJDeskCtrl.DeskAnimationTimer:Start();
	end
end

function MJDeskCtrl.PlayDiceAnimation(number1, number2, onFinishCallback)
	local number = number1;
	if number1 > number2 then
		number2 = number1;
		number1 = number;
	end
	local path = "touzi/" .. tostring(number1) .. "." .. tostring(number2);
	Log.Info("PlayDiceAnimation: diceobj root path is " .. path);
	local diceObj = MJDeskCtrl.transform:Find(path);
	diceObj.gameObject:SetActive(true);
	if MJDeskCtrl.DiceAnimationTimer ~= nil then
		MJDeskCtrl.DiceAnimationTimer:Stop();
	else
		MJDeskCtrl.DiceAnimationTimer = Timer.New(
		function()
			Log.Info("PlayDiceAnimation: finish.");
			diceObj.gameObject:SetActive(false);
			if onFinishCallback ~= nil then
				onFinishCallback();
			end
		end,
		MJDeskCtrl.DiceAnimationTime, false, false);
	end
	MJDeskCtrl.DiceAnimationTimer:Start();
end

-- 设置房间号
function MJDeskCtrl.SetRoomNumber()
	if HallScene.CurrentFBID == nil or HallScene.CurrentFBID == 0 then
		Log.Error("SetRoomNumber: room number is nil or zero.");
		return;
	end
	local roomNumberTransform = MJDeskCtrl.transform:Find("Text/RoomNumber");
	local roomNumberStr = tostring(HallScene.CurrentFBID);
	Log.Info("SetRoomNumber: room number is " .. roomNumberStr);
	local strLength = string.len(roomNumberStr);
	if strLength == 0 then return end;
	for i = 1, strLength do
		local singleNumber = string.sub(roomNumberStr, i, i);
		local numberObj = roomNumberTransform:Find("Numbers/" .. singleNumber);
		numberObj = UnityEngine.GameObject.Instantiate(numberObj.gameObject).transform;
		local slotObj = roomNumberTransform:Find("Slot" .. i);
		numberObj:SetParent(slotObj);
		numberObj.localPosition = UnityEngine.Vector3.zero;
		numberObj.localRotation = UnityEngine.Quaternion.identity;
		numberObj.gameObject:SetActive(true);
	end
end

-- 设置玩法
function MJDeskCtrl.SetPlayway()
	if HallScene.CurrentFBPlayway == nil then
		Log.Error("SetPlayway: error caused by nil HallScene.CurrentFBPlayway str.");
	else
		Log.Info("SetPlayway: current playway is " .. HallScene.CurrentFBPlayway);
		local playway = Utility.SplitString(HallScene.CurrentFBPlayway, ",");
		if playway == nil then
			Log.Error("SetPlayway: error caused by spilt HallScene.CurrentFBPlayway str fail.");
			return;
		end
		UIHelper.SetActiveState(this.transform, "Text/Playway/OneText", false);
		UIHelper.SetActiveState(this.transform, "Text/Playway/TwoText", false);
		local count = #playway;
		if count == 1 then
			UIHelper.SetActiveState(this.transform, "Text/Playway/OneText", true);
			UIHelper.SetActiveState(this.transform, "Text/Playway/OneText/1/" .. MJPlayway.ToString(tonumber(playway[1])), true);
		elseif count == 2 then
			UIHelper.SetActiveState(this.transform, "Text/Playway/TwoText", true);
			UIHelper.SetActiveState(this.transform, "Text/Playway/TwoText/1/" .. MJPlayway.ToString(tonumber(playway[1])), true);
		end
	end
end

-- 设置骰子面板的朝向
function MJDeskCtrl.SetDicePanelDirection()
	if MJPlayer.Hero == nil then
		Log.Error("SetDicePanelDirection: error caused by nil MJPlayer.Hero instance.");
	else
		Log.Info("SetDicePanelDirection: hero client position is " .. MJPlayer.Hero.ClientPosition);
		local y =(MJPlayer.Hero.ClientPosition + 1) * 90;
		local panel = MJDeskCtrl.transform:Find("direction");
		local eulerAngles = UnityEngine.Vector3(0, y, 0);
		local rotation = UnityEngine.Quaternion.Euler(eulerAngles)
		panel.rotation = rotation;
	end
end

-- 播放骰子面板的东南西北闪光效果
function MJDeskCtrl.PlayDicePanelGrowEffect(name, status)
	UIHelper.SetActiveState(this.transform, "direction/Flicker/" .. name, status);
	for key, value in pairs(MJPlayerSeatEnum) do
		if key ~= name then
			UIHelper.SetActiveState(this.transform, "direction/Flicker/" .. key, false);
		end
	end
end

function MJDeskCtrl.ShowArrow(position)
	MJDeskCtrl.ArrowObj.transform.position = Vector3(position.x, 4.942248, position.z);
	if MJDeskCtrl.ArrowObj.activeSelf == false then
		MJDeskCtrl.ArrowObj:SetActive(true);
	end
end

function MJDeskCtrl.HideArrow()
	if MJDeskCtrl.ArrowObj.activeSelf == true then
		MJDeskCtrl.ArrowObj:SetActive(false);
	end
end

function MJDeskCtrl.PlayOperateEffect(name, operateType)
	local trans = MJDeskCtrl.transform:Find("Effect/" .. name);
	local effect = nil;
	if operateType == MaJiangOperatorType.MJOT_AN_GANG or operateType == MaJiangOperatorType.MJOT_BuGang or operateType == MaJiangOperatorType.MJOT_GANG then
		effect = trans:Find("gang");
	elseif operateType == MaJiangOperatorType.MJOT_CHI then
		effect = trans:Find("chi");
	elseif operateType == MaJiangOperatorType.MJOT_PENG then
		effect = trans:Find("peng");
	elseif operateType == MaJiangOperatorType.MJOT_HU then
		effect = trans:Find("hu");
	end
	effect.gameObject:SetActive(true);
end

-- 初始化桌子上的牌
function MJDeskCtrl.CloneTableCards()
	if MJDeskCtrl.AllCardsObj == nil then
		MJDeskCtrl.AllCardsObj = {};
	end
	if MJDeskCtrl.AllCards == nil then
		MJDeskCtrl.AllCards = {};
	end
	MJDeskCtrl.InitMJCards("Card/Wan", MaJiangType.MJ_1_WAN);
	MJDeskCtrl.InitMJCards("Card/Tiao", MaJiangType.MJ_1_TIAO);
	MJDeskCtrl.InitMJCards("Card/Tong", MaJiangType.MJ_1_TONG);
	MJDeskCtrl.InitMJCards("Card/Zhi", MaJiangType.MJ_DONG);
end

function MJDeskCtrl.InitMJCards(path, startCardType)
	local tempTrans = this.transform:Find(path);
	if tempTrans == nil then return end;
	local tempEnd = 0;
	if startCardType < MaJiangType.MJ_DONG then
		tempEnd = 9;
	else
		tempEnd = 7;
	end
	for i = 0, tempEnd - 1 do
		local tempCardType = i + startCardType;
		local tempCardTran = tempTrans:GetChild(i);
		local tempCardObj = tempCardTran.gameObject;
		table.insert(this.AllCardsObj, tempCardObj);
		local mjCard = MJDeskCtrl.CreateMJCard(tempCardObj, tempCardType);
		local tempList = {};
		table.insert(tempList, mjCard);
		for j = 1, 3 do
			local tempCloneObj = NGUITools.AddChild(tempTrans.gameObject, tempCardObj);
			local tempCloneTrans = tempCloneObj.transform;
			tempCloneTrans.localPosition = tempCardTran.localPosition;
			tempCloneTrans.localEulerAngles = tempCardTran.localEulerAngles;
			tempCloneTrans.localScale = tempCardTran.localScale;
			table.insert(this.AllCardsObj, tempCloneObj);
			mjCard = MJDeskCtrl.CreateMJCard(tempCloneObj, tempCardType);
			table.insert(tempList, mjCard);
		end
		this.AllCards[tempCardType] = tempList;
		-- table.insert(this.AllCards, {tempCardType, tempList});
	end
end

function MJDeskCtrl.CreateMJCard(obj, type)
	local card = MJTableCard.New();
	card.GO = obj;
	card.RoleID = - 1;
	card.Status = MJTableCardStatus.MJCS_Begin;
	card.Type = type;
	return card;
end

-- 获取一张未使用的牌对象
function MJDeskCtrl.GetOneUnuseCard(ID, type, roleID)
	local cards = this.AllCards[type];
	for i = 1, #cards do
		local card = cards[i];
		if card.ID == - 1 then
			card:SetID(ID);
			card:SetRoleID(roleID);
			return card;
		end
	end
end

-- 根据牌的ID获取对象,如果roleID不为空，则更改这张牌的拥有者
function MJDeskCtrl.GetCardByID(ID, roleID)
	MJDeskCtrl.HideArrow();
	for key, value in pairs(this.AllCards) do
		for i = 1, #value do
			local card = value[i];
			if card.ID == ID then
				if roleID ~= nil then
					card:SetRoleID(roleID);
				end
				return card;
			end
		end
	end
end

-- 根据牌的类型和角色的ID获取牌，返回数组
function MJDeskCtrl.GetCardByRoleIDAndType(type, roleID)
	MJDeskCtrl.HideArrow();
	local cards = this.AllCards[type];
	local outCards = {};
	for i = 1, #cards do
		local card = cards[i];
		if card.ID ~= - 1 and card.RoleID == roleID then
			table.insert(outCards, card);
		end
	end
	return outCards;
end

-- 在桌面上放置一张打出的牌
function MJDeskCtrl.PutOneCard(cardID, cardType, playerID, position, rotation)
	Log.Info("card type is " .. cardType);
	local tableCard = MJDeskCtrl.GetOneUnuseCard(cardID, cardType, playerID);
	tableCard:Show(position, rotation);
	MJDeskCtrl.ShowArrow(position);
end

-- 放置一张反面的牌用于显示
function MJDeskCtrl.PutOneBackCard(position, eulerAngles)
	local cardParent = this.transform:Find("Card/Gang/");
	local originalObj = this.transform:Find("Card/Gang/Card");
	local newObj = NGUITools.AddChild(cardParent.gameObject, originalObj.gameObject);
	local newEulerAngles = Vector3.New(eulerAngles.x + 180, eulerAngles.y, eulerAngles.z);
	newObj.transform.position = position;
	newObj.transform.rotation = UnityEngine.Quaternion.Euler(newEulerAngles);
	newObj.transform.localScale = Vector3.New(0.012, 0.012, 0.012);
	if MJDeskCtrl.BackCards == nil then
		MJDeskCtrl.BackCards = {};
	end
	table.insert(MJDeskCtrl.BackCards, newObj);
end 
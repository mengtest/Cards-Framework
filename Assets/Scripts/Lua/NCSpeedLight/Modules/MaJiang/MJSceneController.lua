-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: MJSceneController.lua
-- Describle:   麻将场景控制
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
MJSceneController = {
	transform = nil,
	gameObject = nil,
	MJDeskObj = nil,
	MJDeskAnimation = nil,
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

local this = MJSceneController;

function MJSceneController.Awake(go)
	if go ~= nil then
		MJSceneController.gameObject = go;
		MJSceneController.transform = go.transform;
		MJSceneController.MJDeskObj = go.transform:Find("majiangzhuo").gameObject;
		MJSceneController.ArrowObj = go.transform:Find("majiangzhuo/Arrow").gameObject;
		MJSceneController.MJDeskAnimation = MJSceneController.MJDeskObj:GetComponent(typeof(UnityEngine.Animation));
	end
	MJSceneController.CloneTableCards();
	MJSceneController.IsSetupDicePanelRotation = false;
	MJScene.OnSceneWasLoaded();
end

function MJSceneController.Start()
	MJSceneController.SetupRoomNumber();
end

function MJSceneController.OnDestroy()
	MJSceneController.transform = nil;
	MJSceneController.gameObject = nil;
	MJSceneController.MJDeskObj = nil;
	MJSceneController.MJDeskAnimation = nil;
	MJSceneController.DeskAnimationTimer = nil;
	MJSceneController.DiceAnimationTimer = nil;
end

-- 重置场景，再来一次时触发
function MJSceneController.Reset()
	-- 重置所有的桌面牌对象
	for key, value in pairs(this.AllCards) do
		for i = 1, #value do
			local card = value[i];
			card:Reset();
		end
	end
	if MJSceneController.BackCards ~= nil then
		for i = 1, #MJSceneController.BackCards do
			local obj = MJSceneController.BackCards[i];
			if obj ~= nil then
				UnityEngine.GameObject.Destroy(obj);
			end
		end
	end
	MJSceneController.BackCards = {};
	MJSceneController.DeskAnimationTimer = nil;
	MJSceneController.DiceAnimationTimer = nil;
	MJSceneController.HideArrow();
	MJSceneController.SetGroupCardActive(false);
end

-- 设置牌墩的显示/隐藏
function MJSceneController.SetGroupCardActive(status)
	if status == true then
		if	MJSceneController.GroupCardActive == false then
			MJSceneController.GroupCardActive = true;
			MJSceneController.MJDeskAnimation:Play("Active");
		end
	else
		if	MJSceneController.GroupCardActive == true then
			MJSceneController.GroupCardActive = false;
			MJSceneController.MJDeskAnimation:Play("Inactive");
		end
	end
end

function MJSceneController.PlayGroupCardAnimation(onFinishCallback)
	Log.Info("MJSceneController.PlayGroupCardAnimation");
	MJSceneController.GroupCardActive = true;
	if MJSceneController.MJDeskAnimation ~= nil then
		MJSceneController.MJDeskAnimation:Play();
		if MJSceneController.DeskAnimationTimer ~= nil then
			MJSceneController.DeskAnimationTimer:Reset();
		else
			MJSceneController.DeskAnimationTimer = Timer.New(
			function()
				Log.Info("MJSceneController.PlayGroupCardAnimation: finish.");
				if onFinishCallback ~= nil then
					onFinishCallback();
				end
			end,
			MJSceneController.DeskAnimationTime, false, false);
		end
		MJSceneController.DeskAnimationTimer:Start();
	end
end

function MJSceneController.PlayDiceAnimation(number1, number2, onFinishCallback)
	local number = number1;
	if number1 > number2 then
		number2 = number1;
		number1 = number;
	end
	local path = "majiangzhuo/touzi/" .. tostring(number1) .. "." .. tostring(number2);
	Log.Info("MJSceneController.PlayDiceAnimation: diceobj root path is " .. path);
	local diceObj = MJSceneController.transform:Find(path);
	diceObj.gameObject:SetActive(true);
	if MJSceneController.DiceAnimationTimer ~= nil then
		MJSceneController.DiceAnimationTimer:Stop();
	else
		MJSceneController.DiceAnimationTimer = Timer.New(
		function()
			Log.Info("MJSceneController.PlayDiceAnimation: finish.");
			diceObj.gameObject:SetActive(false);
			if onFinishCallback ~= nil then
				onFinishCallback();
			end
		end,
		MJSceneController.DiceAnimationTime, false, false);
	end
	MJSceneController.DiceAnimationTimer:Start();
end

-- 设置房间号
function MJSceneController.SetupRoomNumber()
	local roomNumberTransform = MJSceneController.transform:Find("majiangzhuo/Text/RoomNumber");
	local roomNumberStr = tostring(HallScene.CurrentFBID);
	Log.Info("MJSceneController.SetupRoomNumber: room number is " .. roomNumberStr);
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
function MJSceneController.SetupPlayWay()
	if MJScene.Playway == nil then
		Log.Error("MJSceneController.SetupPlayWay: error caused by nil MJScene.Playway str.");
	else
		local playway = Utility.SplitString(MJScene.Playway, ",");
		if playway == nil then
			Log.Error("MJSceneController.SetupPlayWay: error caused by spilt MJScene.Playway str fail.");
			return;
		end
		local count = #playway;
		if count == 1 then
			UIHelper.SetActiveState(this.transform, "majiangzhuo/Text/PlayWay/OneText", true);
			UIHelper.SetActiveState(this.transform, "majiangzhuo/Text/PlayWay/OneText/1/" .. MJPlayWay.ToString(tonumber(playway[1])), true);
		elseif count == 2 then
			UIHelper.SetActiveState(this.transform, "majiangzhuo/Text/PlayWay/TwoText", true);
			UIHelper.SetActiveState(this.transform, "majiangzhuo/Text/PlayWay/TwoText/1/" .. MJPlayWay.ToString(tonumber(playway[1])), true);
		end
	end
end

-- 设置骰子面板的朝向
function MJSceneController.SetupDicePanelDirection()
	if MJPlayer.Hero == nil then
		Log.Error("MJSceneController.SetupDicePanelDirection: error caused by nil MJPlayer.Hero instance.");
	else
		Log.Info("MJSceneController.SetupDicePanelDirection: hero position is " .. MJPlayer.Hero.Position);
		local y =(MJPlayer.Hero.Position + 1) * 90;
		local panel = MJSceneController.transform:Find("majiangzhuo/direction");
		local eulerAngles = UnityEngine.Vector3(0, y, 0);
		local rotation = UnityEngine.Quaternion.Euler(eulerAngles)
		panel.rotation = rotation;
	end
end

-- 播放骰子面板的东南西北闪光效果
function MJSceneController.PlayDicePanelGrowEffect(name, status)
	UIHelper.SetActiveState(this.transform, "majiangzhuo/direction/Flicker/" .. name, status);
end

function MJSceneController.ShowArrow(position)
	MJSceneController.ArrowObj.transform.position = Vector3(position.x, 4.942248, position.z);
	if MJSceneController.ArrowObj.activeSelf == false then
		MJSceneController.ArrowObj:SetActive(true);
	end
end

function MJSceneController.HideArrow()
	if MJSceneController.ArrowObj.activeSelf == true then
		MJSceneController.ArrowObj:SetActive(false);
	end
end

function MJSceneController.PlayOperateEffect(name, operateType)
	local trans = MJSceneController.transform:Find("majiangzhuo/Effect/" .. name);
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
function MJSceneController.CloneTableCards()
	if MJSceneController.AllCardsObj == nil then
		MJSceneController.AllCardsObj = {};
	end
	if MJSceneController.AllCards == nil then
		MJSceneController.AllCards = {};
	end
	MJSceneController.InitMJCards("majiangzhuo/Card/Wan", MaJiangType.MJ_1_WAN);
	MJSceneController.InitMJCards("majiangzhuo/Card/Tiao", MaJiangType.MJ_1_TIAO);
	MJSceneController.InitMJCards("majiangzhuo/Card/Tong", MaJiangType.MJ_1_TONG);
	MJSceneController.InitMJCards("majiangzhuo/Card/Zhi", MaJiangType.MJ_DONG);
end

function MJSceneController.InitMJCards(path, startCardType)
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
		local mjCard = MJSceneController.CreateMJCard(tempCardObj, tempCardType);
		local tempList = {};
		table.insert(tempList, mjCard);
		for j = 1, 3 do
			local tempCloneObj = NGUITools.AddChild(tempTrans.gameObject, tempCardObj);
			local tempCloneTrans = tempCloneObj.transform;
			tempCloneTrans.localPosition = tempCardTran.localPosition;
			tempCloneTrans.localEulerAngles = tempCardTran.localEulerAngles;
			tempCloneTrans.localScale = tempCardTran.localScale;
			table.insert(this.AllCardsObj, tempCloneObj);
			mjCard = MJSceneController.CreateMJCard(tempCloneObj, tempCardType);
			table.insert(tempList, mjCard);
		end
		this.AllCards[tempCardType] = tempList;
		-- table.insert(this.AllCards, {tempCardType, tempList});
	end
end

function MJSceneController.CreateMJCard(obj, type)
	local card = MJTableCard.New();
	card.GO = obj;
	card.RoleID = - 1;
	card.Status = MJTableCardStatus.MJCS_Begin;
	card.Type = type;
	return card;
end

-- 获取一张未使用的牌对象
function MJSceneController.GetOneUnuseCard(ID, type, roleID)
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
function MJSceneController.GetCardByID(ID, roleID)
	MJSceneController.HideArrow();
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
function MJSceneController.GetCardByRoleIDAndType(type, roleID)
	MJSceneController.HideArrow();
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
function MJSceneController.PutOneCard(cardID, cardType, playerID, position, rotation)
	Log.Info("card type is " .. cardType);
	local tableCard = MJSceneController.GetOneUnuseCard(cardID, cardType, playerID);
	tableCard:Show(position, rotation);
	MJSceneController.ShowArrow(position);
end

-- 放置一张反面的牌用于显示
function MJSceneController.PutOneBackCard(position, eulerAngles)
	local cardParent = this.transform:Find("majiangzhuo/Card/Gang/");
	local originalObj = this.transform:Find("majiangzhuo/Card/Gang/Card");
	local newObj = NGUITools.AddChild(cardParent.gameObject, originalObj.gameObject);
	local newEulerAngles = Vector3.New(eulerAngles.x + 180, eulerAngles.y, eulerAngles.z);
	newObj.transform.position = position;
	newObj.transform.rotation = UnityEngine.Quaternion.Euler(newEulerAngles);
	newObj.transform.localScale = Vector3.New(0.012, 0.012, 0.012);
	if MJSceneController.BackCards == nil then
		MJSceneController.BackCards = {};
	end
	table.insert(MJSceneController.BackCards, newObj);
end 
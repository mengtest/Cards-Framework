MJSceneController = {
	transform = nil,
	gameObject = nil,
	MJDeskObj = nil,
	MJDeskAnimation = nil,
	IsSetupDicePanelRotation = false,
	DeskAnimationTimer = nil,
	DeskAnimationTime = 1.333,
	DiceAnimationTimer = nil,
	DiceAnimationTime = 1.25,
}
local this = MJSceneController;
function MJSceneController.Awake(go)
	if go ~= nil then
		MJSceneController.gameObject = go;
		MJSceneController.transform = go.transform;
		MJSceneController.MJDeskObj = go.transform:Find("majiangzhuo").gameObject;
		MJSceneController.MJDeskAnimation = MJSceneController.MJDeskObj:GetComponent(typeof(UnityEngine.Animation));
	end
	MJSceneController.ReadCard();
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
function MJSceneController.PlayDeskAnimation(onFinishCallback)
	Log.Info("MJSceneController.PlayDeskAnimation");
	if MJSceneController.MJDeskAnimation ~= nil then
		MJSceneController.MJDeskAnimation:Play();
		if MJSceneController.DeskAnimationTimer ~= nil then
			MJSceneController.DeskAnimationTimer:Reset();
		else
			MJSceneController.DeskAnimationTimer = Timer.New(
			function()
				Log.Info("MJSceneController.PlayDeskAnimation: finish.");
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
	if SharedVariable.FBInfo ~= nil then
		local roomNumberTransform = MJSceneController.transform:Find("majiangzhuo/Text/RoomNumber");
		local roomNumberStr = tostring(SharedVariable.FBInfo.m_FBID);
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
end
-- 设置玩法
function MJSceneController.SetupPlayWay()
end
-- 设置骰子面板的朝向
function MJSceneController.SetupDicePanelDirection()
	if MJSceneController.IsSetupDicePanelRotation == false then
		MJSceneController.IsSetupDicePanelRotation = true;
		local y = MJPlayer.Hero.MJData.m_RoleData.m_Postion * 90;
		local panel = MJSceneController.transform:Find("majiangzhuo/direction");
		local eulerAngles = UnityEngine.Vector3(0, y + panel.rotation.eulerAngles.y, 0);
		local rotation = UnityEngine.Quaternion.Euler(eulerAngles)
		panel.rotation = rotation;
	end
end
-- 播放骰子面板的东南西北闪光效果
function MJSceneController.PlayDicePanelGrowEffect(name, status)
	UIHelper.SetActiveState(this.transform, "majiangzhuo/direction/Flicker/" .. name, status);
end
function MJSceneController.ShowArrow()
end
function MJSceneController.HideArrow()
end
-- 初始化桌子上的牌
function MJSceneController.ReadCard()
	if MJSceneController.mCard == nil then
		MJSceneController.mCard = {};
	end
	if MJSceneController.mAllCard == nil then
		MJSceneController.mAllCard = {};
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
		table.insert(this.mCard, tempCardObj);
		local mjCard = MJSceneController.CreateMJCard(tempCardObj, tempCardType);
		local tempList = {};
		table.insert(tempList, mjCard);
		for j = 1, 3 do
			local tempCloneObj = NGUITools.AddChild(tempTrans.gameObject, tempCardObj);
			local tempCloneTrans = tempCloneObj.transform;
			tempCloneTrans.localPosition = tempCardTran.localPosition;
			tempCloneTrans.localEulerAngles = tempCardTran.localEulerAngles;
			tempCloneTrans.localScale = tempCardTran.localScale;
			table.insert(this.mCard, tempCloneObj);
			mjCard = MJSceneController.CreateMJCard(tempCloneObj, tempCardType);
			table.insert(tempList, mjCard);
		end
		table.insert(this.mAllCard, {tempCardType, tempList});
	end
end
function MJSceneController.CreateMJCard(obj, type)
	local card = MJCard.New();
	card.GO = obj;
	card.RoleID = - 1;
	card.Status = MJCardStatus.MJCS_Begin;
	card.Type = type;
	return card;
end 
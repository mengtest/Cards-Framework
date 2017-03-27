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

function MJSceneController.Awake(go)
	if go ~= nil then
		MJSceneController.gameObject = go;
		MJSceneController.transform = go.transform;
		MJSceneController.MJDeskObj = go.transform:Find("majiangzhuo").gameObject;
		MJSceneController.MJDeskAnimation = MJSceneController.MJDeskObj:GetComponent(typeof(UnityEngine.Animation));
	end
	MJSceneController.IsSetupDicePanelRotation = false;
	MJScene.OnSceneWasLoaded();
end

function MJSceneController.Start()
	MJSceneController.SetRoomNumber();
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

function MJSceneController.SetRoomNumber()
	if SharedVariable.FBInfo ~= nil then
		local roomNumberTransform = MJSceneController.transform:Find("majiangzhuo/Text/RoomNumber");
		local roomNumberStr = tostring(SharedVariable.FBInfo.m_FBID);
		Log.Info("MJSceneController.SetRoomNumber: room number is " .. roomNumberStr);
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
		-- Log.Info("MJSceneController.SetRoomNumber: single room number is " .. singleNumber);
		end
	end
end

-- 设置骰子面板的朝向
function MJSceneController.SetupDicePanelDirection()
	local y = SharedVariable.DeskOffset * 90;
	local panel = MJSceneController.transform:Find("majiangzhuo/direction");
	local eulerAngles = UnityEngine.Vector3(0, y + panel.rotation.eulerAngles.y, 0);
	local rotation = UnityEngine.Quaternion.Euler(eulerAngles)
	panel.rotation = rotation;
end

-- 播放骰子面板的闪光效果
function MJSceneController.PlayDicePanelGrowEffect()
end
MaJiangSceneController = {
	transform = nil,
	gameObject = nil,
	MJDeskObj = nil,
	MJDeskAnimation = nil,
}

function MaJiangSceneController.Awake(go)
	if go ~= nil then
		MaJiangSceneController.gameObject = go;
		MaJiangSceneController.transform = go.transform;
		MaJiangSceneController.MJDeskObj = go.transform:Find("majiangzhuo").gameObject;
		MaJiangSceneController.MJDeskAnimation = MaJiangSceneController.MJDeskObj:GetComponent(typeof(UnityEngine.Animation));
	end
end

function MaJiangSceneController.Start()
	MaJiangSceneController.SetRoomNumber();
end

function MaJiangSceneController.PlayDeskAnimation()
	Log.Info("MaJiangSceneController.PlayDeskAnimation");
	if MaJiangSceneController.MJDeskAnimation ~= nil then
		MaJiangSceneController.MJDeskAnimation:Play();
	end
end

function MaJiangSceneController.PlayDiceAnimation(number1, number2)
	local number = number1;
	if number1 > number2 then
		number2 = number1;
		number1 = number;
	end
	local path = "majiangzhuo/touzi/" .. tostring(number1) .. "." .. tostring(number2);
	Log.Info("MaJiangSceneController.PlayDiceAnimation: diceobj root path is " .. path);
	local diceObj = MaJiangSceneController.transform:Find(path);
	diceObj.gameObject:SetActive(true);
end

function MaJiangSceneController.SetRoomNumber()
	if SharedVariable.FBInfo ~= nil then
		local roomNumberTransform = MaJiangSceneController.transform:Find("majiangzhuo/Text/RoomNumber");
		local roomNumberStr = tostring(SharedVariable.FBInfo.m_FBID);
		Log.Info("MaJiangSceneController.SetRoomNumber: room number is " .. roomNumberStr);
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
		-- Log.Info("MaJiangSceneController.SetRoomNumber: single room number is " .. singleNumber);
		end
	end
end

-- 设置骰子面板的朝向
function MaJiangSceneController.SetupDicePanelDirection(y)
	local panel = MaJiangSceneController.transform:Find("direction");
	local eulerAngles = UnityEngine.Vector3(0, y + panel.rotation.eulerAngles.y, 0);
	local rotation = UnityEngine.Quaternion.Euler(eulerAngles)
	panel.rotation = rotation;
end
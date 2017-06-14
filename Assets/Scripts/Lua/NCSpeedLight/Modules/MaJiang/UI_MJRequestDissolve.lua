UI_MJRequestDissolve = {
	
	DissolveID = nil,
	
	transform = nil,
	
	gameObject = nil,
	
	CountdownCO = nil,
	
	Status = {}, -- key=player,status=0/1/2 0=ok 1=not ok 2=waiting
}

local this = UI_MJRequestDissolve;

function UI_MJRequestDissolve.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.Status = {};
	-- coroutine.stop(UI_MJRequestDissolve.CountdownCO);
end

function UI_MJRequestDissolve.Start()
	local dissolver = MJScene.GetPlayerByID(this.DissolveID);
	if dissolver:IsHero() == false then
		UIHelper.SetActiveState(this.transform, "Button", true);
		UIHelper.SetButtonEvent(this.transform, "Button/Button1", this.OnClickAgree);
		UIHelper.SetButtonEvent(this.transform, "Button/Button2", this.OnClickCancel);
	else
		UIHelper.SetActiveState(this.transform, "Button", false);
	end
	for i = 1, #MJScene.Players do
		local player = MJScene.Players[i];
		if player == dissolver then
			this.Status[player] = 0;
		elseif this.Status[player] ~= 1 then
			this.Status[player] = 2;
		end
	end
	UI_MJRequestDissolve.CountdownCO = coroutine.start(UI_MJRequestDissolve.Countdown);
	UI_MJRequestDissolve.RefreshContent();
	NetManager.RegisterEvent(GameMessage.GM_CHOOSE_IS_CLOSEROOM_RETURN, UI_MJRequestDissolve.RecvStatusChange);
end

function UI_MJRequestDissolve.OnDestroy()
	coroutine.stop(UI_MJRequestDissolve.CountdownCO);
	UI_MJRequestDissolve.CountdownCO = nil;
	NetManager.UnregisterEvent(GameMessage.GM_CHOOSE_IS_CLOSEROOM_RETURN, UI_MJRequestDissolve.RecvStatusChange);
end

-- 启动倒计时
function UI_MJRequestDissolve.Countdown()
	Log.Info("Countdown: HallScene.FBCloseTime is " .. tostring(HallScene.FBCloseTime));
	for i = 1, HallScene.FBCloseTime do
		local time = HallScene.FBCloseTime - i;
		local timeStr = tostring(time);
		local timeStr1 = "0";
		local timeStr2 = "0";
		local timeStr3 = "0";
		if time >= 100 then
			timeStr1 = string.sub(timeStr, 1, 1);
			timeStr2 = string.sub(timeStr, 2, 2);
			timeStr3 = string.sub(timeStr, 3, 3);
		elseif time >= 10 then
			timeStr1 = "0";
			timeStr2 = string.sub(timeStr, 1, 1);
			timeStr3 = string.sub(timeStr, 2, 2);
		else
			timeStr1 = "0";
			timeStr2 = "0";
			timeStr3 = string.sub(timeStr, 1, 1);
		end
		UIHelper.SetSpriteName(this.transform, "Bg/Time/1", timeStr1);
		UIHelper.SetSpriteName(this.transform, "Bg/Time/2", timeStr2);
		UIHelper.SetSpriteName(this.transform, "Bg/Time/3", timeStr3);
		coroutine.wait(1);
	end
	local dissolver = MJScene.GetPlayerByID(this.DissolveID);
	if dissolver:IsHero() == false then
		local msg = {};
		msg.m_Resutl = 0;
		msg.m_RoleID = Player.ID;
		msg.m_FBID = HallScene.CurrentFBID;
		NetManager.SendEventToLogicServer(GameMessage.GM_CHOOSE_IS_CLOSEROOM, PBMessage.GM_SendReady, msg);
	end
end

function UI_MJRequestDissolve.RefreshContent()
	local dissolver = MJScene.GetPlayerByID(this.DissolveID);
	local lb0str = "玩家【" .. dissolver.Name .. "】申请解散房间，请等待其他玩家选择（超过5分钟未做选择）则默认同意";
	UIHelper.SetLabelText(this.transform, "Center/0", lb0str);
	UIHelper.SetActiveState(this.transform, "Center/0", true);
	local index = 1;
	for key, value in pairs(this.Status) do
		if key ~= dissolver then
			local statusStr = nil;
			if value == 0 then
				statusStr = "【" .. key.Name .. "】  [00cd6b]同意[-]";
			elseif value == 1 then
				statusStr = "【" .. key.Name .. "】  [0A0456]拒绝[-]";
			elseif value == 2 then
				statusStr = "【" .. key.Name .. "】  等待选择";
			end
			UIHelper.SetLabelText(this.transform, "Center/" .. index, statusStr);
			UIHelper.SetActiveState(this.transform, "Center/" .. index, true);
			index = index + 1;
		end
	end
end

function UI_MJRequestDissolve.OnClickAgree(go)
	local msg = {};
	msg.m_Resutl = 0;
	msg.m_RoleID = Player.ID;
	msg.m_FBID = HallScene.CurrentFBID;
	NetManager.SendEventToLogicServer(GameMessage.GM_CHOOSE_IS_CLOSEROOM, PBMessage.GM_SendReady, msg);
end

function UI_MJRequestDissolve.OnClickCancel(go)
	local msg = {};
	msg.m_Resutl = 1;
	msg.m_RoleID = Player.ID;
	msg.m_FBID = HallScene.CurrentFBID;
	NetManager.SendEventToLogicServer(GameMessage.GM_CHOOSE_IS_CLOSEROOM, PBMessage.GM_SendReady, msg);
end

function UI_MJRequestDissolve.RecvStatusChange(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_SendReady, evt);
	local player = MJScene.GetPlayerByID(msg.m_RoleID);
	this.Status[player] = msg.m_Resutl;
	UI_MJRequestDissolve.RefreshContent();
end

function UI_MJRequestDissolve.OnReconnect(data)
	for i = 1, #data do
		local tempData = data[i];
		local player = MJScene.GetPlayerByID(tempData.m_roleid);
		this.Status[player] = tempData.m_state;
		if tempData.m_state == 0 then
			this.DissolveID = tempData.m_roleid;
		end
	end
end 
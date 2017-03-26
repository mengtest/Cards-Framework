UI_DissolveRoom = {
	DissolveID = nil,
	transform = nil,
	gameObject = nil,
}

local this = UI_DissolveRoom;

function UI_DissolveRoom.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_DissolveRoom.Start()
	local dissolver = MaJiangScene.GetPlayer(this.DissolveID);
	if dissolver ~= Player.Hero then
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "Button", true);
		NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "Button/Button1", this.OnClickAgree);
		NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "Button/Button2", this.OnClickCancel);
	else
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "Button", false);
	end
	this.SetupContent();
end

function UI_DissolveRoom.SetupContent()
	local dissolver = MaJiangScene.GetPlayer(this.DissolveID);
	local lb0str = "玩家【" .. dissolver.MJData.m_RoleData.m_Name .. "】申请解散房间，请等待其他玩家选择（超过5分钟未做选择）则默认同意";
	NCSpeedLight.UIHelper.SetLabelText(this.transform, "Center/0", lb0str);
	NCSpeedLight.UIHelper.SetActiveState(this.transform, "Center/0", true);
	local index = 1;
	for key, value in pairs(MaJiangScene.Instance.Players) do
		if value ~= dissolver then
			local lbstr = "【" .. value.MJData.m_RoleData.m_Name .. "】  等待选择";
			NCSpeedLight.UIHelper.SetLabelText(this.transform, "Center/" .. index, lbstr);
			NCSpeedLight.UIHelper.SetActiveState(this.transform, "Center/" .. index, true);
			index = index + 1;
		end
	end
end

function UI_DissolveRoom.OnClickAgree(go)
	local msg = {};
	msg.m_Resutl = 0;
	msg.m_RoleID = Player.Hero.FullInfo.id;
	msg.m_FBID = SharedVariable.FBInfo.m_FBID;
	NetManager.SendEventToLogicServer(GameMessage.GM_CHOOSE_IS_CLOSEROOM, PBMessage.GM_SendReady, msg);
end

function UI_DissolveRoom.OnClickCancel(go)
	local msg = {};
	msg.m_Resutl = 1;
	msg.m_RoleID = Player.Hero.FullInfo.id;
	msg.m_FBID = SharedVariable.FBInfo.m_FBID;
	NetManager.SendEventToLogicServer(GameMessage.GM_CHOOSE_IS_CLOSEROOM, PBMessage.GM_SendReady, msg);
end
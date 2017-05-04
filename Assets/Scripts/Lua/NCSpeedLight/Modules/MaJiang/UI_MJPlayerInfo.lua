UI_MJPlayerInfo = {
	transform = nil,
	gameObject = nil,
	CurrentPlayer = nil,
	InteractionMinInterval = 1, -- 送花的最小间隔时间
	LastInteractionTime = - 1,
}

local this = UI_MJPlayerInfo;

function UI_MJPlayerInfo.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.LastInteractionTime = - 1;
	this.InteractionMinInterval = 1;
end

function UI_MJPlayerInfo.Start()
	UIHelper.SetButtonEvent(this.transform, "Texture", function()
		UIManager.CloseWindow(UIType.UI_MJPlayerInfo);
	end)
	if UI_MJPlayerInfo.CurrentPlayer ~= nil then
		local headTex = UIHelper.GetComponent(this.transform, "Parent/head", typeof(UITexture));
		headTex.mainTexture = UI_MJPlayerInfo.CurrentPlayer:GetHeadTexture();
		UIHelper.SetLabelText(this.transform, "Parent/name", UI_MJPlayerInfo.CurrentPlayer.Name);
		UIHelper.SetLabelText(this.transform, "Parent/ID", "ID: " .. tostring(UI_MJPlayerInfo.CurrentPlayer.ID));
		UIHelper.SetLabelText(this.transform, "Parent/IP", UI_MJPlayerInfo.CurrentPlayer.Address);
		if UI_MJPlayerInfo.CurrentPlayer:IsHero() then
			UIHelper.SetActiveState(this.transform, "Parent/Interaction", false);
			local bgSprite = UIHelper.GetComponent(this.transform, "Parent/back", typeof(UISprite));
			bgSprite.height = 190;
		else
			UIHelper.SetActiveState(this.transform, "Parent/Interaction", true);
			UIHelper.SetButtonEvent(this.transform, "Parent/Interaction/Beer", UI_MJPlayerInfo.OnClickFace);
			UIHelper.SetButtonEvent(this.transform, "Parent/Interaction/Bomb", UI_MJPlayerInfo.OnClickFace);
			UIHelper.SetButtonEvent(this.transform, "Parent/Interaction/Slipper", UI_MJPlayerInfo.OnClickFace);
			UIHelper.SetButtonEvent(this.transform, "Parent/Interaction/Egg", UI_MJPlayerInfo.OnClickFace);
			UIHelper.SetButtonEvent(this.transform, "Parent/Interaction/Flower", UI_MJPlayerInfo.OnClickFace);
		end
	end
end

function UI_MJPlayerInfo.OnEnable()
end

function UI_MJPlayerInfo.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_MJPlayerInfo.OnClickFace(go)
	if go == nil then return end;
	if this.LastInteractionTime == - 1 or(Time.GetTimestamp() - this.LastInteractionTime) > this.InteractionMinInterval then
		local msg = {};
		msg.faceid = MJChatType.Interaction;
		msg.roleid = MJPlayer.Hero.ID;
		msg.receiveid = UI_MJPlayerInfo.CurrentPlayer.ID;
		if go.name == "Beer" then
			msg.faceName = "cheers1";
		elseif go.name == "Bomb" then
			msg.faceName = "bomb1";
		elseif go.name == "Slipper" then
			msg.faceName = "shoe1";
		elseif go.name == "Egg" then
			msg.faceName = "egg1";
		elseif go.name == "Flower" then
			msg.faceName = "flower1";
		end
		NetManager.SendEventToLogicServer(GameMessage.GM_ANSWER_FACE_REQUEST, PBMessage.GM_AnswerFaceReturn, msg);
		this.LastInteractionTime = Time.GetTimestamp();
	else
		UIManager.OpenTipsDialog("操作过于频繁，请稍候再发");
	end
end 
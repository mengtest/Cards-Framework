UI_MJPlayerInfo = {
	transform = nil,
	gameObject = nil,
	CurrentPlayer = nil,
}

local this = UI_MJPlayerInfo;

function UI_MJPlayerInfo.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJPlayerInfo.Start()
	UIHelper.SetButtonEvent(this.transform, "Texture", function()
		UIManager.CloseWindow(UIType.UI_MJPlayerInfo);
	end)
	if UI_MJPlayerInfo.CurrentPlayer ~= nil then
		local headTex = UIHelper.GetComponent(this.transform, "Parent/head", typeof(UITexture));
		headTex.mainTexture = UI_MJPlayerInfo.CurrentPlayer:GetHeadTexture();
		UIHelper.SetLabelText(this.transform, "Parent/name", UI_MJPlayerInfo.CurrentPlayer.Name);
		UIHelper.SetLabelText(this.transform, "Parent/ID", tostring(UI_MJPlayerInfo.CurrentPlayer.ID));
	end
end

function UI_MJPlayerInfo.OnEnable()
end

function UI_MJPlayerInfo.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
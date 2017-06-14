UI_MJStart = {
	transform = nil,
	gameObject = nil,
	PlayAnimationCO = nil,
}

local this = UI_MJStart;

function UI_MJStart.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJStart.Start()
	UI_MJStart.SetWidget();
	UI_MJStart.SetPlayerInfo();
	UI_MJStart.PlayAnimationCO = coroutine.start(UI_MJStart.PlayAnimation);
end

function UI_MJStart.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	coroutine.stop(UI_MJStart.PlayAnimationCO);
end

function UI_MJStart.SetWidget()
	local widget = UIHelper.GetComponent(this.transform, "Widget", typeof(UIWidget));
	if widget ~= nil then
		local screenPos = UIManager.ScreenResolution();
		local xRate = screenPos.x / widget.width;
		local yRate = screenPos.y / widget.height;
		if xRate < yRate then
			widget.cachedTransform.localScale = UnityEngine.Vector3(yRate, yRate, 0);
		else
			widget.cachedTransform.localScale = UnityEngine.Vector3(xRate, xRate, 0);
		end
	end
end

function UI_MJStart.SetPlayerInfo()
	for i = 1, #MJScene.Players do
		local player = MJScene.Players[i];
		local trans = this.transform:Find("Widget/BG/" .. player.UIPosition .. "/Widget");
		local headTexture = UIHelper.GetComponent(trans, "Photo", typeof(UITexture));
		headTexture.mainTexture = MJPlayer.GetHeadTexture(player);
		UIHelper.SetLabelText(trans, "Label (Name)", player.Name);
	end
end

function UI_MJStart.PlayAnimation()
	AudioManager.PlaySound("MJ_start");
	coroutine.wait(0.05);
	UIHelper.SetActiveState(this.transform, "Widget/BG", true);
	coroutine.wait(0.18);
	local effect = this.transform:Find("Effect");
	if effect ~= nil then
		effect.gameObject:SetActive(true);
	end
	coroutine.wait(1.4);
	UIManager.CloseWindow(UIName.UI_MJStart);
end 
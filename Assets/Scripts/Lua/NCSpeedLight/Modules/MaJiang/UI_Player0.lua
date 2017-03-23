UI_Player0 = {
	transform = nil,
	gameObject = nil,
	Player = nil,
}

local this = UI_Player0;

function UI_Player0.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.Player = Player.Hero;
	Log.Info("UI_Player0: player instance is " .. tostring(this.Player));
	this.Player:Initialize(go.transform);
end

function UI_Player0.Start()
	local cardGridPanel = this.transform:Find("Cards/CardGrid");
	local childCount = cardGridPanel.childCount;
	for i = 1, cardGridPanel.childCount do
		local cardObj = cardGridPanel:GetChild(i - 1)
		local listerner = cardObj.gameObject:AddComponent(typeof(UIEventListener));
	end
end

function UI_Player0.OnDestroy()
	this.gameObject = nil;
	this.transform = nil;
	this.Player:OnUIDestroy();
	this.Player = nil;
end
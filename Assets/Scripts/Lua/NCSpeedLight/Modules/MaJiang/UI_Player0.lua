UI_Player0 = {
	transform = nil,
	gameObject = nil,
	Player = nil,
	DragingCardObj = nil,
}

local this = UI_Player0;

function UI_Player0.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.Player = Player.Hero;
	Log.Info("UI_Player0: player instance is " .. tostring(this.Player));
	this.Player:Initialize(go.transform);
end

-- public VoidDelegate onDragStart;
-- public VectorDelegate onDrag;
-- public VoidDelegate onDragOver;
-- public VoidDelegate onDragOut;
-- public VoidDelegate onDragEnd;
function UI_Player0.Start()
	local cardGridPanel = this.transform:Find("Cards/CardGrid");
	local childCount = cardGridPanel.childCount;
	for i = 1, cardGridPanel.childCount do
		local cardObj = cardGridPanel:GetChild(i - 1)
		local listener = cardObj.gameObject:AddComponent(typeof(UIEventListener));
		listener.onDragStart = UI_Player0.OnStartDragCard;
		listener.onDrag = UI_Player0.OnDragCard;
		listener.onDragEnd = UI_Player0.OnStopDragCard;
	end
end



function UI_Player0.OnStartDragCard(go)
	-- Log.Info("UI_Player0.OnStartDragCard: " .. go.name);
	if this.DragingCardObj ~= nil then
		UnityEngine.GameObject.Destroy(this.DragingCardObj);
	end
	this.DragingCardObj = UnityEngine.GameObject.Instantiate(go);
	this.DragingCardObj.name = "DragingCard";
	this.DragingCardObj.transform:SetParent(UI_MaJiang.transform);
	this.DragingCardObj.transform.localPosition = UnityEngine.Vector3.zero;
	this.DragingCardObj.transform.localScale = UnityEngine.Vector3.one;
	this.DragingCardObj.transform.localRotation = UnityEngine.Quaternion.identity;
	this.DragingCardObj.transform.position = go.transform.position;
end

function UI_Player0.OnDragCard(go, delta)
	-- Log.Info("UI_Player0.OnDragCard: " .. go.name .. ",delta pos is " .. tostring(delta));
	if this.DragingCardObj ~= nil then
		delta = delta * 1.1;
		local deltaPos = UnityEngine.Vector3(delta.x, delta.y, 0);
		local newPos = this.DragingCardObj.transform:TransformPoint(deltaPos);
		-- Log.Info("UI_Player0.OnDragCard: newPos" .. tostring(newPos));
		this.DragingCardObj.transform.position = newPos;
	end
end

function UI_Player0.OnStopDragCard(go)
	-- Log.Info("UI_Player0.OnStopDragCard: " .. go.name);
	if this.DragingCardObj ~= nil then
		UnityEngine.GameObject.Destroy(this.DragingCardObj);
	end
end

function UI_Player0.OnDestroy()
	this.gameObject = nil;
	this.transform = nil;
	this.Player:OnUIDestroy();
	this.Player = nil;
	this.DragingCardObj = nil;
end
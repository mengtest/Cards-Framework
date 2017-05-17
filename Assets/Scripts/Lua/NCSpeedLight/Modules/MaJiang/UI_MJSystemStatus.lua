UI_MJSystemStatus = {
	transform = nil,
	gameObject = nil,
	UpdateTimeCo = nil,
	SystemTime = nil,
}

local this = UI_MJSystemStatus;

function UI_MJSystemStatus.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJSystemStatus.Start()
	UpdateTimeCo = coroutine.start(UI_MJSystemStatus.UpdateTime);
end

function UI_MJSystemStatus.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	coroutine.stop(UI_MJSystemStatus.UpdateTimeCo);
end

function UI_MJSystemStatus.UpdateTime()
	while true do
		SystemTime = os.date("%H:%M");
		UIHelper.SetLabelText(this.transform, "Label", SystemTime);
		coroutine.wait(3);
	end
end 
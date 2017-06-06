UI_MJSystemStatus = {
	transform = nil,
	gameObject = nil,
	UpdateTimeCo = nil,
	UpdateBatteryCo = nil,
	SystemTime = nil,
	BatterySlider = nil,
	BatterySprite = nil,
}

local this = UI_MJSystemStatus;

function UI_MJSystemStatus.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJSystemStatus.Start()
	UI_MJSystemStatus.BatterySlider = UIHelper.GetComponent(this.transform, "BatterySlider", typeof(UISlider));
	UI_MJSystemStatus.BatterySprite = UIHelper.GetComponent(this.transform, "BatterySlider/Battery", typeof(UISprite));
	UI_MJSystemStatus.UpdateTimeCo = coroutine.start(UI_MJSystemStatus.UpdateTime);
	UI_MJSystemStatus.UpdateBatteryCo = coroutine.start(UI_MJSystemStatus.UpdateBattery);
end

function UI_MJSystemStatus.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	this.BatterySlider = nil;
	coroutine.stop(UI_MJSystemStatus.UpdateTimeCo);
	coroutine.stop(UI_MJSystemStatus.UpdateBatteryCo);
end

function UI_MJSystemStatus.UpdateTime()
	while true do
		SystemTime = os.date("%H:%M");
		UIHelper.SetLabelText(this.transform, "Label", SystemTime);
		coroutine.wait(3);
	end
end

function UI_MJSystemStatus.UpdateBattery()
	while true do
		if UnityEngine.SystemInfo.batteryStatus == UnityEngine.BatteryStatus.Charging then
			UIHelper.SetActiveState(this.transform, "Charging", true);
		else
			UIHelper.SetActiveState(this.transform, "Charging", false);
		end
		local batteryValue = UnityEngine.SystemInfo.batteryLevel;
		this.BatterySlider.value = UnityEngine.SystemInfo.batteryLevel;
		if batteryValue < 0.2 then
			this.BatterySprite.color = Color.New(1, 0, 0);
		elseif batteryValue < 0.6 then
			this.BatterySprite.color = Color.New(1, 1, 0);
		else
			this.BatterySprite.color = Color.New(1, 1, 1);
		end
		coroutine.wait(3);
	end
end 
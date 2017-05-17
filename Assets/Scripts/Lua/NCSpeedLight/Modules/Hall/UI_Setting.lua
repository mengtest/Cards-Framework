UI_Setting = {
	transform = nil,
	gameObject = nil,
}

local this = UI_Setting;

function UI_Setting.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_Setting.Start()
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", function()
		UIManager.CloseWindow(UIName.UI_Setting);
	end);
	
	local musicEvtLisener = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UIEventListener));
	musicEvtLisener.onPress = UI_Setting.OnMusicSliderPress;
	
	local soundEvtListener = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UIEventListener));
	soundEvtListener.onPress = UI_Setting.OnSoundVolumeChange;
end

function UI_Setting.OnMusicSliderPress(go, status)
	if status == false then
		local musicSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UISlider));
		AudioManager.SetCategoryVolume("BGMusic", musicSlider.value);
	end
end

function UI_Setting.OnSoundSliderPress(status)
end

function UI_Setting.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
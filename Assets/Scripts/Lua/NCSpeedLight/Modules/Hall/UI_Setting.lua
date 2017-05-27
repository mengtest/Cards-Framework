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
	
	UIHelper.SetButtonEvent(this.transform, "Content/ExitLogin/Button", function()
		SceneManager.Goto(LoginScene.Name);
	end);
	
	local musicSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UISlider));
	musicSlider.value = LoginScene.MusicVolume;
	if LoginScene.MusicVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-8");
	end
	
	local soundSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UISlider));
	soundSlider.value = LoginScene.SoundVolume;
	if LoginScene.SoundVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-8");
	end
	
	local musicEvtLisener = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UIEventListener));
	musicEvtLisener.onDrag = UI_Setting.OnMusicSliderDrag;
	musicEvtLisener.onClick = UI_Setting.OnMusicSliderClick;
	
	local soundEvtListener = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UIEventListener));
	soundEvtListener.onDrag = UI_Setting.OnSoundSliderDrag;
	soundEvtListener.onClick = UI_Setting.OnSoundSliderClick;
end

function UI_Setting.OnMusicSliderDrag(go, delta)
	local musicSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UISlider));
	LoginScene.MusicVolume = musicSlider.value;
	if LoginScene.MusicVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-8");
	end
	AudioManager.SetCategoryVolume("BGMusic", LoginScene.MusicVolume);
	if AudioManager.IsPlaylistPlaying() == false then
		AudioManager.PlayMusic({BGMusic.Hall}, true);
	end
end

function UI_Setting.OnMusicSliderClick(go, delta)
	local musicSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UISlider));
	LoginScene.MusicVolume = musicSlider.value;
	if LoginScene.MusicVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-8");
	end
	AudioManager.SetCategoryVolume("BGMusic", LoginScene.MusicVolume);
	if AudioManager.IsPlaylistPlaying() == false then
		AudioManager.PlayMusic({BGMusic.Hall}, true);
	end
end

function UI_Setting.OnSoundSliderDrag(go, delta)
	local soundSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UISlider));
	LoginScene.SoundVolume = soundSlider.value;
	if LoginScene.SoundVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-8");
	end
	AudioManager.SetCategoryVolume("Interaction", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardFYNan_103104", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardFYNv_101102", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardPTNan_103104", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardPTNv_101102", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangSound", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("UIMusic", LoginScene.SoundVolume);
end

function UI_Setting.OnSoundSliderClick(go, delta)
	local soundSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UISlider));
	LoginScene.SoundVolume = soundSlider.value;
	if LoginScene.SoundVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-8");
	end
	AudioManager.SetCategoryVolume("Interaction", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardFYNan_103104", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardFYNv_101102", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardPTNan_103104", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardPTNv_101102", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangSound", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("UIMusic", LoginScene.SoundVolume);
end

function UI_Setting.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	LoginScene.SaveSoundVolumeConfig();
end 
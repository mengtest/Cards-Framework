UI_MJSetting = {
	transform = nil,
	gameObject = nil,
}

local this = UI_MJSetting;

function UI_MJSetting.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJSetting.Start()
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", UI_MJSetting.OnClickClose);
	UIHelper.SetButtonEvent(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", UI_MJSetting.OnClickMuteMusic);
	UIHelper.SetButtonEvent(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", UI_MJSetting.OnClickMuteSound);
	
	local musicSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UISlider));
	musicSlider.value = LoginScene.MusicVolume;
	if LoginScene.MusicVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", "SZ-8");
	end
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Back", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Fore", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Drag", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", LoginScene.MuteMusic);
	UIHelper.SetEventEnabled(this.transform, "Content/SettingButton/SL_Music", not LoginScene.MuteMusic);
	
	local soundSlider = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UISlider));
	soundSlider.value = LoginScene.SoundVolume;
	if LoginScene.SoundVolume == 0 then
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-7");
	else
		UIHelper.SetSpriteName(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", "SZ-8");
	end
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Back", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Fore", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Drag", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", LoginScene.MuteSound);
	UIHelper.SetEventEnabled(this.transform, "Content/SettingButton/SL_Sound", not LoginScene.MuteSound);
	
	local musicEvtLisener = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Music", typeof(UIEventListener));
	musicEvtLisener.onDrag = UI_MJSetting.OnMusicSliderDrag;
	musicEvtLisener.onClick = UI_MJSetting.OnMusicSliderClick;
	
	local soundEvtListener = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UIEventListener));
	soundEvtListener.onDrag = UI_MJSetting.OnSoundSliderDrag;
	soundEvtListener.onClick = UI_MJSetting.OnSoundSliderClick;
end

function UI_MJSetting.OnClickClose(go)
	UIManager.CloseWindow(UIName.UI_MJSetting);
end

function UI_MJSetting.OnClickMuteMusic()
	LoginScene.MuteMusic = not LoginScene.MuteMusic;
	AudioManager.MuteMusic = LoginScene.MuteMusic;
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Back", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Fore", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Drag", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", LoginScene.MuteMusic);
	UIHelper.SetEventEnabled(this.transform, "Content/SettingButton/SL_Music", not LoginScene.MuteMusic);
	if LoginScene.MuteMusic == false then
		AudioManager.PlayMusic({BGMusic.MaJiang}, true);
	end
end

function UI_MJSetting.OnClickMuteSound()
	LoginScene.MuteSound = not LoginScene.MuteSound;
	AudioManager.MuteSound = LoginScene.MuteSound;
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Back", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Fore", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Drag", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", LoginScene.MuteSound);
	UIHelper.SetEventEnabled(this.transform, "Content/SettingButton/SL_Sound", not LoginScene.MuteSound);
end

function UI_MJSetting.OnMusicSliderDrag(go, delta)
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

function UI_MJSetting.OnMusicSliderClick(go, delta)
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

function UI_MJSetting.OnSoundSliderDrag(go, delta)
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

function UI_MJSetting.OnSoundSliderClick(go, delta)
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

function UI_MJSetting.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	LoginScene.SaveSoundVolumeConfig();
end 
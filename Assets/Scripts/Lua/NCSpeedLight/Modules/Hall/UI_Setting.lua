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
	
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", UI_Setting.OnClickClose);
	UIHelper.SetButtonEvent(this.transform, "Content/ExitLogin/Button", UI_Setting.OnClickExitLogin);
	UIHelper.SetButtonEvent(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", UI_Setting.OnClickMuteMusic);
	UIHelper.SetButtonEvent(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", UI_Setting.OnClickMuteSound);
	UIHelper.SetLabelText(this.transform, "LB_Version", "版本号：" .. Constants.VERSION);
	UIHelper.SetButtonEvent(this.transform, "LB_Version", UI_Setting.OnClickVersion);
	-- 音乐设置
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
	
	-- 音效设置
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
	musicEvtLisener.onDrag = UI_Setting.OnMusicSliderDrag;
	musicEvtLisener.onClick = UI_Setting.OnMusicSliderClick;
	
	local soundEvtListener = UIHelper.GetComponent(this.transform, "Content/SettingButton/SL_Sound", typeof(UIEventListener));
	soundEvtListener.onDrag = UI_Setting.OnSoundSliderDrag;
	soundEvtListener.onClick = UI_Setting.OnSoundSliderClick;
end

function UI_Setting.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	LoginScene.SaveSoundVolumeConfig();
end

function UI_Setting.OnClickVersion()
	UIManager.OpenConfirmDialog(nil, nil, "是否清空缓存文件", true,
	function()
		Helper.DeleteDirectory(Constants.LOCAL_ASSET_BUNDLE_PATH, true);
		Helper.DeleteDirectory(Constants.LOCAL_SCRIPT_BUNDLE_PATH, true);
		UIManager.OpenTipsDialog("删除成功");
	end, nil);
end

function UI_Setting.OnClickClose(go)
	UIManager.CloseWindow(UIName.UI_Setting);
end

function UI_Setting.OnClickExitLogin(go)
	if UnityEngine.Application.isMobilePlatform then
		LoginScene.WechatAuth = nil;
		LoginScene.DeleteWechatAuthInfo();
	end
	SceneManager.Goto(LoginScene.Name);
end

function UI_Setting.OnClickMuteMusic()
	LoginScene.MuteMusic = not LoginScene.MuteMusic;
	AudioManager.MuteMusic = LoginScene.MuteMusic;
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Back", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Fore", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Progress/Drag", LoginScene.MuteMusic);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Music/Status/Sprite", LoginScene.MuteMusic);
	UIHelper.SetEventEnabled(this.transform, "Content/SettingButton/SL_Music", not LoginScene.MuteMusic);
	if LoginScene.MuteMusic == false then
		AudioManager.PlayMusic({BGMusic.Hall}, true);
	end
end

function UI_Setting.OnClickMuteSound()
	LoginScene.MuteSound = not LoginScene.MuteSound;
	AudioManager.MuteSound = LoginScene.MuteSound;
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Back", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Fore", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Progress/Drag", LoginScene.MuteSound);
	UIHelper.SetSpriteGray(this.transform, "Content/SettingButton/SL_Sound/Status/Sprite", LoginScene.MuteSound);
	UIHelper.SetEventEnabled(this.transform, "Content/SettingButton/SL_Sound", not LoginScene.MuteSound);
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


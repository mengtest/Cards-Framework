-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: LoginScene.lua
-- Describle:  登录场景,这里控制所有登录逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
LoginScene =
{
	Name = SceneName.LoginScene,
	
	Token = {
		AccountID,
		AccountToken,
		LatestArea,
		RoleID,
	},
	
	LoginRecord = nil,
	IsInitialized = false,
	ReconnectToLoginServerTimer = nil,
	DisconnectTimeStamp = 0,
	LoginServerIP = nil,
	LoginServerPort = nil,
	LogicServerIP = nil,
	LoginServerPort = nil,
	AuthInfo = nil,
	
	MusicVolume = 1, -- 音乐音量
	
	SoundVolume = 1, -- 音效音量
	
	SoundMode = 0 -- 语音版本 0-普通话，2-方言
};

function LoginScene.Initialize()
	if LoginScene.IsInitialized == false then
		LoginScene.IsInitialized = true;
		LoginScene.OpenLoginRecord();
		LoginScene.OpenSoundVolumeConfig();
		NetManager.RegisterEvent(GameMessage.GM_RESTORE_CONNECT_FROM_OFFLINEHANG_FAILED, LoginScene.OnReturnReconnectToLogicServerFail);
		NetManager.RegisterEvent(GameMessage.GM_RESTORE_CONNECT_FROM_OFFLINEHANG_OK, LoginScene.OnReturnReconnectToLogicServerSuccess);
	end
end

function LoginScene.Begin()
	NCSpeedLight.InternalUI.Instance:OpenBG();
	AssetManager.LoadScene(SceneName.LoginScene);
	NetManager.RegisterEvent(GameMessage.GM_VERSION_RETURN, LoginScene.OnVerifyVersionReturn);
	NetManager.RegisterEvent(GameMessage.GM_ACCOUNT_VERIFY_RETURN, LoginScene.OnLoginReturn);
	NetManager.RegisterEvent(GameMessage.GM_ACCOUNT_CREATE_RETURN, LoginScene.OnRegisterReturn);
	NetManager.RegisterEvent(GameMessage.GM_CHOOSE_AREA_RETURN, LoginScene.OnChoseAreaReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLELIST_RETURN, LoginScene.OnAccountRolesReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLE_LOGIN_RETURN, LoginScene.OnRoleLoginReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLE_CREATE_RETURN, LoginScene.OnCreateRoleReturn);
	LoginScene.ConnnectLoginServer();
end

function LoginScene.Update()
end

function LoginScene.End()
	NetManager.UnregisterEvent(GameMessage.GM_VERSION_RETURN, LoginScene.OnVerifyVersionReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ACCOUNT_VERIFY_RETURN, LoginScene.OnLoginReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ACCOUNT_CREATE_RETURN, LoginScene.OnRegisterReturn);
	NetManager.UnregisterEvent(GameMessage.GM_CHOOSE_AREA_RETURN, LoginScene.OnChoseAreaReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ROLELIST_RETURN, LoginScene.OnAccountRolesReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ROLE_LOGIN_RETURN, LoginScene.OnRoleLoginReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ROLE_CREATE_RETURN, LoginScene.OnCreateRoleReturn);
end

function LoginScene.OnApplicationPause(status)
end

function LoginScene.OnApplicationFocus(status)
end

function LoginScene.OnConnectToLogicServer()
end

function LoginScene.OnReconnectToLogicServer()
end

function LoginScene.OnDisconnectFromLogicServer()
end

function LoginScene.OpenSoundVolumeConfig()
	local path = Constants.DATA_PATH .. "Config/SoundVolume.bytes";
	local buffer = Utility.OpenFile(path);
	if buffer == nil then
		LoginScene.SoundVolume = 1;
		LoginScene.MusicVolume = 1;
		Log.Error("OpenSoundVolumeConfig: Can not open sound volume config,is this file exists @ " .. path);
	else
		local config = NetManager.DecodePB(PBMessage.CFG_SoundVolume, buffer);
		if config == false then
			LoginScene.SoundVolume = 0.4;
			LoginScene.MusicVolume = 0.4;
			Log.Error("OpenSoundVolumeConfig: decode sound volume bytes error.");
		else
			LoginScene.SoundVolume = config.Sound;
			LoginScene.MusicVolume = config.Music;
			Log.Info("OpenSoundVolumeConfig: sound volume is " .. LoginScene.SoundVolume .. " and music volume is " .. LoginScene.MusicVolume);
		end
	end
	AudioManager.SetCategoryVolume("BGMusic", LoginScene.MusicVolume);
	AudioManager.SetCategoryVolume("Interaction", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardFYNan_103104", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardFYNv_101102", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardPTNan_103104", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangCardPTNv_101102", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("MaJiangSound", LoginScene.SoundVolume);
	AudioManager.SetCategoryVolume("UIMusic", LoginScene.SoundVolume);
end

function LoginScene.SaveSoundVolumeConfig()
	local path = Constants.DATA_PATH .. "Config/SoundVolume.bytes";
	local obj = {};
	obj.Sound = LoginScene.SoundVolume;
	obj.Music = LoginScene.MusicVolume;
	local buffer = NetManager.EncodePB(PBMessage.CFG_SoundVolume, obj);
	Utility.SaveFile(path, buffer);
	Log.Info("SaveSoundVolumeConfig: save success @ " .. path);
end

function LoginScene.OpenLoginRecord()
	local path = Constants.DATA_PATH .. "Config/LoginRecord.bytes";
	local buffer = Utility.OpenFile(path);
	if buffer == nil then
		Log.Error("OpenLoginRecord: Can not open login record file,is this file exists @ " .. path);
	else
		local record = NetManager.DecodePB(PBMessage.CFG_LoginRecord, buffer);
		if record == false then
			Log.Error("OpenLoginRecord: decode login record error");
		else
			LoginScene.LoginRecord = record;
			for i = 1, #record.loginInfo do
				Log.Info("OpenLoginRecord: recorded account: " .. record.loginInfo[i].account .. ",password: " .. record.loginInfo[i].password);
			end
		end
	end
end

function LoginScene.GetLoginRecord()
	return LoginScene.LoginRecord;
end

function LoginScene.AddLoginRecord(accountStr, passwordStr, latestAreaStr, latestRoleIDStr)
	if LoginScene.ExistRecord(accountStr) then
		return
	end
	local info = {
		loginInfo =
		{
			{
				account = accountStr,
				password = passwordStr,
			}
		}
	}
	if LoginScene.LoginRecord ~= nil then
		for i = 1, #LoginScene.LoginRecord.loginInfo do
			if i > 2 then break end
			info.loginInfo[i + 1] = {
				account = LoginScene.LoginRecord.loginInfo[i].account,
				password = LoginScene.LoginRecord.loginInfo[i].password,
			};
		end
	end
	LoginScene.LoginRecord = info;
	LoginScene.SaveLoginRecordFile();
end

function LoginScene.ExistRecord(accountStr)
	if LoginScene.LoginRecord ~= nil then
		for i = 1, #LoginScene.LoginRecord.loginInfo do
			local info = LoginScene.LoginRecord.loginInfo[i];
			if info ~= nil and info.account == accountStr then
				return true;
			end
		end
	else
		return false;
	end
end

function LoginScene.RemoveLoginRecord(accountStr, passwordStr)
	if LoginScene.LoginRecord ~= nil then
		for i = #LoginScene.LoginRecord.loginInfo, 1, - 1 do
			local item = LoginScene.LoginRecord.loginInfo[i];
			if item.account == accountStr and item.password == passwordStr then
				table.remove(LoginScene.LoginRecord.loginInfo, i);
				break;
			end
		end
	end
	LoginScene.SaveLoginRecordFile();
end

function LoginScene.SaveLoginRecordFile()
	local path = Constants.DATA_PATH .. "Config/LoginRecord.bytes";
	local buffer = NetManager.EncodePB(PBMessage.CFG_LoginRecord, LoginScene.LoginRecord);
	Utility.SaveFile(path, buffer);
end

-- 连接登录服务器
function LoginScene.ConnnectLoginServer()
	local option = ProgressDialogOption.New();
	option.AutoClose = true;
	option.Timeout = 10;
	option.Content = "连接服务器中...";
	option.OnAutoClose = function()
		UIManager.OpenTipsDialog("请求超时，请检查设备的网络状况");
	end;
	-- UIManager.OpenProgressDialog(option);
	Log.Info("ConnnectLoginServer: login server ip is " .. Constants.ACCOUNT_SERVER_IP);
	Log.Info("ConnnectLoginServer: login server port is " .. Constants.ACCOUNT_SERVER_PORT);
	NetManager.ConnectTo(ServerType.Login, Constants.ACCOUNT_SERVER_IP, Constants.ACCOUNT_SERVER_PORT,
	function(connection)
		Log.Info("ConnnectLoginServer: 连接至登录服务器");
		UIManager.CloseProgressDialog();
		LoginScene.RequestVerifyVersion();
	end,
	function(connection)
		Log.Info("ConnnectLoginServer: 断开与登录服务器的连接");
	end,
	nil);
end

function LoginScene.RequestVerifyVersion()
	Log.Info("RequestVerifyVersion: Send verify version msg,current version is " .. Constants.VERSION);
	local msg = {
		version = Constants.VERSION;
	}
	NetManager.SendEventToLoginServer(GameMessage.GM_VERIFY_VERSION, PBMessage.GM_VerifyVersion, msg)
end

function LoginScene.OnVerifyVersionReturn(evt)
	local obj = NetManager.DecodeMsg(PBMessage.GM_VerifyVersionReturn, evt)
	if obj.result == 0 then
		Log.Info("OnVerifyVersionReturn: sccuss.");
		if Game.Platform == UnityEngine.RuntimePlatform.Android or Game.Platform == UnityEngine.RuntimePlatform.IPhonePlayer then
			LoginScene.AuthInfo = ShareSDKAdapter.GetWechatAuthInfo();
			if LoginScene.AuthInfo == nil then
				UIManager.OpenWindow(UIName.UI_MobileLogin);
			else
				-- 本地存在验证信息，则直接登录
				LoginScene.RequestLogin(LoginScene.AuthInfo.unionID, "AllPlatform");
			end
		else
			UIManager.OpenWindow(UIName.UI_NormalLogin);
		end
	else
		Log.Error("OnVerifyVersionReturn: version does not match,can not enter game,please update.");
		UIManager.OpenTipsDialog("版本不匹配，无法进入游戏");
	end
end

function LoginScene.RequestLogin(account, password)
	local msg = {};
	msg.m_AccountName = account;
	msg.m_Password = password;
	if UnityEngine.Application.isMobilePlatform then
		msg.platform = 1;
	else
		msg.platform = 0;
	end
	msg.accountLogInfo = {
		platformID = 1,
		ditchID = "2",
		version = "1.8.0",
		accountID = 99988254,
		macAddress = "4D6MDJJ",
		deviceUUID = "547SFHBSDFHESYHTRY",
	}
	Log.Info("RequestLogin: platform is " .. msg.platform .. ",account is " .. msg.m_AccountName);
	NetManager.SendEventToLoginServer(GameMessage.GM_ACCOUNT_VERIFY, PBMessage.GM_AccountRequest, msg);
	UIManager.OpenWindow(UIName.UI_SceneLoad);
end

function LoginScene.OnLoginReturn(evt)
	UIManager.CloseProgressDialog();
	local obj = NetManager.DecodeMsg(PBMessage.GM_AccountReturn, evt)
	if obj.m_Result == 0 then
		Log.Info("OnLoginReturn: 账号验证成功");
		-- 记录至内存中
		LoginScene.Token = {};
		LoginScene.Token.AccountID = obj.m_AccountID;
		LoginScene.Token.AccountToken = obj.m_RandStr;
		LoginScene.Token.LatestArea = obj.m_lastloginServerID;
		-- 保存至本地
		LoginScene.AddLoginRecord(LoginScene.currentAccount, LoginScene.currentPassword, obj.m_lastloginServerID);
		-- 请求选区
		LoginScene.RequestChooseArea();
	elseif obj.m_Result == 1 then
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		UIManager.OpenTipsDialog("账号密码错误");
	elseif obj.m_Result == 2 then
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		UIManager.OpenTipsDialog("验证错误");
	elseif obj.m_Result == 3 then
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		UIManager.OpenTipsDialog("此账号已暂时冻结");
	elseif obj.m_Result == 4 then
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		UIManager.OpenTipsDialog("账号长度不符合");
	elseif obj.m_Result == 5 then
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		UIManager.OpenTipsDialog("密码长度不符合");
	elseif obj.m_Result == 6 then
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		UIManager.OpenTipsDialog("此账号已永久冻结");
	else
		UIManager.CloseWindow(UIName.UI_SceneLoad);
	end
end

function LoginScene.RequestRegister(account, password)
	local msg =
	{
		m_AccountName = account,
		m_Password = password,
		accountLogInfo =
		{
			platformID = 1,
			ditchID = "2",
			version = "1.0.1",
			accountID = 99988254,
			macAddress = "4D6MDJJ",
			deviceUUID = "547SFHBSDFHESYHTRY",
		}
	}
	NetManager.SendEventToLoginServer(GameMessage.GM_ACCOUNT_CREATE, PBMessage.GM_AccountCreate, msg)
end

function LoginScene.OnRegisterReturn(evt)
	local obj = NetManager.DecodeMsg(PBMessage.GM_AccountCreateReturn, evt)
	if obj.m_Result == 0 then
		UIManager.OpenTipsDialog("创建成功")
		-- 保存账号信息至本地
		LoginScene.AddLoginRecord(LoginScene.currentAccount, LoginScene.currentPassword);
		UIManager.CloseWindow(UIName.UI_Register);
		UIManager.OpenWindow(UIName.UI_NormalLogin);
	elseif obj.m_Result == 1 then
		UIManager.OpenTipsDialog("存在账号")
		-- 保存账号信息至本地
		LoginScene.AddLoginRecord(LoginScene.currentAccount, LoginScene.currentPassword);
		UIManager.CloseWindow(UIName.UI_Register);
		UIManager.OpenWindow(UIName.UI_NormalLogin);
	elseif obj.m_Result == 2 then
		UIManager.OpenTipsDialog("账号长度不符合");
	elseif obj.m_Result == 3 then
		UIManager.OpenTipsDialog("密码长度不符合");
	elseif obj.m_Result == 4 then
		UIManager.OpenTipsDialog("是关键字");
	else
	end
end

function LoginScene.RequestChooseArea()
	local msg = {
		m_Account = LoginScene.Token.AccountID,
		m_AreaID = LoginScene.Token.LatestArea,
		m_RandStr = LoginScene.Token.AccountToken,
	};
	NetManager.SendEventToLoginServer(GameMessage.GM_CHOOSE_AREA, PBMessage.GM_ChooseArea, msg);
end

function LoginScene.OnChoseAreaReturn(evt)
	local obj = NetManager.DecodeMsg(PBMessage.GM_ChooseAreaReturn, evt);
	if obj.m_Result == 0 then
		UIManager.CloseWindow(UIName.UI_MobileLogin);
		Log.Info("OnChoseAreaReturn：选区成功,开始连接逻辑服务器");
		Log.Info("OnChoseAreaReturn: logic server ip is " .. obj.m_ServerIP);
		Log.Info("OnChoseAreaReturn: logic server port is " .. obj.m_PortNumber);
		LoginScene.LogicServerIP = obj.m_ServerIP;
		LoginScene.LoginServerPort = obj.m_PortNumber;
		NetManager.ConnectTo(ServerType.Logic, LoginScene.LogicServerIP, LoginScene.LoginServerPort, LoginScene.OnConnectLogicServer, LoginScene.OnDisconnectLogicServer, LoginScene.OnReconnectLogicServer, LoginScene.OnLogicServerErrorOccupied);
	else
		Log.Info("OnChoseAreaReturn：选区失败");
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		UIManager.OpenTipsDialog("选区失败");
	end
end

function LoginScene.OnConnectLogicServer(connection)
	Log.Info("OnConnectLogicServer: 成功连接至逻辑服务器");
	UIManager.CloseProgressDialog();
	LoginScene.RequestAccountRoles();
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.OnConnectToLogicServer();
	end
end

function LoginScene.OnDisconnectLogicServer(connection)
	Log.Info("OnDisconnectLogicServer");
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.OnDisconnectFromLogicServer();
	end
end

function LoginScene.OnReconnectLogicServer(connection)
	UIManager.CloseProgressDialog();
	Log.Info("OnReconnectLogicServer: 成功重连至逻辑服务器,耗时：" .. tostring(Time.realtimeSinceStartup - LoginScene.DisconnectTimeStamp) .. "s");
	LoginScene.RequestReconnectToLogicServer();
end

function LoginScene.OnLogicServerErrorOccupied(connection, error)
	Log.Error("OnLogicServerErrorOccupied: error message: " .. error);
	LoginScene.DisconnectTimeStamp = Time.realtimeSinceStartup;
	local option = ProgressDialogOption.New();
	option.Content = "网络异常，重新连接中...";
	UIManager.OpenProgressDialog(option);
	connection:Reconnect();
	Log.Info("OnLogicServerErrorOccupied: 逻辑服务器异常,启动重连,时间戳：" .. tostring(LoginScene.DisconnectTimeStamp));
end

function LoginScene.RequestReconnectToLogicServer()
	Log.Info("RequestReconnectToLogicServer");
	local msg = {};
	msg.m_AccountID = LoginScene.Token.AccountID;
	msg.m_RoleID = LoginScene.Token.RoleID;
	msg.m_randstr = LoginScene.Token.AccountToken;
	NetManager.SendEventToLogicServer(GameMessage.GM_RESTORE_CONNECT_FROM_OFFLINEHANG, PBMessage.GMOffLineReconnect, msg);
end

function LoginScene.OnReturnReconnectToLogicServerSuccess(evt)
	Log.Info("OnReturnReconnectToLogicServerSuccess");
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.OnReconnectToLogicServer();
	end
end

function LoginScene.OnReturnReconnectToLogicServerFail(evt)
	Log.Info("OnReturnReconnectToLogicServerFail");
end

function LoginScene.RequestAccountRoles()
	local msg = {
		m_accountID = LoginScene.Token.AccountID,
		m_area = LoginScene.Token.LatestArea,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_ROLELIST_REQUEST, PBMessage.GMRoleListRequest, msg)
end

function LoginScene.OnAccountRolesReturn(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GMRoleListEx, evt);
	if msg.m_roleid ~= 0 then
		LoginScene.Token.RoleID = msg.m_roleid;
		LoginScene.RequestRoleLogin();
	else
		LoginScene.RequestCreateRole();
	end
end

function LoginScene.RequestRoleLogin()
	local msg = {
		m_AccountID = LoginScene.Token.AccountID,
		m_RoleID = LoginScene.Token.RoleID,
		m_randstr = LoginScene.Token.AccountToken,
		m_info = nil,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_ROLE_LOGIN, PBMessage.GMRoleLogin, msg);
end

function LoginScene.OnRoleLoginReturn(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_FullRoleInfo, evt);
	if msg ~= nil then
		if msg.id > 0 then
			Log.Info("OnRoleLoginReturn: role id is " .. msg.id .. ',name is ' .. msg.name);
			SharedVariable.SelfInfo.FullInfo = msg;
			SharedVariable.SelfInfo.ID = msg.id;
			SharedVariable.SelfInfo.AccountID = msg.accountid;
			Player.SetFullInfo(msg);
			SceneManager.Goto(SceneName.HallScene);
			-- HallScene.RequestPlayerInFb();
		else
			Log.Info("OnRoleLoginReturn: role login error caused by \' msg.id<=0\' ");
			UIManager.CloseWindow(UIName.UI_SceneLoad);
		end
	else
		Log.Info("OnRoleLoginReturn: role login error caused by nil msg.");
		UIManager.CloseWindow(UIName.UI_SceneLoad);
	end
end

function LoginScene.RequestCreateRole()
	local msg = {};
	msg.m_AccountID = LoginScene.Token.AccountID;
	msg.m_info = nil;
	msg.m_NickName = LoginScene.Token.AccountID;
	msg.m_HeadPhotoUrl = "http://d.hiphotos.baidu.com/zhidao/pic/item/b8389b504fc2d562562d540ae51190ef76c66c34.jpg";
	msg.m_sex = 1;
	msg.m_UnionID = "10086";
	NetManager.SendEventToLogicServer(GameMessage.GM_ROLE_CREATE, PBMessage.GMRoleCreate, msg);
end

function LoginScene.OnCreateRoleReturn(evt)
	local obj = NetManager.DecodeMsg(PBMessage.GMRoleCreateReturn, evt);
	if obj ~= nil then
		if obj.m_Result == 0 then
			LoginScene.RequestRoleLogin();
		else
			UIManager.CloseWindow(UIName.UI_SceneLoad);
			Log.Info("OnCreateRoleReturn: role create error , m_Result = " .. obj.m_Result);
		end
	else
		UIManager.CloseWindow(UIName.UI_SceneLoad);
		Log.Info("OnCreateRoleReturn: role create error caused by nil msg.");
	end
end 
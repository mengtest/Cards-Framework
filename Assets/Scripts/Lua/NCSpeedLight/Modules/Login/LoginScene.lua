-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: LoginScene.lua
-- Describle:  登录场景
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
LoginScene =
{
	Token = {
		AccountID,
		AccountToken,
		LatestArea,
		RoleID,
	},
	Name = SceneType.LoginScene,
	LoginRecord = nil,
	IsInitialized = false,
	ReconnectToLoginServerTimer = nil,
	DisconnectTimeStamp = 0,
	LogicServerIP = nil,
	LoginServerPort = nil,
};

function LoginScene.Initialize()
	if LoginScene.IsInitialized == false then
		LoginScene.IsInitialized = true;
		LoginScene.OpenLoginRecord();
	end
end

function LoginScene.Begin()
	AssetManager.LoadScene(SceneType.LoginScene);
	NetManager.RegisterEvent(GameMessage.GM_VERSION_RETURN, LoginScene.OnVerifyVersionReturn);
	NetManager.RegisterEvent(GameMessage.GM_ACCOUNT_VERIFY_RETURN, LoginScene.OnLoginReturn);
	NetManager.RegisterEvent(GameMessage.GM_ACCOUNT_CREATE_RETURN, LoginScene.OnRegisterReturn);
	NetManager.RegisterEvent(GameMessage.GM_CHOOSE_AREA_RETURN, LoginScene.OnChoseAreaReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLELIST_RETURN, LoginScene.OnAccountRolesReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLE_LOGIN_RETURN, LoginScene.OnRoleLoginReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLE_CREATE_RETURN, LoginScene.OnCreateRoleReturn);
	LoginScene.RequestVerifyVersion()
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

function LoginScene.OpenLoginRecord()
	local path = Constants.DATA_PATH .. "Config/LoginRecord.bytes";
	local buffer = Utility.OpenFile(path);
	if buffer == nil then
		Log.Error("LoginScene.OpenLoginRecord: Can not open login record file,is this file exists?  " .. path);
	else
		local record = NetManager.DecodePB(PBMessage.CFG_LoginRecord, buffer);
		if record == false then
			Log.Error("LoginScene.OpenLoginRecord: decode login record error");
		else
			LoginScene.LoginRecord = record;
			for i = 1, # record.loginInfo do
				Log.Info("LoginScene.OpenLoginRecord: recorded account: " .. record.loginInfo[i].account .. ",password: " .. record.loginInfo[i].password);
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
		for i = 1, # LoginScene.LoginRecord.loginInfo do
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
		for i = 1, # LoginScene.LoginRecord.loginInfo do
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
		for i = # LoginScene.LoginRecord.loginInfo, 1, - 1 do
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

function LoginScene.RequestVerifyVersion()
	Log.Info("LoginScene.RequestVerifyVersion: Send verify version msg,current version is " .. SharedVariable.Version);
	local msg = {
		version = SharedVariable.Version;
	}
	NetManager.SendEventToLoginServer(GameMessage.GM_VERIFY_VERSION, PBMessage.GM_VerifyVersion, msg)
end

function LoginScene.OnVerifyVersionReturn(evt)
	local obj = NetManager.DecodeMsg(PBMessage.GM_VerifyVersionReturn, evt)
	if obj.result == 0 then
		UIManager.OpenWindow("Login/ui_normalLogin")
		Log.Info("LoginScene.OnVerifyVersionReturn: sccuss.");
	else
		Log.Error("LoginScene.OnVerifyVersionReturn: version doesn\'t match,can not enter game,please update.");
		UIManager.OpenTipsDialog("版本不匹配，无法进入游戏");
	end
end

function LoginScene.RequestLogin(account, password)
	local msg =
	{
		m_AccountName = account,
		m_Password = password,
		platform = 0,
		accountLogInfo =
		{
			platformID = 1,
			ditchID = "2",
			version = "1.0.1",
			accountID = 99988254,
			macAddress = "4D6MDJJ",
			deviceUUID = "547SFHBSDFHESYHTRY",
		}
	};
	NetManager.SendEventToLoginServer(GameMessage.GM_ACCOUNT_VERIFY, PBMessage.GM_AccountRequest, msg);
	UIManager.OpenWindow(UIType.UI_SceneLoad);
end

function LoginScene.OnLoginReturn(evt)
	UIManager.CloseProgressDialog();
	local obj = NetManager.DecodeMsg(PBMessage.GM_AccountReturn, evt)
	if obj.m_Result == 0 then
		Log.Info("LoginScene.OnLoginReturn: 账号验证成功");
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
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		UIManager.OpenTipsDialog("账号密码错误");
	elseif obj.m_Result == 2 then
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		UIManager.OpenTipsDialog("验证错误");
	elseif obj.m_Result == 3 then
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		UIManager.OpenTipsDialog("此账号已暂时冻结");
	elseif obj.m_Result == 4 then
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		UIManager.OpenTipsDialog("账号长度不符合");
	elseif obj.m_Result == 5 then
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		UIManager.OpenTipsDialog("密码长度不符合");
	elseif obj.m_Result == 6 then
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		UIManager.OpenTipsDialog("此账号已永久冻结");
	else
		UIManager.CloseWindow(UIType.UI_SceneLoad);
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
		UIManager.CloseWindow("Login/ui_register")
		UIManager.OpenWindow("Login/ui_normalLogin")
	elseif obj.m_Result == 1 then
		UIManager.OpenTipsDialog("存在账号")
		-- 保存账号信息至本地
		LoginScene.AddLoginRecord(LoginScene.currentAccount, LoginScene.currentPassword);
		UIManager.CloseWindow("Login/ui_register")
		UIManager.OpenWindow("Login/ui_normalLogin")
	elseif obj.m_Result == 2 then
		UIManager.OpenTipsDialog("账号长度不符合")
	elseif obj.m_Result == 3 then
		UIManager.OpenTipsDialog("密码长度不符合")
	elseif obj.m_Result == 4 then
		UIManager.OpenTipsDialog("是关键字")
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
		Log.Info("LoginScene.OnChoseAreaReturn：选区成功,开始连接逻辑服务器");
		Log.Info("LoginScene.OnChoseAreaReturn: logic server ip is " .. obj.m_ServerIP);
		Log.Info("LoginScene.OnChoseAreaReturn: logic server port is " .. obj.m_PortNumber);
		LoginScene.LogicServerIP = obj.m_ServerIP;
		LoginScene.LoginServerPort = obj.m_PortNumber;
		NetManager.ConnectTo(ServerType.Logic, LoginScene.LogicServerIP, LoginScene.LoginServerPort, LoginScene.OnConnectLogicServer, LoginScene.OnDisconnectLogicServer, LoginScene.OnReconnectLogicServer);
	else
		Log.Info("LoginScene.OnChoseAreaReturn：选区失败");
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		UIManager.OpenTipsDialog("选区失败");
	end
end

function LoginScene.OnConnectLogicServer(connection)
	Log.Info("LoginScene.OnConnectLogicServer: 成功连接至逻辑服务器");
	UIManager.CloseProgressDialog();
	LoginScene.RequestAccountRoles();
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.OnConnectToLogicServer();
	end
end

function LoginScene.OnDisconnectLogicServer(connection)
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.OnDisconnectFromLogicServer();
	end
	LoginScene.DisconnectTimeStamp = Time.realtimeSinceStartup;
	local option = ProgressDialogOption.New();
	option.Content = "网络异常，重新连接中...";
	UIManager.OpenProgressDialog(option);
	connection:Reconnect();
	Log.Info("LoginScene.OnDisconnectLogicServer: 逻辑服务器异常,启动重连,时间戳：" .. tostring(LoginScene.DisconnectTimeStamp));
end

function LoginScene.OnReconnectLogicServer(connection)
	UIManager.CloseProgressDialog();
	Log.Info("LoginScene.OnReconnectLogicServer: 成功重连至逻辑服务器,耗时：" .. tostring(Time.realtimeSinceStartup - LoginScene.DisconnectTimeStamp) .. "s");
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.OnReconnectToLogicServer();
	end
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
			Log.Info("LoginScene.OnRoleLoginReturn: role id is " .. msg.id .. ',name is ' .. msg.name);
			SharedVariable.SelfInfo.FullInfo = msg;
			SharedVariable.SelfInfo.ID = msg.id;
			SharedVariable.SelfInfo.AccountID = msg.accountid;
			Player.SetFullInfo(msg);
			SceneManager.GotoScene(SceneType.HallScene);
			-- HallScene.RequestPlayerInFb();
		else
			Log.Info("LoginScene.OnRoleLoginReturn: role login error caused by \' msg.id<=0\' ");
			UIManager.CloseWindow(UIType.UI_SceneLoad);
		end
	else
		Log.Info("LoginScene.OnRoleLoginReturn: role login error caused by nil msg.");
		UIManager.CloseWindow(UIType.UI_SceneLoad);
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
			UIManager.CloseWindow(UIType.UI_SceneLoad);
			Log.Info("LoginScene.OnCreateRoleReturn: role create error , m_Result = " .. obj.m_Result);
		end
	else
		UIManager.CloseWindow(UIType.UI_SceneLoad);
		Log.Info("LoginScene.OnCreateRoleReturn: role create error caused by nil msg.");
	end
end 
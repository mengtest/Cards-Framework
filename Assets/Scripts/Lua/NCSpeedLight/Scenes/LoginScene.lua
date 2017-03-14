LoginScene = {};

function LoginScene:New()
	o = {};
	setmetatable(o, self);
	self.__index = self;
	self.Name = SceneType.LoginScene;
	return o;
end

function LoginScene:Instance()
	return self;
end

function LoginScene:OnInit()
	LoginScene:OpenLoginRecord();
end

function LoginScene:Begin()
	NetManager.RegisterEvent(211, OnVerifyVersionReturn)
	NetManager.RegisterEvent(203, OnLoginReturn)
	NetManager.RegisterEvent(205, OnRegisterReturn)
	
	LoginScene:RequestVerifyVersion()
end

function LoginScene:Update()
end

function LoginScene:End()
	NetManager.UnregisterEvent(211, OnVerifyVersionReturn)
	NetManager.UnregisterEvent(203, OnLoginReturn)
	NetManager.UnregisterEvent(205, OnRegisterReturn)
end

function LoginScene:OpenLoginRecord()
	local path = NCSpeedLight.SharedVariable.DATA_PATH .. "Config/LoginRecord.bytes";
	local buffer = Utility.OpenFile(path);
	if buffer == nil then
		Log.Error('Can not open login record file,is this file exists?  ' .. path);
	else
		local record = NetManager.DecodePB('LoginRecord', buffer);
		if record == false then
			Log.Error('Decode login record fail.')
		else
			self.LoginRecord = record;
			for i = 1, # record.loginInfo do
				Log.Info("Recorded Account: " .. record.loginInfo[i].account .. ",Password: " .. record.loginInfo[i].password);
			end
		end
	end
end

function LoginScene:GetLoginRecord()
	return self.LoginRecord;
end

function LoginScene:UpdateLoginRecord(accoutnStr, passwordStr)
	
	local path = NCSpeedLight.SharedVariable.DATA_PATH .. "Config/LoginRecord.bytes";
	
	local info = {
		loginInfo =
		{
			{
				account = accoutnStr,
				password = passwordStr,
			}
		}
	}
	
	if self.LoginRecord ~= nil then
		for i = 1, # self.LoginRecord.loginInfo do
			if i > 2 then break end
			info.loginInfo[i + 1] = {
				account = self.LoginRecord.loginInfo[i].account,
				password = self.LoginRecord.loginInfo[i].password,
			};
		end
	end
	self.LoginRecord = info;
	local buffer = NetManager.EncodePB('LoginRecord', info);
	Utility.SaveFile(path, buffer);
end

function LoginScene:RequestVerifyVersion()
	Log.Info("LoginScene: Send verify version msg,current version is " .. UrlKeeper.GetVersion())
	local msg = {
		version = UrlKeeper.GetVersion()
	}
	local buffer = NetManager.EncodeMsg("GM_VerifyVersion", msg)
	NetManager.SendEvent(210, buffer, 0, 1, ServerType.Login)
end

function OnVerifyVersionReturn(evt)
	local obj = NetManager.DecodeMsg("GM_VerifyVersionReturn", evt)
	if obj.result == 0 then
		UIManager.OpenWindow("Login/ui_normalLogin")
	else
		Log.Info("LoginScene: Version doesn't match,can not enter game,please update.");
	end
end

function LoginScene:RequestLogin(account, password)
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
	}
	buffer = NetManager.EncodeMsg('GM_AccountRequest', msg);
	NetManager.SendEvent(202, buffer, 0, 1, ServerType.Login)
end

function OnLoginReturn(evt)
	local obj = NetManager.DecodeMsg("GM_AccountReturn", evt)
	if obj.m_Result == 0 then
		UIManager.OpenTipsDialog("登录成功")
	elseif obj.m_Result == 1 then
		UIManager.OpenTipsDialog("账号密码错误")
	elseif obj.m_Result == 2 then
		UIManager.OpenTipsDialog("验证错误")
	elseif obj.m_Result == 3 then
		UIManager.OpenTipsDialog("此账号已暂时冻结")
	elseif obj.m_Result == 4 then
		UIManager.OpenTipsDialog("账号长度不符合")
	elseif obj.m_Result == 5 then
		UIManager.OpenTipsDialog("密码长度不符合")
	elseif obj.m_Result == 6 then
		UIManager.OpenTipsDialog("此账号已永久冻结")
	else
	end
end

function LoginScene:RequestRegister(account, password)
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
	local buffer = NetManager.EncodeMsg("GM_AccountCreate", msg)
	NetManager.SendEvent(204, buffer, 0, 1, ServerType.Login)
end

function LoginScene.OnRegisterReturn(evt)
	local obj = NetManager.DecodeMsg("GM_AccountCreateReturn", evt)
	if obj.m_Result == 0 then
		UIManager.OpenTipsDialog("创建成功")
	elseif obj.m_Result == 1 then
		UIManager.OpenTipsDialog("存在账号")
	elseif obj.m_Result == 2 then
		UIManager.OpenTipsDialog("账号长度不符合")
	elseif obj.m_Result == 3 then
		UIManager.OpenTipsDialog("密码长度不符合")
	elseif obj.m_Result == 4 then
		UIManager.OpenTipsDialog("是关键字")
	else
	end
end
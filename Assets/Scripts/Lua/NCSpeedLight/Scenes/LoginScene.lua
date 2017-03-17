LoginScene =
{
	Token = {
		AccountID,
		AccountToken,
		LatestArea,
		RoleID,
	}
};

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
	NetManager.RegisterEvent(GameMessage.GM_VERSION_RETURN, LoginScene.OnVerifyVersionReturn);
	NetManager.RegisterEvent(GameMessage.GM_ACCOUNT_VERIFY_RETURN, LoginScene.OnLoginReturn);
	NetManager.RegisterEvent(GameMessage.GM_ACCOUNT_CREATE_RETURN, LoginScene.OnRegisterReturn);
	NetManager.RegisterEvent(GameMessage.GM_CHOOSE_AREA_RETURN, LoginScene.OnChoseAreaReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLELIST_RETURN, LoginScene.OnAccountRolesReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLE_LOGIN_RETURN, LoginScene.OnRoleLoginReturn);
	NetManager.RegisterEvent(GameMessage.GM_ROLE_CREATE_RETURN, LoginScene.OnCreateRoleReturn);
	LoginScene:RequestVerifyVersion()
end

function LoginScene:Update()
end

function LoginScene:End()
	NetManager.UnregisterEvent(GameMessage.GM_VERSION_RETURN, LoginScene.OnVerifyVersionReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ACCOUNT_VERIFY_RETURN, LoginScene.OnLoginReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ACCOUNT_CREATE_RETURN, LoginScene.OnRegisterReturn);
	NetManager.UnregisterEvent(GameMessage.GM_CHOOSE_AREA_RETURN, LoginScene.OnChoseAreaReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ROLELIST_RETURN, LoginScene.OnAccountRolesReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ROLE_LOGIN_RETURN, LoginScene.OnRoleLoginReturn);
	NetManager.UnregisterEvent(GameMessage.GM_ROLE_CREATE_RETURN, LoginScene.OnCreateRoleReturn);
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

function LoginScene:AddLoginRecord(accountStr, passwordStr, latestAreaStr, latestRoleIDStr)
	if LoginScene:ExistRecord(accountStr) then
		return
	end
	local info = {
		loginInfo =
		{
			{
				account = accountStr,
				password = passwordStr,
				latestArea = latestAreaStr,
				latestRoleID = latestRoleIDStr,
			}
		}
	}
	if self.LoginRecord ~= nil then
		for i = 1, # self.LoginRecord.loginInfo do
			if i > 2 then break end
			info.loginInfo[i + 1] = {
				account = self.LoginRecord.loginInfo[i].account,
				password = self.LoginRecord.loginInfo[i].password,
				latestArea = self.LoginRecord.loginInfo[i].latestArea,
				latestRoleID = self.LoginRecord.loginInfo[i].latestRoleID,
			};
		end
	end
	self.LoginRecord = info;
	LoginScene:SaveLoginRecordFile();
end

function LoginScene:ExistRecord(accountStr)
	if self.LoginRecord ~= nil then
		for i = 1, # self.LoginRecord.loginInfo do
			local info = self.LoginRecord.loginInfo[i];
			if info ~= nil and info.account == accountStr then
				return true;
			end
		end
	else
		return false;
	end
end

function LoginScene:RemoveLoginRecord(accountStr, passwordStr)
	if self.LoginRecord ~= nil then
		for i = # self.LoginRecord.loginInfo, 1, - 1 do
			local item = self.LoginRecord.loginInfo[i];
			if item.account == accountStr and item.password == passwordStr then
				table.remove(self.LoginRecord.loginInfo, i);
				break;
			end
		end
	end
	LoginScene:SaveLoginRecordFile();
end

function LoginScene:SaveLoginRecordFile()
	local path = NCSpeedLight.SharedVariable.DATA_PATH .. "Config/LoginRecord.bytes";
	local buffer = NetManager.EncodePB('LoginRecord', self.LoginRecord);
	Utility.SaveFile(path, buffer);
end

function LoginScene:RequestVerifyVersion()
	Log.Info("LoginScene: Send verify version msg,current version is " .. SharedVariable.Version);
	local msg = {
		version = SharedVariable.Version;
	}
	local buffer = NetManager.EncodeMsg("GM_VerifyVersion", msg)
	NetManager.SendEvent(GameMessage.GM_VERIFY_VERSION, buffer, 0, 1, ServerType.Login)
end

function LoginScene.OnVerifyVersionReturn(evt)
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
	NetManager.SendEvent(GameMessage.GM_ACCOUNT_VERIFY, buffer, 0, 1, ServerType.Login)
	local option = ProgressDialogOption:New();
	option.AutoClose = true;
	option.Timeout = 10;
	option.Content = '正在登录中...';
	option.OnAutoClose = function()
		UIManager.OpenTipsDialog('请求超时，请检查设备的网络状况');
	end;
	UIManager.OpenProgressDialog(option);
end

function LoginScene.OnLoginReturn(evt)
	UIManager.CloseProgressDialog();
	local obj = NetManager.DecodeMsg("GM_AccountReturn", evt)
	if obj.m_Result == 0 then
		UIManager.OpenTipsDialog("登录成功");
		local loginScene = LoginScene:Instance();
		
		-- 记录至内存中
		loginScene.Token = {};
		loginScene.Token.AccountID = obj.m_AccountID;
		loginScene.Token.AccountToken = obj.m_RandStr;
		loginScene.Token.LatestArea = obj.m_lastloginServerID;
		
		-- 保存至本地
		LoginScene:AddLoginRecord(loginScene.currentAccount, loginScene.currentPassword, obj.m_lastloginServerID);
		
		-- 请求选区
		LoginScene:RequestChooseArea();
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
	NetManager.SendEvent(GameMessage.GM_ACCOUNT_CREATE, buffer, 0, 1, ServerType.Login)
end

function LoginScene.OnRegisterReturn(evt)
	local obj = NetManager.DecodeMsg("GM_AccountCreateReturn", evt)
	if obj.m_Result == 0 then
		UIManager.OpenTipsDialog("创建成功")
		-- 保存账号信息至本地
		local loginScene = LoginScene:Instance();
		LoginScene:AddLoginRecord(loginScene.currentAccount, loginScene.currentPassword);
		UIManager.CloseWindow("Login/ui_register")
		UIManager.OpenWindow("Login/ui_normalLogin")
	elseif obj.m_Result == 1 then
		UIManager.OpenTipsDialog("存在账号")
		-- 保存账号信息至本地
		local loginScene = LoginScene:Instance();
		LoginScene:AddLoginRecord(loginScene.currentAccount, loginScene.currentPassword);
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

function LoginScene:RequestChooseArea()
	local loginScene = LoginScene:Instance();
	local msg = {
		m_Account = loginScene.Token.AccountID,
		m_AreaID = loginScene.Token.LatestArea,
		m_RandStr = loginScene.Token.AccountToken,
	};
	local buffer = NetManager.EncodeMsg('GM_ChooseArea', msg);
	NetManager.SendEvent(GameMessage.GM_CHOOSE_AREA, buffer, 0, 1, ServerType.Login);
end

function LoginScene.OnChoseAreaReturn(evt)
	local obj = NetManager.DecodeMsg('GM_ChooseAreaReturn', evt);
	if obj.m_Result == 0 then
		UIManager.OpenTipsDialog('选区成功');
		local option = ProgressDialogOption:New();
		option.AutoClose = true;
		option.Timeout = 10;
		option.Content = '连接服务器中...';
		option.OnAutoClose = function()
			UIManager.OpenTipsDialog('请求超时，请检查设备的网络状况');
		end;
		UIManager.OpenProgressDialog(option);
		Log.Info("Logic server ip is " .. obj.m_ServerIP);
		Log.Info("Logic server port is " .. obj.m_PortNumber);
		NetManager.CreateConnection(ServerType.Logic, obj.m_ServerIP, obj.m_PortNumber, LoginScene.OnConnectLogicServer, LoginScene.OnDisconnectLogicServer);
	else
		UIManager.OpenTipsDialog('选区失败');
	end
end

function LoginScene.OnConnectLogicServer(connection)
	UIManager.CloseProgressDialog();
	UIManager.OpenTipsDialog("成功连接至逻辑服务器");
	-- SceneManager:GotoScene(SceneType.HallScene);
	LoginScene.RequestAccountRoles();
end

function LoginScene.OnDisconnectLogicServer(connection)
	UIManager.OpenTipsDialog("已经断开与逻辑服务器的连接");
end

function LoginScene.RequestAccountRoles()
	local loginScene = LoginScene:Instance();
	local msg = {
		m_accountID = loginScene.Token.AccountID,
		m_area = loginScene.Token.LatestArea,
	};
	local buffer = NetManager.EncodeMsg('GMRoleListRequest', msg);
	NetManager.SendEvent(GameMessage.GM_ROLELIST_REQUEST, buffer, 0, 1, ServerType.Logic)
end

function LoginScene.OnAccountRolesReturn(evt)
	local obj = NetManager.DecodeMsg('GMRoleListEx', evt);
	if obj.m_roleid ~= 0 then
		local loginScene = LoginScene:Instance();
		loginScene.Token.RoleID = obj.m_roleid;
		LoginScene.RequestRoleLogin();
	else
		LoginScene.RequestCreateRole();
	end
end

function LoginScene.RequestRoleLogin()
	local loginScene = LoginScene:Instance();
	local msg = {
		m_AccountID = loginScene.Token.AccountID,
		m_RoleID = loginScene.Token.RoleID,
		m_randstr = loginScene.Token.AccountToken,
		m_info = nil,
	};
	local buffer = NetManager.EncodeMsg('GMRoleLogin', msg);
	NetManager.SendEvent(GameMessage.GM_ROLE_LOGIN, buffer, 0, 1, ServerType.Logic);
end

function LoginScene.OnRoleLoginReturn(evt)
	local obj = NetManager.DecodeMsg('GM_FullRoleInfo', evt);
	if obj ~= nil then
		if obj.id > 0 then
			Log.Info("OnRoleLoginReturn,id is " .. obj.id .. ',name is ' .. obj.name);
			SelfInfo.FullInfo = info;
			SelfInfo.ID = obj.id;
			SelfInfo.AccountID = obj.accountid;
			SceneManager:GotoScene(SceneType.HallScene);
		else
			Log.Error('Role login fail.');
		end
	else
		Log.Error('Role login fail.');
	end
-- Helper.Log ("hzh: ReturnRoleLogin");
-- 			SceneType tempSceneType = CustomGame.GetSingleton().GetCurrentSceneType;
-- 			if(tempSceneType == SceneType.RoleSelect)
-- 			{
-- 				return;
-- 			}
-- 			NetWorkEventEx<NetPacket> param = varPacket as NetWorkEventEx<NetPacket>;
-- 			PBMessage.GM_FullRoleInfo tempResult = GameClient.DeserializeProtoBuf<PBMessage.GM_FullRoleInfo> (param.GetData());
-- 			if (tempResult != null) 
-- 			{
-- 				if(tempResult.id > 0)
-- 				{
-- 					Helper.Log ("NCMJ :"+tempResult.id);

-- 					LoginAccount.GetSingleton().SaveLastLoginRole(tempResult.id);
-- 					LoginAccount.GetSingleton().WriteLoginInfo();
--                     ModelManager.GetSingleton().DestroyAllModel();

--                     PlayerManager.GetSingleton().InitHeroData(tempResult);
--                     ModelManager.GetSingleton().InitModel();
--                     Player tempHero = PlayerManager.GetSingleton().pCurPlayer;
--                     if (tempHero != null)
--                     {
--                         tempHero.pNickName = GameApplicationInformation.GetSingleton().TGetNickName();
--                         string tempHeadPhotoUrl = GameApplicationInformation.GetSingleton().TGetHeadImageUrl(40);
--                         if (string.IsNullOrEmpty(tempHeadPhotoUrl))
--                         {
--                             tempHeadPhotoUrl = GameApplicationInformation.GetSingleton().TGetDefaultHeadImageUrl();
--                         }
--                         tempHero.pHeadPhotoUrl = tempHeadPhotoUrl;
-- 						if (tempResult.headPhotoUrl != tempHero.pHeadPhotoUrl) 
-- 						{
-- 							PBMessage.GM_Player_changeSex tempData = new PBMessage.GM_Player_changeSex ();
-- 							tempData.sex = GameApplicationInformation.GetSingleton().TGetSex();
--                             tempData.head = 0;
-- 							tempData.frame = 0;
-- 							tempData.headurl = tempHero.pHeadPhotoUrl;
-- 							tempHero.NofityPlayerEvent(new PlayerEventEx<PBMessage.GM_Player_changeSex> (PlayerEventType.PE_UI_GenderPortraitFrame_request , tempData));
-- 						}
-- 						if (tempResult.nickName !=  tempHero.pNickName)
-- 						{
-- 							PBMessage.GMRoleNameReturn tempDataName = new PBMessage.GMRoleNameReturn ();
-- 							tempDataName.Name = tempHero.pNickName;
-- 							//	tempDataName.result = 2;
-- 							tempDataName.type = 2;

-- 							tempHero.NofityPlayerEvent (new PlayerEventEx<PBMessage.GMRoleNameReturn> (PlayerEventType.PE_UI_ChangeName_request , tempDataName));
-- 						}

--                         //	tempHero.SendMessageEmpty ((int)GameMessage.GM_COMMON_PLAYER_LOGIN_REQUEST);
--                         //	tempHero.SendMessageEmpty ((int)GameMessage.GM_COMMON_IP_CLIENT_REQUEST);

--                         GameApplicationInformation.GetSingleton().TRoleLogin(1, (int)tempHero.pRoomCard, tempHero.pTypeId.ToString(),
--                             tempHero.pShowName, 1, "1", false, GameApplicationInformation.GetSingleton().TGetSex(), 
--                             0, 0, 0, (int)tempHero.pGold);
--                         GameApplicationInformation.GetSingleton().GetRoleID(tempResult.id.ToString());

--                         RongCloudChat tempRcc = RongCloudChat.GetSingleton();
--                         tempRcc.StartCoroutine(tempRcc.RequestToken(tempResult.id.ToString(), tempHero.pName, tempHeadPhotoUrl));
--                     }

--                     if (tempSceneType == SceneType.MainScene)
--                     {
--                         WindowManager.GetSingleton().CloseAllDialogs();
--                         Helper.Log("hzh:onCity");

--                         //请求进入游戏场景;
--                         GameClient tempClient = ClientManager.GetManager().GetClient(ClientManager.ClientId.Logic);
--                         if (tempClient != null)
--                         {
--                             tempClient.SendMessageEmpty((int)GameMessage.GM_REQUEST_LOGIN_SCENE);
--                         }
--                         return;
--                     }

--                     WindowManager.GetSingleton().CloseAllDialogs();
-- 					//Wait.Begin(Localization.Get("load text 1"), 15, TimeOut);

-- 					if(tempSceneType == SceneType.Login)
-- 					{
-- 						CustomGame.GetSingleton().GotoScene(SceneType.MainScene);
-- 					}

-- 					ServerTimer.GetSingleton().InitNetWork();
--                     Wait.Stop();
-- 				}
-- 				else
-- 				{
-- 					// 角色登录失败，可能本地记录上次登录的角色，服务器已经不存在了;
-- 					WindowManager.GetSingleton().OpenSmallTipsDialog(Localization.Get("login fail"));
-- 					//CustomGame.GetSingleton().GotoScene(SceneType.RoleSelect);
-- 				}

-- 			}
end

function LoginScene.RequestCreateRole()
	local loginScene = LoginScene:Instance();
	local msg = {
		m_AccountID = loginScene.Token.AccountID,
		m_info = nil,
		m_NickName = 'hello world',
		m_HeadPhotoUrl = 'qq.com',
		m_sex = 1,
		m_UnionID = '10086',
	};
	local buffer = NetManager.EncodeMsg('GMRoleCreate', msg);
	NetManager.SendEvent(GameMessage.GM_ROLE_CREATE, buffer, 0, 1, ServerType.Logic);
end

function LoginScene.OnCreateRoleReturn(evt)
	local obj = NetManager.DecodeMsg('GMRoleCreateReturn', evt);
	if obj ~= nil then
		if obj.m_Result == 0 then
			LoginScene.RequestRoleLogin();
		else
			Log.Error('Create role error!');
		end
	else
		Log.Error('decode role create msg error!');
	end
end
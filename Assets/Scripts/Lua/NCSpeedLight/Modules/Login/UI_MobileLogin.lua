UI_MobileLogin = {
	transform = nil,
	gameObject = nil,
}

local this = UI_MobileLogin;

function UI_MobileLogin.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MobileLogin.Start()
	UIHelper.SetButtonEvent(this.transform, "Btn_Wechat", UI_MobileLogin.OnClickWechat);
	UIHelper.SetButtonEvent(this.transform, "Btn_Vistor", UI_MobileLogin.OnClickVistor);
end

function UI_MobileLogin.OnClickWechat()
	ShareSDKAdapter.AuthWechat(UI_MobileLogin.OnAuthCallback);
end

function UI_MobileLogin.OnClickVistor()
end

function UI_MobileLogin.OnAuthCallback(ret, authInfo)
	LoginScene.WechatAuth = {
		openID = authInfo.openID,
		expiresIn = tonumber(authInfo.expiresIn),
		userGender = authInfo.userGender,
		tokenSecret = authInfo.tokenSecret,
		userID = authInfo.userID,
		unionID = authInfo.unionID,
		expiresTime = tonumber(authInfo.expiresTime),
		userName = authInfo.userName,
		token = authInfo.token,
		userIcon = authInfo.userIcon,
	};
	if ret == ShareSDKAdapter.RetType.Cancel then
		UIManager.OpenTipsDialog("取消授权");
	elseif ret == ShareSDKAdapter.RetType.Fail then
		UIManager.OpenTipsDialog("授权失败");
	elseif ret == ShareSDKAdapter.RetType.Success then
		UIManager.OpenTipsDialog("授权成功");
		LoginScene.SaveWechatAuthInfo();
		LoginScene.RequestLogin(authInfo.unionID, "AllPlatform");
	end
end

function UI_MobileLogin.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
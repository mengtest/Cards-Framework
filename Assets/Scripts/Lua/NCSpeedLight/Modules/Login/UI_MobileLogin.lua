UI_MobileLogin = {
	transform = nil,
	gameObject = nil,
	AuthInfo = nil,
}

local this = UI_MobileLogin;

function UI_MobileLogin.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MobileLogin.Start()
	UIHelper.SetButtonEvent(this.transform, "Btn_QQ",
	function(obj)
	end);
	UIHelper.SetButtonEvent(this.transform, "Btn_Wechat", UI_MobileLogin.OnClickWechat);
	UIHelper.SetButtonEvent(this.transform, "Btn_Vistor",
	function(obj)
	end);
end


function UI_MobileLogin.OnClickWechat(obj)
	-- ShareSDKAdapter.AuthWechat(UI_MobileLogin.OnAuthCallback);
	-- return;
	UI_MobileLogin.AuthInfo = ShareSDKAdapter.GetWechatAuthInfo();
	if UI_MobileLogin.AuthInfo == nil then
		-- 获取不到用户信息，则拉起平台登录界面
		ShareSDKAdapter.AuthWechat(UI_MobileLogin.OnAuthCallback);
	else
		-- 直接请求登录
		LoginScene.RequestLogin(UI_MobileLogin.AuthInfo.unionID, "AllPlatform");
	end
end


function UI_MobileLogin.OnAuthCallback(ret, authInfo)
	UI_MobileLogin.AuthInfo = authInfo;
	if ret == ShareSDKAdapter.RetType.Cancel then
		UIManager.OpenTipsDialog("取消授权");
	elseif ret == ShareSDKAdapter.RetType.Fail then
		UIManager.OpenTipsDialog("授权失败");
	elseif ret == ShareSDKAdapter.RetType.Success then
		UIManager.OpenTipsDialog("授权成功");
		LoginScene.RequestLogin(UI_MobileLogin.AuthInfo.unionID, "AllPlatform");
	end
end

function UI_MobileLogin.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
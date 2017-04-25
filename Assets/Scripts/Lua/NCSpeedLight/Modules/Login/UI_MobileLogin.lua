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
	UIHelper.SetButtonEvent(this.transform, "Btn_QQ",
	function(obj)
	end);
	UIHelper.SetButtonEvent(this.transform, "Btn_Wechat",
	function(obj)
		ShareSDKAdapter.AuthWechat(function(...)
			UIManager.OpenTipsDialog("微信授权成功");
		end);
	end);
	UIHelper.SetButtonEvent(this.transform, "Btn_Vistor",
	function(obj)
	end);
end

function UI_MobileLogin.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
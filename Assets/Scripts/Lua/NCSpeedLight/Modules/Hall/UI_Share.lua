UI_Share = {
}

local transform;
local gameObject;

function UI_Share.Awake(go)
	gameObject = go;
	transform = go.transform;
end

function UI_Share.Start()
	UIHelper.SetButtonEvent(transform, "Bg/Close", UI_Share.OnClickClose);
	UIHelper.SetButtonEvent(transform, "Button/Wechat",
	function(obj)
		ShareSDKAdapter.ShareWechatFriend(nil);
	end);
	UIHelper.SetButtonEvent(transform, "Button/WechatMoments",
	function(obj)
		ShareSDKAdapter.ShareWechatMoment(nil);
	end);
end

function UI_Share.OnClickClose(go)
	UIManager.CloseWindow(UIType.UI_Share);
end 
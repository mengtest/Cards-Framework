-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_Share.lua
-- Describle:  
-- Created By:  Wells Hsu
-- DateTime:  2017/05/24 15:44:38
-- Modify History:
--
-----------------------------------------------
UI_Share = {
	transform = nil,
	gameObject = nil,
	ShareWithScreenshot = false,
};

local this = UI_Share;

-- Called by mono
function UI_Share.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	UI_Share.ShareWithScreenshot = false;
end

-- Use this for initialization
function UI_Share.Start()	
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", UI_Share.OnClickClose);
	UIHelper.SetButtonEvent(this.transform, "Button/Wechat", UI_Share.OnClickShareFriend);
	UIHelper.SetButtonEvent(this.transform, "Button/WechatMoments", UI_Share.OnClickShareMoment);
end

-- Use this for destruction
function UI_Share.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_Share.OnClickClose(go)
	UIManager.CloseWindow(UIName.UI_Share);
end

function UI_Share.OnClickShareFriend(go)
	if UI_Share.ShareWithScreenshot then
		ShareSDKAdapter.ShareWechatFriendWithScreenshot(nil);
	else
		ShareSDKAdapter.ShareWechatFriend(nil);
	end
end

function UI_Share.OnClickShareMoment(go)
	if UI_Share.ShareWithScreenshot then
		ShareSDKAdapter.ShareWechatMomentWithScreenshot(nil);
	else
		ShareSDKAdapter.ShareWechatMoment(nil);
	end
end 
UI_GetRoomCardHint = {
	transform = nil,
	gameObject = nil,
	RequestJsonCo = nil,
	AgentID = nil,
	AgentWechatID = nil,
}

local this = UI_GetRoomCardHint;

function UI_GetRoomCardHint.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_GetRoomCardHint.Start()
	UIHelper.SetButtonEvent(this.transform, "Button", UI_GetRoomCardHint.OnClickClose);
	UIHelper.SetButtonEvent(this.transform, "CopyWX_Btn", UI_GetRoomCardHint.OnClickCopy);
	this.RequestJsonCo = coroutine.start(UI_GetRoomCardHint.RequestJson);
end

function UI_GetRoomCardHint.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_GetRoomCardHint.OnClickClose()
	UIManager.CloseWindow(UIName.UI_GetRoomCardHint);
end

function UI_GetRoomCardHint.OnClickCopy()
	UIManager.OpenTipsDialog("复制微信号成功");
	ClipboardUtils.Copy(this.AgentWechatID);
end

function UI_GetRoomCardHint.RequestJson()
	if Constants.WECHAT_URL == nil then return end;
	local url = nil;
	if Constants.WX_UNION_ID ~= nil then
		url = Constants.WECHAT_URL .. "act=click_get&uid=" .. Constants.WX_UNION_ID;
	else
		url = Constants.WECHAT_URL .. "act=click_get&uid=";
	end
	local www = UnityEngine.WWW(url);
	coroutine.www(www);
	if www.error ~= nil then
		Log.Error("RequestJson: www error: " .. www.error);
		return;
	end
	if www.isDone then
		local obj = NetManager.DecodeJson(www.bytes);
		if obj == nil or obj == false then return Log.Error("RequestJson: decode json error"); end;
		this.AgentID = obj["agenid"];
		this.AgentWechatID = obj["agenweixin"];
		UIHelper.SetLabelText(this.transform, "Label_1", this.AgentID);
		UIHelper.SetLabelText(this.transform, "Label_2", this.AgentWechatID);
	end
end 
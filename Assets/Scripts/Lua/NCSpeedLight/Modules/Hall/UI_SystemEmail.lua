UI_SystemEmail = {
	transform = nil,
	gameObject = nil,
	EmailTransform = nil;
}

local this = UI_SystemEmail;

function UI_SystemEmail.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	EmailTransform = this.transform:Find("Right/Email").transform;
	UI_SystemEmail.InitMailView();
end

function UI_SystemEmail.Start()
	UIHelper.SetButtonEvent(this.transform, "Bg/Close", function()
		UIManager.CloseWindow(UIName.UI_SystemEmail);
	end);
	UIHelper.SetButtonEvent(this.transform, "Bg/Close_2", function()
		UIHelper.SetActiveState(EmailTransform, false);
		UIHelper.SetActiveState(this.transform, "Left", true);
		UIHelper.SetActiveState(this.transform, "Bg/Close", true);
		UIHelper.SetActiveState(this.transform, "Bg/Close_2", false);
	end);
end

function UI_SystemEmail.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	EmailTransform = nil;
end

-- 初始化邮件
function UI_SystemEmail.InitMailView()
	if HallScene.MailData == nil then
		UIHelper.SetActiveState(this.transform, "Right/EmailNull", true);
		UIHelper.SetActiveState(this.transform, "Right/ContentNull", false);
	else
		UIHelper.SetActiveState(this.transform, "Right/EmailNull", false);
		UIHelper.SetActiveState(this.transform, "Right/ContentNull", true);
		local Parent = this.transform:Find("Left/ScrollView/UIGrid");
		local Clone = Parent:Find("Item");
		local uiGrid = Parent:GetComponent(typeof(UIGrid));
		for i = 1, #HallScene.MailData do
			local mailData = HallScene.MailData[i];
			local name = mailData.subject;
			local id = mailData.gmid;
			-- 0 已读  1 未读
			local isRead = mailData.state == 0;
			local itemObj = NGUITools.AddChild(Parent.gameObject, Clone.gameObject);
			local item = itemObj.transform;
			if isRead then
				UIHelper.SetActiveState(item, "Read", isRead);
				UIHelper.SetActiveState(item, "NotRead", not isRead);
				itemObj.name = tostring("9" .. i);
			else
				UIHelper.SetActiveState(item, "Read", isRead);
				UIHelper.SetActiveState(item, "NotRead", not isRead);
				itemObj.name = tostring("0" .. i);
			end
			itemObj:SetActive(true);
			UIHelper.SetButtonEvent(item, UI_SystemEmail.OnClickItemMail);
		end
		uiGrid:Reposition();
	end	
end

function UI_SystemEmail.OnClickItemMail(go)
	if go == nil then return end;
	local item = go.transform;
	UIHelper.SetActiveState(item, "Right/ContentNull", false);
	UIHelper.SetActiveState(item, "Read", true);
	UIHelper.SetActiveState(item, "NotRead", false);
	UIHelper.SetActiveState(this.transform, "Right/ContentNull", false);
	UIHelper.SetActiveState(EmailTransform, true);
	UIHelper.SetActiveState(this.transform, "Left", false);
	UIHelper.SetActiveState(this.transform, "Bg/Close", false);
	UIHelper.SetActiveState(this.transform, "Bg/Close_2", true);
	local number = string.sub(go.name, 2);
	local mailData = HallScene.MailData[tonumber(number)];
	local name = mailData.subject;
	local text = mailData.word;
	local time = mailData.time;
	local id = mailData.gmid;
	UIHelper.SetLabelText(EmailTransform, "Top/Name", name);
	UIHelper.SetLabelText(EmailTransform, "Content/Label", text);
	UIHelper.SetLabelText(EmailTransform, "Content/Time", time);
	-- 将状态置成已读
	mailData.state = 0;
	local msg = {
		gmid = id
	}
	NetManager.SendEventToLogicServer(GameMessage.GM_READ_MAIL_REQUEST, PBMessage.GM_MailOperate, msg);
	HallScene.MailRedPointState()
end 
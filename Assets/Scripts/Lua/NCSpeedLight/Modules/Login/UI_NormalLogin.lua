-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_NormalLogin.lua
-- Describle:  
-- Created By:  Wells Hsu
-- DateTime:  2017/05/24 21:02:33
-- Modify History:
--
-----------------------------------------------
UI_NormalLogin = {
	transform = nil,
	gameObject = nil,
	lbAccount = nil,
	ipPassword = nil,
	btnLogin = nil,
	btnRegister = nil,
	isRecordPanelOpen = nil,
	recordLoginInfo = {}
};

local this = UI_NormalLogin;

-- Called by mono
function UI_NormalLogin.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.isRecordPanelOpen = false;
end

-- Use this for initialization
function UI_NormalLogin.Start()
	this.lbAccount = this.transform:Find("Input (account)/Label"):GetComponent("UILabel");
	this.ipPassword = this.transform:Find("Input (password)"):GetComponent("UIInput");
	if LoginScene.LoginRecord ~= nil and #LoginScene.LoginRecord.loginInfo >= 1 then
		local firstInfo = LoginScene.LoginRecord.loginInfo[1];
		if this.lbAccount ~= nil then
			this.lbAccount.text = firstInfo.account;
		end
		if this.ipPassword ~= nil then
			this.ipPassword.value = firstInfo.password;
		end
	end
	UIHelper.SetButtonEvent(this.transform, "Btn/Button (login)", UI_NormalLogin.onClickLogin);
	UIHelper.SetButtonEvent(this.transform, "Btn/Button (regist)", UI_NormalLogin.onClickRegister);
	UIHelper.SetButtonEvent(this.transform, "Input (account)", UI_NormalLogin.onClickArrow);
end

-- Use this for destruction
function UI_NormalLogin.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_NormalLogin.OnPostReload()
end

function UI_NormalLogin.onClickLogin(go)
	if string.len(this.lbAccount.text) == 0 then
		UIManager.OpenTipsDialog("请输入账号");
		return;
	elseif string.len(this.ipPassword.value) == 0 then
		UIManager.OpenTipsDialog("请输入密码");
		return;
	end
	LoginScene.currentAccount = this.lbAccount.text;
	LoginScene.currentPassword = this.ipPassword.value;
	-- LoginScene:AddLoginRecord(this.lbAccount.text, this.ipPassword.value);
	LoginScene.RequestLogin(this.lbAccount.text, this.ipPassword.value);
end

function UI_NormalLogin.onClickRegister(go)
	UIManager.CloseWindow(UIName.UI_NormalLogin);
	UIManager.OpenWindow(UIName.UI_Register);
end

function UI_NormalLogin.onClickArrow(go)
	this.isRecordPanelOpen = not this.isRecordPanelOpen;
	if this.isRecordPanelOpen == true then
		this.recordLoginInfo = {};
		UI_NormalLogin.displayRecordPanel();
	else
		UI_NormalLogin.clearRecordPanel();
		this.recordLoginInfo = nil;
	end
end

function UI_NormalLogin.displayRecordPanel()
	local bg = this.transform:Find("Panel/Sprite"):GetComponent("UISprite");
	local panel = this.transform:Find("Panel/Accounts");
	local item = this.transform:Find("Panel/CloneAccount");
	local otherAccountItem = this.transform:Find("Panel/CloneAccount2");
	if LoginScene.LoginRecord ~= nil and LoginScene.LoginRecord.loginInfo ~= nil then
		if bg == nil or panel == nil or item == nil or otherAccountItem == nil then return end;
		local index = 0;
		for i = 1, #LoginScene.LoginRecord.loginInfo do
			local info = LoginScene.LoginRecord.loginInfo[i];
			local childItem = UnityEngine.GameObject.Instantiate(item);
			childItem:SetParent(panel);
			childItem.localPosition = UnityEngine.Vector3.zero;
			childItem.localScale = UnityEngine.Vector3.one;
			childItem.gameObject:SetActive(true);
			childItem.name = info.account;
			NCSpeedLight.UIHelper.SetLabelText(childItem, "Label", info.account);
			NCSpeedLight.UIHelper.SetButtonEvent(childItem, "Label", onClickAccountItem);
			NCSpeedLight.UIHelper.SetButtonEvent(childItem, "Delete", onClickDeleteItem);
			local delete = childItem:Find("Delete");
			local label = childItem:Find("Label");
			this.recordLoginInfo[i] = {childItem.gameObject, label.gameObject, delete.gameObject, info};
			index = i;
		end
		if index > 0 then
			bg.enabled = true;
			-- 其他账号按钮
			local otherAccountItemClone = UnityEngine.GameObject.Instantiate(otherAccountItem);
			otherAccountItemClone:SetParent(panel);
			otherAccountItemClone.localPosition = UnityEngine.Vector3.zero;
			otherAccountItemClone.localScale = UnityEngine.Vector3.one;
			otherAccountItemClone.gameObject:SetActive(true);
			UIHelper.SetButtonEvent(otherAccountItemClone, UI_NormalLogin.onClickOtherAccount);
			local grid = panel:GetComponent("UIGrid");
			if grid ~= nil then
				grid.enabled = true;
			end
			local bgHeight = UI_NormalLogin.getRecordPanelHeight(index);
			bg.height = bgHeight;
			index = index + 1;
			this.recordLoginInfo[index] = {otherAccountItemClone.gameObject, nil, nil, nil};
		else
			bg.enabled = false;
		end
	else
		bg.enabled = false;
	end
end

function UI_NormalLogin.getRecordPanelHeight(count)
	if count == 1 then
		return 130;
	elseif count == 2 then
		return 175;
	elseif count == 3 then
		return 220;
	else
		return 0;
	end
end

function UI_NormalLogin.clearRecordPanel()
	for i = 1, #this.recordLoginInfo do
		local item = this.recordLoginInfo[i];
		if item ~= nil and item[1] ~= nil then
			UnityEngine.GameObject.Destroy(item[1]);
		end
	end
end

function UI_NormalLogin.onClickAccountItem(go)
	this.isRecordPanelOpen = not this.isRecordPanelOpen;
	local info = UI_NormalLogin.TryGetLoginRecordInfo(go);
	if info ~= nill then
		if this.lbAccount ~= nil then
			this.lbAccount.text = info.account;
		end
		if this.ipPassword ~= nil then
			this.ipPassword.value = info.password;
		end
	end
	local alphaTweener = this.transform:Find("Panel/Sprite"):GetComponent("TweenAlpha");
	if alphaTweener ~= nil then
		alphaTweener:Play(false);
	end
	UI_NormalLogin.clearRecordPanel();
end

function UI_NormalLogin.onClickDeleteItem(go)
	local info = TryGetLoginRecordInfo(go);
	if info ~= nil then
		LoginScene.RemoveLoginRecord(info.account, info.password);
	end
	UI_NormalLogin.clearRecordPanel();
	this.isRecordPanelOpen = true;
	UI_NormalLogin.displayRecordPanel();
end

function UI_NormalLogin.onClickOtherAccount(go)
end

function UI_NormalLogin.TryGetLoginRecordInfo(go)
	UnityEngine.GameObject.Destroy(go);
	for i = 1, #this.recordLoginInfo do
		local info = this.recordLoginInfo[i];
		local item1 = info[1];
		local item2 = info[2];
		local item3 = info[3];
		local item4 = info[4];
		if item1 == go or item2 == go or item3 == go then
			return item4;
		end
	end
end 
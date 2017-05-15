-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_NormalLogin.lua
-- Describle:   
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_NormalLogin = {
}
local this = UI_NormalLogin;
local transform;
local gameObject;
local lbAccount;
local ipPassword;
local btnLogin;
local btnRegister;
local isRecordPanelOpen;
local recordLoginInfo = {
};
function UI_NormalLogin.New()
	return this;
end
function UI_NormalLogin.Awake(go)
	gameObject = go;
	transform = go.transform;
	isRecordPanelOpen = false;
end
function UI_NormalLogin.Start()
	lbAccount = transform:Find("Input (account)/Label"):GetComponent("UILabel");
	ipPassword = transform:Find("Input (password)"):GetComponent("UIInput");
	if LoginScene.LoginRecord ~= nil and #LoginScene.LoginRecord.loginInfo >= 1 then
		local firstInfo = LoginScene.LoginRecord.loginInfo[1];
		if lbAccount ~= nil then
			lbAccount.text = firstInfo.account;
		end
		if ipPassword ~= nil then
			ipPassword.value = firstInfo.password;
		end
	end
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Btn/Button (login)", onClickLogin);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Btn/Button (regist)", onClickRegister);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, "Input (account)", onClickArrow);
end
function UI_NormalLogin.OnEnable()
end
function UI_NormalLogin.OnDisable()
end
function UI_NormalLogin.Update()
end
function UI_NormalLogin.LateUpdate()
end
function UI_NormalLogin.OnDestroy()
end

function onClickLogin(go)
	if string.len(lbAccount.text) == 0 then
		UIManager.OpenTipsDialog("请输入账号");
		return;
	elseif string.len(ipPassword.value) == 0 then
		UIManager.OpenTipsDialog("请输入密码");
		return;
	end
	LoginScene.currentAccount = lbAccount.text;
	LoginScene.currentPassword = ipPassword.value;
	-- LoginScene:AddLoginRecord(lbAccount.text, ipPassword.value);
	LoginScene.RequestLogin(lbAccount.text, ipPassword.value);
end

function onClickRegister(go)
	UIManager.CloseWindow(UIName.UI_NormalLogin);
	UIManager.OpenWindow(UIName.UI_Register);
end

function onClickArrow(go)
	isRecordPanelOpen = not isRecordPanelOpen;
	if isRecordPanelOpen == true then
		recordLoginInfo = {};
		displayRecordPanel();
	else
		clearRecordPanel();
		recordLoginInfo = nil;
	end
end

function displayRecordPanel()
	local bg = transform:Find("Panel/Sprite"):GetComponent("UISprite");
	local panel = transform:Find("Panel/Accounts");
	local item = transform:Find("Panel/CloneAccount");
	local otherAccountItem = transform:Find("Panel/CloneAccount2");
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
			recordLoginInfo[i] = {childItem.gameObject, label.gameObject, delete.gameObject, info};
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
			NCSpeedLight.UIHelper.SetButtonEvent(otherAccountItemClone, onClickOtherAccount);
			local grid = panel:GetComponent("UIGrid");
			if grid ~= nil then
				grid.enabled = true;
			end
			local bgHeight = getRecordPanelHeight(index);
			bg.height = bgHeight;
			index = index + 1;
			recordLoginInfo[index] = {otherAccountItemClone.gameObject, nil, nil, nil};
		else
			bg.enabled = false;
		end
	else
		bg.enabled = false;
	end
end
function getRecordPanelHeight(count)
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
function clearRecordPanel()
	for i = 1, #recordLoginInfo do
		local item = recordLoginInfo[i];
		if item ~= nil and item[1] ~= nil then
			UnityEngine.GameObject.Destroy(item[1]);
		end
	end
end
function onClickAccountItem(go)
	isRecordPanelOpen = not isRecordPanelOpen;
	local info = TryGetLoginRecordInfo(go);
	if info ~= nill then
		if lbAccount ~= nil then
			lbAccount.text = info.account;
		end
		if ipPassword ~= nil then
			ipPassword.value = info.password;
		end
	end
	local alphaTweener = transform:Find("Panel/Sprite"):GetComponent("TweenAlpha");
	if alphaTweener ~= nil then
		alphaTweener:Play(false);
	end
	clearRecordPanel();
end
function onClickDeleteItem(go)
	local info = TryGetLoginRecordInfo(go);
	if info ~= nil then
		LoginScene.RemoveLoginRecord(info.account, info.password);
	end
	clearRecordPanel();
	isRecordPanelOpen = true;
	displayRecordPanel();
end
function onClickOtherAccount(go)
end
function TryGetLoginRecordInfo(go)
	UnityEngine.GameObject.Destroy(go);
	for i = 1, #recordLoginInfo do
		local info = recordLoginInfo[i];
		local item1 = info[1];
		local item2 = info[2];
		local item3 = info[3];
		local item4 = info[4];
		if item1 == go or item2 == go or item3 == go then
			return item4;
		end
	end
end 
-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_Register.lua
-- Describle:  
-- Created By:  Wells Hsu
-- DateTime:  2017/05/26 16:22:04
-- Modify History:
--
-----------------------------------------------
UI_Register = {
	transform = nil,
	gameObject = nil,
};

local this = UI_Register;

-- Called by mono
function UI_Register.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

-- Use this for initialization
function UI_Register.Start()
	this.ipAccount = this.transform:Find("Input (account)"):GetComponent('UIInput');
	this.ipPassword = this.transform:Find("Input (password)"):GetComponent('UIInput');
	this.ipPassword2 = this.transform:Find("Input (password2)"):GetComponent('UIInput');
	UIHelper.SetButtonEvent(this.transform, 'Button (back)', UI_Register.onClickBack)
	UIHelper.SetButtonEvent(this.transform, 'Button (submit)', UI_Register.onClickSubmit)
end

-- Use this for destruction
function UI_Register.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

-- Called when pre reload script.
function UI_Register.OnPreReload()
end

-- Called when post reload script.
function UI_Register.OnPostReload()
end

function UI_Register.onClickBack(go)
	UIManager.CloseWindow(UIName.UI_Register);
	UIManager.OpenWindow(UIName.UI_NormalLogin);
end

function UI_Register.onClickSubmit(go)
	if string.len(this.ipAccount.value) == 0 then
		UIManager.OpenTipsDialog("请输入账号")
		return
	elseif string.len(this.ipPassword.value) == 0 then
		UIManager.OpenTipsDialog("请输入密码")
		return
	elseif this.ipPassword.value ~= this.ipPassword2.value then
		UIManager.OpenTipsDialog("两次输入的账号不一致")
		return
	end
	LoginScene.currentAccount = this.ipAccount.value;
	LoginScene.currentPassword = this.ipPassword.value;
	LoginScene.RequestRegister(this.ipAccount.value, this.ipPassword.value)
end 
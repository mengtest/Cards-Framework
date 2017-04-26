-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_Register.lua
-- Describle:   
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_Register = {
}

local this = UI_Register
local transform
local gameObject
local ipAccount
local ipPassword
local ipPassword2

function UI_Register.New()
	return this
end

function UI_Register.Awake(go)
	gameObject = go
	transform = go.transform
end

function UI_Register.Start()
	ipAccount = transform:Find("Input (account)"):GetComponent('UIInput');
	ipPassword = transform:Find("Input (password)"):GetComponent('UIInput');
	ipPassword2 = transform:Find("Input (password2)"):GetComponent('UIInput');
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'Button (back)', this.onClickBack)
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'Button (submit)', this.onClickSubmit)
end

function UI_Register.OnEnable()
end

function UI_Register.OnDisable()
end

function UI_Register.Update()
end

function UI_Register.LateUpdate()
end

function UI_Register.OnDestroy()
end

function UI_Register.onClickBack(go)
	UIManager.CloseWindow(UIType.UI_Register);
	UIManager.OpenWindow(UIType.UI_NormalLogin);
end

function UI_Register.onClickSubmit(go)
	if string.len(ipAccount.value) == 0 then
		UIManager.OpenTipsDialog("请输入账号")
		return
	elseif string.len(ipPassword.value) == 0 then
		UIManager.OpenTipsDialog("请输入密码")
		return
	elseif ipPassword.value ~= ipPassword2.value then
		UIManager.OpenTipsDialog("两次输入的账号不一致")
		return
	end
	LoginScene.currentAccount = ipAccount.value;
	LoginScene.currentPassword = ipPassword.value;
	LoginScene.RequestRegister(ipAccount.value, ipPassword.value)
end



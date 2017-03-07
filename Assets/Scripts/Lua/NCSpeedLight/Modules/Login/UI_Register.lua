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

    UIHelper.SetButtonEvent(transform, 'Button (back)', this.onClickBack)
    UIHelper.SetButtonEvent(transform, 'Button (submit)', this.onClickSubmit)

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
    UIManager.CloseWindow("Login/ui_regist")
    UIManager.OpenWindow("Login/ui_normalLogin")
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
    LoginScene.RequestRegister(ipAccount.value, ipPassword.value)
end




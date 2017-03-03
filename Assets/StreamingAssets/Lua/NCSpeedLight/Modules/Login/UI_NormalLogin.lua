UI_NormalLogin = {
}

local this = UI_NormalLogin

local transform
local gameObject


local lbAccount
local ipPassword
local btnLogin
local btnRegister

function UI_NormalLogin.New()
    return this
end

function UI_NormalLogin.Awake(go)
    gameObject = go
    transform = go.transform
end 

function UI_NormalLogin.Start()
    lbAccount = transform:Find("Input (account)/Label"):GetComponent('UILabel');
    ipPassword = transform:Find("Input (password)"):GetComponent('UIInput');
    UIHelper.SetButtonEvent(transform, 'Btn/Button (login)', this.onClickLogin)
    UIHelper.SetButtonEvent(transform, 'Btn/Button (regist)', this.onClickRegister)
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

function UI_NormalLogin.onClickLogin(go)
    local option = UIManager.StandardDialogOption()
    option.Title = "提示"
    option.Content = "你确定登录吗？"
    option.OnClickOK = function(obj)
        print("OnClickOK")
    end
    UIManager.OpenStandardDialog(option)

    LoginScene.RequestLogin(lbAccount.text, ipPassword.value)
end

function UI_NormalLogin.onClickRegister(go)
    UIManager.CloseWindow("Login/ui_normalLogin")
    UIManager.OpenWindow("Login/ui_regist")
end


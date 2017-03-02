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

function UI_Register.onClickBack()
    UIManager.CloseWindow("Login/ui_regist")
    UIManager.OpenWindow("Login/ui_normalLogin")
end

function UI_Register.onClickSubmit()
    LoginScene.RequestRegister(ipAccount.value, ipPassword.value)
end




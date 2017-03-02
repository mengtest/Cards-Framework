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

    NetManager.Register(205,
    function(eventObj)
        print("OnRecv register return")
        local obj = protobuf.decode("GM_AccountCreateReturn", eventObj.LuaParam)
        print("GM_AccountReturn.m_Result=" .. obj.m_Result)
        print("GM_AccountReturn.m_AccountID=" .. obj.m_AccountID)
        print("GM_AccountReturn.m_AccountName=" .. obj.m_AccountName)
    end
    )
end

function UI_Register.OnEnable()
    print("UI_Register.OnEnable")
end

function UI_Register.OnDisable()
    print("UI_Register.OnDisable")
end

function UI_Register.Update()
end

function UI_Register.LateUpdate()
end

function UI_Register.OnDestroy()
    print("UI_Register.OnDestroy")
end

function UI_Register.onClickBack()
    UIManager.CloseWindow("Login/ui_regist")
    UIManager.OpenWindow("Login/ui_normalLogin")
end

function UI_Register.onClickSubmit()
    print("===== Start send register msg =====")
    print("AccountName: " .. ipAccount.value)
    print("Password: " .. ipPassword.value)

    local accountCreateRequest =
    {
        m_AccountName = ipAccount.value,
        m_Password = ipPassword.value,
        accountLogInfo =
        {
            platformID = 14546765,
            ditchID = "2",
            version = "1.0.1",
            accountID = 99988254,
            macAddress = "4D6MDJJ",
            deviceUUID = "547SFHBSDFHESYHTRY",
        }
    }

    local code = protobuf.encode("GM_AccountCreate", accountCreateRequest)
    NetManager.SendMsg(204, code, NetManager.ServerType.Login)

    print("===== Finish send register msg =====")
end




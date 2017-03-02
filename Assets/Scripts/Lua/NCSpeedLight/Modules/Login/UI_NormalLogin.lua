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

    NetEventManager.Instance:Register(203,
    function(eventObj)
        print("OnRecv login return")
        local obj = protobuf.decode("GM_AccountReturn", eventObj.LuaParam)
        print("GM_AccountReturn.m_Result=" .. obj.m_Result)
        print("GM_AccountReturn.m_AccountID=" .. obj.m_AccountID)
        print("GM_AccountReturn.m_RandStr=" .. obj.m_RandStr)
    end
    )

end

function UI_NormalLogin.OnEnable()
    print("UI_NormalLogin.OnEnable")
end

function UI_NormalLogin.OnDisable()
    print("UI_NormalLogin.OnDisable")
end

function UI_NormalLogin.Update()
end

function UI_NormalLogin.LateUpdate()
end

function UI_NormalLogin.OnDestroy()
    print("UI_NormalLogin.OnDestroy")
end

function UI_NormalLogin.onClickLogin()
    print("===== Start send login msg =====")
    print("AccountName: " .. lbAccount.text)
    print("Password: " .. ipPassword.value)

    local accountRequest =
    {
        m_AccountName = lbAccount.text,
        m_Password = ipPassword.value,
        platform = 2,
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

    local code = protobuf.encode("GM_AccountRequest", accountRequest)

    NetManager.SendNetPacket(202, code)

    print("===== Finish send login msg =====")
end

function UI_NormalLogin.onClickRegister()
    UIManager.CloseWindow("Login/ui_normalLogin")
    UIManager.OpenWindow("Login/ui_regist")
end


UI_Register = {
}

local this = UI_Register

local transform
local gameObject


local lbAccount
local ipPassword
local btnLogin
local btnRegister

function UI_Register.New()
    return this
end

function UI_Register.Awake(go)
    gameObject = go
    transform = go.transform
end 

function UI_Register.Start()
    lbAccount = transform:Find("Input (account)/Label"):GetComponent('UILabel');
    ipPassword = transform:Find("Input (password)"):GetComponent('UIInput');
    UIHelper.SetButtonEvent(transform, 'Btn/Button (login)', this.onClickLogin)
    UIHelper.SetButtonEvent(transform, 'Btn/Button (regist)', this.onClickRegister)

    NetManager.Register(203,
    function(eventObj)
        print("OnRecv login return")
        local obj = protobuf.decode("GM_AccountReturn", eventObj.Buffer)
        print("GM_AccountReturn.m_Result=" .. obj.m_Result)
        print("GM_AccountReturn.m_AccountID=" .. obj.m_AccountID)
        print("GM_AccountReturn.m_RandStr=" .. obj.m_RandStr)
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

function UI_Register.onClickLogin()
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

function UI_Register.onClickRegister()

end


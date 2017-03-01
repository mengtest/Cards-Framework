NormalLogin = {
}

local this = NormalLogin

local transform
local gameObject


local ipAccount
local ipPassword
local btnLogin
local btnRegister

function NormalLogin.New()
    return this
end

function NormalLogin.Awake(go)
    gameObject = go
    transform = go.transform
end 

function NormalLogin.Start()
    ipAccount = transform:Find("Input (account)/Label"):GetComponent('UILable');
    ipPassword = transform:Find("Input (password)"):GetComponent('UIInput');
    NCSpeedLight.UIHelper.AddButtonEvent(transform, 'Btn/Button (login)', this.onClickLogin)
    NCSpeedLight.UIHelper.AddButtonEvent(transform, 'Btn/Button (regist)', this.onClickRegister)

    NetEventManager.Register(203,
    function(eventObj)
        print("OnRecv login return")
        local obj = protobuf.decode("GM_AccountReturn", eventObj.Buffer)
        print("GM_AccountReturn.m_Result=" .. obj.m_Result)
        print("GM_AccountReturn.m_AccountID=" .. obj.m_AccountID)
        print("GM_AccountReturn.m_RandStr=" .. obj.m_RandStr)
    end
    )

end

function NormalLogin.OnEnable()
    print("NormalLogin.OnEnable")
end

function NormalLogin.OnDisable()
    print("NormalLogin.OnDisable")
end

function NormalLogin.Update()
end

function NormalLogin.LateUpdate()
end

function NormalLogin.OnDestroy()
    print("NormalLogin.OnDestroy")
end

function NormalLogin.onClickLogin()
    print("===== Start send login msg =====")
    --    print("AccountName: " .. ipAccount.text)
    --    print("Password: " .. ipPassword.label)

    local accountRequest =
    {
        m_AccountName = "sdfsdg",
        m_Password = "fdsagdsa",
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

    NCSpeedLight.NetManager.SendNetPacket(202, code)

    print("===== Finish send login msg =====")
end

function NormalLogin.onClickRegister()
    print("onClickRegister")
end


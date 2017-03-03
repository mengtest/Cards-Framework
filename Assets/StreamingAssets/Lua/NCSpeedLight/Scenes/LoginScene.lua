LoginScene = {
}

local this = LoginScene
local instance

function LoginScene.New()
    return this
end

function LoginScene.OnCreate(obj)
    instance = obj
end 

function LoginScene.Begin()
    NetManager.RegisterEvent(211, this.OnVerifyVersionReturn)
    NetManager.RegisterEvent(203, this.OnLoginReturn)
    NetManager.RegisterEvent(205, this.OnRegisterReturn)

    this.RequestVerifyVersion()
end

function LoginScene.Update()
end

function LoginScene.End()
    NetManager.UnregisterEvent(211, this.OnVerifyVersionReturn)
    NetManager.UnregisterEvent(203, this.OnLoginReturn)
    NetManager.UnregisterEvent(205, this.OnRegisterReturn)
end

function LoginScene.RequestVerifyVersion()
    print("LoginScene: Send verify version msg,current version is " .. UrlKeeper.GetVersion())
    local msg = {
        version = UrlKeeper.GetVersion()
    }
    local buffer = protobuf.encode("GM_VerifyVersion", msg)
    NetManager.SendEvent(210, buffer, 0, 1, NetManager.ServerType.Login)
end

function LoginScene.OnVerifyVersionReturn(evt)
    local obj = protobuf.decode("GM_VerifyVersionReturn", evt.LuaParam)
    if obj.result == 0 then
        UIManager.OpenWindow("Login/ui_normalLogin")
    else
        print("LoginScene: Version doesn't match,can not enter game,please update.");
    end
end

function LoginScene.RequestLogin(account, password)
    local msg =
    {
        m_AccountName = account,
        m_Password = password,
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
    local buffer = protobuf.encode("GM_AccountRequest", msg)
    NetManager.SendEvent(202, buffer, 0, 1, NetManager.ServerType.Login)
end

function LoginScene.OnLoginReturn(evt)
    local obj = protobuf.decode("GM_AccountReturn", evt.LuaParam)
    if obj.m_Result == 0 then
        print("Login success.")
    else
        print("Login fail.")
    end
end

function LoginScene.RequestRegister(account, password)
    local msg =
    {
        m_AccountName = account,
        m_Password = password,
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
    local buffer = protobuf.encode("GM_AccountCreate", msg)
    NetManager.SendEvent(204, buffer, 0, 1, NetManager.ServerType.Login)
end

function LoginScene.OnRegisterReturn(evt)
    local obj = protobuf.decode("GM_AccountCreateReturn", evt.LuaParam)
    if obj.m_Result == 0 then
        print("Register success.")
    else
        print("Register fail.")
    end
end
LoginScene = { };

local this = LoginScene;

function this:New()
    o = { };
    setmetatable(o, self);
    self.__index = self;
    self.Name = SceneType.LoginScene;
    return o;
end

function this:OnInit()
end 

function this:Begin()
    NetManager:RegisterEvent(211, OnVerifyVersionReturn)
    NetManager:RegisterEvent(203, OnLoginReturn)
    NetManager:RegisterEvent(205, OnRegisterReturn)

    RequestVerifyVersion()
end

function this:Update()
end

function this:End()
    NetManager:UnregisterEvent(211, OnVerifyVersionReturn)
    NetManager:UnregisterEvent(203, OnLoginReturn)
    NetManager:UnregisterEvent(205, OnRegisterReturn)
end

function RequestVerifyVersion()
    print("LoginScene: Send verify version msg,current version is " .. UrlKeeper.GetVersion())
    local msg = {
        version = UrlKeeper.GetVersion()
    }
    local buffer = protobuf.encode("GM_VerifyVersion", msg)
    NetManager:SendEvent(210, buffer, 0, 1, ServerType.Login)
end

function OnVerifyVersionReturn(evt)
    local obj = protobuf.decode("GM_VerifyVersionReturn", evt.LuaParam)
    if obj.result == 0 then
        UIManager.OpenWindow("Login/ui_normalLogin")
    else
        print("LoginScene: Version doesn't match,can not enter game,please update.");
    end
end

function RequestLogin(account, password)
    local msg =
    {
        m_AccountName = account,
        m_Password = password,
        platform = 0,
        accountLogInfo =
        {
            platformID = 1,
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

function OnLoginReturn(evt)
    local obj = protobuf.decode("GM_AccountReturn", evt.LuaParam)
    if obj.m_Result == 0 then
        UIManager.OpenTipsDialog("登录成功")
    elseif obj.m_Result == 1 then
        UIManager.OpenTipsDialog("账号密码错误")
    elseif obj.m_Result == 2 then
        UIManager.OpenTipsDialog("验证错误")
    elseif obj.m_Result == 3 then
        UIManager.OpenTipsDialog("此账号已暂时冻结")
    elseif obj.m_Result == 4 then
        UIManager.OpenTipsDialog("账号长度不符合")
    elseif obj.m_Result == 5 then
        UIManager.OpenTipsDialog("密码长度不符合")
    elseif obj.m_Result == 6 then
        UIManager.OpenTipsDialog("此账号已永久冻结")
    else
    end
end

function RequestRegister(account, password)
    local msg =
    {
        m_AccountName = account,
        m_Password = password,
        accountLogInfo =
        {
            platformID = 1,
            ditchID = "2",
            version = "1.0.1",
            accountID = 99988254,
            macAddress = "4D6MDJJ",
            deviceUUID = "547SFHBSDFHESYHTRY",
        }
    }
    local buffer = protobuf.encode("GM_AccountCreate", msg)
    NetManager.SendEvent(204, buffer, 0, 1, ServerType.Login)
end

function LoginScene.OnRegisterReturn(evt)
    local obj = protobuf.decode("GM_AccountCreateReturn", evt.LuaParam)
    if obj.m_Result == 0 then
        UIManager.OpenTipsDialog("创建成功")
    elseif obj.m_Result == 1 then
        UIManager.OpenTipsDialog("存在账号")
    elseif obj.m_Result == 2 then
        UIManager.OpenTipsDialog("账号长度不符合")
    elseif obj.m_Result == 3 then
        UIManager.OpenTipsDialog("密码长度不符合")
    elseif obj.m_Result == 4 then
        UIManager.OpenTipsDialog("是关键字")
    else
    end
end
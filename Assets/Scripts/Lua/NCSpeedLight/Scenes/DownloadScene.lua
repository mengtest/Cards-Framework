jsonProcessor = require 'cjson'

DownloadScene = { };

local this = DownloadScene;

function this:New()
    o = { };
    setmetatable(o, self);
    self.__index = self;
    self.Name = SceneType.DownloadScene;
    return o;
end

function this:OnInit()
end 

function this:Begin()
    --    if UnityEngine.Application.platform == UnityEngine.RuntimePlatform.Android or UnityEngine.Application.platform == UnityEngine.RuntimePlatform.IPhonePlayer then
    --        UIManager.OpenWindow("Login/Tencent/QQWXBG")
    --    else
    NCSpeedLight.UIManager.OpenWindow("Login/ui_loginBk")
    --    end
    coroutine.start(CheckVersion)
end

function this:Update()
end

function this:End()
end

function CheckVersion()
    local url = UrlKeeper.JsonUrl()
    Log:Info('Request json url at ' .. url);
    local www = UnityEngine.WWW(url)

    local option = NCSpeedLight.UIManager.ProgressDialogOption()
    option.Content = "正在检查更新..."
    option.AutoClose = true
    option.Cancelable = false
    NCSpeedLight.UIManager.OpenProgressDialog(option)

    coroutine.www(www)
    coroutine.wait(0.5)
    NCSpeedLight.UIManager.CloseProgressDialog()

    -- if www.error ~= '' then
    -- 	UIManager.OpenTipsDialog('网络错误！')
    -- 	Log:Error('WWW Error: ' .. www.error);
    -- 	return;
    -- NCSpeedLight.end

    local str = tolua.tolstring(www.bytes)
    local json = jsonProcessor.decode(str)
    print("Account server ip is " .. json.accountserverip)
    print("Account server port is " .. json.accountserverport)

    NetManager:CreateConnection(ServerType.Login, json.accountserverip, json.accountserverport, OnConnectLoginServer, OnDisconnectLoginServer)
end


function OnConnectLoginServer(connection)
    NCSpeedLight.UIManager.OpenTipsDialog("成功连接至登录服务器")
    SceneManager:GotoScene(SceneType.LoginScene);
end

function OnDisconnectLoginServer(connection)
    NCSpeedLight.UIManager.OpenTipsDialog("已经断开与登录服务器的连接")
end
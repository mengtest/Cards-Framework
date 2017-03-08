jsonProcessor = require 'cjson'

DownloadScene = {
}

local this = DownloadScene
local instance

function DownloadScene.New()
    return this
end

function DownloadScene.OnCreate(obj)
    instance = obj
end 

function DownloadScene.Begin()
    --    if UnityEngine.Application.platform == UnityEngine.RuntimePlatform.Android or UnityEngine.Application.platform == UnityEngine.RuntimePlatform.IPhonePlayer then
    --        UIManager.OpenWindow("Login/Tencent/QQWXBG")
    --    else
    UIManager.OpenWindow("Login/ui_loginBk")
    --    end
    coroutine.start(this.CheckVersion)
end

function DownloadScene.Update()
end

function DownloadScene.End()
end

function DownloadScene.CheckVersion()
    local url = UrlKeeper.JsonUrl()
    print('Request json url at ' .. url)
    local www = UnityEngine.WWW(url)

    local option = UIManager.ProgressDialogOption()
    option.Content = "正在检查更新..."
    option.AutoClose = true
    option.Cancelable = false
    UIManager.OpenProgressDialog(option)

    coroutine.www(www)
    coroutine.wait(0.5)
    UIManager.CloseProgressDialog()

    local str = tolua.tolstring(www.bytes)
    local json = jsonProcessor.decode(str)
    print("Account server ip is " .. json.accountserverip)
    print("Account server port is " .. json.accountserverport)
    local listener = ServerConnection.Listener()
    listener.OnConnect = this.OnConnectLoginServer
    listener.OnDisconnect = this.OnDisconnectLoginServer
    NetManager.CreateConnection(NetManager.ServerType.Login, json.accountserverip, json.accountserverport, listener)
end


function DownloadScene.OnConnectLoginServer(connection)
    print("DownloadScene.OnConnectLoginServer()");
    UIManager.OpenTipsDialog("成功连接至登录服务器")
    SceneManager.GotoScene(Scene.Type.LoginScene)
end

function DownloadScene.OnDisconnectLoginServer(connection)
    print("DownloadScene.OnDisConnectLoginServer()");
    UIManager.OpenTipsDialog("已经断开与登录服务器的连接")
end
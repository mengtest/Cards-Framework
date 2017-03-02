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
    print("DownloadScene.OnCreate")
end 

function DownloadScene.Begin()
    if UnityEngine.Application.platform == UnityEngine.RuntimePlatform.Android or UnityEngine.Application.platform == UnityEngine.RuntimePlatform.IPhonePlayer then
        UIManager.OpenWindow("Login/Tencent/QQWXBG")
    else
        UIManager.OpenWindow("Login/ui_loginBk")
    end

    -- request json
    coroutine.start(this.CoReqJson)
end

function DownloadScene.Update()
end

function DownloadScene.End()
    print("DownloadScene.End()")
end

function DownloadScene.CoReqJson()
    local url = UrlKeeper.JsonUrl()
    print('Request json url at ' .. url)
    local www = UnityEngine.WWW(url)
    coroutine.www(www)
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
end

function DownloadScene.OnDisconnectLoginServer(connection)
    print("DownloadScene.OnDisConnectLoginServer()");
end
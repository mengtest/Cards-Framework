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
end

function DownloadScene.Update()
end

function DownloadScene.End()
    print("DownloadScene.End()")
end

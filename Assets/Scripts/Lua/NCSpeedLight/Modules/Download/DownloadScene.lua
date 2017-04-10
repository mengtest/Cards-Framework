-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: DownloadScene.lua
-- Describle:  处理资源更新相关逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
DownloadScene =
{
	Name = SceneType.DownloadScene,
	IsInitialized = false,
};

function DownloadScene.Initialize()
	if DownloadScene.IsInitialized == false then
		DownloadScene.IsInitialized = true;
	end
end

function DownloadScene.Begin()
	Log.Info("DownloadScene.Begin");
	AssetManager.LoadScene(DownloadScene.Name);
	--    if UnityEngine.Application.platform == UnityEngine.RuntimePlatform.Android or UnityEngine.Application.platform == UnityEngine.RuntimePlatform.IPhonePlayer then
	--        UIManager.OpenWindow("Login/Tencent/QQWXBG")
	--    else
	UIManager.OpenWindow("Login/ui_loginBk")
	--    end
	coroutine.start(DownloadScene.CheckVersion)
end

function DownloadScene.Update()
end

function DownloadScene.End()
	Log.Info("DownloadScene.Begin");
end

function DownloadScene.OnApplicationPause(status)
end

function DownloadScene.OnApplicationFocus(status)
end

function DownloadScene.CheckVersion()
	if SharedVariable.UseLocalhost == false then
		local url = SharedVariable.JsonUrl;
		Log.Info("DownloadScene.CheckVersion: Request json url at " .. url);
		local www = UnityEngine.WWW(url);
		local option = ProgressDialogOption:New();
		option.Content = "正在检查更新...";
		option.AutoClose = true;
		option.Cancelable = false;
		UIManager.OpenProgressDialog(option);
		coroutine.www(www);
		coroutine.wait(0.5);
		local error = www.error;
		if error ~= nil then
			Log.Error("DownloadScene.CheckVersion: WWW Error: " .. error);
			UIManager.CloseProgressDialog();
			UIManager.OpenTipsDialog("检查更新失败");
			return;
		end
		UIManager.CloseProgressDialog();
		local json = NetManager.DecodeJson(www.bytes);
		Log.Info("DownloadScene.CheckVersion: account server ip is " .. json.accountserverip);
		Log.Info("DownloadScene.CheckVersion: account server port is " .. json.accountserverport);
		local option = ProgressDialogOption:New();
		option.AutoClose = true;
		option.Timeout = 10;
		option.Content = "连接服务器中...";
		option.OnAutoClose = function()
			UIManager.OpenTipsDialog("请求超时，请检查设备的网络状况");
		end;
		UIManager.OpenProgressDialog(option);
		NetManager.CreateConnection(ServerType.Login, json.accountserverip, json.accountserverport, DownloadScene.OnConnectLoginServer, DownloadScene.OnDisconnectLoginServer);
	else
		Log.Info("DownloadScene.CheckVersion: account server ip is " .. SharedVariable.IP);
		Log.Info("DownloadScene.CheckVersion: account server port is " .. SharedVariable.PORT);
		local option = ProgressDialogOption:New();
		option.AutoClose = true;
		option.Timeout = 10;
		option.Content = "连接服务器中...";
		option.OnAutoClose = function()
			UIManager.OpenTipsDialog("请求超时，请检查设备的网络状况");
		end;
		UIManager.OpenProgressDialog(option);
		NetManager.CreateConnection(ServerType.Login, SharedVariable.IP, SharedVariable.PORT, DownloadScene.OnConnectLoginServer, DownloadScene.OnDisconnectLoginServer);
	end
end

function DownloadScene.OnConnectLoginServer(connection)
	UIManager.CloseProgressDialog();
	Log.Info("DownloadScene.OnConnectLoginServer: 连接至账号服务器");
	SceneManager.GotoScene(SceneType.LoginScene);
end

function DownloadScene.OnDisconnectLoginServer(connection)
	UIManager.CloseProgressDialog();
	Log.Info("DownloadScene.OnConnectLoginServer: 账号服务器异常");
	UIManager.OpenTipsDialog("账号服务器异常");
end 
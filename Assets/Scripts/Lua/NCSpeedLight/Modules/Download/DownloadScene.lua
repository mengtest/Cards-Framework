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
end

function DownloadScene.CheckVersion()
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
	json.accountserverip = SharedVariable.IP;
	json.accountserverport = SharedVariable.PORT;
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
end


function DownloadScene.OnConnectLoginServer(connection)
	UIManager.CloseProgressDialog();
	Log.Info("DownloadScene.OnConnectLoginServer: 成功连接至账号服务器");
	SceneManager.GotoScene(SceneType.LoginScene);
end

function DownloadScene.OnDisconnectLoginServer(connection)
	UIManager.CloseProgressDialog();
	UIManager.OpenTipsDialog("账号服务器异常");
end
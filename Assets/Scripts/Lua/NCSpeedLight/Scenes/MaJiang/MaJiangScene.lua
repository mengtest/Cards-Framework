MaJiangScene = {}

function MaJiangScene:Initialize()
	if self.Instance == nil then
		MaJiangScene:New();
	end
	return self.Instance;
end

function MaJiangScene:New()
	local o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.MaJiangScene;
	return o;
end

function MaJiangScene.Begin()
	AssetManager.LoadScene(SceneType.MaJiangScene);
	UIManager.OpenWindow(UIType.UI_MaJiang);
	UIManager.CloseAllWindowsExcept(UIType.UI_MaJiang);
	MaJiangScene.RegisterNetEvent();
end

function MaJiangScene.Update()
end

function MaJiangScene.End()
	MaJiangScene.UnRegisterNetEvent();
end

function MaJiangScene.RegisterNetEvent()
	NetManager.RegisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, MaJiangScene.ReceiveCloseRoom);
end

function MaJiangScene.UnRegisterNetEvent()
	NetManager.UnregisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, MaJiangScene.ReceiveCloseRoom);
end

function MaJiangScene.RequestCloseRoom()
	local msg =
	{
		m_RoleID = Player.Hero.Data.id,
		m_FBID = SharedVariable.FBInfo.m_FBID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MASTERCLOSEROOM_REQUEST, PBMessage.GM_LoginFBServer, msg);
end


function MaJiangScene.ReceiveCloseRoom(evt)
	Log.Info("MaJiangScene.ReceiveCloseRoom");
	local option = StandardDialogOption:New();
	option.OnClickOK =
	function()
		SceneManager.GotoScene(SceneType.HallScene);
	end;
	option.DoubleButton = false;
	option.Content = "房间已解散,点击确定退出房间";
	option.Title = "提  示";
	UIManager.OpenStandardDialog(option);
end
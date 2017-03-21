GameScene = {}

function GameScene:Initialize()
	if self.Instance == nil then
		GameScene:New();
	end
	return self.Instance;
end

function GameScene:New()
	local o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.GameScene;
	return o;
end

function GameScene.Begin()
	AssetManager.LoadScene(SceneType.GameScene);
	UIManager.CloseAllWindows();
	UIManager.OpenWindow(UIType.UI_MaJiang);
	GameScene.RegisterNetEvent();
end

function GameScene.Update()
end

function GameScene.End()
	GameScene.UnRegisterNetEvent();
end

function GameScene.RegisterNetEvent()
	NetManager.RegisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, GameScene.ReceiveCloseRoom);
end

function GameScene.UnRegisterNetEvent()
	NetManager.UnregisterEvent(GameMessage.GM_MASTERCLOSEROOM_RETURN, GameScene.ReceiveCloseRoom);
end

function GameScene.RequestCloseRoom()
	local msg =
	{
		m_RoleID = Player.Hero.Data.id,
		m_FBID = SharedVariable.FBInfo.m_FBID,
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_MASTERCLOSEROOM_REQUEST, PBMessage.GM_LoginFBServer, msg);
end


function GameScene.ReceiveCloseRoom(evt)
	Log.Info("GameScene.ReceiveCloseRoom");
	SceneManager.GotoScene(SceneType.HallScene);
end
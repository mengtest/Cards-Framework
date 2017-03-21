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
	UIManager.CloseAllWindows();
	AssetManager.LoadScene(SceneType.GameScene);
	UIManager.OpenWindow(UIType.UI_MaJiang);
end

function GameScene.Update()
end

function GameScene.End()
end
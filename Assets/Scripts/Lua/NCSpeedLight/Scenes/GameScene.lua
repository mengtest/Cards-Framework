GameScene = {}

function GameScene:Initialize()
	if self.Instance == nil then
		GameScene:New();
	end
	return self.Instance;
end

function GameScene:New()
	o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.GameScene;
	return o;
end

function GameScene.Begin()
	-- UIManager.CloseAllWindows();
	AssetManager.LoadScene(SceneType.GameScene);
end

function GameScene.Update()
end

function GameScene.End()
end
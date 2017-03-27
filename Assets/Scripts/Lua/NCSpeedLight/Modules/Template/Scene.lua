Scene = {}

function Scene:Initialize()
	if self.Instance == nil then
		Scene:New();
	end
	return self.Instance;
end

function Scene:New()
	o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.Scene;
	return o;
end

function Scene.Begin()
	AssetManager.LoadScene(SceneType.Scene);
end

function Scene.Update()
end

function Scene.End()
end

function Scene.OnLevelWasLoaded()
end
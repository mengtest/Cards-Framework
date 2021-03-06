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
	self.Instance.Name = SceneName.Scene;
	return o;
end

function Scene.Begin()
	AssetManager.LoadScene(SceneName.Scene);
end

function Scene.Update()
end

function Scene.End()
end

function Scene.OnLevelWasLoaded()
end

function Scene.OnApplicationPause(status)
end

function Scene.OnApplicationFocus(status)
end

function Scene.OnConnectToLogicServer()
end

function Scene.OnReconnectToLogicServer()
end

function Scene.OnDisconnectFromLogicServer()
end

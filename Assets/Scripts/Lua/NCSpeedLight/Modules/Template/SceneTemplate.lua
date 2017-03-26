SceneTemplate = {}

function SceneTemplate:Initialize()
	if self.Instance == nil then
		SceneTemplate:New();
	end
	return self.Instance;
end

function SceneTemplate:New()
	o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.SceneTemplate;
	return o;
end

function SceneTemplate.Begin()
	AssetManager.LoadScene(SceneType.SceneTemplate);
end

function SceneTemplate.Update()
end

function SceneTemplate.End()
end

function SceneTemplate.OnLevelWasLoaded()
end
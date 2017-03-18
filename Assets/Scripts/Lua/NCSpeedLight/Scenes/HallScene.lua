HallScene = {}

function HallScene:Initialize()
	if self.Instance == nil then
		HallScene:New();
	end
	return self.Instance;
end

function HallScene:New()
	o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.Name = SceneType.HallScene;
	return o;
end


function HallScene.Begin()
	UIManager.CloseAllWindows();
	UIManager.OpenWindow('Hall/UI_Main');
end

function HallScene.Update()
end

function HallScene.End()
end

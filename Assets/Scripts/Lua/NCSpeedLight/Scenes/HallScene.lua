HallScene = {}

function HallScene:New()
	o = {};
	setmetatable(o, self);
	self.__index = self;
	self.Name = SceneType.HallScene;
	return o;
end

function HallScene:OnInit()
end

function HallScene:Begin()
	UIManager.CloseAllWindows();
	UIManager.OpenWindow('Hall/UI_Main');
end

function HallScene:Update()
end

function HallScene:End()
end

UI_MJOperate = {
	transform = nil,
	gameObject = nil,
	OperateData = nil,
};
UI_MJOperate.__index = UI_MJOperate;
function UI_MJOperate.New()
	local obj = {};
	setmetatable(obj, UI_MJOperate);
	return obj;
end
function UI_MJOperate:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end
function UI_MJOperate:Start()
end
function UI_MJOperate:OnDestroy()
	self.transform = nil;
	self.gameObject = nil;
end
function UI_MJOperate:SetData(data)
	self.OperateData = data;
	self:InitView();
end
function UI_MJOperate:InitView()
	UIHelper.SetButtonEvent(self.transform, function(go)
		MJScene.RequestMJOperate(self.OperateData);
	end);
end 
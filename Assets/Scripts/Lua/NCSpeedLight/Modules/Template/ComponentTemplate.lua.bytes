ComponentTemplate = {
	transform = nil,
	gameObject = nil,
};
ComponentTemplate.__index = ComponentTemplate;
function ComponentTemplate.New()
	local obj = {};
	setmetatable(obj, ComponentTemplate);
	return obj;
end
function ComponentTemplate:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end
function ComponentTemplate:Start()
end
function ComponentTemplate:OnDestroy()
	self.transform = nil;
	self.gameObject = nil;
end 
UI_Template = {
	transform = nil,
	gameObject = nil,
}

local this = UI_Template;

function UI_Template.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_Template.Start()
end

function UI_Template.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
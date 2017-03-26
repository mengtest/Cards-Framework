SceneControllerTemplate = {
	transform = nil,
	gameObject = nil,
}

local this = SceneControllerTemplate;

function SceneControllerTemplate.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function SceneControllerTemplate.Start()
end

function SceneControllerTemplate.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
TipsDialog = {
}

local this = TipsDialog

local transform
local gameObject

function TipsDialog.New()
    return this
end

function TipsDialog.Awake(go)
    gameObject = go
    transform = go.transform
end 

function TipsDialog.Start()
end

function TipsDialog.OnEnable()
end

function TipsDialog.OnDisable()
end

function TipsDialog.Update()
end

function TipsDialog.LateUpdate()
end

function TipsDialog.OnDestroy()
end

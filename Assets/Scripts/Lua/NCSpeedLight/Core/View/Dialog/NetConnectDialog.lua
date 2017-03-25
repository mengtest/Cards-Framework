NetConnectDialog = {
}

local this = NetConnectDialog

local transform
local gameObject

function NetConnectDialog.New()
    return this
end

function NetConnectDialog.Awake(go)
    gameObject = go
    transform = go.transform
end 

function NetConnectDialog.Start()
end

function NetConnectDialog.OnEnable()
end

function NetConnectDialog.OnDisable()
end

function NetConnectDialog.Update()
end

function NetConnectDialog.LateUpdate()
end

function NetConnectDialog.OnDestroy()
end

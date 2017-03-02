ConfirmDialog = {
}

local this = ConfirmDialog

local transform
local gameObject

function ConfirmDialog.New()
    return this
end

function ConfirmDialog.Awake(go)
    gameObject = go
    transform = go.transform
end 

function ConfirmDialog.Start()
end

function ConfirmDialog.OnEnable()
end

function ConfirmDialog.OnDisable()
end

function ConfirmDialog.Update()
end

function ConfirmDialog.LateUpdate()
end

function ConfirmDialog.OnDestroy()
end




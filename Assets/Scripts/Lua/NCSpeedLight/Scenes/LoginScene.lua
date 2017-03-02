LoginScene = {
}

local this = LoginScene
local instance

function LoginScene.New()
    return this
end

function LoginScene.OnCreate(obj)
    instance = obj
    print("LoginScene.OnCreate()")
end 

function LoginScene.Begin()
    print("LoginScene.Begin()")
end

function LoginScene.Update()
end

function LoginScene.End()
    print("LoginScene.End()")
end

HallScene = {
}

local this = HallScene
local instance

function HallScene.New()
    return this
end

function HallScene.OnCreate(obj)
    instance = obj
    print("HallScene.OnCreate()")
end 

function HallScene.Begin()
    print("HallScene.Begin()")
end

function HallScene.Update()
end

function HallScene.End()
    print("HallScene.End()")
end

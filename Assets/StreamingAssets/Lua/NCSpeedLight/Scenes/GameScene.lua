GameScene = {
}

local this = GameScene
local instance

function GameScene.New()
    return this
end

function GameScene.OnCreate(obj)
    instance = obj
    print("GameScene.OnCreate()")
end 

function GameScene.Begin()
    print("GameScene.Begin()")
end

function GameScene.Update()
end

function GameScene.End()
    print("GameScene.End()")
end

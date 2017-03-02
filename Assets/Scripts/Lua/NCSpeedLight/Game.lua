-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Game.lua
-- Describle:  主入口函数。从这里开始lua逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

Game = {
}

local this = Game
local transform
local gameObject

function Game.New()
    return this
end

function Game.Awake(go)
    gameObject = go
    transform = go.transform
    this.Initialize()
end 

function Game.Start()
    SceneManager.GotoScene(Scene.Type.DownloadScene)
end

function Game.OnEnable()
    print("Game.OnEnable")
end

function Game.OnDisable()
    print("Game.OnDisable")
end

function Game.Update()
    NetManager.Update()
    SceneManager.Instance:Update()
end

function Game.LateUpdate()
end

function Game.OnDestroy()
    NetManager.Destroy()
end

function Game.Initialize()
    UnityEngine.Application.targetFrameRate = 30
    UnityEngine.Screen.sleepTimeout = UnityEngine.SleepTimeout.NeverSleep
    DBManager.Instance:Initialize()
    ResManager.Initialize()
    UIManager.Initialize()
    SceneManager.Initialize()
    NetManager.Initialize()
end

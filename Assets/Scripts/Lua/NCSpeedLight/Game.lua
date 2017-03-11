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

require 'NCSpeedLight.Utils.Define'

Game = { }

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

function Game.Update()
    NetManager.Update()
    SceneManager.Instance:Update()
end

function Game.OnDestroy()
    NetManager.Destroy()
end

function Game.Initialize()
    UnityEngine.Application.targetFrameRate = 30
    UnityEngine.Screen.sleepTimeout = UnityEngine.SleepTimeout.NeverSleep
    ResManager.Initialize()
    PersistentManager.Initialize()
    VersionManager.Initialize()
    UIManager.Initialize()
    SceneManager.Initialize()
    NetManager.Initialize()
    this.TestEvent()
end

function Game.TestEvent()
--    require 'NCSpeedLight.Core.Event.EvtProcessor'
--    require 'NCSpeedLight.Utils.Map'

    local processor = EvtProcessor:New();

    processor:Register(1, this.TestEventCallback1);
    processor:Register(1, this.TestEventCallback2);
    processor:Notify(1, 'Hello EvtProcessor');

    processor:Unregister(1, this.TestEventCallback1);
    processor:UnregisterAll();
    --    processor:N();
    processor:Notify(1, 'Hello EvtProcessor');

end

function Game.TestEventCallback1(param)
    print("Game.TestEventCallback1,param is " .. param);
end

function Game.TestEventCallback2(param)
    print("Game.TestEventCallback2,param is " .. param);
end

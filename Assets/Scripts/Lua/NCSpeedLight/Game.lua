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
    SceneManager:GotoScene(SceneType.DownloadScene);
end

function Game.Update()
    NetManager:Update();
    SceneManager:Update();
end

function Game.OnDestroy()
    NetManager:DeleteAllConnections()
end

function Game.Initialize()
    UnityEngine.Application.targetFrameRate = 30
    UnityEngine.Screen.sleepTimeout = UnityEngine.SleepTimeout.NeverSleep
    NCSpeedLight.ResManager.Initialize()
    NCSpeedLight.PersistentManager.Initialize()
    NCSpeedLight.VersionManager.Initialize()
    NCSpeedLight.UIManager.Initialize()
    SceneManager.Initialize()
    NetManager:Initialize()
    this.TestEvent()
    -- this.TestSceneManager()
end

function Game.TestEvent()

    local processor = EvtProcessor:New();
    local evtQ = EvtQueue:New(processor);

    evtQ:Add(1, this.TestEventCallback1);
    evtQ:Add(2, this.TestEventCallback2);
    processor:Notify(1, 'Hello EvtProcessor');
    processor:Notify(2, 'Hello 32525');
    -- evtQ:Remove(1, this.TestEventCallback1);
    evtQ:Clear();
    --    processor:N();
    processor:Notify(1, 'Hello EvtProcessor');
    processor:Notify(2, 'Hello 32525');

end

function Game.TestEventCallback1(param)
    print("Game.TestEventCallback1,param is " .. param);
end

function Game.TestEventCallback2(param)
    print("Game.TestEventCallback2,param is " .. param);
end

function Game.TestSceneManager()
    SceneManager:Initialize();
    SceneManager:GotoScene(SceneType.DownloadScene);
end

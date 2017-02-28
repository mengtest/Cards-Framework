-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Main.lua
-- Describle:  主入口函数。从这里开始lua逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

require 'NCSpeedLight/Utils/Define'

function Main()
    TestEvent()
    TestOpenWindow()
    --    TestLoadAsset()
    --    TestLuaBehaviour()
    --    TestProtobuf()
end

function TestEvent()
    GlobalEventManager.Register(2,
    function(eventObj)
        --        print("has received a message,id is " .. eventObj.ID)
        --        eventObj.Param:UnregisterAll()
    end
    )
    GlobalEventManager.Notify(2, GlobalEventManager, nil)
end

function TestOpenWindow()
    UIManager.OpenWindow("Login")
end

function TestLoadAsset()
    local ui = NCSpeedLight.ResManager.LoadAssetSync("UI/Login", "UnityEngine.GameObject")
    if ui then
        ui = UnityEngine.GameObject.Instantiate(ui);
    end
end

function TestLuaBehaviour()
    local go = UnityEngine.GameObject("TestLuaBehaviour")
    NCSpeedLight.LuaUtils.AddComponent('NCSpeedLight.LuaView', go);
end

Main()
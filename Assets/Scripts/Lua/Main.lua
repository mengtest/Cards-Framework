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
    GlobalEventManager.Register(2,
    function(eventObj)
        print("has received a message,id is " .. eventObj.EventID)
    end
    )
    local go = UnityEngine.GameObject()
    go.name = "hsu"
    local eventObj = NCSpeedLight.Event(2)
    GlobalEventManager.Notify(eventObj)

    UIManager.OpenWindow("Login")
    print(UIManager)
    print(ResManager)
    print(GlobalEventManager)
    --    local resManager = NCSpeedLight.ResManager.Instance;
    --    print(resManager)
    --    local ui = NCSpeedLight.ResManager.LoadAssetSync("UI/Login", "UnityEngine.GameObject")
    --    if ui then
    --        ui = UnityEngine.GameObject.Instantiate(ui);
    --    end
    --    NCSpeedLight.UIManager.OpenWindow("Login")
end

-- 场景切换通知
function OnLevelWasLoaded(level)
    collectgarbage("collect")
    Time.timeSinceLevelLoad = 0
end

Main()
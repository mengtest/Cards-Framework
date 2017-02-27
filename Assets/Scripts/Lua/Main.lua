-- 主入口函数。从这里开始lua逻辑
function Main()
    local globalEventManager = NCSpeedLight.GlobalEventManager.Instance;
    print(globalEventManager)

    globalEventManager:Register(2,
    function(eventObj)
        print("has received a message,id is " .. eventObj.EventID)
    end
    )
    local go = UnityEngine.GameObject()
    go.name = "hsu"
    local eventObj = NCSpeedLight.Event(2)
    globalEventManager:Notify(eventObj)

--    local resManager = NCSpeedLight.ResManager.Instance;
--    print(resManager)
--    local ui = NCSpeedLight.ResManager.LoadAssetSync("UI/Login", "UnityEngine.GameObject")
--    if ui then
--        ui = UnityEngine.GameObject.Instantiate(ui);
--    end
    NCSpeedLight.UIManager.OpenWindow("Login")
end

-- 场景切换通知
function OnLevelWasLoaded(level)
    collectgarbage("collect")
    Time.timeSinceLevelLoad = 0
end

Main()
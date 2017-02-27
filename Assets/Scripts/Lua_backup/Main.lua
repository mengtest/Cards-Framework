local test = require "Test"

-- 主入口函数。从这里开始lua逻辑
function Main()
    print("hello world!!!!!!")
    print("I am hsu")
--    local test = Test:new();
--    Test:TestCortinue()
end


-- 场景切换通知
function OnLevelWasLoaded(level)
    collectgarbage("collect")
    Time.timeSinceLevelLoad = 0
end
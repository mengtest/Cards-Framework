-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: IGlobalEventManager.lua
-- Describle:  应用程序全局事件处理器
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

IGlobalEventManager = { }
local this = IGlobalEventManager

function IGlobalEventManager.Instance()
    return this
end

function IGlobalEventManager.Register(id, func)
    GlobalEventManager.Instance:Register(id, func)
end

function IGlobalEventManager.Unregister(id, func)
    GlobalEventManager.Instance:Unregister(id, func)
end

function IGlobalEventManager.UnregisterAll()
    GlobalEventManager.Instance:UnregisterAll()
end

function IGlobalEventManager.Notify(id)
    this.Notify(id, nil, nil)
end

function IGlobalEventManager.Notify(id, tb, buffer)
    local eventObj = Evt()
    eventObj.ID = id
    eventObj.Param = tb
    eventObj.Buffer = buffer
    GlobalEventManager.Instance:Notify(eventObj)
end

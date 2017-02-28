-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: INetEventManager.lua
-- Describle:  网络事件处理器
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

INetEventManager = { }
local this = INetEventManager

function INetEventManager.Instance()
    return this
end

function INetEventManager.Register(id, func)
    NCSpeedLight.NetEventManager.Instance:Register(id, func)
end

function INetEventManager.Unregister(id, func)
    NCSpeedLight.NetEventManager.Instance:Unregister(id, func)
end

function INetEventManager.UnregisterAll()
    NCSpeedLight.NetEventManager.Instance:UnregisterAll()
end

function INetEventManager.Notify(id, tb, buffer)
    local eventObj = NCSpeedLight.Event()
    eventObj.ID = id
    eventObj.Param = tb
    eventObj.Buffer = buffer
    NCSpeedLight.NetEventManager.Instance:Notify(eventObj)
end

function INetEventManager.Notify(id, buffer)
    local eventObj = NCSpeedLight.Event()
    eventObj.ID = id
    eventObj.Param = nil
    eventObj.Buffer = buffer
    NCSpeedLight.NetEventManager.Instance:Notify(eventObj)
end
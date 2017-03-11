----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: EvtProcessor.lua
-- 	        // Describle:
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------

require 'NCSpeedLight.Core.Event.Evt'
require 'NCSpeedLight.Core.Event.EvtQueue'
EvtProcessor = { };

local this = EvtProcessor;

function this:New()
    o = { }
    setmetatable(o, self)
    self.__index = self
    self.m_Listeners = { }
    return o
end

function this:Register(id, func)
    local index = 1
    if self.m_Listeners[id] == nil then
        self.m_Listeners[id] = { }
    else
        local existIndex = this:EventIndex(id, func)
        if existIndex ~= -1 then
            return
        end
        index = #self.m_Listeners[id] + 1
    end
    self.m_Listeners[id][index] = func
end

function this:Unregister(id, func)
    if self.m_Listeners[id] == nil then
        return
    end
    local existIndex = self:EventIndex(id, func)
    if existIndex == -1 then return end
    table.remove(self.m_Listeners[id], existIndex)
end

function this:UnregisterAll()
    table.remove(self.m_Listeners)
end


function this:Notify(id, param)
    if self.m_Listeners[id] == nil then
        return
    end
    for k, v in pairs(self.m_Listeners[id]) do
        v(param)
    end
end

function this:EventIndex(id, func)
    if self.m_Listeners[id] == nil then
        return -1
    end
    for i = 1, #self.m_Listeners[id] do
        if self.m_Listeners[id][i] == func then
            return i
        end
    end
    return -1
end


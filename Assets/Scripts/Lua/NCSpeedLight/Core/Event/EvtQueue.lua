----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: EvtHandlerQueue.lua
-- 	        // Describle:
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------

EvtHandlerQueue = { m_Handlers, m_Processor };

local this = EvtHandlerQueue;

function this:New(evtProcessor)
    o = { };
    setmetatable(o, self);
    self.__index = self;
    self.count = 0;
    o.m_Handlers = Map:New();
    o.m_Processor = evtProcessor;
    return o;
end

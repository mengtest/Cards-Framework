----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: EvtQueue.lua
-- 	        // Describle:
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------

EvtQueue = { };

local this = EvtQueue;

function this:New(processor)
	o = { };
	setmetatable(o, self);
	self.__index = self;
	self.count = 0;
	self.Listeners = { }
	o.Processor = processor;
	return o;
end

function this:Add(id, func)
	if self.Processor ~= nil then
		self.Processor:Register(id, func);
		self:Record(id, func);
	end
end

function this:Remove(id, func)
	if self.Processor ~= nil then
		self.Processor:Unregister(id, func);
		self:Unrecord(id, func);
	end
end

function this:Clear()
	for k0, v0 in pairs(self.Listeners) do
		for k1, v1 in pairs(self.Listeners[k0]) do
			self.Processor:Unregister(k0, v1)
		end
	end
end

function this:Record(id, func)
	local index = 1
	if self.Listeners[id] == nil then
		self.Listeners[id] = { }
	else
		local existIndex = this:EventIndex(id, func)
		if existIndex ~= -1 then
			return
		end
		index = #self.Listeners[id] + 1
	end
	self.Listeners[id][index] = func
end

function this:Unrecord(id, func)
	if self.Listeners[id] == nil then
		return
	end
	local existIndex = self:EventIndex(id, func)
	if existIndex == -1 then return end
	table.remove(self.Listeners[id], existIndex)
end

function this:EventIndex(id, func)
	if self.Listeners[id] == nil then
		return -1
	end
	for i = 1, #self.Listeners[id] do
		if self.Listeners[id][i] == func then
			return i
		end
	end
	return -1
end
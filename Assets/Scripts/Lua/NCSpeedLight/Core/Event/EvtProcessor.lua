-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: EvtProcessor.lua
-- Describle:  事件处理器
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
EvtProcessor = {
	Listeners = {},
};

local meta = {};
meta.__index = EvtProcessor;

function EvtProcessor.New()
	local o = {};
	setmetatable(o, meta);
	return o;
end

function EvtProcessor:Register(id, func)
	local index = 1
	if self.Listeners[id] == nil then
		self.Listeners[id] = {}
	else
		local existIndex = self:EventIndex(id, func)
		if existIndex ~= - 1 then
			return
		end
		index = #self.Listeners[id] + 1
	end
	self.Listeners[id] [index] = func
end

function EvtProcessor:Unregister(id, func)
	if self.Listeners[id] == nil then
		return
	end
	local existIndex = self:EventIndex(id, func)
	if existIndex == - 1 then return end
	table.remove(self.Listeners[id], existIndex)
end

function EvtProcessor:UnregisterAll()
	table.remove(self.Listeners)
end

function EvtProcessor:Notify(id, param)
	if self.Listeners[id] == nil then
		return
	end
	for k, v in pairs(self.Listeners[id]) do
		v(param)
	end
end

function EvtProcessor:EventIndex(id, func)
	if self.Listeners[id] == nil then
		return - 1
	end
	for i = 1, #self.Listeners[id] do
		if self.Listeners[id] [i] == func then
			return i
		end
	end
	return - 1
end


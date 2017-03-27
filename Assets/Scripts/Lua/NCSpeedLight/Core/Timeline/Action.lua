-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Action.lua
-- Describle:  行为
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------

Action =
{
	BeginTime = 0,
	EndTime = 1,
	
	OnBegin = nil,
	OnUpdate = nil,
	OnEnd = nil,
};

Action.__index = Action;

-- beginTime: 行为开始时间
-- endTime: 行为结束时间
function Action.New(beginTime, endTime)
	local o = {};
	o.BeginTime = beginTime;
	o.EndTime = endTime;
	setmetatable(o, Action);
	return o;
end

function Action:Begin(timeline, deltatime)
	if self.OnBegin ~= nil then
		self.OnBegin(timeline, deltatime);
	end
end

function Action:Update(timeline, deltatime)
	if self.OnUpdate ~= nil then
		self.OnUpdate(timeline, deltatime);
	end
end

function Action:End(timeline, deltatime)
	if self.OnEnd ~= nil then
		self.OnEnd(timeline, deltatime);
	end
end
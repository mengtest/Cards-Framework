-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Timeline.lua
-- Describle:  时间轴
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------

require "NCSpeedLight.Core.Timeline.Action"

TimelineStatus =
{
	Action = 0,
	Inaction = 1,
	Playing = 2,
};

TimelinePlayMode = {
	Queue,
	ForceStop,
	AbrobtWhenProcessing,
}

ActionStatus =
{
	Action = 0,
	Inaction = 1,
	Playing = 2,
}

Timeline = {
	Name = nil,
	Elapse,
	Status = TimelineStatus.Inaction,
	Actions = {},
	ProcessingActions = {},
	WaitingActions = {},
};

local meta = {};
meta.__index = Timeline;
local lines = {};

function Timeline.New(name)
	local obj = {};
	setmetatable(obj, meta);
	obj.Name = name;
	obj.Elapse = 0;
	obj.Status = TimelineStatus.Inaction;
	obj.Actions = {};
	obj.ProcessingActions = {};
	obj.WaitingActions = {};
	table.insert(lines, obj);
	return obj;
end

function Timeline.Update()
	for i = 1, # lines do
		local line = lines[i];
		if line ~= nil then
			if line.Status == TimelineStatus.Playing then
				
				local deltaTime = Time.deltaTime;
				line.Elapse = line.Elapse + deltaTime;
				
				local index = 1;
				
				while index <= # line.ProcessingActions do
					local action = line.ProcessingActions[index];
					Timeline.InvokeActionMethod(action, "Update", line, deltaTime);
					if line.Elapse >= action.EndTime then
						action.Status = ActionStatus.Inaction;
						Timeline.InvokeActionMethod(action, "End", line, deltaTime);
						table.remove(line.ProcessingActions, index);
					else
						index = index + 1;
					end
				end
				
				index = 1;
				while index <= # line.WaitingActions do
					local action = line.WaitingActions[index];
					if line.Elapse >= action.BeginTime then
						action.Status = ActionStatus.Playing;
						Timeline.InvokeActionMethod(action, "Begin", line, deltaTime);
						table.insert(line.ProcessingActions, action);
						table.remove(line.WaitingActions, index);
					else
						index = index + 1;
					end
				end
			end
		end
	end
end

function Timeline.InvokeActionMethod(action, methodName, ...)
	local meta = getmetatable(action);
	if meta ~= nil then
		for key, value in pairs(meta) do
			if key == methodName and value ~= nil then
				value(action, ...);
			end
		end
	end
end

function Timeline:AddAction(action)
	if action == nil then
		Log.Error("Timeline:AddAction: can not add action to line caused bu nil action instance.");
		return
	end
	
	local hasBeginTime = false;
	local hasEndTime = false;
	local hasBeginFunc = false;
	local hasEndFunc = false;
	
	-- check if action ok
	local meta = getmetatable(action);
	if meta ~= nil then
		for key, value in pairs(meta) do
			if key ~= nil then
				local keystr = tostring(key);
				if keystr == "BeginTime" then
					hasBeginTime = true;
				elseif keystr == "EndTime" then
					hasEndTime = true;
				elseif keystr == "Begin" then
					hasBeginFunc = true;
				elseif keystr == "End" then
					hasEndFunc = true;
				end
			end
		end
	else
		Log.Error("Timeline:AddAction: can not add action caused bu nil metatable of table.");
	end
	
	if hasBeginTime and hasEndTime and hasBeginFunc and hasEndFunc then
		table.insert(self.Actions, action);
	else
		Log.Error("Timeline:AddAction: can not add action caused bu nil field(s), hasBeginTime:" .. tostring(hasBeginTime) .. " , hasEndTime:" .. tostring(hasEndTime) .. " , hasBeginFunc:" .. tostring(hasBeginFunc) .. " , hasEndFunc:" .. tostring(hasEndFunc));
	end
end

function Timeline:RemoveAction(action)
	local needRemove = false;
	local index = 1;
	for i = 1, # self.Actions do
		if self.Actions[i] == action then
			needRemove = true;
			index = i;
		end
	end
	
	if needRemove then
		table.remove(self.Actions, index);
	end
end

-- start timeline.
function Timeline:Start()
	self.WaitingActions = {};
	self.ProcessingActions = {};
	self.Elapse = 0;
	for i = 1, # self.Actions do
		local action = self.Actions[i];
		action.Status = ActionStatus.Action;
		table.insert(self.WaitingActions, action);
	end
	self.Status = TimelineStatus.Playing;
end

-- force stop timeline.
function Timeline:Stop()
	local index = 1;
	while index <= # self.ProcessingActions do
		local action = self.ProcessingActions[index];
		action.Status = ActionStatus.Inaction;
		Timeline.InvokeActionMethod(action, "End", self, 0);
		table.remove(self.ProcessingActions, index);
		index = index + 1;
	end
	self.Status = TimelineStatus.Inaction;
end

-- restore all timeline data.
function Timeline:Reset()
	self.WaitingActions = {};
	self.ProcessingActions = {};
	self.Elapse = 0;
	self.Status = TimelineStatus.Inaction;
	self.Actions = {};
end

-- destroy timeline instance.
function Timeline:Destroy()
	local needRemove = false;
	local index = 1;
	for i = 1, # lines do
		if lines[i] == self then
			needRemove = true;
			index = i;
		end
	end
	
	if needRemove then
		table.remove(lines, index);
	end
end

-- 用户自定义行为
CustomAction = {
	BeginTime = 0,
	EndTime = 1,
};

CustomAction.__index = CustomAction;

function CustomAction.New()
	local obj = {};
	setmetatable(obj, CustomAction);
	return obj;
end

function CustomAction:Begin()
	Log.Info("CustomAction:Begin: " .. tostring(self));
end

function CustomAction:End()
	Log.Info("CustomAction:End: " .. tostring(self));
end

function Test()
	local timeline = Timeline.New("TEST");
	
	local action1 = CustomAction.New();
	action1.BeginTime = 1;
	action1.EndTime = 4;
	
	
	local action2 = Action.New(1, 2);
	action2.OnBegin = function()
		Log.Info("action2 begin");
	end;
	action2.OnEnd = function()
		Log.Info("action2 end");
		timeline:Stop();
	end;
	
	timeline:AddAction(action1);
	timeline:AddAction(action2);
	
	timeline:Start();
-- timeline:Destroy();
end

Test();
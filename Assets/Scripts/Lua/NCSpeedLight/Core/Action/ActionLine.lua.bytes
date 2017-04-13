-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: ActionLine.lua
-- Describle:  行为轴
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
ActionLineStatus =
{
	Action = 0,
	Inaction = 1,
	Playing = 2,
};
ActionLinePlayMode = {
	-- 顺序执行
	Queue = 0,
	-- 平行结构
	Parallel = 1,
}
ActionStatus =
{
	Action = 0,
	Inaction = 1,
	Playing = 2,
}
-- define action 
Action =
{
	BeginTime = 0,
	EndTime = 1,
	OnBegin = nil,
	OnUpdate = nil,
	OnEnd = nil,
	Param = nil,
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
function Action:Begin(timeline)
	if self.OnBegin ~= nil then
		self.OnBegin(timeline, self.Param);
	end
end
function Action:Update(timeline)
	if self.OnUpdate ~= nil then
		self.OnUpdate(timeline, self.Param);
	end
end
function Action:End(timeline)
	if self.OnEnd ~= nil then
		self.OnEnd(timeline, self.Param);
	end
end
-- end of action 
ActionLine = {
	Name = nil,
	Elapse,
	Status = ActionLineStatus.Inaction,
	Actions = {},
	ProcessingActions = {},
	WaitingActions = {},
	LastAction = nil,
	CurrentAction = nil,
	OnFinished = nil,
	AutoDestory = false,
};
ActionLine.__index = ActionLine;
local lines = {};
function ActionLine.New(playmode, autoDestroy)
	local obj = {};
	setmetatable(obj, ActionLine);
	obj.Name = name;
	obj.Elapse = 0;
	obj.Status = ActionLineStatus.Inaction;
	obj.Actions = {};
	obj.ProcessingActions = {};
	obj.WaitingActions = {};
	if playmode == nil then
		obj.PlayMode = ActionLinePlayMode.Parallel;
	else
		obj.PlayMode = playmode;
	end
	if autoDestroy == nil then
		obj.AutoDestory = false;
	else
		obj.AutoDestory = autoDestroy;
	end
	table.insert(lines, obj);
	return obj;
end
function ActionLine.Update()
	for i = 1, # lines do
		local line = lines[i];
		if line ~= nil and line.Status == ActionLineStatus.Playing then
			local deltaTime = Time.deltaTime;
			line.Elapse = line.Elapse + deltaTime;
			if line.PlayMode == ActionLinePlayMode.Parallel then
				-- Parallel mode 
				local index = 1;
				while index <= # line.ProcessingActions do
					local action = line.ProcessingActions[index];
					ActionLine.InvokeActionMethod(action, "Update", line);
					if line.Elapse >= action.EndTime then
						action.Status = ActionStatus.Inaction;
						ActionLine.InvokeActionMethod(action, "End", line);
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
						ActionLine.InvokeActionMethod(action, "Begin", line);
						table.insert(line.ProcessingActions, action);
						table.remove(line.WaitingActions, index);
					else
						index = index + 1;
					end
				end
				if # line.WaitingActions == 0 and # line.ProcessingActions == 0 then
					line:InternalStop();
				end
			else
				-- Queue mode
				if line.CurrentAction ~= nil then
					ActionLine.InvokeActionMethod(line.CurrentAction, "Update", line);
				end
			end
		end
	end
end
function ActionLine.InvokeActionMethod(action, methodName, line)
	local meta = getmetatable(action);
	if meta ~= nil then
		for key, value in pairs(meta) do
			if key == methodName and value ~= nil then
				value(action, line);
			end
		end
	end
end
function ActionLine:AddAction(action)
	if action == nil then
		Log.Error("ActionLine:AddAction: can not add action to line caused bu nil action instance.");
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
		Log.Error("ActionLine:AddAction: can not add action caused bu nil metatable of table.");
	end
	if self.PlayMode == ActionLinePlayMode.Parallel then
		if hasBeginTime and hasEndTime and hasBeginFunc and hasEndFunc then
			table.insert(self.Actions, action);
		else
			Log.Error("ActionLine:AddAction: can not add action caused bu nil field(s), hasBeginTime:" .. tostring(hasBeginTime) .. " , hasEndTime:" .. tostring(hasEndTime) .. " , hasBeginFunc:" .. tostring(hasBeginFunc) .. " , hasEndFunc:" .. tostring(hasEndFunc));
		end
	else
		if hasBeginFunc and hasEndFunc then
			table.insert(self.Actions, action);
		else
			Log.Error("ActionLine:AddAction: can not add action caused bu nil field(s), hasBeginFunc:" .. tostring(hasBeginFunc) .. " , hasEndFunc:" .. tostring(hasEndFunc));
		end
	end
end
function ActionLine:RemoveAction(action)
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
function ActionLine:Start()
	self.Elapse = 0;
	self.Status = ActionLineStatus.Playing;
	if self.PlayMode == ActionLinePlayMode.Parallel then
		self.WaitingActions = {};
		self.ProcessingActions = {};
		for i = 1, # self.Actions do
			local action = self.Actions[i];
			action.Status = ActionStatus.Action;
			table.insert(self.WaitingActions, action);
		end
	else
		self.CurrentAction = nil;
		self.LastAction = nil;
		self:Next();
	end
end
-- force stop timeline.
function ActionLine:Stop()
	if self.PlayMode == ActionLinePlayMode.Parallel then
		if self.Status == ActionLineStatus.Playing then
			local index = 1;
			while index <= # self.ProcessingActions do
				local action = self.ProcessingActions[index];
				action.Status = ActionStatus.Inaction;
				ActionLine.InvokeActionMethod(action, "End", self);
				table.remove(self.ProcessingActions, index);
				index = index + 1;
			end
		end
	else
	end
	self:InternalStop();
end
-- restore all timeline data.
function ActionLine:Reset()
	self.WaitingActions = {};
	self.ProcessingActions = {};
	self.Elapse = 0;
	self.Status = ActionLineStatus.Inaction;
	self.Actions = {};
end
-- destroy timeline instance.
function ActionLine:Destroy()
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
-- is timeline running.
function ActionLine:IsActive()
	return self.Status == ActionLineStatus.Playing;
end
-- execute next action. 
function ActionLine:Next()
	if self.CurrentAction == nil then
		local action = self.Actions[1];
		self.CurrentAction = action;
		ActionLine.InvokeActionMethod(self.CurrentAction, "Begin", self);
	else
		local index = 1;
		while index <= # self.Actions do
			local action = self.Actions[index];
			if action == self.CurrentAction then
				if index ~= # self.Actions then
					local nextActionIndex = index + 1;
					local nextAction = self.Actions[nextActionIndex];
					ActionLine.InvokeActionMethod(self.CurrentAction, "End", self);
					self.CurrentAction = nextAction;
					ActionLine.InvokeActionMethod(self.CurrentAction, "Begin", self);
					break;
				else
					if self.CurrentAction ~= nil then
						ActionLine.InvokeActionMethod(self.CurrentAction, "End", self);
					end
					self:InternalStop();
				end
			end
			index = index + 1;
		end
	end
end
function ActionLine:InternalStop()
	self.Status = ActionLineStatus.Inaction;
	if self.AutoDestory then self:Destroy() end;
	if self.OnFinished ~= nil then
		self.OnFinished(self);
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
function TestParallel()
	local timeline = ActionLine.New("TEST");
	local action1 = CustomAction.New();
	action1.BeginTime = 1;
	action1.EndTime = 4;
	local action2 = Action.New(1, 2);
	action2.OnBegin = function()
		Log.Info("TestParallel.action2 begin");
	end;
	action2.OnEnd = function()
		Log.Info("TestParallel.action2 end");
		timeline:Stop();
	end;
	timeline:AddAction(action1);
	timeline:AddAction(action2);
	timeline:Start();
	-- timeline:Destroy();
end
function TestQueue()
	local timeline = ActionLine.New("TEST_2", ActionLinePlayMode.Queue);
	local action1 = Action.New();
	action1.OnBegin = function(line)
		Log.Info("TestQueue.action1 begin");
		line:Next();
	end;
	action1.OnEnd = function(line)
		Log.Info("TestQueue.action1 end");
	end;
	local action2 = Action.New();
	action2.OnBegin = function(line)
		Log.Info("TestQueue.action2 begin");
		line:Next();
	end;
	action2.OnEnd = function(line)
		Log.Info("TestQueue.action2 end");
	end;
	timeline:AddAction(action1);
	timeline:AddAction(action2);
	timeline:Start();
end
-- TestParallel();
-- TestQueue(); 

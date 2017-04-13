-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: AnimationQueue.lua
-- Describle:  动画队列
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
AnimationQueue = {
	Lines = {},
	CurrentLine = nil,
	LastLine = nil,
	OnFinished = nil,
};
AnimationQueue.__index = AnimationQueue;
function AnimationQueue.New()
	local obj = {};
	setmetatable(obj, AnimationQueue);
	obj.Lines = {};
	return obj;
end
function AnimationQueue:Push(actionLine)
	if actionLine ~= nil then
		table.insert(self.Lines, actionLine);
	end
end
function AnimationQueue:Pop()
	if # self.Lines > 0 then
		local obj = self.Lines[1];
		table.remove(self.Lines, 1);
		return obj;
	end
	return nil;
end
function AnimationQueue:Count()
	return # self.Lines;
end
function AnimationQueue:Resume()
	if self.CurrentLine == nil then
		local line = self:Pop();
		self.CurrentLine = line;
		self.CurrentLine.OnFinished = AnimationQueue.OnCurrentLineFinished;
		self.CurrentLine.BelongTo = self;
		self.CurrentLine:Start();
	elseif self.CurrentLine:IsActive() == false then
		local line = self:Pop();
		self.LastLine = self.CurrentLine;
		self.CurrentLine = line;
		if self.CurrentLine ~= nil then
			self.CurrentLine.OnFinished = AnimationQueue.OnCurrentLineFinished;
			self.CurrentLine.BelongTo = self;
			self.CurrentLine:Start();
		else
			self:InternalFinish();
		end
	else
	end
end
function AnimationQueue:InternalFinish()
	if self.OnFinished ~= nil then
		self.OnFinished(self);
	end
end
function AnimationQueue.OnCurrentLineFinished(line)
	line.BelongTo:Resume();
end 
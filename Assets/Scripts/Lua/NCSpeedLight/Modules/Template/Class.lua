-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Class.lua
-- Describle:  类模板
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------

Class = {};

local meta = {};
meta.__index = Class;

function Class.New()
	local o = {};
	setmetatable(o, meta);
	return o;
end
-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: #NAME#.lua
-- Describle:  
-- Created By:  #USER#
-- DateTime:  #DATETIME#
-- Modify History:
--
-----------------------------------------------
#NAME# = {};

#NAME#.__index = #NAME#;

-- Constructor
function #NAME#.New()
	local o = {};
	setmetatable(o, #NAME#);
	return o;
end 
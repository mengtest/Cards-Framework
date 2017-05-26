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
#NAME# = {
	instances = nil,
};

#NAME#.__index = #NAME#;

-- Keep reference to all instances.
#NAME#.instances = {};
-- Mark as weak reference.
setmetatable(#NAME#.instances, {__mode = "v"});

-- Constructor.
function #NAME#.New()
	local o = {};
	setmetatable(o, #NAME#);
	table.insert(#NAME#.instances, o);
	return o;
end
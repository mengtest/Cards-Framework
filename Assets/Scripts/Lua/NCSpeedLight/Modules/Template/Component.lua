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
	transform = nil,
	gameObject = nil,
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

-- Called by mono.
function #NAME#:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end

-- Use this for initialization.
function #NAME#:Start()
end

-- Use this for destruction.
function #NAME#:OnDestroy()
	self.transform = nil;
	self.gameObject = nil;
end 

-- Called when pre reload script.
function #NAME#:OnPreReload()
end 

-- Called when post reload script.
function #NAME#:OnPostReload()
end 
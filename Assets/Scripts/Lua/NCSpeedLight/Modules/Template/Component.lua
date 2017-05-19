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
};

#NAME#.__index = #NAME#;

function #NAME#.New()
	local o = {};
	setmetatable(o, #NAME#);
	return o;
end

-- Called by mono
function #NAME#:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end

-- Use this for initialization
function #NAME#:Start()
end

-- Use this for destruction
function #NAME#:OnDestroy()
	self.transform = nil;
	self.gameObject = nil;
end 
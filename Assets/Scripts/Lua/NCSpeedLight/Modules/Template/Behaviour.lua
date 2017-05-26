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

local this = #NAME#;

-- Called by mono
function #NAME#.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

-- Use this for initialization
function #NAME#.Start()
end

-- Use this for destruction
function #NAME#.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

-- Called when pre reload script.
function #NAME#.OnPreReload()
end 

-- Called when post reload script.
function #NAME#.OnPostReload()
end 
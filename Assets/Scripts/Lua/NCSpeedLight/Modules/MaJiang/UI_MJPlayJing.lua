-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJPlayJing.lua
-- Describle:  
-- Created By:  Wells Hsu
-- DateTime:  2017/06/05 21:14:38
-- Modify History:
--
-----------------------------------------------
UI_MJPlayJing = {
	transform = nil,
	gameObject = nil,
};

local this = UI_MJPlayJing;

-- Called by mono.
function UI_MJPlayJing.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

-- Use this for initialization.
function UI_MJPlayJing.Start()
	UIHelper.SetButtonEvent(this.transform, "Btn_Yes", UI_MJPlayJing.OnClickYes);
	UIHelper.SetButtonEvent(this.transform, "Btn_No", UI_MJPlayJing.OnClickNo);
end

-- Use this for destruction.
function UI_MJPlayJing.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

-- Called when pre reload script.
function UI_MJPlayJing.OnPreReload()
end

-- Called when post reload script.
function UI_MJPlayJing.OnPostReload()
end

function UI_MJPlayJing.OnClickYes()
end

function UI_MJPlayJing.OnClickNo()
end

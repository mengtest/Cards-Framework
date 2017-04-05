-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJTotalResult.lua
-- Describle:   总结算界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_MJTotalResult = {
	transform = nil,
	gameObject = nil,
}
local this = UI_MJTotalResult;
function UI_MJTotalResult.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end
function UI_MJTotalResult.Start()
end
function UI_MJTotalResult.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end 
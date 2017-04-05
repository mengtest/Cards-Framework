-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJResult.lua
-- Describle:   结算界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_MJResult = {
	transform = nil,
	gameObject = nil,
}
local this = UI_MJResult;
function UI_MJResult.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end
function UI_MJResult.Start()
end
function UI_MJResult.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
function UI_MJResult.ShowDingHu()
end 
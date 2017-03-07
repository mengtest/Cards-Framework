-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: IUIManager.lua
-- Describle:  管理界面的打开关闭等逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

IUIManager = { }
local this = IUIManager

function IUIManager.Instance()
    return this
end

function IUIManager.OpenWindow(windowName)
    UIManager.OpenWindow(windowName)
end

function IUIManager.CloseWindow(windowName)
    UIManager.CloseWindow(windowName)
end
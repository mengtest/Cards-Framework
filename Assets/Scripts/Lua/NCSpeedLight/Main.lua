-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Main.lua
-- Describle:  主入口函数。从这里开始lua逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

require 'NCSpeedLight.Core.Hotfix.LuaManager'

Main = { }

function Main.StartGame(go)
    LuaManager:Initialize();
    NCSpeedLight.Helper.AddComponent('NCSpeedLight.Game', go);
end

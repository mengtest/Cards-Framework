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
require "NCSpeedLight.Core.Hotfix.LuaManager"
require "NCSpeedLight.Utils.APIDefine"
require "NCSpeedLight.Utils.Log"
require "NCSpeedLight.Utils.Utility"
Main = {}
function Main.StartGame(go)
	Log.Initialize();
	Log.Info("Main.StartGame");
	LuaManager.Initialize();
	if go ~= nil then
		NCSpeedLight.Helper.AddComponent("NCSpeedLight.Game", go);
	else
		Log.Error("Main.StartGame: error caused by nil gameObject.");
	end
end
Launch = {}
function Launch.Start(go)
	Log.Initialize();
	Log.Info("Launch.Start");
	LuaComponent.Add(typeof())
end 
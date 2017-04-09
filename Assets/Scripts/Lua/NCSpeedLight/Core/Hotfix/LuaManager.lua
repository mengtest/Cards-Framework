----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: LuaManager.lua
-- 	        // Describle:   lua 管理器
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------
LuaManager =
{
	IsInitialized = false,
};
function LuaManager.Initialize()
	Log.Info("LuaManager.Initialize: start.");
	if LuaManager.IsInitialized == false then
		LuaManager.LoadLuaBundle();
		Log.Info("LuaManager.Initialize: done.");
	else
		Log.Warning("LuaManager.Initialize: luamanager has already been initialized.");
	end
end
function LuaManager.LoadLuaBundle()
	if NCSpeedLight.SharedVariable.LUA_BUNDLE_MODE == true then
		local manifest = NCSpeedLight.SharedVariable.DATA_PATH .. "Scripts/manifest.txt"; --游戏包资源目录
		Log.Info("LuaManager.LoadLuaBundle: manifest path is " .. manifest);
		if CSFile.Exists(manifest) == false then
			Log.Error("LuaManager.LoadLuaBundle: error caused by nil file.");
			return;
		end
		local lines = CSFile.ReadAllLines(manifest);
		if lines == nil or lines.Length == 0 then
			Log.Error("LuaManager.LoadLuaBundle: error caused by nil file.");
			return;
		end
		for i = 0, lines.Length - 1 do
			local line = lines[i];
			local bundleName = Utility.SplitString(line, "|") [1];
			Log.Info("LuaManager.LoadLuaBundle: add bundle named " .. bundleName);
			NCSpeedLight.LuaManager.LuaLoader:AddBundle(bundleName);
		end
	end
end

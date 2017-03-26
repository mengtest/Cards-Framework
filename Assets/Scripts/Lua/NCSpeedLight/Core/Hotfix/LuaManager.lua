----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: LuaManager.lua
-- 	        // Describle:
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------

-- lua 管理器
LuaManager =
{
	IsInitialized = false,
};

function LuaManager.Initialize()
	if LuaManager.IsInitialized == false then
		LuaManager.LoadLuaBundle();
		Log.Info("LuaManager.Initialize: success.");
	else
		Log.Warning("LuaManager.Initialize: luamanager has already been initialized.");
	end
end

function LuaManager.LoadLuaBundle()
	if NCSpeedLight.SharedVariable.LUA_BUNDLE_MODE == true then
		local manifest = NCSpeedLight.SharedVariable.APP_CONTENT_PATH .. "Scripts/manifest.txt"; --游戏包资源目录
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
	-- local file 
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_cjson");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_luabitop");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_pbc");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_pblua");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_sproto");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_asset");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_event");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_network");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_player");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_scene");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_view");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules_dialog");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules_hall");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules_login");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules_majiang");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_protocol");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_scenes_download");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_scenes_hall");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_scenes_login");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_scenes_majiang");
	-- NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_utils");
	end
end


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
LuaManager = {};

function LuaManager.Initialize()
	LoadLuaBundle();
end

function LoadLuaBundle()
	if NCSpeedLight.SharedVariable.LUA_BUNDLE_MODE == true then
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_cjson");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_luabitop");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_pbc");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_pblua");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_3rd_sproto");
		
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_event");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_network");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_player");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_scene");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_core_view");
		
		
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules_dialog");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules_hall");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_modules_login");
		
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_protocol");
		
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_scenes");
		NCSpeedLight.LuaManager.LuaLoader:AddBundle("ncspeedlight_utils");
	end
end


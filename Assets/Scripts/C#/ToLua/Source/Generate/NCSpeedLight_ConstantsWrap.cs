﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_ConstantsWrap
{
	public static void Register(LuaState L)
	{
		L.BeginStaticLibs("Constants");
		L.RegVar("GAME_NAME", get_GAME_NAME, set_GAME_NAME);
		L.RegVar("COMPANY_NAME", get_COMPANY_NAME, set_COMPANY_NAME);
		L.RegVar("CHANNEL", get_CHANNEL, set_CHANNEL);
		L.RegVar("MAJOR_VERSION", get_MAJOR_VERSION, set_MAJOR_VERSION);
		L.RegVar("TARGET_FRAME_RATE", get_TARGET_FRAME_RATE, set_TARGET_FRAME_RATE);
		L.RegVar("ASSET_BUNDLE_MANIFEST_FILE", get_ASSET_BUNDLE_MANIFEST_FILE, set_ASSET_BUNDLE_MANIFEST_FILE);
		L.RegVar("ASSET_MANIFEST_FILE", get_ASSET_MANIFEST_FILE, set_ASSET_MANIFEST_FILE);
		L.RegVar("SCRIPT_MANIFEST_FILE", get_SCRIPT_MANIFEST_FILE, set_SCRIPT_MANIFEST_FILE);
		L.RegVar("SCRIPT_BUNDLE_FILE_EXTENSION", get_SCRIPT_BUNDLE_FILE_EXTENSION, null);
		L.RegVar("ASSET_BUNDLE_FILE_EXTENSION", get_ASSET_BUNDLE_FILE_EXTENSION, null);
		L.RegVar("LUA_SCRIPT_WORKSPACE", get_LUA_SCRIPT_WORKSPACE, set_LUA_SCRIPT_WORKSPACE);
		L.RegVar("BUNDLE_ASSET_WORKSPACE", get_BUNDLE_ASSET_WORKSPACE, set_BUNDLE_ASSET_WORKSPACE);
		L.RegVar("BUNDLE_SCENE_WORKSPACE", get_BUNDLE_SCENE_WORKSPACE, set_BUNDLE_SCENE_WORKSPACE);
		L.RegVar("RESOURCE_WORKSPACE", get_RESOURCE_WORKSPACE, set_RESOURCE_WORKSPACE);
		L.RegVar("PREF_ASSET_BUNDLE_MODE_KEY", get_PREF_ASSET_BUNDLE_MODE_KEY, null);
		L.RegVar("PREF_SCRIPT_BUNDLE_MODE_KEY", get_PREF_SCRIPT_BUNDLE_MODE_KEY, null);
		L.RegVar("PREF_SCRIPT_BYTE_MODE_KEY", get_PREF_SCRIPT_BYTE_MODE_KEY, null);
		L.RegVar("PREF_CHECK_UPDATE_KEY", get_PREF_CHECK_UPDATE_KEY, null);
		L.RegVar("PREF_USE_INNER_LOGIN_SERVER_KEY", get_PREF_USE_INNER_LOGIN_SERVER_KEY, null);
		L.RegVar("PREF_INNER_LOGIN_SERVER_HOST_KEY", get_PREF_INNER_LOGIN_SERVER_HOST_KEY, null);
		L.RegVar("PREF_INNER_LOGIN_SERVER_PORT_KEY", get_PREF_INNER_LOGIN_SERVER_PORT_KEY, null);
		L.RegVar("PREF_USE_INNER_ASSET_SERVER_KEY", get_PREF_USE_INNER_ASSET_SERVER_KEY, null);
		L.RegVar("PREF_INNER_ASSET_SERVER_HOST_KEY", get_PREF_INNER_ASSET_SERVER_HOST_KEY, null);
		L.RegVar("PREF_INNER_ASSET_SERVER_PORT_KEY", get_PREF_INNER_ASSET_SERVER_PORT_KEY, null);
		L.RegVar("FORCE_UPDATE", get_FORCE_UPDATE, null);
		L.RegVar("CHECK_UPDATE", get_CHECK_UPDATE, null);
		L.RegVar("MIDDLE_VERSION", get_MIDDLE_VERSION, set_MIDDLE_VERSION);
		L.RegVar("MINIOR_VERSION", get_MINIOR_VERSION, set_MINIOR_VERSION);
		L.RegVar("VERSION", get_VERSION, null);
		L.RegVar("JSON_URL", get_JSON_URL, null);
		L.RegVar("DATA_PATH", get_DATA_PATH, null);
		L.RegVar("CONFIG_PATH", get_CONFIG_PATH, null);
		L.RegVar("BUILD_SCRIPT_BUNDLE_PATH", get_BUILD_SCRIPT_BUNDLE_PATH, null);
		L.RegVar("BUILD_ASSET_BUNDLE_PATH", get_BUILD_ASSET_BUNDLE_PATH, null);
		L.RegVar("STREAMING_PATH", get_STREAMING_PATH, null);
		L.RegVar("PLATFORM_NAME", get_PLATFORM_NAME, null);
		L.RegVar("SCRIPT_BYTE_CODE_MODE", get_SCRIPT_BYTE_CODE_MODE, null);
		L.RegVar("SCRIPT_BUNDLE_MODE", get_SCRIPT_BUNDLE_MODE, null);
		L.RegVar("ASSET_BUNDLE_MODE", get_ASSET_BUNDLE_MODE, null);
		L.RegVar("LOCAL_ASSET_BUNDLE_PATH", get_LOCAL_ASSET_BUNDLE_PATH, null);
		L.RegVar("LOCAL_SCRIPT_BUNDLE_PATH", get_LOCAL_SCRIPT_BUNDLE_PATH, null);
		L.RegVar("REMOTE_ASSET_BUNDLE_PATH", get_REMOTE_ASSET_BUNDLE_PATH, set_REMOTE_ASSET_BUNDLE_PATH);
		L.RegVar("REMOTE_SCRIPT_BUNDLE_PATH", get_REMOTE_SCRIPT_BUNDLE_PATH, set_REMOTE_SCRIPT_BUNDLE_PATH);
		L.RegVar("REMOTE_FILE_BUNDLE_ROOT", get_REMOTE_FILE_BUNDLE_ROOT, set_REMOTE_FILE_BUNDLE_ROOT);
		L.RegVar("ACCOUNT_SERVER_IP", get_ACCOUNT_SERVER_IP, set_ACCOUNT_SERVER_IP);
		L.RegVar("ACCOUNT_SERVER_PORT", get_ACCOUNT_SERVER_PORT, set_ACCOUNT_SERVER_PORT);
		L.RegVar("NEWEST_VERSION", get_NEWEST_VERSION, set_NEWEST_VERSION);
		L.RegVar("APK_DOWNLOAD_URL", get_APK_DOWNLOAD_URL, set_APK_DOWNLOAD_URL);
		L.RegVar("APK_SIZE", get_APK_SIZE, set_APK_SIZE);
		L.RegVar("WECHAT_URL", get_WECHAT_URL, set_WECHAT_URL);
		L.RegVar("FEEDBACK_URL", get_FEEDBACK_URL, set_FEEDBACK_URL);
		L.RegVar("RONGCLOUD_KEY", get_RONGCLOUD_KEY, set_RONGCLOUD_KEY);
		L.RegVar("RONGCLOUD_SECRET", get_RONGCLOUD_SECRET, set_RONGCLOUD_SECRET);
		L.RegVar("SHARE_TITLE", get_SHARE_TITLE, set_SHARE_TITLE);
		L.RegVar("SHARE_CONTENT", get_SHARE_CONTENT, set_SHARE_CONTENT);
		L.RegVar("SHARE_MOMENT_CONTENT", get_SHARE_MOMENT_CONTENT, set_SHARE_MOMENT_CONTENT);
		L.RegVar("SHARE_URL", get_SHARE_URL, set_SHARE_URL);
		L.RegVar("SHARE_ICON", get_SHARE_ICON, set_SHARE_ICON);
		L.RegVar("WX_UNION_ID", get_WX_UNION_ID, set_WX_UNION_ID);
		L.RegVar("SCREEN_SHOT_FILE", get_SCREEN_SHOT_FILE, null);
		L.RegVar("APK_FILE", get_APK_FILE, null);
		L.RegVar("USE_INNER_LOGIN_SERVER", get_USE_INNER_LOGIN_SERVER, null);
		L.RegVar("INNER_LOGIN_SERVER_HOST", get_INNER_LOGIN_SERVER_HOST, null);
		L.RegVar("INNER_LOGIN_SERVER_PORT", get_INNER_LOGIN_SERVER_PORT, null);
		L.RegVar("DEVICEID", get_DEVICEID, null);
		L.RegVar("MAC_ADDRESS", get_MAC_ADDRESS, null);
		L.RegVar("IOS_CHECK", get_IOS_CHECK, null);
		L.EndStaticLibs();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_GAME_NAME(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.GAME_NAME);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_COMPANY_NAME(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.COMPANY_NAME);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CHANNEL(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.CHANNEL);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_MAJOR_VERSION(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, NCSpeedLight.Constants.MAJOR_VERSION);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_TARGET_FRAME_RATE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, NCSpeedLight.Constants.TARGET_FRAME_RATE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ASSET_BUNDLE_MANIFEST_FILE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.ASSET_BUNDLE_MANIFEST_FILE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ASSET_MANIFEST_FILE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.ASSET_MANIFEST_FILE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SCRIPT_MANIFEST_FILE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SCRIPT_MANIFEST_FILE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SCRIPT_BUNDLE_FILE_EXTENSION(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SCRIPT_BUNDLE_FILE_EXTENSION);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ASSET_BUNDLE_FILE_EXTENSION(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.ASSET_BUNDLE_FILE_EXTENSION);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LUA_SCRIPT_WORKSPACE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.LUA_SCRIPT_WORKSPACE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_BUNDLE_ASSET_WORKSPACE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.BUNDLE_ASSET_WORKSPACE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_BUNDLE_SCENE_WORKSPACE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.BUNDLE_SCENE_WORKSPACE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_RESOURCE_WORKSPACE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.RESOURCE_WORKSPACE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_ASSET_BUNDLE_MODE_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_ASSET_BUNDLE_MODE_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_SCRIPT_BUNDLE_MODE_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_SCRIPT_BUNDLE_MODE_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_SCRIPT_BYTE_MODE_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_SCRIPT_BYTE_MODE_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_CHECK_UPDATE_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_CHECK_UPDATE_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_USE_INNER_LOGIN_SERVER_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_USE_INNER_LOGIN_SERVER_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_INNER_LOGIN_SERVER_HOST_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_INNER_LOGIN_SERVER_HOST_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_INNER_LOGIN_SERVER_PORT_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_INNER_LOGIN_SERVER_PORT_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_USE_INNER_ASSET_SERVER_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_USE_INNER_ASSET_SERVER_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_INNER_ASSET_SERVER_HOST_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_INNER_ASSET_SERVER_HOST_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PREF_INNER_ASSET_SERVER_PORT_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PREF_INNER_ASSET_SERVER_PORT_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_FORCE_UPDATE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, NCSpeedLight.Constants.FORCE_UPDATE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CHECK_UPDATE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, NCSpeedLight.Constants.CHECK_UPDATE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_MIDDLE_VERSION(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, NCSpeedLight.Constants.MIDDLE_VERSION);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_MINIOR_VERSION(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, NCSpeedLight.Constants.MINIOR_VERSION);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_VERSION(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.VERSION);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_JSON_URL(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.JSON_URL);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_DATA_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.DATA_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CONFIG_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.CONFIG_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_BUILD_SCRIPT_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.BUILD_SCRIPT_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_BUILD_ASSET_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.BUILD_ASSET_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_STREAMING_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.STREAMING_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PLATFORM_NAME(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.PLATFORM_NAME);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SCRIPT_BYTE_CODE_MODE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, NCSpeedLight.Constants.SCRIPT_BYTE_CODE_MODE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SCRIPT_BUNDLE_MODE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, NCSpeedLight.Constants.SCRIPT_BUNDLE_MODE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ASSET_BUNDLE_MODE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, NCSpeedLight.Constants.ASSET_BUNDLE_MODE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LOCAL_ASSET_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.LOCAL_ASSET_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LOCAL_SCRIPT_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.LOCAL_SCRIPT_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_REMOTE_ASSET_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.REMOTE_ASSET_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_REMOTE_SCRIPT_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.REMOTE_SCRIPT_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_REMOTE_FILE_BUNDLE_ROOT(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.REMOTE_FILE_BUNDLE_ROOT);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ACCOUNT_SERVER_IP(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.ACCOUNT_SERVER_IP);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ACCOUNT_SERVER_PORT(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, NCSpeedLight.Constants.ACCOUNT_SERVER_PORT);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_NEWEST_VERSION(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.NEWEST_VERSION);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_APK_DOWNLOAD_URL(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.APK_DOWNLOAD_URL);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_APK_SIZE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, NCSpeedLight.Constants.APK_SIZE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_WECHAT_URL(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.WECHAT_URL);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_FEEDBACK_URL(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.FEEDBACK_URL);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_RONGCLOUD_KEY(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.RONGCLOUD_KEY);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_RONGCLOUD_SECRET(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.RONGCLOUD_SECRET);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SHARE_TITLE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SHARE_TITLE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SHARE_CONTENT(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SHARE_CONTENT);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SHARE_MOMENT_CONTENT(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SHARE_MOMENT_CONTENT);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SHARE_URL(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SHARE_URL);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SHARE_ICON(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SHARE_ICON);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_WX_UNION_ID(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.WX_UNION_ID);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SCREEN_SHOT_FILE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.SCREEN_SHOT_FILE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_APK_FILE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.APK_FILE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_USE_INNER_LOGIN_SERVER(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, NCSpeedLight.Constants.USE_INNER_LOGIN_SERVER);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_INNER_LOGIN_SERVER_HOST(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.INNER_LOGIN_SERVER_HOST);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_INNER_LOGIN_SERVER_PORT(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, NCSpeedLight.Constants.INNER_LOGIN_SERVER_PORT);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_DEVICEID(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.DEVICEID);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_MAC_ADDRESS(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.Constants.MAC_ADDRESS);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_IOS_CHECK(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, NCSpeedLight.Constants.IOS_CHECK);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_GAME_NAME(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.GAME_NAME = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_COMPANY_NAME(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.COMPANY_NAME = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_CHANNEL(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.CHANNEL = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_MAJOR_VERSION(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.Constants.MAJOR_VERSION = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_TARGET_FRAME_RATE(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.Constants.TARGET_FRAME_RATE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ASSET_BUNDLE_MANIFEST_FILE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.ASSET_BUNDLE_MANIFEST_FILE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ASSET_MANIFEST_FILE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.ASSET_MANIFEST_FILE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SCRIPT_MANIFEST_FILE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.SCRIPT_MANIFEST_FILE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_LUA_SCRIPT_WORKSPACE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.LUA_SCRIPT_WORKSPACE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_BUNDLE_ASSET_WORKSPACE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.BUNDLE_ASSET_WORKSPACE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_BUNDLE_SCENE_WORKSPACE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.BUNDLE_SCENE_WORKSPACE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_RESOURCE_WORKSPACE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.RESOURCE_WORKSPACE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_MIDDLE_VERSION(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.Constants.MIDDLE_VERSION = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_MINIOR_VERSION(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.Constants.MINIOR_VERSION = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_REMOTE_ASSET_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.REMOTE_ASSET_BUNDLE_PATH = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_REMOTE_SCRIPT_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.REMOTE_SCRIPT_BUNDLE_PATH = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_REMOTE_FILE_BUNDLE_ROOT(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.REMOTE_FILE_BUNDLE_ROOT = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ACCOUNT_SERVER_IP(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.ACCOUNT_SERVER_IP = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ACCOUNT_SERVER_PORT(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.Constants.ACCOUNT_SERVER_PORT = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_NEWEST_VERSION(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.NEWEST_VERSION = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_APK_DOWNLOAD_URL(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.APK_DOWNLOAD_URL = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_APK_SIZE(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.Constants.APK_SIZE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_WECHAT_URL(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.WECHAT_URL = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_FEEDBACK_URL(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.FEEDBACK_URL = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_RONGCLOUD_KEY(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.RONGCLOUD_KEY = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_RONGCLOUD_SECRET(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.RONGCLOUD_SECRET = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SHARE_TITLE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.SHARE_TITLE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SHARE_CONTENT(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.SHARE_CONTENT = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SHARE_MOMENT_CONTENT(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.SHARE_MOMENT_CONTENT = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SHARE_URL(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.SHARE_URL = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SHARE_ICON(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.SHARE_ICON = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_WX_UNION_ID(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.Constants.WX_UNION_ID = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


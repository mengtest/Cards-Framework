﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class SharedVariableWrap
{
	public static void Register(LuaState L)
	{
		L.BeginStaticLibs("SharedVariable");
		L.RegConstant("LOGIN_SERVER_PORT", 50000);
		L.RegConstant("UI_ROOT_HEIGHT", 720);
		L.RegConstant("UI_ROOT_WIDTH", 1224);
		L.RegConstant("COPY_ID", 10001);
		L.RegVar("LOGIN_SERVER_ADDRESS", get_LOGIN_SERVER_ADDRESS, set_LOGIN_SERVER_ADDRESS);
		L.RegVar("IsSinglePlayer", get_IsSinglePlayer, set_IsSinglePlayer);
		L.RegVar("GAME_NAME", get_GAME_NAME, set_GAME_NAME);
		L.RegVar("ENCRYPT_LUA", get_ENCRYPT_LUA, set_ENCRYPT_LUA);
		L.RegVar("LUA_BUNDLE_MODE", get_LUA_BUNDLE_MODE, set_LUA_BUNDLE_MODE);
		L.RegVar("SCREEN_SCALE", get_SCREEN_SCALE, null);
		L.RegVar("DATA_PATH", get_DATA_PATH, null);
		L.RegVar("SCRIPT_BUNDLE_PATH", get_SCRIPT_BUNDLE_PATH, null);
		L.RegVar("ASSET_BUNDLE_PATH", get_ASSET_BUNDLE_PATH, null);
		L.RegVar("BUILD_BUNDLE_LOG_PATH", get_BUILD_BUNDLE_LOG_PATH, null);
		L.RegVar("APP_CONTENT_PATH", get_APP_CONTENT_PATH, null);
		L.RegVar("PLATFORM", get_PLATFORM, null);
		L.RegVar("PLATFORM_NAME", get_PLATFORM_NAME, null);
		L.EndStaticLibs();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LOGIN_SERVER_ADDRESS(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, SharedVariable.LOGIN_SERVER_ADDRESS);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_IsSinglePlayer(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, SharedVariable.IsSinglePlayer);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_GAME_NAME(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, SharedVariable.GAME_NAME);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ENCRYPT_LUA(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, SharedVariable.ENCRYPT_LUA);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LUA_BUNDLE_MODE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, SharedVariable.LUA_BUNDLE_MODE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SCREEN_SCALE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushnumber(L, SharedVariable.SCREEN_SCALE);
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
			LuaDLL.lua_pushstring(L, SharedVariable.DATA_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SCRIPT_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, SharedVariable.SCRIPT_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ASSET_BUNDLE_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, SharedVariable.ASSET_BUNDLE_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_BUILD_BUNDLE_LOG_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, SharedVariable.BUILD_BUNDLE_LOG_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_APP_CONTENT_PATH(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, SharedVariable.APP_CONTENT_PATH);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_PLATFORM(IntPtr L)
	{
		try
		{
			ToLua.Push(L, SharedVariable.PLATFORM);
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
			LuaDLL.lua_pushstring(L, SharedVariable.PLATFORM_NAME);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_LOGIN_SERVER_ADDRESS(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			SharedVariable.LOGIN_SERVER_ADDRESS = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_IsSinglePlayer(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			SharedVariable.IsSinglePlayer = arg0;
			return 0;
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
			SharedVariable.GAME_NAME = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ENCRYPT_LUA(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			SharedVariable.ENCRYPT_LUA = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_LUA_BUNDLE_MODE(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			SharedVariable.LUA_BUNDLE_MODE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


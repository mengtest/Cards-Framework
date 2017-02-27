﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_AudioManagerWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.AudioManager), typeof(System.Object));
		L.RegFunction("Initialize", Initialize);
		L.RegFunction("ReadGameSettingConfig", ReadGameSettingConfig);
		L.RegFunction("PauseAll", PauseAll);
		L.RegFunction("UnPauseAll", UnPauseAll);
		L.RegFunction("PlayMusicPlaylist", PlayMusicPlaylist);
		L.RegFunction("PlayNextMusicOnPlaylist", PlayNextMusicOnPlaylist);
		L.RegFunction("PlayPreviousMusicOnPlaylist", PlayPreviousMusicOnPlaylist);
		L.RegFunction("StopMusic", StopMusic);
		L.RegFunction("PauseMusic", PauseMusic);
		L.RegFunction("UnPauseMusic", UnPauseMusic);
		L.RegFunction("SetSoundStatus", SetSoundStatus);
		L.RegFunction("PlayUISound", PlayUISound);
		L.RegFunction("StopUISound", StopUISound);
		L.RegFunction("PlayRoleSound", PlayRoleSound);
		L.RegFunction("StopRoleSound", StopRoleSound);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("GAME_SETTING_CONFIG_FILE", get_GAME_SETTING_CONFIG_FILE, set_GAME_SETTING_CONFIG_FILE);
		L.RegVar("Instance", get_Instance, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Initialize(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			obj.Initialize();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ReadGameSettingConfig(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			obj.ReadGameSettingConfig();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int PauseAll(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				obj.PauseAll();
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager), typeof(float)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				float arg0 = (float)LuaDLL.lua_tonumber(L, 2);
				obj.PauseAll(arg0);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.AudioManager.PauseAll");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int UnPauseAll(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				obj.UnPauseAll();
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager), typeof(float)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				float arg0 = (float)LuaDLL.lua_tonumber(L, 2);
				obj.UnPauseAll(arg0);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.AudioManager.UnPauseAll");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int PlayMusicPlaylist(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.PlayMusicPlaylist(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int PlayNextMusicOnPlaylist(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			obj.PlayNextMusicOnPlaylist();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int PlayPreviousMusicOnPlaylist(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			obj.PlayPreviousMusicOnPlaylist();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StopMusic(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				obj.StopMusic();
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager), typeof(float)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				float arg0 = (float)LuaDLL.lua_tonumber(L, 2);
				obj.StopMusic(arg0);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.AudioManager.StopMusic");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int PauseMusic(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				obj.PauseMusic();
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager), typeof(float)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				float arg0 = (float)LuaDLL.lua_tonumber(L, 2);
				obj.PauseMusic(arg0);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.AudioManager.PauseMusic");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int UnPauseMusic(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				obj.UnPauseMusic();
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(NCSpeedLight.AudioManager), typeof(float)))
			{
				NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.ToObject(L, 1);
				float arg0 = (float)LuaDLL.lua_tonumber(L, 2);
				obj.UnPauseMusic(arg0);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.AudioManager.UnPauseMusic");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetSoundStatus(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.SetSoundStatus(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int PlayUISound(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			NCSpeedLight.UISoundEnum arg0 = (NCSpeedLight.UISoundEnum)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.UISoundEnum));
			obj.PlayUISound(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StopUISound(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			NCSpeedLight.UISoundEnum arg0 = (NCSpeedLight.UISoundEnum)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.UISoundEnum));
			obj.StopUISound(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int PlayRoleSound(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			NCSpeedLight.RoleSoundEnum arg0 = (NCSpeedLight.RoleSoundEnum)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.RoleSoundEnum));
			obj.PlayRoleSound(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StopRoleSound(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			NCSpeedLight.AudioManager obj = (NCSpeedLight.AudioManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AudioManager));
			NCSpeedLight.RoleSoundEnum arg0 = (NCSpeedLight.RoleSoundEnum)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.RoleSoundEnum));
			float arg1 = (float)LuaDLL.luaL_checknumber(L, 3);
			obj.StopRoleSound(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_GAME_SETTING_CONFIG_FILE(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, NCSpeedLight.AudioManager.GAME_SETTING_CONFIG_FILE);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Instance(IntPtr L)
	{
		try
		{
			ToLua.PushObject(L, NCSpeedLight.AudioManager.Instance);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_GAME_SETTING_CONFIG_FILE(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			NCSpeedLight.AudioManager.GAME_SETTING_CONFIG_FILE = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


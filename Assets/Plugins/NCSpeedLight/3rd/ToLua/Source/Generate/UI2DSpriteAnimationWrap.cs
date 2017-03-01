﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UI2DSpriteAnimationWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UI2DSpriteAnimation), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("Play", Play);
		L.RegFunction("Pause", Pause);
		L.RegFunction("ResetToBeginning", ResetToBeginning);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("ignoreTimeScale", get_ignoreTimeScale, set_ignoreTimeScale);
		L.RegVar("loop", get_loop, set_loop);
		L.RegVar("frames", get_frames, set_frames);
		L.RegVar("isPlaying", get_isPlaying, null);
		L.RegVar("framesPerSecond", get_framesPerSecond, set_framesPerSecond);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Play(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)ToLua.CheckObject(L, 1, typeof(UI2DSpriteAnimation));
			obj.Play();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Pause(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)ToLua.CheckObject(L, 1, typeof(UI2DSpriteAnimation));
			obj.Pause();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ResetToBeginning(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)ToLua.CheckObject(L, 1, typeof(UI2DSpriteAnimation));
			obj.ResetToBeginning();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Equality(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Object arg0 = (UnityEngine.Object)ToLua.ToObject(L, 1);
			UnityEngine.Object arg1 = (UnityEngine.Object)ToLua.ToObject(L, 2);
			bool o = arg0 == arg1;
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ignoreTimeScale(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			bool ret = obj.ignoreTimeScale;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index ignoreTimeScale on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_loop(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			bool ret = obj.loop;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index loop on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_frames(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			UnityEngine.Sprite[] ret = obj.frames;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index frames on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_isPlaying(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			bool ret = obj.isPlaying;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index isPlaying on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_framesPerSecond(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			int ret = obj.framesPerSecond;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index framesPerSecond on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ignoreTimeScale(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.ignoreTimeScale = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index ignoreTimeScale on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_loop(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.loop = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index loop on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_frames(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			UnityEngine.Sprite[] arg0 = ToLua.CheckObjectArray<UnityEngine.Sprite>(L, 2);
			obj.frames = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index frames on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_framesPerSecond(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UI2DSpriteAnimation obj = (UI2DSpriteAnimation)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.framesPerSecond = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index framesPerSecond on a nil value" : e.Message);
		}
	}
}


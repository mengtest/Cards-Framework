﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UIPlaySoundWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UIPlaySound), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("Play", Play);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("audioClip", get_audioClip, set_audioClip);
		L.RegVar("trigger", get_trigger, set_trigger);
		L.RegVar("volume", get_volume, set_volume);
		L.RegVar("pitch", get_pitch, set_pitch);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Play(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UIPlaySound obj = (UIPlaySound)ToLua.CheckObject(L, 1, typeof(UIPlaySound));
			obj.Play();
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
	static int get_audioClip(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			UnityEngine.AudioClip ret = obj.audioClip;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index audioClip on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_trigger(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			UIPlaySound.Trigger ret = obj.trigger;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index trigger on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_volume(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			float ret = obj.volume;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index volume on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_pitch(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			float ret = obj.pitch;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pitch on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_audioClip(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			UnityEngine.AudioClip arg0 = (UnityEngine.AudioClip)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.AudioClip));
			obj.audioClip = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index audioClip on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_trigger(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			UIPlaySound.Trigger arg0 = (UIPlaySound.Trigger)ToLua.CheckObject(L, 2, typeof(UIPlaySound.Trigger));
			obj.trigger = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index trigger on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_volume(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.volume = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index volume on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_pitch(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIPlaySound obj = (UIPlaySound)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.pitch = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pitch on a nil value" : e.Message);
		}
	}
}


﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_ScheduleHideWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.ScheduleHide), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Time", get_Time, set_Time);
		L.EndClass();
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
	static int get_Time(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ScheduleHide obj = (NCSpeedLight.ScheduleHide)o;
			float ret = obj.Time;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Time on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Time(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ScheduleHide obj = (NCSpeedLight.ScheduleHide)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.Time = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Time on a nil value" : e.Message);
		}
	}
}

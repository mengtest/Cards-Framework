﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_AMapAdapterWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.AMapAdapter), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("GetLocation", GetLocation);
		L.RegFunction("StopLocation", StopLocation);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegFunction("Callback", NCSpeedLight_AMapAdapter_Callback);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetLocation(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.AMapAdapter.Callback arg0 = null;
			LuaTypes funcType1 = LuaDLL.lua_type(L, 1);

			if (funcType1 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.AMapAdapter.Callback)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.AMapAdapter.Callback));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 1);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.AMapAdapter.Callback), func) as NCSpeedLight.AMapAdapter.Callback;
			}

			NCSpeedLight.AMapAdapter.GetLocation(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StopLocation(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.AMapAdapter.StopLocation();
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
	static int NCSpeedLight_AMapAdapter_Callback(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			LuaFunction func = ToLua.CheckLuaFunction(L, 1);

			if (count == 1)
			{
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.AMapAdapter.Callback), func);
				ToLua.Push(L, arg1);
			}
			else
			{
				LuaTable self = ToLua.CheckLuaTable(L, 2);
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.AMapAdapter.Callback), func, self);
				ToLua.Push(L, arg1);
			}
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


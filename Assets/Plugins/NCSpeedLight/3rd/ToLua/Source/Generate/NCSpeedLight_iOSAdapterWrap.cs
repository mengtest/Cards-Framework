﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_iOSAdapterWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.iOSAdapter), typeof(System.Object));
		L.RegFunction("Initialize", Initialize);
		L.RegFunction("New", _CreateNCSpeedLight_iOSAdapter);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateNCSpeedLight_iOSAdapter(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				NCSpeedLight.iOSAdapter obj = new NCSpeedLight.iOSAdapter();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: NCSpeedLight.iOSAdapter.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Initialize(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.iOSAdapter.Initialize();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}

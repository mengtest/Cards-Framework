﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class AndroidAdapterWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(AndroidAdapter), typeof(System.Object));
		L.RegFunction("Initialize", Initialize);
		L.RegFunction("New", _CreateAndroidAdapter);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateAndroidAdapter(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				AndroidAdapter obj = new AndroidAdapter();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: AndroidAdapter.New");
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
			AndroidAdapter.Initialize();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


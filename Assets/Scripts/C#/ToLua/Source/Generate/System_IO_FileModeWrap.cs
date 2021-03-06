﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class System_IO_FileModeWrap
{
	public static void Register(LuaState L)
	{
		L.BeginEnum(typeof(System.IO.FileMode));
		L.RegVar("CreateNew", get_CreateNew, null);
		L.RegVar("Create", get_Create, null);
		L.RegVar("Open", get_Open, null);
		L.RegVar("OpenOrCreate", get_OpenOrCreate, null);
		L.RegVar("Truncate", get_Truncate, null);
		L.RegVar("Append", get_Append, null);
		L.RegFunction("IntToEnum", IntToEnum);
		L.EndEnum();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CreateNew(IntPtr L)
	{
		ToLua.Push(L, System.IO.FileMode.CreateNew);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Create(IntPtr L)
	{
		ToLua.Push(L, System.IO.FileMode.Create);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Open(IntPtr L)
	{
		ToLua.Push(L, System.IO.FileMode.Open);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_OpenOrCreate(IntPtr L)
	{
		ToLua.Push(L, System.IO.FileMode.OpenOrCreate);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Truncate(IntPtr L)
	{
		ToLua.Push(L, System.IO.FileMode.Truncate);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Append(IntPtr L)
	{
		ToLua.Push(L, System.IO.FileMode.Append);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int IntToEnum(IntPtr L)
	{
		int arg0 = (int)LuaDLL.lua_tonumber(L, 1);
		System.IO.FileMode o = (System.IO.FileMode)arg0;
		ToLua.Push(L, o);
		return 1;
	}
}


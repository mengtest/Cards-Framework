﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class cn_sharesdk_unity3d_ResponseStateWrap
{
	public static void Register(LuaState L)
	{
		L.BeginEnum(typeof(cn.sharesdk.unity3d.ResponseState));
		L.RegVar("Begin", get_Begin, null);
		L.RegVar("Success", get_Success, null);
		L.RegVar("Fail", get_Fail, null);
		L.RegVar("Cancel", get_Cancel, null);
		L.RegVar("BeginUPLoad", get_BeginUPLoad, null);
		L.RegFunction("IntToEnum", IntToEnum);
		L.EndEnum();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Begin(IntPtr L)
	{
		ToLua.Push(L, cn.sharesdk.unity3d.ResponseState.Begin);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Success(IntPtr L)
	{
		ToLua.Push(L, cn.sharesdk.unity3d.ResponseState.Success);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Fail(IntPtr L)
	{
		ToLua.Push(L, cn.sharesdk.unity3d.ResponseState.Fail);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Cancel(IntPtr L)
	{
		ToLua.Push(L, cn.sharesdk.unity3d.ResponseState.Cancel);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_BeginUPLoad(IntPtr L)
	{
		ToLua.Push(L, cn.sharesdk.unity3d.ResponseState.BeginUPLoad);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int IntToEnum(IntPtr L)
	{
		int arg0 = (int)LuaDLL.lua_tonumber(L, 1);
		cn.sharesdk.unity3d.ResponseState o = (cn.sharesdk.unity3d.ResponseState)arg0;
		ToLua.Push(L, o);
		return 1;
	}
}

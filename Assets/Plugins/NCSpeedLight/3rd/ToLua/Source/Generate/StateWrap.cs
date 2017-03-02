﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class StateWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(State), typeof(System.Object));
		L.RegFunction("OnCreated", OnCreated);
		L.RegFunction("Begin", Begin);
		L.RegFunction("Update", Update);
		L.RegFunction("End", End);
		L.RegFunction("OnDestroy", OnDestroy);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Name", get_Name, set_Name);
		L.RegVar("Machine", get_Machine, set_Machine);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OnCreated(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			State obj = (State)ToLua.CheckObject(L, 1, typeof(State));
			obj.OnCreated();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Begin(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			State obj = (State)ToLua.CheckObject(L, 1, typeof(State));
			obj.Begin();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Update(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			State obj = (State)ToLua.CheckObject(L, 1, typeof(State));
			obj.Update();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int End(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			State obj = (State)ToLua.CheckObject(L, 1, typeof(State));
			obj.End();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OnDestroy(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			State obj = (State)ToLua.CheckObject(L, 1, typeof(State));
			obj.OnDestroy();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Name(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			State obj = (State)o;
			string ret = obj.Name;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Name on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Machine(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			State obj = (State)o;
			StateMachine ret = obj.Machine;
			ToLua.PushObject(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Machine on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Name(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			State obj = (State)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.Name = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Name on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Machine(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			State obj = (State)o;
			StateMachine arg0 = (StateMachine)ToLua.CheckObject(L, 2, typeof(StateMachine));
			obj.Machine = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Machine on a nil value" : e.Message);
		}
	}
}

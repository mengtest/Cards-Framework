﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_EventManagerWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.EventManager), typeof(System.Object));
		L.RegFunction("Notify", Notify);
		L.RegFunction("Register", _Register);
		L.RegFunction("Unregister", Unregister);
		L.RegFunction("UnregisterAll", UnregisterAll);
		L.RegFunction("New", _CreateNCSpeedLight_EventManager);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateNCSpeedLight_EventManager(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				NCSpeedLight.EventManager obj = new NCSpeedLight.EventManager();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: NCSpeedLight.EventManager.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Notify(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.EventManager obj = (NCSpeedLight.EventManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.EventManager));
			NCSpeedLight.Evt arg0 = (NCSpeedLight.Evt)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.Evt));
			obj.Notify(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _Register(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			NCSpeedLight.EventManager obj = (NCSpeedLight.EventManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.EventManager));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.EventHandlerDelegate arg1 = null;
			LuaTypes funcType3 = LuaDLL.lua_type(L, 3);

			if (funcType3 != LuaTypes.LUA_TFUNCTION)
			{
				 arg1 = (NCSpeedLight.EventHandlerDelegate)ToLua.CheckObject(L, 3, typeof(NCSpeedLight.EventHandlerDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 3);
				arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.EventHandlerDelegate), func) as NCSpeedLight.EventHandlerDelegate;
			}

			obj.Register(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Unregister(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			NCSpeedLight.EventManager obj = (NCSpeedLight.EventManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.EventManager));
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			NCSpeedLight.EventHandlerDelegate arg1 = null;
			LuaTypes funcType3 = LuaDLL.lua_type(L, 3);

			if (funcType3 != LuaTypes.LUA_TFUNCTION)
			{
				 arg1 = (NCSpeedLight.EventHandlerDelegate)ToLua.CheckObject(L, 3, typeof(NCSpeedLight.EventHandlerDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 3);
				arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.EventHandlerDelegate), func) as NCSpeedLight.EventHandlerDelegate;
			}

			obj.Unregister(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int UnregisterAll(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.EventManager obj = (NCSpeedLight.EventManager)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.EventManager));
			obj.UnregisterAll();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


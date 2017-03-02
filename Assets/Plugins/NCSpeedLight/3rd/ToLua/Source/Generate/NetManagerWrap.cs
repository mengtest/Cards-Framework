﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NetManagerWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NetManager), typeof(EventManager));
		L.RegFunction("Initialize", Initialize);
		L.RegFunction("CreateConnection", CreateConnection);
		L.RegFunction("DeleteConnection", DeleteConnection);
		L.RegFunction("GetConnection", GetConnection);
		L.RegFunction("Update", Update);
		L.RegFunction("Destroy", Destroy);
		L.RegFunction("SendEvent", SendEvent);
		L.RegFunction("RegisterEvent", RegisterEvent);
		L.RegFunction("UnregisterEvent", UnregisterEvent);
		L.RegFunction("NotifyEvent", NotifyEvent);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Instance", get_Instance, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Initialize(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NetManager.Initialize();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CreateConnection(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			NetManager.ServerType arg0 = (NetManager.ServerType)ToLua.CheckObject(L, 1, typeof(NetManager.ServerType));
			string arg1 = ToLua.CheckString(L, 2);
			int arg2 = (int)LuaDLL.luaL_checknumber(L, 3);
			ServerConnection.StateListener arg3 = (ServerConnection.StateListener)ToLua.CheckObject(L, 4, typeof(ServerConnection.StateListener));
			bool o = NetManager.CreateConnection(arg0, arg1, arg2, arg3);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int DeleteConnection(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NetManager.ServerType arg0 = (NetManager.ServerType)ToLua.CheckObject(L, 1, typeof(NetManager.ServerType));
			NetManager.DeleteConnection(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetConnection(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NetManager.ServerType arg0 = (NetManager.ServerType)ToLua.CheckObject(L, 1, typeof(NetManager.ServerType));
			ServerConnection o = NetManager.GetConnection(arg0);
			ToLua.PushObject(L, o);
			return 1;
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
			ToLua.CheckArgsCount(L, 0);
			NetManager.Update();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Destroy(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NetManager.Destroy();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SendEvent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 5);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
			byte[] arg1 = ToLua.CheckByteBuffer(L, 2);
			int arg2 = (int)LuaDLL.luaL_checknumber(L, 3);
			int arg3 = (int)LuaDLL.luaL_checknumber(L, 4);
			NetManager.ServerType arg4 = (NetManager.ServerType)ToLua.CheckObject(L, 5, typeof(NetManager.ServerType));
			NetManager.SendEvent(arg0, arg1, arg2, arg3, arg4);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int RegisterEvent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
			EventHandlerDelegate arg1 = null;
			LuaTypes funcType2 = LuaDLL.lua_type(L, 2);

			if (funcType2 != LuaTypes.LUA_TFUNCTION)
			{
				 arg1 = (EventHandlerDelegate)ToLua.CheckObject(L, 2, typeof(EventHandlerDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 2);
				arg1 = DelegateFactory.CreateDelegate(typeof(EventHandlerDelegate), func) as EventHandlerDelegate;
			}

			NetManager.RegisterEvent(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int UnregisterEvent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
			EventHandlerDelegate arg1 = null;
			LuaTypes funcType2 = LuaDLL.lua_type(L, 2);

			if (funcType2 != LuaTypes.LUA_TFUNCTION)
			{
				 arg1 = (EventHandlerDelegate)ToLua.CheckObject(L, 2, typeof(EventHandlerDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 2);
				arg1 = DelegateFactory.CreateDelegate(typeof(EventHandlerDelegate), func) as EventHandlerDelegate;
			}

			NetManager.UnregisterEvent(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int NotifyEvent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			Evt arg0 = (Evt)ToLua.CheckObject(L, 1, typeof(Evt));
			NetManager.NotifyEvent(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Instance(IntPtr L)
	{
		try
		{
			ToLua.PushObject(L, NetManager.Instance);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


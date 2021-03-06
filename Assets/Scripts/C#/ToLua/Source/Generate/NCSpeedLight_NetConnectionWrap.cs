﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_NetConnectionWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.NetConnection), typeof(System.Object));
		L.RegFunction("Connect", Connect);
		L.RegFunction("Reconnect", Reconnect);
		L.RegFunction("Disconnect", Disconnect);
		L.RegFunction("Send", Send);
		L.RegFunction("New", _CreateNCSpeedLight_NetConnection);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("IsConnected", get_IsConnected, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateNCSpeedLight_NetConnection(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 6)
			{
				string arg0 = ToLua.CheckString(L, 1);
				int arg1 = (int)LuaDLL.luaL_checknumber(L, 2);
				NCSpeedLight.NetConnection.StatusDelegate arg2 = null;
				LuaTypes funcType3 = LuaDLL.lua_type(L, 3);

				if (funcType3 != LuaTypes.LUA_TFUNCTION)
				{
					 arg2 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 3, typeof(NCSpeedLight.NetConnection.StatusDelegate));
				}
				else
				{
					LuaFunction func = ToLua.ToLuaFunction(L, 3);
					arg2 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
				}

				NCSpeedLight.NetConnection.StatusDelegate arg3 = null;
				LuaTypes funcType4 = LuaDLL.lua_type(L, 4);

				if (funcType4 != LuaTypes.LUA_TFUNCTION)
				{
					 arg3 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 4, typeof(NCSpeedLight.NetConnection.StatusDelegate));
				}
				else
				{
					LuaFunction func = ToLua.ToLuaFunction(L, 4);
					arg3 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
				}

				NCSpeedLight.NetConnection.StatusDelegate arg4 = null;
				LuaTypes funcType5 = LuaDLL.lua_type(L, 5);

				if (funcType5 != LuaTypes.LUA_TFUNCTION)
				{
					 arg4 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 5, typeof(NCSpeedLight.NetConnection.StatusDelegate));
				}
				else
				{
					LuaFunction func = ToLua.ToLuaFunction(L, 5);
					arg4 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
				}

				NCSpeedLight.NetConnection.StatusDelegate arg5 = null;
				LuaTypes funcType6 = LuaDLL.lua_type(L, 6);

				if (funcType6 != LuaTypes.LUA_TFUNCTION)
				{
					 arg5 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 6, typeof(NCSpeedLight.NetConnection.StatusDelegate));
				}
				else
				{
					LuaFunction func = ToLua.ToLuaFunction(L, 6);
					arg5 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
				}

				NCSpeedLight.NetConnection obj = new NCSpeedLight.NetConnection(arg0, arg1, arg2, arg3, arg4, arg5);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: NCSpeedLight.NetConnection.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Connect(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.NetConnection));
			obj.Connect();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Reconnect(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.NetConnection));
			obj.Reconnect();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Disconnect(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.NetConnection));
			obj.Disconnect();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Send(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.NetConnection));
			NCSpeedLight.NetPacket arg0 = (NCSpeedLight.NetPacket)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.NetPacket));
			obj.Send(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_IsConnected(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			bool ret = obj.IsConnected;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index IsConnected on a nil value" : e.Message);
		}
	}
}


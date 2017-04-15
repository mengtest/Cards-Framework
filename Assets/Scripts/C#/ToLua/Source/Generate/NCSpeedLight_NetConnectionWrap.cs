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
		L.RegVar("Host", get_Host, set_Host);
		L.RegVar("Port", get_Port, set_Port);
		L.RegVar("Socket", get_Socket, set_Socket);
		L.RegVar("Error", get_Error, set_Error);
		L.RegVar("ReconnectInterval", get_ReconnectInterval, set_ReconnectInterval);
		L.RegVar("Header", get_Header, set_Header);
		L.RegVar("OnConnected", get_OnConnected, set_OnConnected);
		L.RegVar("OnDisconnected", get_OnDisconnected, set_OnDisconnected);
		L.RegVar("OnReconnected", get_OnReconnected, set_OnReconnected);
		L.RegVar("OnErrorOccupied", get_OnErrorOccupied, set_OnErrorOccupied);
		L.RegVar("IsConnected", get_IsConnected, null);
		L.RegFunction("StatusDelegate", NCSpeedLight_NetConnection_StatusDelegate);
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
	static int get_Host(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			string ret = obj.Host;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Host on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Port(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			int ret = obj.Port;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Port on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Socket(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			System.Net.Sockets.Socket ret = obj.Socket;
			ToLua.PushObject(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Socket on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Error(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			string ret = obj.Error;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Error on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ReconnectInterval(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			float ret = obj.ReconnectInterval;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index ReconnectInterval on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Header(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			byte[] ret = obj.Header;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Header on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_OnConnected(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate ret = obj.OnConnected;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnConnected on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_OnDisconnected(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate ret = obj.OnDisconnected;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnDisconnected on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_OnReconnected(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate ret = obj.OnReconnected;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnReconnected on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_OnErrorOccupied(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate ret = obj.OnErrorOccupied;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnErrorOccupied on a nil value" : e.Message);
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

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Host(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.Host = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Host on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Port(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.Port = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Port on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Socket(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			System.Net.Sockets.Socket arg0 = (System.Net.Sockets.Socket)ToLua.CheckObject(L, 2, typeof(System.Net.Sockets.Socket));
			obj.Socket = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Socket on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Error(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.Error = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Error on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ReconnectInterval(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.ReconnectInterval = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index ReconnectInterval on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Header(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			byte[] arg0 = ToLua.CheckByteBuffer(L, 2);
			obj.Header = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Header on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_OnConnected(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate arg0 = null;
			LuaTypes funcType2 = LuaDLL.lua_type(L, 2);

			if (funcType2 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.NetConnection.StatusDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 2);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
			}

			obj.OnConnected = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnConnected on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_OnDisconnected(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate arg0 = null;
			LuaTypes funcType2 = LuaDLL.lua_type(L, 2);

			if (funcType2 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.NetConnection.StatusDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 2);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
			}

			obj.OnDisconnected = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnDisconnected on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_OnReconnected(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate arg0 = null;
			LuaTypes funcType2 = LuaDLL.lua_type(L, 2);

			if (funcType2 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.NetConnection.StatusDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 2);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
			}

			obj.OnReconnected = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnReconnected on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_OnErrorOccupied(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.NetConnection obj = (NCSpeedLight.NetConnection)o;
			NCSpeedLight.NetConnection.StatusDelegate arg0 = null;
			LuaTypes funcType2 = LuaDLL.lua_type(L, 2);

			if (funcType2 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.NetConnection.StatusDelegate)ToLua.CheckObject(L, 2, typeof(NCSpeedLight.NetConnection.StatusDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 2);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func) as NCSpeedLight.NetConnection.StatusDelegate;
			}

			obj.OnErrorOccupied = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index OnErrorOccupied on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int NCSpeedLight_NetConnection_StatusDelegate(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			LuaFunction func = ToLua.CheckLuaFunction(L, 1);

			if (count == 1)
			{
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func);
				ToLua.Push(L, arg1);
			}
			else
			{
				LuaTable self = ToLua.CheckLuaTable(L, 2);
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.NetConnection.StatusDelegate), func, self);
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

﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class DBManagerWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(DBManager), typeof(System.Object));
		L.RegFunction("Initialize", Initialize);
		L.RegFunction("CreateDBConnect", CreateDBConnect);
		L.RegFunction("Dispose", Dispose);
		L.RegFunction("Close", Close);
		L.RegFunction("IsOpen", IsOpen);
		L.RegFunction("GetLocalItem", GetLocalItem);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Instance", get_Instance, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Initialize(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			DBManager obj = (DBManager)ToLua.CheckObject(L, 1, typeof(DBManager));
			obj.Initialize();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CreateDBConnect(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			DBManager obj = (DBManager)ToLua.CheckObject(L, 1, typeof(DBManager));
			byte[] arg0 = ToLua.CheckByteBuffer(L, 2);
			bool o = obj.CreateDBConnect(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Dispose(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			DBManager obj = (DBManager)ToLua.CheckObject(L, 1, typeof(DBManager));
			obj.Dispose();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Close(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			DBManager obj = (DBManager)ToLua.CheckObject(L, 1, typeof(DBManager));
			obj.Close();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int IsOpen(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			DBManager obj = (DBManager)ToLua.CheckObject(L, 1, typeof(DBManager));
			bool o = obj.IsOpen();
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetLocalItem(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(DBManager), typeof(string), typeof(LuaInterface.LuaOut<LocalItem>)))
			{
				DBManager obj = (DBManager)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				LocalItem arg1 = null;
				bool o = obj.GetLocalItem(arg0, out arg1);
				LuaDLL.lua_pushboolean(L, o);
				ToLua.PushObject(L, arg1);
				return 2;
			}
			else if (count == 4 && TypeChecker.CheckTypes(L, 1, typeof(DBManager), typeof(string), typeof(uint), typeof(LuaInterface.LuaOut<LocalItem>)))
			{
				DBManager obj = (DBManager)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				uint arg1 = (uint)LuaDLL.lua_tonumber(L, 3);
				LocalItem arg2 = null;
				bool o = obj.GetLocalItem(arg0, arg1, out arg2);
				LuaDLL.lua_pushboolean(L, o);
				ToLua.PushObject(L, arg2);
				return 2;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: DBManager.GetLocalItem");
			}
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
			ToLua.PushObject(L, DBManager.Instance);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}

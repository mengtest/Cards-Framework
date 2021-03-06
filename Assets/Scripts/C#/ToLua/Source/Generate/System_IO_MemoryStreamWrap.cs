﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class System_IO_MemoryStreamWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(System.IO.MemoryStream), typeof(System.IO.Stream));
		L.RegFunction("Flush", Flush);
		L.RegFunction("GetBuffer", GetBuffer);
		L.RegFunction("Read", Read);
		L.RegFunction("ReadByte", ReadByte);
		L.RegFunction("Seek", Seek);
		L.RegFunction("SetLength", SetLength);
		L.RegFunction("ToArray", ToArray);
		L.RegFunction("Write", Write);
		L.RegFunction("WriteByte", WriteByte);
		L.RegFunction("WriteTo", WriteTo);
		L.RegFunction("New", _CreateSystem_IO_MemoryStream);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("CanRead", get_CanRead, null);
		L.RegVar("CanSeek", get_CanSeek, null);
		L.RegVar("CanWrite", get_CanWrite, null);
		L.RegVar("Capacity", get_Capacity, set_Capacity);
		L.RegVar("Length", get_Length, null);
		L.RegVar("Position", get_Position, set_Position);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateSystem_IO_MemoryStream(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				System.IO.MemoryStream obj = new System.IO.MemoryStream();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(byte[])))
			{
				byte[] arg0 = ToLua.CheckByteBuffer(L, 1);
				System.IO.MemoryStream obj = new System.IO.MemoryStream(arg0);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(int)))
			{
				int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
				System.IO.MemoryStream obj = new System.IO.MemoryStream(arg0);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(byte[]), typeof(bool)))
			{
				byte[] arg0 = ToLua.CheckByteBuffer(L, 1);
				bool arg1 = LuaDLL.luaL_checkboolean(L, 2);
				System.IO.MemoryStream obj = new System.IO.MemoryStream(arg0, arg1);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(byte[]), typeof(int), typeof(int)))
			{
				byte[] arg0 = ToLua.CheckByteBuffer(L, 1);
				int arg1 = (int)LuaDLL.luaL_checknumber(L, 2);
				int arg2 = (int)LuaDLL.luaL_checknumber(L, 3);
				System.IO.MemoryStream obj = new System.IO.MemoryStream(arg0, arg1, arg2);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 4 && TypeChecker.CheckTypes(L, 1, typeof(byte[]), typeof(int), typeof(int), typeof(bool)))
			{
				byte[] arg0 = ToLua.CheckByteBuffer(L, 1);
				int arg1 = (int)LuaDLL.luaL_checknumber(L, 2);
				int arg2 = (int)LuaDLL.luaL_checknumber(L, 3);
				bool arg3 = LuaDLL.luaL_checkboolean(L, 4);
				System.IO.MemoryStream obj = new System.IO.MemoryStream(arg0, arg1, arg2, arg3);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else if (count == 5 && TypeChecker.CheckTypes(L, 1, typeof(byte[]), typeof(int), typeof(int), typeof(bool), typeof(bool)))
			{
				byte[] arg0 = ToLua.CheckByteBuffer(L, 1);
				int arg1 = (int)LuaDLL.luaL_checknumber(L, 2);
				int arg2 = (int)LuaDLL.luaL_checknumber(L, 3);
				bool arg3 = LuaDLL.luaL_checkboolean(L, 4);
				bool arg4 = LuaDLL.luaL_checkboolean(L, 5);
				System.IO.MemoryStream obj = new System.IO.MemoryStream(arg0, arg1, arg2, arg3, arg4);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: System.IO.MemoryStream.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Flush(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			obj.Flush();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetBuffer(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			byte[] o = obj.GetBuffer();
			ToLua.Push(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Read(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			byte[] arg0 = ToLua.CheckByteBuffer(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			int arg2 = (int)LuaDLL.luaL_checknumber(L, 4);
			int o = obj.Read(arg0, arg1, arg2);
			LuaDLL.lua_pushinteger(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ReadByte(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			int o = obj.ReadByte();
			LuaDLL.lua_pushinteger(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Seek(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			long arg0 = LuaDLL.tolua_checkint64(L, 2);
			System.IO.SeekOrigin arg1 = (System.IO.SeekOrigin)ToLua.CheckObject(L, 3, typeof(System.IO.SeekOrigin));
			long o = obj.Seek(arg0, arg1);
			LuaDLL.tolua_pushint64(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetLength(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			long arg0 = LuaDLL.tolua_checkint64(L, 2);
			obj.SetLength(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ToArray(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			byte[] o = obj.ToArray();
			ToLua.Push(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Write(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			byte[] arg0 = ToLua.CheckByteBuffer(L, 2);
			int arg1 = (int)LuaDLL.luaL_checknumber(L, 3);
			int arg2 = (int)LuaDLL.luaL_checknumber(L, 4);
			obj.Write(arg0, arg1, arg2);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int WriteByte(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			byte arg0 = (byte)LuaDLL.luaL_checknumber(L, 2);
			obj.WriteByte(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int WriteTo(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)ToLua.CheckObject(L, 1, typeof(System.IO.MemoryStream));
			System.IO.Stream arg0 = (System.IO.Stream)ToLua.CheckObject(L, 2, typeof(System.IO.Stream));
			obj.WriteTo(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CanRead(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			bool ret = obj.CanRead;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index CanRead on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CanSeek(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			bool ret = obj.CanSeek;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index CanSeek on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CanWrite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			bool ret = obj.CanWrite;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index CanWrite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Capacity(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			int ret = obj.Capacity;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Capacity on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Length(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			long ret = obj.Length;
			LuaDLL.tolua_pushint64(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Length on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Position(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			long ret = obj.Position;
			LuaDLL.tolua_pushint64(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Position on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Capacity(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.Capacity = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Capacity on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Position(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.MemoryStream obj = (System.IO.MemoryStream)o;
			long arg0 = LuaDLL.tolua_checkint64(L, 2);
			obj.Position = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Position on a nil value" : e.Message);
		}
	}
}


﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class System_IO_FileInfoWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(System.IO.FileInfo), typeof(System.IO.FileSystemInfo));
		L.RegFunction("Encrypt", Encrypt);
		L.RegFunction("Decrypt", Decrypt);
		L.RegFunction("OpenText", OpenText);
		L.RegFunction("CreateText", CreateText);
		L.RegFunction("AppendText", AppendText);
		L.RegFunction("Create", Create);
		L.RegFunction("OpenRead", OpenRead);
		L.RegFunction("OpenWrite", OpenWrite);
		L.RegFunction("Open", Open);
		L.RegFunction("Delete", Delete);
		L.RegFunction("MoveTo", MoveTo);
		L.RegFunction("CopyTo", CopyTo);
		L.RegFunction("ToString", ToString);
		L.RegFunction("GetAccessControl", GetAccessControl);
		L.RegFunction("Replace", Replace);
		L.RegFunction("SetAccessControl", SetAccessControl);
		L.RegFunction("New", _CreateSystem_IO_FileInfo);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Exists", get_Exists, null);
		L.RegVar("Name", get_Name, null);
		L.RegVar("IsReadOnly", get_IsReadOnly, set_IsReadOnly);
		L.RegVar("Length", get_Length, null);
		L.RegVar("DirectoryName", get_DirectoryName, null);
		L.RegVar("Directory", get_Directory, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateSystem_IO_FileInfo(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				string arg0 = ToLua.CheckString(L, 1);
				System.IO.FileInfo obj = new System.IO.FileInfo(arg0);
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: System.IO.FileInfo.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Encrypt(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			obj.Encrypt();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Decrypt(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			obj.Decrypt();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenText(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			System.IO.StreamReader o = obj.OpenText();
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CreateText(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			System.IO.StreamWriter o = obj.CreateText();
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int AppendText(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			System.IO.StreamWriter o = obj.AppendText();
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Create(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			System.IO.FileStream o = obj.Create();
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenRead(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			System.IO.FileStream o = obj.OpenRead();
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenWrite(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			System.IO.FileStream o = obj.OpenWrite();
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Open(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(System.IO.FileMode)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				System.IO.FileMode arg0 = (System.IO.FileMode)ToLua.ToObject(L, 2);
				System.IO.FileStream o = obj.Open(arg0);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(System.IO.FileMode), typeof(System.IO.FileAccess)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				System.IO.FileMode arg0 = (System.IO.FileMode)ToLua.ToObject(L, 2);
				System.IO.FileAccess arg1 = (System.IO.FileAccess)ToLua.ToObject(L, 3);
				System.IO.FileStream o = obj.Open(arg0, arg1);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 4 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(System.IO.FileMode), typeof(System.IO.FileAccess), typeof(System.IO.FileShare)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				System.IO.FileMode arg0 = (System.IO.FileMode)ToLua.ToObject(L, 2);
				System.IO.FileAccess arg1 = (System.IO.FileAccess)ToLua.ToObject(L, 3);
				System.IO.FileShare arg2 = (System.IO.FileShare)ToLua.ToObject(L, 4);
				System.IO.FileStream o = obj.Open(arg0, arg1, arg2);
				ToLua.PushObject(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: System.IO.FileInfo.Open");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Delete(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			obj.Delete();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int MoveTo(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			string arg0 = ToLua.CheckString(L, 2);
			obj.MoveTo(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CopyTo(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(string)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				System.IO.FileInfo o = obj.CopyTo(arg0);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(string), typeof(bool)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				bool arg1 = LuaDLL.lua_toboolean(L, 3);
				System.IO.FileInfo o = obj.CopyTo(arg0, arg1);
				ToLua.PushObject(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: System.IO.FileInfo.CopyTo");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ToString(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			string o = obj.ToString();
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetAccessControl(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				System.Security.AccessControl.FileSecurity o = obj.GetAccessControl();
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(System.Security.AccessControl.AccessControlSections)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				System.Security.AccessControl.AccessControlSections arg0 = (System.Security.AccessControl.AccessControlSections)ToLua.ToObject(L, 2);
				System.Security.AccessControl.FileSecurity o = obj.GetAccessControl(arg0);
				ToLua.PushObject(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: System.IO.FileInfo.GetAccessControl");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Replace(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(string), typeof(string)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				string arg1 = ToLua.ToString(L, 3);
				System.IO.FileInfo o = obj.Replace(arg0, arg1);
				ToLua.PushObject(L, o);
				return 1;
			}
			else if (count == 4 && TypeChecker.CheckTypes(L, 1, typeof(System.IO.FileInfo), typeof(string), typeof(string), typeof(bool)))
			{
				System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				string arg1 = ToLua.ToString(L, 3);
				bool arg2 = LuaDLL.lua_toboolean(L, 4);
				System.IO.FileInfo o = obj.Replace(arg0, arg1, arg2);
				ToLua.PushObject(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: System.IO.FileInfo.Replace");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetAccessControl(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			System.IO.FileInfo obj = (System.IO.FileInfo)ToLua.CheckObject(L, 1, typeof(System.IO.FileInfo));
			System.Security.AccessControl.FileSecurity arg0 = (System.Security.AccessControl.FileSecurity)ToLua.CheckObject(L, 2, typeof(System.Security.AccessControl.FileSecurity));
			obj.SetAccessControl(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Exists(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)o;
			bool ret = obj.Exists;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Exists on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Name(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)o;
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
	static int get_IsReadOnly(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)o;
			bool ret = obj.IsReadOnly;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index IsReadOnly on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Length(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)o;
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
	static int get_DirectoryName(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)o;
			string ret = obj.DirectoryName;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index DirectoryName on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Directory(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)o;
			System.IO.DirectoryInfo ret = obj.Directory;
			ToLua.PushObject(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Directory on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_IsReadOnly(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			System.IO.FileInfo obj = (System.IO.FileInfo)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.IsReadOnly = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index IsReadOnly on a nil value" : e.Message);
		}
	}
}


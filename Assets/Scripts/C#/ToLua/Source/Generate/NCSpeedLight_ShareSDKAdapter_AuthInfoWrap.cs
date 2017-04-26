﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_ShareSDKAdapter_AuthInfoWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.ShareSDKAdapter.AuthInfo), typeof(System.Object));
		L.RegFunction("New", _CreateNCSpeedLight_ShareSDKAdapter_AuthInfo);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("openID", get_openID, set_openID);
		L.RegVar("expiresIn", get_expiresIn, set_expiresIn);
		L.RegVar("userGender", get_userGender, set_userGender);
		L.RegVar("tokenSecret", get_tokenSecret, set_tokenSecret);
		L.RegVar("userID", get_userID, set_userID);
		L.RegVar("unionID", get_unionID, set_unionID);
		L.RegVar("expiresTime", get_expiresTime, set_expiresTime);
		L.RegVar("userName", get_userName, set_userName);
		L.RegVar("token", get_token, set_token);
		L.RegVar("userIcon", get_userIcon, set_userIcon);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateNCSpeedLight_ShareSDKAdapter_AuthInfo(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				NCSpeedLight.ShareSDKAdapter.AuthInfo obj = new NCSpeedLight.ShareSDKAdapter.AuthInfo();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: NCSpeedLight.ShareSDKAdapter.AuthInfo.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_openID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.openID;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index openID on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_expiresIn(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			int ret = obj.expiresIn;
			LuaDLL.lua_pushinteger(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index expiresIn on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_userGender(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.userGender;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userGender on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_tokenSecret(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.tokenSecret;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index tokenSecret on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_userID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.userID;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userID on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_unionID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.unionID;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index unionID on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_expiresTime(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			long ret = obj.expiresTime;
			LuaDLL.tolua_pushint64(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index expiresTime on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_userName(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.userName;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userName on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_token(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.token;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index token on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_userIcon(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string ret = obj.userIcon;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userIcon on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_openID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.openID = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index openID on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_expiresIn(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			obj.expiresIn = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index expiresIn on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_userGender(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.userGender = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userGender on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_tokenSecret(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.tokenSecret = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index tokenSecret on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_userID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.userID = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userID on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_unionID(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.unionID = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index unionID on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_expiresTime(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			long arg0 = LuaDLL.tolua_checkint64(L, 2);
			obj.expiresTime = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index expiresTime on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_userName(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.userName = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userName on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_token(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.token = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index token on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_userIcon(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthInfo obj = (NCSpeedLight.ShareSDKAdapter.AuthInfo)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.userIcon = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index userIcon on a nil value" : e.Message);
		}
	}
}


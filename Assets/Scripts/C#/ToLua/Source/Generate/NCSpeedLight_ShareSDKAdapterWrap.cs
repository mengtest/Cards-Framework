﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_ShareSDKAdapterWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.ShareSDKAdapter), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("AuthWechat", AuthWechat);
		L.RegFunction("GetWechatAuthInfo", GetWechatAuthInfo);
		L.RegFunction("ShareWechatMoment", ShareWechatMoment);
		L.RegFunction("ShareWechatFriend", ShareWechatFriend);
		L.RegFunction("ShareWechatFriendWithScreenshot", ShareWechatFriendWithScreenshot);
		L.RegFunction("ShareWechatMomentWithScreenshot", ShareWechatMomentWithScreenshot);
		L.RegFunction("InviteWechatFriend", InviteWechatFriend);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegFunction("AuthCallbackDelegate", NCSpeedLight_ShareSDKAdapter_AuthCallbackDelegate);
		L.RegFunction("ShareCallbackDelegate", NCSpeedLight_ShareSDKAdapter_ShareCallbackDelegate);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int AuthWechat(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.ShareSDKAdapter.AuthCallbackDelegate arg0 = null;
			LuaTypes funcType1 = LuaDLL.lua_type(L, 1);

			if (funcType1 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.ShareSDKAdapter.AuthCallbackDelegate)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.ShareSDKAdapter.AuthCallbackDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 1);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.AuthCallbackDelegate), func) as NCSpeedLight.ShareSDKAdapter.AuthCallbackDelegate;
			}

			NCSpeedLight.ShareSDKAdapter.AuthWechat(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetWechatAuthInfo(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.ShareSDKAdapter.AuthInfo o = NCSpeedLight.ShareSDKAdapter.GetWechatAuthInfo();
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ShareWechatMoment(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate arg0 = null;
			LuaTypes funcType1 = LuaDLL.lua_type(L, 1);

			if (funcType1 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 1);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate), func) as NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate;
			}

			NCSpeedLight.ShareSDKAdapter.ShareWechatMoment(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ShareWechatFriend(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate arg0 = null;
			LuaTypes funcType1 = LuaDLL.lua_type(L, 1);

			if (funcType1 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 1);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate), func) as NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate;
			}

			NCSpeedLight.ShareSDKAdapter.ShareWechatFriend(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ShareWechatFriendWithScreenshot(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate arg0 = null;
			LuaTypes funcType1 = LuaDLL.lua_type(L, 1);

			if (funcType1 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 1);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate), func) as NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate;
			}

			NCSpeedLight.ShareSDKAdapter.ShareWechatFriendWithScreenshot(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ShareWechatMomentWithScreenshot(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate arg0 = null;
			LuaTypes funcType1 = LuaDLL.lua_type(L, 1);

			if (funcType1 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 1);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate), func) as NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate;
			}

			NCSpeedLight.ShareSDKAdapter.ShareWechatMomentWithScreenshot(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int InviteWechatFriend(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate arg0 = null;
			LuaTypes funcType1 = LuaDLL.lua_type(L, 1);

			if (funcType1 != LuaTypes.LUA_TFUNCTION)
			{
				 arg0 = (NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 1);
				arg0 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate), func) as NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate;
			}

			int arg1 = (int)LuaDLL.luaL_checknumber(L, 2);
			string arg2 = ToLua.CheckString(L, 3);
			NCSpeedLight.ShareSDKAdapter.InviteWechatFriend(arg0, arg1, arg2);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Equality(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Object arg0 = (UnityEngine.Object)ToLua.ToObject(L, 1);
			UnityEngine.Object arg1 = (UnityEngine.Object)ToLua.ToObject(L, 2);
			bool o = arg0 == arg1;
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int NCSpeedLight_ShareSDKAdapter_AuthCallbackDelegate(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			LuaFunction func = ToLua.CheckLuaFunction(L, 1);

			if (count == 1)
			{
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.AuthCallbackDelegate), func);
				ToLua.Push(L, arg1);
			}
			else
			{
				LuaTable self = ToLua.CheckLuaTable(L, 2);
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.AuthCallbackDelegate), func, self);
				ToLua.Push(L, arg1);
			}
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int NCSpeedLight_ShareSDKAdapter_ShareCallbackDelegate(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			LuaFunction func = ToLua.CheckLuaFunction(L, 1);

			if (count == 1)
			{
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate), func);
				ToLua.Push(L, arg1);
			}
			else
			{
				LuaTable self = ToLua.CheckLuaTable(L, 2);
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.ShareSDKAdapter.ShareCallbackDelegate), func, self);
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


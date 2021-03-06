﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_InternalUIManagerWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.InternalUIManager), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("OpenBG", OpenBG);
		L.RegFunction("CloseBG", CloseBG);
		L.RegFunction("OpenUpdate", OpenUpdate);
		L.RegFunction("CloseUpdate", CloseUpdate);
		L.RegFunction("OpenConfirmDialog", OpenConfirmDialog);
		L.RegFunction("CloseConfirmDialog", CloseConfirmDialog);
		L.RegFunction("OpenProgressDialog", OpenProgressDialog);
		L.RegFunction("CloseProgressDialog", CloseProgressDialog);
		L.RegFunction("OpenTipsDialog", OpenTipsDialog);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Instance", get_Instance, set_Instance);
		L.RegVar("BG", get_BG, set_BG);
		L.RegVar("UpdateUI", get_UpdateUI, set_UpdateUI);
		L.RegVar("Confirm", get_Confirm, set_Confirm);
		L.RegVar("Progress", get_Progress, set_Progress);
		L.RegVar("Tips", get_Tips, set_Tips);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenBG(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.InternalUIManager.OpenBG();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CloseBG(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.InternalUIManager.CloseBG();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenUpdate(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.InternalUIManager.OpenUpdate();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CloseUpdate(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.InternalUIManager.CloseUpdate();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenConfirmDialog(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			string arg0 = ToLua.CheckString(L, 1);
			bool arg1 = LuaDLL.luaL_checkboolean(L, 2);
			System.Action arg2 = null;
			LuaTypes funcType3 = LuaDLL.lua_type(L, 3);

			if (funcType3 != LuaTypes.LUA_TFUNCTION)
			{
				 arg2 = (System.Action)ToLua.CheckObject(L, 3, typeof(System.Action));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 3);
				arg2 = DelegateFactory.CreateDelegate(typeof(System.Action), func) as System.Action;
			}

			System.Action arg3 = null;
			LuaTypes funcType4 = LuaDLL.lua_type(L, 4);

			if (funcType4 != LuaTypes.LUA_TFUNCTION)
			{
				 arg3 = (System.Action)ToLua.CheckObject(L, 4, typeof(System.Action));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 4);
				arg3 = DelegateFactory.CreateDelegate(typeof(System.Action), func) as System.Action;
			}

			NCSpeedLight.InternalUIManager.OpenConfirmDialog(arg0, arg1, arg2, arg3);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CloseConfirmDialog(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.InternalUIManager.CloseConfirmDialog();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenProgressDialog(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			NCSpeedLight.InternalUIManager.OpenProgressDialog(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CloseProgressDialog(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			NCSpeedLight.InternalUIManager.CloseProgressDialog();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenTipsDialog(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			NCSpeedLight.InternalUIManager.OpenTipsDialog(arg0);
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
	static int get_Instance(IntPtr L)
	{
		try
		{
			ToLua.Push(L, NCSpeedLight.InternalUIManager.Instance);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_BG(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject ret = obj.BG;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index BG on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_UpdateUI(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			NCSpeedLight.UpdateUI ret = obj.UpdateUI;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index UpdateUI on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Confirm(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject ret = obj.Confirm;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Confirm on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Progress(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject ret = obj.Progress;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Progress on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Tips(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject ret = obj.Tips;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Tips on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Instance(IntPtr L)
	{
		try
		{
			NCSpeedLight.InternalUIManager arg0 = (NCSpeedLight.InternalUIManager)ToLua.CheckUnityObject(L, 2, typeof(NCSpeedLight.InternalUIManager));
			NCSpeedLight.InternalUIManager.Instance = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_BG(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject arg0 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.GameObject));
			obj.BG = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index BG on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_UpdateUI(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			NCSpeedLight.UpdateUI arg0 = (NCSpeedLight.UpdateUI)ToLua.CheckUnityObject(L, 2, typeof(NCSpeedLight.UpdateUI));
			obj.UpdateUI = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index UpdateUI on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Confirm(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject arg0 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.GameObject));
			obj.Confirm = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Confirm on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Progress(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject arg0 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.GameObject));
			obj.Progress = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Progress on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Tips(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			NCSpeedLight.InternalUIManager obj = (NCSpeedLight.InternalUIManager)o;
			UnityEngine.GameObject arg0 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.GameObject));
			obj.Tips = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index Tips on a nil value" : e.Message);
		}
	}
}


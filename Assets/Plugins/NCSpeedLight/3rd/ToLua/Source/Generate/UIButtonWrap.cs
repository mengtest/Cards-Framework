﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UIButtonWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UIButton), typeof(UIButtonColor));
		L.RegFunction("SetState", SetState);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("current", get_current, set_current);
		L.RegVar("dragHighlight", get_dragHighlight, set_dragHighlight);
		L.RegVar("hoverSprite", get_hoverSprite, set_hoverSprite);
		L.RegVar("pressedSprite", get_pressedSprite, set_pressedSprite);
		L.RegVar("disabledSprite", get_disabledSprite, set_disabledSprite);
		L.RegVar("hoverSprite2D", get_hoverSprite2D, set_hoverSprite2D);
		L.RegVar("pressedSprite2D", get_pressedSprite2D, set_pressedSprite2D);
		L.RegVar("disabledSprite2D", get_disabledSprite2D, set_disabledSprite2D);
		L.RegVar("pixelSnap", get_pixelSnap, set_pixelSnap);
		L.RegVar("onClick", get_onClick, set_onClick);
		L.RegVar("isEnabled", get_isEnabled, set_isEnabled);
		L.RegVar("normalSprite", get_normalSprite, set_normalSprite);
		L.RegVar("normalSprite2D", get_normalSprite2D, set_normalSprite2D);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetState(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			UIButton obj = (UIButton)ToLua.CheckObject(L, 1, typeof(UIButton));
			UIButtonColor.State arg0 = (UIButtonColor.State)ToLua.CheckObject(L, 2, typeof(UIButtonColor.State));
			bool arg1 = LuaDLL.luaL_checkboolean(L, 3);
			obj.SetState(arg0, arg1);
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
	static int get_current(IntPtr L)
	{
		try
		{
			ToLua.Push(L, UIButton.current);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_dragHighlight(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			bool ret = obj.dragHighlight;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index dragHighlight on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_hoverSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string ret = obj.hoverSprite;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index hoverSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_pressedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string ret = obj.pressedSprite;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pressedSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_disabledSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string ret = obj.disabledSprite;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index disabledSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_hoverSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite ret = obj.hoverSprite2D;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index hoverSprite2D on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_pressedSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite ret = obj.pressedSprite2D;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pressedSprite2D on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_disabledSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite ret = obj.disabledSprite2D;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index disabledSprite2D on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_pixelSnap(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			bool ret = obj.pixelSnap;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pixelSnap on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_onClick(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			System.Collections.Generic.List<EventDelegate> ret = obj.onClick;
			ToLua.PushObject(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index onClick on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_isEnabled(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			bool ret = obj.isEnabled;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index isEnabled on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_normalSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string ret = obj.normalSprite;
			LuaDLL.lua_pushstring(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index normalSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_normalSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite ret = obj.normalSprite2D;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index normalSprite2D on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_current(IntPtr L)
	{
		try
		{
			UIButton arg0 = (UIButton)ToLua.CheckUnityObject(L, 2, typeof(UIButton));
			UIButton.current = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_dragHighlight(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.dragHighlight = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index dragHighlight on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_hoverSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.hoverSprite = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index hoverSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_pressedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.pressedSprite = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pressedSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_disabledSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.disabledSprite = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index disabledSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_hoverSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Sprite));
			obj.hoverSprite2D = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index hoverSprite2D on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_pressedSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Sprite));
			obj.pressedSprite2D = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pressedSprite2D on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_disabledSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Sprite));
			obj.disabledSprite2D = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index disabledSprite2D on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_pixelSnap(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.pixelSnap = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index pixelSnap on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_onClick(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			System.Collections.Generic.List<EventDelegate> arg0 = (System.Collections.Generic.List<EventDelegate>)ToLua.CheckObject(L, 2, typeof(System.Collections.Generic.List<EventDelegate>));
			obj.onClick = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index onClick on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_isEnabled(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.isEnabled = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index isEnabled on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_normalSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			string arg0 = ToLua.CheckString(L, 2);
			obj.normalSprite = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index normalSprite on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_normalSprite2D(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIButton obj = (UIButton)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Sprite));
			obj.normalSprite2D = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index normalSprite2D on a nil value" : e.Message);
		}
	}
}


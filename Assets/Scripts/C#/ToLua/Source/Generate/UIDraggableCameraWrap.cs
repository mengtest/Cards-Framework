﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UIDraggableCameraWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UIDraggableCamera), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("ConstrainToBounds", ConstrainToBounds);
		L.RegFunction("Press", Press);
		L.RegFunction("Drag", Drag);
		L.RegFunction("Scroll", Scroll);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("rootForBounds", get_rootForBounds, set_rootForBounds);
		L.RegVar("scale", get_scale, set_scale);
		L.RegVar("scrollWheelFactor", get_scrollWheelFactor, set_scrollWheelFactor);
		L.RegVar("dragEffect", get_dragEffect, set_dragEffect);
		L.RegVar("smoothDragStart", get_smoothDragStart, set_smoothDragStart);
		L.RegVar("momentumAmount", get_momentumAmount, set_momentumAmount);
		L.RegVar("currentMomentum", get_currentMomentum, set_currentMomentum);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ConstrainToBounds(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UIDraggableCamera obj = (UIDraggableCamera)ToLua.CheckObject(L, 1, typeof(UIDraggableCamera));
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			bool o = obj.ConstrainToBounds(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Press(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UIDraggableCamera obj = (UIDraggableCamera)ToLua.CheckObject(L, 1, typeof(UIDraggableCamera));
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.Press(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Drag(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UIDraggableCamera obj = (UIDraggableCamera)ToLua.CheckObject(L, 1, typeof(UIDraggableCamera));
			UnityEngine.Vector2 arg0 = ToLua.ToVector2(L, 2);
			obj.Drag(arg0);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Scroll(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UIDraggableCamera obj = (UIDraggableCamera)ToLua.CheckObject(L, 1, typeof(UIDraggableCamera));
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.Scroll(arg0);
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
	static int get_rootForBounds(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UnityEngine.Transform ret = obj.rootForBounds;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index rootForBounds on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_scale(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UnityEngine.Vector2 ret = obj.scale;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index scale on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_scrollWheelFactor(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			float ret = obj.scrollWheelFactor;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index scrollWheelFactor on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_dragEffect(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UIDragObject.DragEffect ret = obj.dragEffect;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index dragEffect on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_smoothDragStart(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			bool ret = obj.smoothDragStart;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index smoothDragStart on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_momentumAmount(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			float ret = obj.momentumAmount;
			LuaDLL.lua_pushnumber(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index momentumAmount on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_currentMomentum(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UnityEngine.Vector2 ret = obj.currentMomentum;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index currentMomentum on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_rootForBounds(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Transform));
			obj.rootForBounds = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index rootForBounds on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_scale(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UnityEngine.Vector2 arg0 = ToLua.ToVector2(L, 2);
			obj.scale = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index scale on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_scrollWheelFactor(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.scrollWheelFactor = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index scrollWheelFactor on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_dragEffect(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UIDragObject.DragEffect arg0 = (UIDragObject.DragEffect)ToLua.CheckObject(L, 2, typeof(UIDragObject.DragEffect));
			obj.dragEffect = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index dragEffect on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_smoothDragStart(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.smoothDragStart = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index smoothDragStart on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_momentumAmount(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 2);
			obj.momentumAmount = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index momentumAmount on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_currentMomentum(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UIDraggableCamera obj = (UIDraggableCamera)o;
			UnityEngine.Vector2 arg0 = ToLua.ToVector2(L, 2);
			obj.currentMomentum = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index currentMomentum on a nil value" : e.Message);
		}
	}
}


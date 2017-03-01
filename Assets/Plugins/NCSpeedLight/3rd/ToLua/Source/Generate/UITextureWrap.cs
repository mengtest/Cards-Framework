﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UITextureWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UITexture), typeof(UIBasicSprite));
		L.RegFunction("MakePixelPerfect", MakePixelPerfect);
		L.RegFunction("OnFill", OnFill);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("mainTexture", get_mainTexture, set_mainTexture);
		L.RegVar("material", get_material, set_material);
		L.RegVar("shader", get_shader, set_shader);
		L.RegVar("premultipliedAlpha", get_premultipliedAlpha, null);
		L.RegVar("border", get_border, set_border);
		L.RegVar("uvRect", get_uvRect, set_uvRect);
		L.RegVar("drawingDimensions", get_drawingDimensions, null);
		L.RegVar("fixedAspect", get_fixedAspect, set_fixedAspect);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int MakePixelPerfect(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UITexture obj = (UITexture)ToLua.CheckObject(L, 1, typeof(UITexture));
			obj.MakePixelPerfect();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OnFill(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			UITexture obj = (UITexture)ToLua.CheckObject(L, 1, typeof(UITexture));
			BetterList<UnityEngine.Vector3> arg0 = (BetterList<UnityEngine.Vector3>)ToLua.CheckObject(L, 2, typeof(BetterList<UnityEngine.Vector3>));
			BetterList<UnityEngine.Vector2> arg1 = (BetterList<UnityEngine.Vector2>)ToLua.CheckObject(L, 3, typeof(BetterList<UnityEngine.Vector2>));
			BetterList<UnityEngine.Color32> arg2 = (BetterList<UnityEngine.Color32>)ToLua.CheckObject(L, 4, typeof(BetterList<UnityEngine.Color32>));
			obj.OnFill(arg0, arg1, arg2);
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
	static int get_mainTexture(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Texture ret = obj.mainTexture;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index mainTexture on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_material(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Material ret = obj.material;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index material on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_shader(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Shader ret = obj.shader;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index shader on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_premultipliedAlpha(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			bool ret = obj.premultipliedAlpha;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index premultipliedAlpha on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_border(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Vector4 ret = obj.border;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index border on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_uvRect(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Rect ret = obj.uvRect;
			ToLua.PushValue(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index uvRect on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_drawingDimensions(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Vector4 ret = obj.drawingDimensions;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index drawingDimensions on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_fixedAspect(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			bool ret = obj.fixedAspect;
			LuaDLL.lua_pushboolean(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index fixedAspect on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_mainTexture(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Texture arg0 = (UnityEngine.Texture)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Texture));
			obj.mainTexture = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index mainTexture on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_material(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Material arg0 = (UnityEngine.Material)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Material));
			obj.material = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index material on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_shader(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Shader arg0 = (UnityEngine.Shader)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Shader));
			obj.shader = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index shader on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_border(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Vector4 arg0 = ToLua.ToVector4(L, 2);
			obj.border = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index border on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_uvRect(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			UnityEngine.Rect arg0 = (UnityEngine.Rect)ToLua.CheckObject(L, 2, typeof(UnityEngine.Rect));
			obj.uvRect = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index uvRect on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_fixedAspect(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UITexture obj = (UITexture)o;
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			obj.fixedAspect = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index fixedAspect on a nil value" : e.Message);
		}
	}
}


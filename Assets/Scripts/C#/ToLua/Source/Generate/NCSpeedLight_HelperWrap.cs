﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class NCSpeedLight_HelperWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(NCSpeedLight.Helper), typeof(System.Object));
		L.RegFunction("StringFormat", StringFormat);
		L.RegFunction("AddComponent", AddComponent);
		L.RegFunction("SetLayer", SetLayer);
		L.RegFunction("StrToVec3", StrToVec3);
		L.RegFunction("StrToVec4", StrToVec4);
		L.RegFunction("Vec3ToStr", Vec3ToStr);
		L.RegFunction("Vec4ToStr", Vec4ToStr);
		L.RegFunction("FloatEqualsZero", FloatEqualsZero);
		L.RegFunction("ForeachChildRecursively", ForeachChildRecursively);
		L.RegFunction("SplitNum", SplitNum);
		L.RegFunction("GetGradeColorStr", GetGradeColorStr);
		L.RegFunction("JudgeIsEnd", JudgeIsEnd);
		L.RegFunction("Log", Log);
		L.RegFunction("LogError", LogError);
		L.RegFunction("LogWarning", LogWarning);
		L.RegFunction("HasChinese", HasChinese);
		L.RegFunction("IsIntergerOrLetter", IsIntergerOrLetter);
		L.RegFunction("GetTextBySeconds", GetTextBySeconds);
		L.RegFunction("MoneyFormatInput", MoneyFormatInput);
		L.RegFunction("GetCurrentTimeWithMillisecond", GetCurrentTimeWithMillisecond);
		L.RegFunction("ChangeSpriteColor", ChangeSpriteColor);
		L.RegFunction("OnlyIncluding", OnlyIncluding);
		L.RegFunction("EverythingBut", EverythingBut);
		L.RegFunction("SetActiveState", SetActiveState);
		L.RegFunction("SetParent", SetParent);
		L.RegFunction("SetLabelText", SetLabelText);
		L.RegFunction("SetSpriteName", SetSpriteName);
		L.RegFunction("GetColorBgSpriteName", GetColorBgSpriteName);
		L.RegFunction("CreateDirectory", CreateDirectory);
		L.RegFunction("FilePathToMD5", FilePathToMD5);
		L.RegFunction("CheckChinese", CheckChinese);
		L.RegFunction("GetFileNameFromPath", GetFileNameFromPath);
		L.RegFunction("SplitPathExtension", SplitPathExtension);
		L.RegFunction("ColorToStr", ColorToStr);
		L.RegFunction("DeleteNullChar", DeleteNullChar);
		L.RegFunction("StrToColor", StrToColor);
		L.RegFunction("SplitCloneFromObjName", SplitCloneFromObjName);
		L.RegFunction("Multiply", Multiply);
		L.RegFunction("InInRect", InInRect);
		L.RegFunction("IsInViewPort", IsInViewPort);
		L.RegFunction("GetAssetDirectory", GetAssetDirectory);
		L.RegFunction("GetReleativePathDependOnRes", GetReleativePathDependOnRes);
		L.RegFunction("GetRootPath", GetRootPath);
		L.RegFunction("GetTypeNameWithoutNamespcae", GetTypeNameWithoutNamespcae);
		L.RegFunction("GetAllSubClass", GetAllSubClass);
		L.RegFunction("GenerateAssetPathByAbsolutelyDir", GenerateAssetPathByAbsolutelyDir);
		L.RegFunction("DeleteDirectory", DeleteDirectory);
		L.RegFunction("GoldReturnStr", GoldReturnStr);
		L.RegFunction("FileMD5", FileMD5);
		L.RegFunction("FileSize", FileSize);
		L.RegFunction("BytesMD5", BytesMD5);
		L.RegFunction("OpenFile", OpenFile);
		L.RegFunction("SaveFile", SaveFile);
		L.RegFunction("LoadAssetFromBundle", LoadAssetFromBundle);
		L.RegFunction("New", _CreateNCSpeedLight_Helper);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegFunction("ChildDelegate", NCSpeedLight_Helper_ChildDelegate);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateNCSpeedLight_Helper(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				NCSpeedLight.Helper obj = new NCSpeedLight.Helper();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: NCSpeedLight.Helper.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StringFormat(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			string arg0 = ToLua.CheckString(L, 1);
			object[] arg1 = ToLua.ToParamsObject(L, 2, count - 1);
			string o = NCSpeedLight.Helper.StringFormat(arg0, arg1);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int AddComponent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			string arg0 = ToLua.CheckString(L, 1);
			UnityEngine.GameObject arg1 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.GameObject));
			NCSpeedLight.Helper.AddComponent(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetLayer(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.GameObject arg0 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 1, typeof(UnityEngine.GameObject));
			string arg1 = ToLua.CheckString(L, 2);
			NCSpeedLight.Helper.SetLayer(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StrToVec3(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			UnityEngine.Vector3 o = NCSpeedLight.Helper.StrToVec3(arg0);
			ToLua.Push(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StrToVec4(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			UnityEngine.Vector4 o = NCSpeedLight.Helper.StrToVec4(arg0);
			ToLua.Push(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Vec3ToStr(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Vector3 arg0 = ToLua.ToVector3(L, 1);
			string o = NCSpeedLight.Helper.Vec3ToStr(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Vec4ToStr(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Vector4 arg0 = ToLua.ToVector4(L, 1);
			string o = NCSpeedLight.Helper.Vec4ToStr(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FloatEqualsZero(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 1);
			bool o = NCSpeedLight.Helper.FloatEqualsZero(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ForeachChildRecursively(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			UnityEngine.GameObject arg0 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 1, typeof(UnityEngine.GameObject));
			string arg1 = ToLua.CheckString(L, 2);
			NCSpeedLight.Helper.ChildDelegate arg2 = null;
			LuaTypes funcType3 = LuaDLL.lua_type(L, 3);

			if (funcType3 != LuaTypes.LUA_TFUNCTION)
			{
				 arg2 = (NCSpeedLight.Helper.ChildDelegate)ToLua.CheckObject(L, 3, typeof(NCSpeedLight.Helper.ChildDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 3);
				arg2 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.Helper.ChildDelegate), func) as NCSpeedLight.Helper.ChildDelegate;
			}

			object arg3 = ToLua.ToVarObject(L, 4);
			NCSpeedLight.Helper.ForeachChildRecursively(arg0, arg1, arg2, arg3);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SplitNum(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
			System.Collections.Generic.List<int> arg1 = null;
			NCSpeedLight.Helper.SplitNum(arg0, out arg1);
			ToLua.PushObject(L, arg1);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetGradeColorStr(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
			string o = NCSpeedLight.Helper.GetGradeColorStr(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int JudgeIsEnd(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			UnityEngine.Vector3 arg0 = ToLua.ToVector3(L, 1);
			UnityEngine.Vector3 arg1 = ToLua.ToVector3(L, 2);
			bool arg2 = LuaDLL.luaL_checkboolean(L, 3);
			float arg3 = (float)LuaDLL.luaL_checknumber(L, 4);
			bool o = NCSpeedLight.Helper.JudgeIsEnd(arg0, arg1, arg2, arg3);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Log(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(object)))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				NCSpeedLight.Helper.Log(arg0);
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(object), typeof(UnityEngine.Object)))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				UnityEngine.Object arg1 = (UnityEngine.Object)ToLua.ToObject(L, 2);
				NCSpeedLight.Helper.Log(arg0, arg1);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.Log");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int LogError(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(object)))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				NCSpeedLight.Helper.LogError(arg0);
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(object), typeof(UnityEngine.Object)))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				UnityEngine.Object arg1 = (UnityEngine.Object)ToLua.ToObject(L, 2);
				NCSpeedLight.Helper.LogError(arg0, arg1);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.LogError");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int LogWarning(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(object)))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				NCSpeedLight.Helper.LogWarning(arg0);
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(object), typeof(UnityEngine.Object)))
			{
				object arg0 = ToLua.ToVarObject(L, 1);
				UnityEngine.Object arg1 = (UnityEngine.Object)ToLua.ToObject(L, 2);
				NCSpeedLight.Helper.LogWarning(arg0, arg1);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.LogWarning");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int HasChinese(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			bool o = NCSpeedLight.Helper.HasChinese(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int IsIntergerOrLetter(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			bool o = NCSpeedLight.Helper.IsIntergerOrLetter(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetTextBySeconds(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
			string o = NCSpeedLight.Helper.GetTextBySeconds(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int MoneyFormatInput(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			long arg0 = LuaDLL.tolua_checkint64(L, 1);
			string o = NCSpeedLight.Helper.MoneyFormatInput(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetCurrentTimeWithMillisecond(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			string o = NCSpeedLight.Helper.GetCurrentTimeWithMillisecond();
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ChangeSpriteColor(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(UISprite), typeof(bool)))
			{
				UISprite arg0 = (UISprite)ToLua.ToObject(L, 1);
				bool arg1 = LuaDLL.lua_toboolean(L, 2);
				bool o = NCSpeedLight.Helper.ChangeSpriteColor(arg0, arg1);
				LuaDLL.lua_pushboolean(L, o);
				return 1;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(bool)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				bool arg1 = LuaDLL.lua_toboolean(L, 2);
				bool o = NCSpeedLight.Helper.ChangeSpriteColor(arg0, arg1);
				LuaDLL.lua_pushboolean(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(string), typeof(bool)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				string arg1 = ToLua.ToString(L, 2);
				bool arg2 = LuaDLL.lua_toboolean(L, 3);
				bool o = NCSpeedLight.Helper.ChangeSpriteColor(arg0, arg1, arg2);
				LuaDLL.lua_pushboolean(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.ChangeSpriteColor");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OnlyIncluding(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			string[] arg0 = ToLua.CheckParamsString(L, 1, count);
			int o = NCSpeedLight.Helper.OnlyIncluding(arg0);
			LuaDLL.lua_pushinteger(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int EverythingBut(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			string[] arg0 = ToLua.CheckParamsString(L, 1, count);
			int o = NCSpeedLight.Helper.EverythingBut(arg0);
			LuaDLL.lua_pushinteger(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetActiveState(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(bool)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				bool arg1 = LuaDLL.lua_toboolean(L, 2);
				bool o = NCSpeedLight.Helper.SetActiveState(arg0, arg1);
				LuaDLL.lua_pushboolean(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(string), typeof(bool)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				string arg1 = ToLua.ToString(L, 2);
				bool arg2 = LuaDLL.lua_toboolean(L, 3);
				bool o = NCSpeedLight.Helper.SetActiveState(arg0, arg1, arg2);
				LuaDLL.lua_pushboolean(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.SetActiveState");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetParent(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(UnityEngine.Transform), typeof(string)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				UnityEngine.Transform arg1 = (UnityEngine.Transform)ToLua.ToObject(L, 2);
				string arg2 = ToLua.ToString(L, 3);
				UnityEngine.Transform o = NCSpeedLight.Helper.SetParent(arg0, arg1, arg2);
				ToLua.Push(L, o);
				return 1;
			}
			else if (count == 4 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(UnityEngine.Transform), typeof(string), typeof(bool)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				UnityEngine.Transform arg1 = (UnityEngine.Transform)ToLua.ToObject(L, 2);
				string arg2 = ToLua.ToString(L, 3);
				bool arg3 = LuaDLL.lua_toboolean(L, 4);
				UnityEngine.Transform o = NCSpeedLight.Helper.SetParent(arg0, arg1, arg2, arg3);
				ToLua.Push(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.SetParent");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetLabelText(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(string)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				string arg1 = ToLua.ToString(L, 2);
				UILabel o = NCSpeedLight.Helper.SetLabelText(arg0, arg1);
				ToLua.Push(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(string), typeof(string)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				string arg1 = ToLua.ToString(L, 2);
				string arg2 = ToLua.ToString(L, 3);
				UILabel o = NCSpeedLight.Helper.SetLabelText(arg0, arg1, arg2);
				ToLua.Push(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.SetLabelText");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SetSpriteName(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(string)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				string arg1 = ToLua.ToString(L, 2);
				UISprite o = NCSpeedLight.Helper.SetSpriteName(arg0, arg1);
				ToLua.Push(L, o);
				return 1;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(UnityEngine.Transform), typeof(string), typeof(string)))
			{
				UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.ToObject(L, 1);
				string arg1 = ToLua.ToString(L, 2);
				string arg2 = ToLua.ToString(L, 3);
				UISprite o = NCSpeedLight.Helper.SetSpriteName(arg0, arg1, arg2);
				ToLua.Push(L, o);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: NCSpeedLight.Helper.SetSpriteName");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetColorBgSpriteName(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 1);
			string o = NCSpeedLight.Helper.GetColorBgSpriteName(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CreateDirectory(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			bool o = NCSpeedLight.Helper.CreateDirectory(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FilePathToMD5(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.FilePathToMD5(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CheckChinese(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			char arg0 = (char)LuaDLL.luaL_checknumber(L, 1);
			bool o = NCSpeedLight.Helper.CheckChinese(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetFileNameFromPath(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.GetFileNameFromPath(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SplitPathExtension(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.SplitPathExtension(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ColorToStr(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.Color32 arg0 = (UnityEngine.Color32)ToLua.CheckObject(L, 1, typeof(UnityEngine.Color32));
			string o = NCSpeedLight.Helper.ColorToStr(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int DeleteNullChar(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.DeleteNullChar(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StrToColor(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			UnityEngine.Color o = NCSpeedLight.Helper.StrToColor(arg0);
			ToLua.Push(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SplitCloneFromObjName(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			NCSpeedLight.Helper obj = (NCSpeedLight.Helper)ToLua.CheckObject(L, 1, typeof(NCSpeedLight.Helper));
			string arg0 = ToLua.CheckString(L, 2);
			string o = obj.SplitCloneFromObjName(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Multiply(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 6);
			float arg0 = (float)LuaDLL.luaL_checknumber(L, 1);
			float arg1 = (float)LuaDLL.luaL_checknumber(L, 2);
			float arg2 = (float)LuaDLL.luaL_checknumber(L, 3);
			float arg3 = (float)LuaDLL.luaL_checknumber(L, 4);
			float arg4 = (float)LuaDLL.luaL_checknumber(L, 5);
			float arg5 = (float)LuaDLL.luaL_checknumber(L, 6);
			float o = NCSpeedLight.Helper.Multiply(arg0, arg1, arg2, arg3, arg4, arg5);
			LuaDLL.lua_pushnumber(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int InInRect(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 5);
			UnityEngine.Vector3 arg0 = ToLua.ToVector3(L, 1);
			UnityEngine.Vector3 arg1 = ToLua.ToVector3(L, 2);
			UnityEngine.Vector3 arg2 = ToLua.ToVector3(L, 3);
			UnityEngine.Vector3 arg3 = ToLua.ToVector3(L, 4);
			UnityEngine.Vector3 arg4 = ToLua.ToVector3(L, 5);
			bool o = NCSpeedLight.Helper.InInRect(arg0, arg1, arg2, arg3, arg4);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int IsInViewPort(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Camera arg0 = (UnityEngine.Camera)ToLua.CheckUnityObject(L, 1, typeof(UnityEngine.Camera));
			UnityEngine.Vector3 arg1 = ToLua.ToVector3(L, 2);
			bool o = NCSpeedLight.Helper.IsInViewPort(arg0, arg1);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetAssetDirectory(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.GetAssetDirectory(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetReleativePathDependOnRes(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.GetReleativePathDependOnRes(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetRootPath(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			UnityEngine.Transform arg0 = (UnityEngine.Transform)ToLua.CheckUnityObject(L, 1, typeof(UnityEngine.Transform));
			UnityEngine.Transform arg1 = (UnityEngine.Transform)ToLua.CheckUnityObject(L, 2, typeof(UnityEngine.Transform));
			string arg2 = ToLua.CheckString(L, 3);
			string o = NCSpeedLight.Helper.GetRootPath(arg0, arg1, arg2);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetTypeNameWithoutNamespcae(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.GetTypeNameWithoutNamespcae(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GetAllSubClass(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			System.Type arg0 = (System.Type)ToLua.CheckObject(L, 1, typeof(System.Type));
			System.Collections.Generic.List<System.Type> o = NCSpeedLight.Helper.GetAllSubClass(arg0);
			ToLua.PushObject(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GenerateAssetPathByAbsolutelyDir(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.GenerateAssetPathByAbsolutelyDir(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int DeleteDirectory(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			bool o = NCSpeedLight.Helper.DeleteDirectory(arg0);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int GoldReturnStr(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			double arg0 = (double)LuaDLL.luaL_checknumber(L, 1);
			string o = NCSpeedLight.Helper.GoldReturnStr(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FileMD5(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			string o = NCSpeedLight.Helper.FileMD5(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int FileSize(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			int o = NCSpeedLight.Helper.FileSize(arg0);
			LuaDLL.lua_pushinteger(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int BytesMD5(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			byte[] arg0 = ToLua.CheckByteBuffer(L, 1);
			string o = NCSpeedLight.Helper.BytesMD5(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenFile(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			string arg0 = ToLua.CheckString(L, 1);
			byte[] o = NCSpeedLight.Helper.OpenFile(arg0);
			LuaDLL.tolua_pushlstring(L, o, o.Length);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int SaveFile(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			string arg0 = ToLua.CheckString(L, 1);
			byte[] arg1 = ToLua.CheckByteBuffer(L, 2);
			bool o = NCSpeedLight.Helper.SaveFile(arg0, arg1);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int LoadAssetFromBundle(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			string arg0 = ToLua.CheckString(L, 1);
			System.Type arg1 = (System.Type)ToLua.CheckObject(L, 2, typeof(System.Type));
			UnityEngine.AssetBundle arg2 = (UnityEngine.AssetBundle)ToLua.CheckUnityObject(L, 3, typeof(UnityEngine.AssetBundle));
			UnityEngine.Object o = NCSpeedLight.Helper.LoadAssetFromBundle(arg0, arg1, arg2);
			ToLua.Push(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int NCSpeedLight_Helper_ChildDelegate(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			LuaFunction func = ToLua.CheckLuaFunction(L, 1);

			if (count == 1)
			{
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.Helper.ChildDelegate), func);
				ToLua.Push(L, arg1);
			}
			else
			{
				LuaTable self = ToLua.CheckLuaTable(L, 2);
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(NCSpeedLight.Helper.ChildDelegate), func, self);
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


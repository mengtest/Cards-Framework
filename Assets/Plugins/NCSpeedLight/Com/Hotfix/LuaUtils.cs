/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LuaUtils.cs
           // Describle: lua工具类
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using UnityEngine;
using LuaInterface;
using System;

namespace NCSpeedLight
{
    public class LuaUtils
    {
        public static void AddComponent(string className, GameObject go)
        {
            if (go && string.IsNullOrEmpty(className) == false)
            {
                Type type = Type.GetType(className);
                go.AddComponent(type);
            }
        }
    }
}

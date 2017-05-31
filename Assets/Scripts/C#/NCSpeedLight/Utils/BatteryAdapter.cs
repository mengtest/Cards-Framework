using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;

namespace NCSpeedLight
{
    public class BatteryAdapter : MonoBehaviour
    {
#if UNITY_ANDROID
        private static AndroidJavaClass androidContextClass;
        private static AndroidJavaObject androidContext;
        private static AndroidJavaObject androidInstance;
#endif

        void Awake()
        {
            if (Application.isEditor == false)
            {
                Helper.Log("BatteryAdapter.Awake: unity construct");
#if UNITY_ANDROID
                androidContextClass = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
                androidContext = androidContextClass.GetStatic<AndroidJavaObject>("currentActivity");
                androidInstance = new AndroidJavaObject("com.hsu.battery.BatteryUtils", androidContext);
#elif UNITY_IOS
                LocInitialize();
#endif
            }
        }

        public static int GetCurrentValue()
        {
            if (Application.isEditor == false)
            {
#if UNITY_ANDROID
                return androidInstance.Call<int>("GetCurrentValue");
#elif UNITY_IOS
                LocRequest();
#endif
            }
            else
            {
                return 0;
            }
        }

#if UNITY_IOS
        [DllImport("__Internal")]
        [LuaInterface.NoToLua]
        public static extern void LocInitialize();

        [DllImport("__Internal")]
        [LuaInterface.NoToLua]
        public static extern void LocRequest();

        [LuaInterface.NoToLua]
        public void OnIOSGetLocationCallback(string address)
        {
            Helper.Log("AMapAdapter.OnIOSGetLocationCallback: address is " + address);
            NotifyListener(address);
        }
#endif
    }
}



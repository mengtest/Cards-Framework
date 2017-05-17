using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;

namespace NCSpeedLight
{
    public class AMapAdapter : MonoBehaviour
    {
        public delegate void Callback(string address);
        private static List<Callback> listeners = new List<Callback>();

#if UNITY_ANDROID
        private static AndroidJavaClass androidContextClass;
        private static AndroidJavaObject androidContext;
        private static AndroidJavaObject androidInstance;
#endif

        void Awake()
        {
            if (Application.isEditor == false)
            {
                Helper.Log("AMapAdapter.Awake: unity construct");
#if UNITY_ANDROID
                androidContextClass = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
                androidContext = androidContextClass.GetStatic<AndroidJavaObject>("currentActivity");
                androidInstance = new AndroidJavaObject("com.hsu.location.LocationUtils", androidContext);
#elif UNITY_IOS
                LocInitialize();
#endif
            }
        }

        public static void GetLocation(Callback callback)
        {
            if (Application.isEditor == false)
            {
                if (listeners.Contains(callback) == false)
                {
                    listeners.Add(callback);
                }
                Helper.Log("AMapAdapter.GetLocation");
#if UNITY_ANDROID
                StopLocation();
                AndroidLocationListener listener = new AndroidLocationListener();
                androidInstance.Call("StartLocation", listener);
#elif UNITY_IOS
                LocRequest();
#endif
            }
        }

        public static void StopLocation()
        {
            Helper.Log("AMapAdapter.StopLocation");
            if (Application.isEditor == false)
            {
#if UNITY_ANDROID
                androidInstance.Call("StopLocation");
#endif
            }
        }

        [LuaInterface.NoToLua]
        public static void NotifyListener(string address)
        {
            Helper.Log("AMapAdapter.NotifyListener");
            for (int i = 0; i < listeners.Count; i++)
            {
                Callback func = listeners[i];
                if (func != null)
                {
                    func(address);
                }
            }
            listeners.Clear();
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


#if UNITY_ANDROID

    public class AndroidLocationListener : AndroidJavaProxy
    {
        public AndroidLocationListener() : base("com.amap.api.location.AMapLocationListener") { }

        private void onLocationChanged(AndroidJavaObject location)
        {
            AMapAdapter.StopLocation();

            Location loc = new Location();
            loc.Accuracy = location.Call<float>("getAccuracy");
            loc.AdCode = location.Call<string>("getAdCode");
            loc.Address = location.Call<string>("getAddress");
            loc.Altitude = location.Call<double>("getAltitude");
            loc.AoiName = location.Call<string>("getAoiName");
            loc.Bearing = location.Call<float>("getBearing");
            loc.BuildingId = location.Call<string>("getBuildingId");
            loc.City = location.Call<string>("getCity");
            loc.CityCode = location.Call<string>("getCityCode");
            loc.Country = location.Call<string>("getCountry");
            loc.District = location.Call<string>("getDistrict");
            loc.ErrorCode = location.Call<int>("getErrorCode");
            loc.ErrorInfo = location.Call<string>("getErrorInfo");
            loc.Floor = location.Call<string>("getFloor");
            loc.GpsAccuracyStatus = location.Call<int>("getGpsAccuracyStatus");
            loc.Latitude = location.Call<double>("getLatitude");
            loc.LocationDetail = location.Call<string>("getLocationDetail");
            loc.LocationType = location.Call<int>("getLocationType");
            loc.Longitude = location.Call<double>("getLongitude");
            loc.PoiName = location.Call<string>("getPoiName");
            loc.Province = location.Call<string>("getProvince");
            loc.Satellites = location.Call<int>("getSatellites");
            loc.Speed = location.Call<float>("getSpeed");
            loc.Street = location.Call<string>("getStreet");
            loc.StreetNum = location.Call<string>("getStreetNum");
            loc.Time = DateTime.Now;

            Helper.LogError("AMapAdapter.onLocationChanged: error code is " + loc.ErrorCode);
            Helper.LogError("AMapAdapter.onLocationChanged: error info is " + loc.ErrorInfo);
            //Helper.Log("AMapAdapter.onLocationChanged: Accuracy is " + loc.Accuracy);
            //Helper.Log("AMapAdapter.onLocationChanged: AdCode is " + loc.AdCode);
            //Helper.Log("AMapAdapter.onLocationChanged: Address is " + loc.Address);
            //Helper.Log("AMapAdapter.onLocationChanged: Altitude is " + loc.Altitude);
            //Helper.Log("AMapAdapter.onLocationChanged: AoiName is " + loc.AoiName);
            //Helper.Log("AMapAdapter.onLocationChanged: Bearing is " + loc.Bearing);
            //Helper.Log("AMapAdapter.onLocationChanged: BuildingId is " + loc.BuildingId);
            //Helper.Log("AMapAdapter.onLocationChanged: City is " + loc.City);
            //Helper.Log("AMapAdapter.onLocationChanged: CityCode is " + loc.CityCode);
            //Helper.Log("AMapAdapter.onLocationChanged: Country is " + loc.Country);
            //Helper.Log("AMapAdapter.onLocationChanged: Floor is " + loc.Floor);
            //Helper.Log("AMapAdapter.onLocationChanged: GpsAccuracyStatus is " + loc.GpsAccuracyStatus);
            //Helper.Log("AMapAdapter.onLocationChanged: Latitude is " + loc.Latitude);
            //Helper.Log("AMapAdapter.onLocationChanged: LocationDetail is " + loc.LocationDetail);
            //Helper.Log("AMapAdapter.onLocationChanged: LocationType is " + loc.LocationType);
            //Helper.Log("AMapAdapter.onLocationChanged: Longitude is " + loc.Longitude);
            //Helper.Log("AMapAdapter.onLocationChanged: PoiName is " + loc.PoiName);
            //Helper.Log("AMapAdapter.onLocationChanged: Province is " + loc.Province);
            //Helper.Log("AMapAdapter.onLocationChanged: Satellites is " + loc.Satellites);
            //Helper.Log("AMapAdapter.onLocationChanged: Speed is " + loc.Speed);
            //Helper.Log("AMapAdapter.onLocationChanged: Street is " + loc.Street);
            //Helper.Log("AMapAdapter.onLocationChanged: StreetNum is " + loc.StreetNum);
            //Helper.Log("AMapAdapter.onLocationChanged: Time is " + loc.Time);

            string address = loc.City + loc.District + loc.Street + loc.StreetNum;
            Helper.Log("AMapAdapter.OnAndroidGetLocationCallback: address is " + address);
            AMapAdapter.NotifyListener(address);
        }
    }

    public class Location
    {
        /// <summary>
        /// 定位结果来源:
        /// </summary>
        public int LocationType;
        /// <summary>
        /// 纬度
        /// </summary>
        public double Latitude;
        /// <summary>
        /// 经度
        /// </summary>
        public double Longitude;
        /// <summary>
        /// 精度信息
        /// </summary>
        public float Accuracy;
        /// <summary>
        /// 地址
        /// </summary>
        public string Address;
        /// <summary>
        /// 城区
        /// </summary>
        public string District;
        /// <summary>
        /// 国家
        /// </summary>
        public string Country;
        /// <summary>
        /// 省
        /// </summary>
        public string Province;
        /// <summary>
        /// 城区
        /// </summary>
        public string City;
        /// <summary>
        /// 街道
        /// </summary>
        public string Street;
        /// <summary>
        /// 门牌
        /// </summary>
        public string StreetNum;
        /// <summary>
        /// 城市编码
        /// </summary>
        public string CityCode;
        /// <summary>
        /// 地区编码
        /// </summary>
        public string AdCode;
        /// <summary>
        /// 海拔
        /// </summary>
        public double Altitude;
        /// <summary>
        /// 方向角
        /// </summary>
        public float Bearing;
        /// <summary>
        /// 定位信息描述:
        /// </summary>
        public string LocationDetail;
        /// <summary>
        /// 兴趣点
        /// </summary>
        public string PoiName;
        /// <summary>
        /// 提供者
        /// </summary>
        public string Provider;
        /// <summary>
        /// 卫星数量:
        /// </summary>
        public int Satellites;
        /// <summary>
        /// aoi name
        /// </summary>
        public string AoiName;
        /// <summary>
        /// 当前速度
        /// </summary>
        public float Speed;
        /// <summary>
        /// 时间
        /// </summary>
        public DateTime Time;
        /// <summary>
        /// 建筑物id
        /// </summary>
        public string BuildingId;
        /// <summary>
        /// 错误码
        /// </summary>
        public int ErrorCode;
        /// <summary>
        /// 错误信息
        /// </summary>
        public string ErrorInfo;
        /// <summary>
        /// 楼层信息
        /// </summary>
        public string Floor;
        /// <summary>
        /// 获取卫星信号强度，仅在gps定位时有效,值为#GPS_ACCURACY_BAD，#GPS_ACCURACY_GOOD，#GPS_ACCURACY_UNKNOWN
        /// </summary>
        public int GpsAccuracyStatus;
    }

#endif

}



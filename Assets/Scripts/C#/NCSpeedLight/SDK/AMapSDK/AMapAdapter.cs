using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;

namespace NCSpeedLight
{
    public class AMapAdapter : MonoBehaviour
    {
        public delegate void Callback(string address);

        public static List<Callback> Listeners = new List<Callback>();

#if UNITY_ANDROID
        public static AndroidJavaClass AndroidContextClass;
        public static AndroidJavaObject AndroidContext;
        public static AndroidJavaObject AndroidInstance;
#elif UNITY_IOS
#endif

        void Awake()
        {
            if (Application.isEditor == false)
            {
                Debug.Log("AMapAdapter.Awake: unity construct");
#if UNITY_ANDROID
                AndroidContextClass = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
                AndroidContext = AndroidContextClass.GetStatic<AndroidJavaObject>("currentActivity");
                AndroidInstance = new AndroidJavaObject("com.hsu.location.LocationUtils", AndroidContext);
#elif UNITY_IOS
		        LocInitialize();
#endif
            }
        }

        public static void GetLocation(Callback callback)
        {
            if (Listeners.Contains(callback) == false)
            {
                Listeners.Add(callback);
            }
#if UNITY_ANDROID
            AndroidLocationListener listener = new AndroidLocationListener();
            AMapAdapter.AndroidInstance.Call("StopLocation");
            AndroidInstance.Call("StartLocation", listener);
#elif UNITY_IOS
		LocRequest();
#endif
        }

#if UNITY_IOS
    [DllImport("__Internal")]
    public static extern void LocInitialize();
    [DllImport("__Internal")]
    public static extern void LocRequest();
    public void OnIOSGetLocationCallback(string address)
    {
        Debug.Log("OnIOSGetLocationCallback: address is " + address);
        for (int i = 0; i < Listeners.Count; i++)
        {
            Callback func = Listeners[i];
            if (func != null)
            {
                func(address);
            }
        }
        Listeners.Clear();
    }
#endif
    }


#if UNITY_ANDROID
    public class AndroidLocationListener : AndroidJavaProxy
    {
        public AndroidLocationListener() : base("com.amap.api.location.AMapLocationListener") { }

        private void onLocationChanged(AndroidJavaObject location)
        {
            AMapAdapter.AndroidInstance.Call("StopLocation");

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

            Debug.LogError("AMapAdapter.onLocationChanged: error code is " + loc.ErrorCode);
            Debug.LogError("AMapAdapter.onLocationChanged: error info is " + loc.ErrorInfo);
            Debug.Log("AMapAdapter.onLocationChanged: Accuracy is " + loc.Accuracy);
            Debug.Log("AMapAdapter.onLocationChanged: AdCode is " + loc.AdCode);
            Debug.Log("AMapAdapter.onLocationChanged: Address is " + loc.Address);
            Debug.Log("AMapAdapter.onLocationChanged: Altitude is " + loc.Altitude);
            Debug.Log("AMapAdapter.onLocationChanged: AoiName is " + loc.AoiName);
            Debug.Log("AMapAdapter.onLocationChanged: Bearing is " + loc.Bearing);
            Debug.Log("AMapAdapter.onLocationChanged: BuildingId is " + loc.BuildingId);
            Debug.Log("AMapAdapter.onLocationChanged: City is " + loc.City);
            Debug.Log("AMapAdapter.onLocationChanged: CityCode is " + loc.CityCode);
            Debug.Log("AMapAdapter.onLocationChanged: Country is " + loc.Country);
            Debug.Log("AMapAdapter.onLocationChanged: Floor is " + loc.Floor);
            Debug.Log("AMapAdapter.onLocationChanged: GpsAccuracyStatus is " + loc.GpsAccuracyStatus);
            Debug.Log("AMapAdapter.onLocationChanged: Latitude is " + loc.Latitude);
            Debug.Log("AMapAdapter.onLocationChanged: LocationDetail is " + loc.LocationDetail);
            Debug.Log("AMapAdapter.onLocationChanged: LocationType is " + loc.LocationType);
            Debug.Log("AMapAdapter.onLocationChanged: Longitude is " + loc.Longitude);
            Debug.Log("AMapAdapter.onLocationChanged: PoiName is " + loc.PoiName);
            Debug.Log("AMapAdapter.onLocationChanged: Province is " + loc.Province);
            Debug.Log("AMapAdapter.onLocationChanged: Satellites is " + loc.Satellites);
            Debug.Log("AMapAdapter.onLocationChanged: Speed is " + loc.Speed);
            Debug.Log("AMapAdapter.onLocationChanged: Street is " + loc.Street);
            Debug.Log("AMapAdapter.onLocationChanged: StreetNum is " + loc.StreetNum);
            Debug.Log("AMapAdapter.onLocationChanged: Time is " + loc.Time);

            string address = loc.City + loc.District + loc.Street + loc.StreetNum;
            for (int i = 0; i < AMapAdapter.Listeners.Count; i++)
            {
                AMapAdapter.Callback func = AMapAdapter.Listeners[i];
                if (func != null)
                {
                    func(address);
                }
            }
            AMapAdapter.Listeners.Clear();
        }
    }
#endif

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
}



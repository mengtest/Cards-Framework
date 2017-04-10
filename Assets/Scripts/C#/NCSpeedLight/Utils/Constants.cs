/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Constants.cs
			// Describle:   应用程序全局常量
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

namespace NCSpeedLight
{
    public static class Constants
    {
        public static string GAME_NAME = "Cards";

        public static string DATA_PATH
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer)
                {
                    return Application.persistentDataPath + "/";
                }
                else if (Application.isEditor)
                {
                    return "C:/" + GAME_NAME + "/";
                }
                else if (Application.platform == RuntimePlatform.OSXEditor)
                {
                    int i = Application.dataPath.LastIndexOf('/');
                    return Application.dataPath.Substring(0, i + 1) + GAME_NAME + "/";
                }
                else
                {
                    return "C:/" + GAME_NAME + "/";
                }
            }
        }

        public static string SCRIPT_BUNDLE_PATH
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
                {
                    return Application.persistentDataPath + "/Scripts/";
                }
                else if (Application.isEditor)
                {
                    return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/Scripts/";
                }
                else
                {
                    return string.Empty;
                }
            }
        }

        public static string ASSET_BUNDLE_PATH
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
                {
                    //return Application.persistentDataPath + "/Assets/";
                    return Application.persistentDataPath + "/";
                }
                else if (Application.isEditor)
                {
                    //return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/Assets/";
                    return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/";
                }
                else
                {
                    return string.Empty;
                }
            }
        }

        public static string BUILD_BUNDLE_LOG_PATH
        {
            get
            {
                return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/Log/";
            }
        }

        /// <summary>
        /// 应用程序内容路径
        /// </summary>
        public static string APP_CONTENT_PATH
        {
            get
            {
                string path = string.Empty;
                switch (Application.platform)
                {
                    case RuntimePlatform.Android:
                        path = "jar:file://" + Application.dataPath + "!/assets/";
                        break;
                    case RuntimePlatform.IPhonePlayer:
                        path = Application.dataPath + "/Raw/";
                        break;
                    default:
                        path = Application.dataPath + "/StreamingAssets/";
                        break;
                }
                return path;
            }
        }

        public static RuntimePlatform PLATFORM
        {
            get
            {
#if UNITY_EDITOR || UNITY_STANDALONE_WINDSOWS
                return RuntimePlatform.WindowsPlayer;
#elif UNITY_ANDROID
            return RuntimePlatform.Android;
#elif UNITY_IOS
            return RuntimePlatform.IPhonePlayer;
#endif

            }
        }

        public static string PLATFORM_NAME
        {
            get
            {
#if UNITY_STANDALONE
   return "Windows";
#elif UNITY_ANDROID
                return "Android";
#elif UNITY_IPHONE
    return "iOS";        
#else
    return string.Empty;        
#endif
            }

        }

        /// <summary>
        /// 是否加密Lua文件.
        /// </summary>
        public static bool ENCRYPT_LUA = true;

        public static bool LUA_BUNDLE_MODE
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
                {
                    return true;
                }
                else if (Application.isEditor)
                {
                    return false;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}

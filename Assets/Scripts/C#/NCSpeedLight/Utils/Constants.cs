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
        public static string GAME_NAME = "HZMJ_LUA";

        public static int TARGET_FRAME_RATE = 30;

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

        public static string BUILD_SCRIPT_BUNDLE_PATH
        {
            get
            {
                return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/Scripts/";
            }
        }

        public static string BUILD_ASSET_BUNDLE_PATH
        {
            get
            {
                return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/Assets/";
            }
        }

        public static string ASSET_BUNDLE_MANIFEST_FILE = "Assets";

        public static string ASSET_MANIFEST_FILE = "manifest.txt";

        public static string SCRIPT_MANIFEST_FILE = "manifest.txt";
    
        public static string STREAMING_PATH
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

        public static bool ENCRYPT_LUA = true;

        public static bool SCRIPT_BUNDLE_MODE
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
                {
                    return true;
                }
                else if (Application.isEditor)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public static bool ASSET_BUNDLE_MODE
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
                {
                    return true;
                }
                else if (Application.isEditor)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public const string SCRIPT_BUNDLE_FILE_EXTENSION = ".script";

        public const string ASSET_BUNDLE_FILE_EXTENSION = ".asset";

        public static string LUA_SCRIPT_WORKSPACE = Application.dataPath + "/Scripts/Lua/";

        public static string BUNDLE_ASSET_WORKSPACE = Application.dataPath + "/Resources/Bundle/";

        public static string BUNDLE_SCENE_WORKSPACE = Application.dataPath + "/Resources/Bundle/Scenes/";

        public static string RESOURCE_WORKSPACE = Application.dataPath + "/Resources/";

        public static string LOCAL_ASSET_BUNDLE_PATH
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
                {
                    return Application.persistentDataPath + "/Assets/";
                }
                else if (Application.isEditor)
                {
                    return DATA_PATH + "Assets/";
                }
                else
                {
                    return string.Empty;
                }
            }
        }

        public static string LOCAL_SCRIPT_BUNDLE_PATH
        {
            get
            {
                if (Application.isMobilePlatform || Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
                {
                    return Application.persistentDataPath + "/Scripts/";
                }
                else if (Application.isEditor)
                {
                    return DATA_PATH + "Scripts/";
                }
                else
                {
                    return string.Empty;
                }
            }
        }

        public static string REMOTE_ASSET_BUNDLE_PATH
        {
            get
            {
                return "http://192.168.1.146:9555/" + PLATFORM_NAME + "/Assets/";
            }
        }

        public static string REMOTE_SCRIPT_BUNDLE_PATH
        {
            get
            {
                return "http://192.168.1.146:9555/" + PLATFORM_NAME + "/Scripts/";
            }
        }
    }
}

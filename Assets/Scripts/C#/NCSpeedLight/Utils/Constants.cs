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

using System;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public static class Constants
    {
        /// <summary>
        /// 游戏名称.
        /// </summary>
        public static string GAME_NAME = "PPNC";

        /// <summary>
        /// 公司名称
        /// </summary>
        //public static string COMPANY_NAME = "papa";
        public static string COMPANY_NAME = "hongzhong";

        /// <summary>
        /// 渠道名称
        /// </summary>
        //public static string CHANNEL = "papa";
        public static string CHANNEL = "hongzhong";

        /// <summary>
        /// 是否强制更新资源以及脚本文件
        /// </summary>
        public static bool FORCE_UPDATE
        {
            get
            {
                return true;
            }
        }
        /// <summary>
        /// 主版本号（应用程序版本号）
        /// </summary>
        public static int MAJOR_VERSION = 1;

        /// <summary>
        /// 中版本号（资源版本号）
        /// </summary>
        public static int MIDDLE_VERSION
        {
            get
            {
                if (Directory.Exists(CONFIG_PATH) == false)
                {
                    Directory.CreateDirectory(CONFIG_PATH);
                }
                string filePath = CONFIG_PATH + "v1";
                if (File.Exists(filePath) == false)
                {
                    return 0;
                }
                else
                {
                    string[] lines = File.ReadAllLines(filePath);
                    if (lines == null || lines.Length == 0)
                    {
                        return 0;
                    }
                    else
                    {
                        int version = 0;
                        int.TryParse(lines[0], out version);
                        return version;
                    }
                }
            }
            set
            {
                if (Directory.Exists(CONFIG_PATH) == false)
                {
                    Directory.CreateDirectory(CONFIG_PATH);
                }
                string filePath = CONFIG_PATH + "v1";
                if (File.Exists(filePath) == false)
                {
                    File.Delete(filePath);
                }
                using (var file = File.Open(filePath, FileMode.Create))
                {
                    StreamWriter sw = new StreamWriter(file);
                    sw.WriteLine(value);
                    sw.Close();
                    file.Close();
                }
            }
        }

        /// <summary>
        /// 小版本号（脚本版本号）
        /// </summary>
        public static int MINIOR_VERSION
        {
            get
            {
                if (Directory.Exists(CONFIG_PATH) == false)
                {
                    Directory.CreateDirectory(CONFIG_PATH);
                }
                string filePath = CONFIG_PATH + "v2";
                if (File.Exists(filePath) == false)
                {
                    return 0;
                }
                else
                {
                    string[] lines = File.ReadAllLines(filePath);
                    if (lines == null || lines.Length == 0)
                    {
                        return 0;
                    }
                    else
                    {
                        int version = 0;
                        int.TryParse(lines[0], out version);
                        return version;
                    }
                }
            }
            set
            {
                if (Directory.Exists(CONFIG_PATH) == false)
                {
                    Directory.CreateDirectory(CONFIG_PATH);
                }
                string filePath = CONFIG_PATH + "v2";
                if (File.Exists(filePath) == false)
                {
                    File.Delete(filePath);
                }
                using (var file = File.Open(filePath, FileMode.Create))
                {
                    StreamWriter sw = new StreamWriter(file);
                    sw.WriteLine(value);
                    sw.Close();
                    file.Close();
                }
            }
        }

        /// <summary>
        /// 版本号
        /// </summary>
        public static string VERSION
        {
            get
            {
                string version = "{0}.{1}.{2}";
                version = Helper.StringFormat(version, MAJOR_VERSION, MIDDLE_VERSION, MINIOR_VERSION);
                return version;
            }
        }

        /// <summary>
        /// 请求的Json地址
        /// </summary>
        public static string JSON_URL
        {
            get
            {
                //string url = "http://papamajiangcdn.damaigame.com/json/{0}/{1}/{2}/v{3}/qiumo.db?v={4}";
                string url = "http://papamajiangcdn.damaigame.com/json/{0}/{1}/{2}/v{3}/qiumo.db?v={4}";
                url = Helper.StringFormat(url, COMPANY_NAME, "Android", CHANNEL, VERSION, DateTime.Now.Ticks);
                return url;
            }
        }

        /// <summary>
        /// 目标帧率
        /// </summary>
        public static int TARGET_FRAME_RATE = 25;

        /// <summary>
        /// 存储目录
        /// </summary>
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

        public static string CONFIG_PATH
        {
            get
            {
                return DATA_PATH + "Config/";
            }
        }

        /// <summary>
        /// 编译的脚本包路径
        /// </summary>
        public static string BUILD_SCRIPT_BUNDLE_PATH
        {
            get
            {
                return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/Scripts/";
            }
        }

        /// <summary>
        /// 编译的资源包路径
        /// </summary>
        public static string BUILD_ASSET_BUNDLE_PATH
        {
            get
            {
                return Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/Assets/";
            }
        }

        /// <summary>
        /// Unity assetbundle 清单文件
        /// </summary>
        public static string ASSET_BUNDLE_MANIFEST_FILE = "Assets";

        /// <summary>
        /// 资源清单文件
        /// </summary>
        public static string ASSET_MANIFEST_FILE = "manifest.txt";

        /// <summary>
        /// 脚本清单文件
        /// </summary>
        public static string SCRIPT_MANIFEST_FILE = "manifest.txt";

        /// <summary>
        /// 程序包内容目录
        /// </summary>
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

        /// <summary>
        /// 当前平台名称
        /// </summary>
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
        /// 是否加密lua
        /// </summary>
        public static bool ENCRYPT_LUA = true;

        /// <summary>
        /// 是否启用ScriptBundle模式
        /// </summary>
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
                    return false;
                }
                else
                {
                    return false;
                }
            }
        }

        /// <summary>
        /// 是否启用AssetBundle模式
        /// </summary>
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

        /// <summary>
        /// 脚本包后缀
        /// </summary>
        public const string SCRIPT_BUNDLE_FILE_EXTENSION = ".script";

        /// <summary>
        /// 资源包后缀
        /// </summary>
        public const string ASSET_BUNDLE_FILE_EXTENSION = ".asset";

        /// <summary>
        /// 脚本资源目录
        /// </summary>
        public static string LUA_SCRIPT_WORKSPACE = Application.dataPath + "/Scripts/Lua/";

        /// <summary>
        /// 需要打包的资源目录
        /// </summary>
        public static string BUNDLE_ASSET_WORKSPACE = Application.dataPath + "/Resources/Bundle/";

        /// <summary>
        /// 需要打包的场景目录
        /// </summary>
        public static string BUNDLE_SCENE_WORKSPACE = Application.dataPath + "/Resources/Bundle/Scenes/";

        /// <summary>
        /// 资源目录
        /// </summary>
        public static string RESOURCE_WORKSPACE = Application.dataPath + "/Resources/";

        /// <summary>
        /// 本地资源包目录
        /// </summary>
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

        /// <summary>
        /// 本地脚本包目录
        /// </summary>
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

        /// <summary>
        /// 远端资源目录
        /// </summary>
        public static string REMOTE_ASSET_BUNDLE_PATH
        {
            get
            {
                return "http://192.168.1.155:9555/" + PLATFORM_NAME + "/Assets/";
            }
        }

        /// <summary>
        /// 远端脚本目录
        /// </summary>
        public static string REMOTE_SCRIPT_BUNDLE_PATH
        {
            get
            {
                return "http://192.168.1.155:9555/" + PLATFORM_NAME + "/Scripts/";
            }
        }

        /// <summary>
        /// 登录服务器地址
        /// </summary>
        public static string ACCOUNT_SERVER_IP
        {
            get; set;
        }

        /// <summary>
        /// 登录服务器端口
        /// </summary>
        public static int ACCOUNT_SERVER_PORT
        {
            get; set;
        }

        /// <summary>
        /// 最新的版本
        /// </summary>
        public static string NEWEST_VERSION
        {
            get; set;
        }

        /// <summary>
        /// 安装包下载地址
        /// </summary>
        public static string PKG_DOWNLOAD_URL
        {
            get; set;
        }

        /// <summary>
        /// 安装包大小
        /// </summary>
        public static int PKG_SIZE
        {
            get; set;
        }

        /// <summary>
        /// 微信回调地址
        /// </summary>
        public static string WECHAT_URL
        {
            get; set;
        }

        /// <summary>
        /// 问题反馈地址
        /// </summary>
        public static string FEEDBACK_URL
        {
            get; set;
        }

        /// <summary>
        /// 融云key
        /// </summary>
        public static string RONGCLOUD_KEY
        {
            get; set;
        }

        /// <summary>
        /// 融云secret
        /// </summary>
        public static string RONGCLOUD_SECRET
        {
            get; set;
        }

        /// <summary>
        /// 分享标题
        /// </summary>
        public static string SHARE_TITLE
        {
            get; set;
        }

        /// <summary>
        /// 分享内容
        /// </summary>
        public static string SHARE_CONTENT
        {
            get; set;
        }

        /// <summary>
        /// 分享至朋友圈的内容
        /// </summary>
        public static string SHARE_MOMENT_CONTENT
        {
            get; set;
        }

        /// <summary>
        /// 分享的链接
        /// </summary>
        public static string SHARE_URL
        {
            get; set;
        }

        /// <summary>
        /// 分享的图片
        /// </summary>
        public static string SHARE_ICON
        {
            get; set;
        }

        /// <summary>
        /// 微信UnionID
        /// </summary>
        public static string WX_UNION_ID
        {
            get; set;
        }
    }
}

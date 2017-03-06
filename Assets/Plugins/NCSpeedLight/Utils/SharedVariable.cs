/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: SharedVariable.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

public static class SharedVariable
{
    //public static string LOGIN_SERVER_ADDRESS = "jinxianmajiangappts.damaigame.com";
    public static string LOGIN_SERVER_ADDRESS = "192.168.0.228";

    //public const int LOGIN_SERVER_PORT = 20000;
    public const int LOGIN_SERVER_PORT = 50000;

    public const int UI_ROOT_HEIGHT = 720;
    public const int UI_ROOT_WIDTH = 1224;
    public static float SCREEN_SCALE
    {
        get
        {
            return (float)UI_ROOT_HEIGHT / (float)Screen.height;
        }
    }

    public static bool IsSinglePlayer = false;

    public const int COPY_ID = 10001;

    public static string GAME_NAME = "Cards Framework";

    /// <summary>
    /// 数据读取路径
    /// </summary>
    public static string DATA_PATH
    {
        get
        {
            if (Application.isMobilePlatform)
            {
                return Application.persistentDataPath + "/" + GAME_NAME + "/";
            }
            else if (Application.platform == RuntimePlatform.WindowsPlayer || Application.isEditor)
            {
                return Application.streamingAssetsPath + "/";
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
}

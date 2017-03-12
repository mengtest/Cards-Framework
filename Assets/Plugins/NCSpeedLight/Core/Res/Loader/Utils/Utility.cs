/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: Utility.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

#define ENABLE_LOG

using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace NCSpeedLight
{
    public class Utility
    {
        public const string AssetBundlesOutputPath = "AssetBundles";
        public static string BundleSceneOutputPath = "AssetBundles/" + GetPlatformName() + "/" + "BundleScenes/";
        private static System.Text.StringBuilder m_StringBuilder = new System.Text.StringBuilder();
        public static string GetPlatformName()
        {
#if UNITY_EDITOR
            // return the activeBuildTarget
            return GetPlatformForAssetBundles(EditorUserBuildSettings.activeBuildTarget);
#else
			return GetPlatformForAssetBundles(Application.platform);
#endif
        }

#if UNITY_EDITOR
        private static string GetPlatformForAssetBundles(BuildTarget target)
        {
            switch (target)
            {
                case BuildTarget.Android:
                    return "Android";
                case BuildTarget.iOS:
                    return "iOS";
                case BuildTarget.WebPlayer:
                    return "WebPlayer";
                case BuildTarget.StandaloneWindows:
                case BuildTarget.StandaloneWindows64:
                    return "Windows";
                case BuildTarget.StandaloneOSXIntel:
                case BuildTarget.StandaloneOSXIntel64:
                case BuildTarget.StandaloneOSXUniversal:
                    return "OSX";
                default:
                    return null;
            }
        }
#endif

        private static string GetPlatformForAssetBundles(RuntimePlatform platform)
        {
            switch (platform)
            {
                case RuntimePlatform.Android:
                    return "Android";
                case RuntimePlatform.IPhonePlayer:
                    return "iOS";
                case RuntimePlatform.OSXWebPlayer:
                case RuntimePlatform.WindowsWebPlayer:
                    return "WebPlayer";
                case RuntimePlatform.WindowsPlayer:
                    return "Windows";
                case RuntimePlatform.OSXPlayer:
                    return "OSX";
                default:
                    return null;
            }
        }

        public static string GetFileNameFromFullPath(string varPath)
        {
            if (string.IsNullOrEmpty(varPath))
            {
                return null;
            };
            string[] paths = varPath.Split(new char[] { '/' });
            if (paths.Length == 0)
            {
                return null;
            }
            return paths[paths.Length - 1];
        }

        public static string GetFileNameWithoutExtFromFullPath(string varPath)
        {
            string tempFileName = GetFileNameFromFullPath(varPath);
            if (string.IsNullOrEmpty(tempFileName)) return string.Empty;
            string[] paths = tempFileName.Split(new char[] { '.' });
            if (paths.Length == 0)
            {
                return null;
            }
            if (paths.Length == 1)
            {
                return paths[0];
            }
            return paths[paths.Length - 2];
        }

        public static void LogError(string msg)
        {
#if ENABLE_LOG
            Debug.LogError("[ResManager] " + msg);
#endif
        }
        public static void Log(string msg)
        {
#if ENABLE_LOG
            Debug.Log("[ResManager] " + msg);
#endif
        }
        public static void LogWarning(string msg)
        {
#if ENABLE_LOG
            Debug.LogWarning("[ResManager] " + msg);
#endif
        }

        public static string GetAssetPathWithoutExt(string str)
        {
            string[] paths = str.Split(new char[] { '.' });
            if (paths.Length == 0)
            {
                return str;
            }
            if (paths.Length == 1)
            {
                return paths[0];
            }
            return paths[paths.Length - 2];
        }

        public static string GetPlatformName(RuntimePlatform platform)
        {
            switch (platform)
            {
                case RuntimePlatform.Android:
                    return "Android";
                case RuntimePlatform.IPhonePlayer:
                    return "iOS";
                case RuntimePlatform.WindowsWebPlayer:
                case RuntimePlatform.OSXWebPlayer:
                    return "WebPlayer";
                case RuntimePlatform.WindowsPlayer:
                    return "Windows";
                case RuntimePlatform.OSXPlayer:
                    return "OSX";
                case RuntimePlatform.WindowsEditor:
                case RuntimePlatform.OSXEditor:
#if UNITY_ANDROID
                    return "Android";
#elif UNITY_IPHONE
            return "iOS";
#else
            return "Windows";
#endif
                default:
                    return null;
            }
        }


        public static string StringFormat(string format, params object[] args)
        {
            if (m_StringBuilder == null)
                m_StringBuilder = new System.Text.StringBuilder();
            m_StringBuilder.Remove(0, m_StringBuilder.Length);
            m_StringBuilder.AppendFormat(format, args);
            return m_StringBuilder.ToString();
        }
    }
}

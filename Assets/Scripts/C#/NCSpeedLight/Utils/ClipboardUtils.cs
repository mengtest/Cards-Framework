using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;

namespace NCSpeedLight
{
    public class ClipboardUtils
    {

#if UNITY_IOS
        [DllImport ("__Internal")]
        private static extern void iOSCopy(string text);
#endif

#if UNITY_ANDROID
        private static AndroidJavaObject androidInstance;
        private static void AndroidCopy(string text)
        {
            if (androidInstance == null)
            {
                AndroidJavaClass contextClass = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
                AndroidJavaObject context = contextClass.GetStatic<AndroidJavaObject>("currentActivity");
                androidInstance = new AndroidJavaObject("com.hsu.clipboard.ClipboardUtils", context);
            }
            androidInstance.Call("Copy", text);
        }
#endif

        private static void PCCopy(string text)
        {
            TextEditor te = new TextEditor();
            te.text = text;
            te.OnFocus();
            te.SelectAll();
            te.Copy();
        }

        public static void Copy(string text)
        {
            if (string.IsNullOrEmpty(text)) return;
            if (Application.isEditor)
            {
                PCCopy(text);
            }
            else
            {
#if UNITY_ANDROID
                AndroidCopy(text);

#elif UNITY_IOS
                iOSCopy(text);
#else  
                PCCopy(text);
#endif
            }
        }
    }
}


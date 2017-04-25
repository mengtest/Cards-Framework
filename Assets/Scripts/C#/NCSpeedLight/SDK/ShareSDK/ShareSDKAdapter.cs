using cn.sharesdk.unity3d;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class ShareSDKAdapter : MonoBehaviour
    {
        private static ShareSDK ssdk;
        private static List<ShareSDK.EventHandler> authHandlers = new List<ShareSDK.EventHandler>();
        private static List<ShareSDK.EventHandler> shareHandlers = new List<ShareSDK.EventHandler>();

        void Start()
        {
            ssdk = GetComponent<ShareSDK>();
            ssdk.authHandler = (int reqID, ResponseState state, PlatformType type, Hashtable result) =>
            {
                for (int i = 0; i < authHandlers.Count; i++)
                {
                    ShareSDK.EventHandler handler = authHandlers[i];
                    if (handler != null)
                    {
                        handler(reqID, state, type, result);
                    }
                }
                authHandlers.Clear();
            };
            ssdk.shareHandler = (int reqID, ResponseState state, PlatformType type, Hashtable result) =>
            {
                for (int i = 0; i < shareHandlers.Count; i++)
                {
                    ShareSDK.EventHandler handler = shareHandlers[i];
                    if (handler != null)
                    {
                        handler(reqID, state, type, result);
                    }
                }
                shareHandlers.Clear();
            };
        }

        public static void AuthWechat(ShareSDK.EventHandler handler)
        {
            if (ssdk)
            {
                ssdk.CancelAuthorize(PlatformType.WeChat);
                ssdk.Authorize(PlatformType.WeChat);
                if(authHandlers.Contains(handler) == false)
                {
                    authHandlers.Add(handler);
                }
            }
            else
            {
                Helper.LogError("ShareSDKAdapter.AuthWechat: nil ssdk instance.");
            }
        }

        public static void ShareWechatMoment(ShareSDK.EventHandler handler)
        {

        }

        public static void ShareWechatFriend(ShareSDK.EventHandler handler)
        {

        }
    }
}


using cn.sharesdk.unity3d;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class ShareSDKAdapter : MonoBehaviour
    {
        public class AuthInfo
        {
            public string openID;
            public int expiresIn;
            public string userGender;
            public string tokenSecret;
            public string userID;
            public string unionID;
            public long expiresTime;
            public string userName;
            public string token;
            public string userIcon;
        }
        public enum RetType
        {
            Success = 1,            //Success
            Fail = 2,               //Failure
            Cancel = 3,				//Cancel
        }
        public delegate void AuthCallbackDelegate(RetType ret, AuthInfo authInfo);
        public delegate void ShareCallbackDelegate(RetType ret);

        private static ShareSDK ssdk;
        private static List<AuthCallbackDelegate> authHandlers = new List<AuthCallbackDelegate>();
        private static List<ShareCallbackDelegate> shareHandlers = new List<ShareCallbackDelegate>();

        void Start()
        {
            ssdk = gameObject.AddComponent<ShareSDK>();
            ssdk.authHandler = (int reqID, ResponseState state, PlatformType type, Hashtable result) =>
            {
                Helper.Log("ShareSDKAdapter.authHandler: auth callback,platform is " + type + " res state is " + state);
                Hashtable authInfoTable = ssdk.GetAuthInfo(PlatformType.WeChat);
                AuthInfo authInfo = new AuthInfo();
                if (authInfoTable.Count == 0)
                {
                    Helper.LogError("ShareSDKAdapter.authHandler: authInfoTable is nil.");
                }
                else
                {
                    try
                    {
                        authInfo.openID = authInfoTable["openID"] as string;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.openID is " + authInfo.openID);

                        int.TryParse(authInfoTable["expiresIn"] as string, out authInfo.expiresIn);
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.expiresIn is " + authInfo.expiresIn);

                        authInfo.userGender = authInfoTable["userGender"] as string;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.userGender is " + authInfo.userGender);

                        authInfo.tokenSecret = authInfoTable["tokenSecret"] as string;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.tokenSecret is " + authInfo.tokenSecret);

                        authInfo.userID = authInfoTable["userID"] as string;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.userID is " + authInfo.userID);

                        authInfo.unionID = authInfoTable["unionID"] as string;
                        Constants.WX_UNION_ID = authInfo.unionID;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.unionID is " + authInfo.unionID);

                        long.TryParse(authInfoTable["expiresTime"] as string, out authInfo.expiresTime);
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.expiresTime is " + authInfo.expiresTime);

                        authInfo.userName = authInfoTable["userName"] as string;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.userName is " + authInfo.userName);

                        authInfo.token = authInfoTable["token"] as string;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.token is " + authInfo.token);

                        authInfo.userIcon = authInfoTable["userIcon"] as string;
                        Helper.Log("ShareSDKAdapter.authHandler: authInfo.userIcon is " + authInfo.userIcon);

                    }
                    catch (Exception e)
                    {
                        Helper.LogError("ShareSDKAdapter.authHandler: create authinfo error," + e.Message);
                    }
                }
                for (int i = 0; i < authHandlers.Count; i++)
                {
                    AuthCallbackDelegate callback = authHandlers[i];
                    if (callback != null)
                    {

                        callback((RetType)state, authInfo);
                    }
                }
                authHandlers.Clear();
            };
            ssdk.shareHandler = (int reqID, ResponseState state, PlatformType type, Hashtable result) =>
            {
                for (int i = 0; i < shareHandlers.Count; i++)
                {
                    ShareCallbackDelegate handler = shareHandlers[i];
                    if (handler != null)
                    {
                        handler((RetType)state);
                    }
                }
                shareHandlers.Clear();
            };
        }

        /// <summary>
        /// 微信登录
        /// </summary>
        /// <param name="handler"></param>
        public static void AuthWechat(AuthCallbackDelegate handler)
        {
            if (handler == null)
            {
                Helper.LogError("ShareSDKAdapter.AuthWechat: error caused by nil handler instance.");
                return;
            }
            if (ssdk)
            {
                ssdk.Authorize(PlatformType.WeChat);
                if (authHandlers.Contains(handler) == false)
                {
                    authHandlers.Add(handler);
                }
            }
            else
            {
                Helper.LogError("ShareSDKAdapter.AuthWechat: nil ssdk instance.");
            }
        }

        /// <summary>
        /// 获取个人信息
        /// </summary>
        /// <returns></returns>
        public static AuthInfo GetWechatAuthInfo()
        {
            if (ssdk)
            {
                Hashtable authInfoTable = ssdk.GetAuthInfo(PlatformType.WeChat);
                AuthInfo authInfo = new AuthInfo();
                if (authInfoTable.Count == 0)
                {
                    Helper.LogError("ShareSDKAdapter.GetWechatAuthInfo: authInfoTable is nil.");
                    return null;
                }
                else
                {
                    try
                    {
                        authInfo.openID = authInfoTable["openID"] as string;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.openID is " + authInfo.openID);

                        int.TryParse(authInfoTable["expiresIn"].ToString(), out authInfo.expiresIn);
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.expiresIn str is  " + authInfoTable["expiresIn"].ToString());
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.expiresIn is " + authInfo.expiresIn);

                        authInfo.userGender = authInfoTable["userGender"] as string;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.userGender is " + authInfo.userGender);

                        authInfo.tokenSecret = authInfoTable["tokenSecret"] as string;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.tokenSecret is " + authInfo.tokenSecret);

                        authInfo.userID = authInfoTable["userID"] as string;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.userID is " + authInfo.userID);

                        authInfo.unionID = authInfoTable["unionID"] as string;
                        Constants.WX_UNION_ID = authInfo.unionID;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.unionID is " + authInfo.unionID);

                        long.TryParse(authInfoTable["expiresTime"] as string, out authInfo.expiresTime);
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.expiresTime is " + authInfo.expiresTime);

                        authInfo.userName = authInfoTable["userName"] as string;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.userName is " + authInfo.userName);

                        authInfo.token = authInfoTable["token"] as string;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.token is " + authInfo.token);

                        authInfo.userIcon = authInfoTable["userIcon"] as string;
                        Helper.Log("ShareSDKAdapter.GetWechatAuthInfo: authInfo.userIcon is " + authInfo.userIcon);
                    }
                    catch (Exception e)
                    {
                        Helper.LogError("ShareSDKAdapter.GetWechatAuthInfo: create authinfo error," + e.Message);
                        return null;
                    }
                }
                return authInfo;
            }
            else
            {
                Helper.LogError("ShareSDKAdapter.GetWechatAuthInfo: nil ssdk instance.");
                return null;
            }
        }

        public static void ShareWechatMoment(ShareCallbackDelegate handler)
        {
            shareHandlers.Add(handler);
            ShareContent content = new ShareContent();
            content.SetTitle(Constants.SHARE_MOMENT_CONTENT);
            content.SetText(Constants.SHARE_CONTENT);
            content.SetUrl(Constants.PKG_DOWNLOAD_URL + "?UID=" + Constants.WX_UNION_ID + "&");
            content.SetImageUrl(Constants.SHARE_ICON);
            content.SetShareType(ContentType.Webpage);
            content.SetShareContentCustomize(PlatformType.WeChatMoments, content);
            ssdk.ShareContent(PlatformType.WeChatMoments, content);
        }

        public static void ShareWechatFriend(ShareCallbackDelegate handler)
        {
            shareHandlers.Add(handler);
            ShareContent content = new ShareContent();
            content.SetTitle("立刻加入雀友红中麻将");
            content.SetText(Constants.SHARE_CONTENT);
            content.SetUrl(Constants.PKG_DOWNLOAD_URL + "?UID=" + Constants.WX_UNION_ID + "&");
            content.SetImageUrl(Constants.SHARE_ICON);
            content.SetShareType(ContentType.Webpage);
            content.SetShareContentCustomize(PlatformType.WeChat, content);
            ssdk.ShareContent(PlatformType.WeChat, content);
        }

        public static void ShareWechatFriendWithScreenshot(ShareCallbackDelegate handler)
        {
            shareHandlers.Add(handler);
            ShareContent content = new ShareContent();
            content.SetTitle("立刻加入雀友红中麻将");
            content.SetText(Constants.SHARE_CONTENT);
            content.SetUrl(Constants.PKG_DOWNLOAD_URL + "?UID=" + Constants.WX_UNION_ID + "&");
            content.SetImagePath(Constants.SCREEN_SHOT_FILE);
            content.SetShareType(ContentType.Image);
            content.SetShareContentCustomize(PlatformType.WeChat, content);
            ssdk.ShareContent(PlatformType.WeChat, content);
        }

        public static void ShareWechatMomentWithScreenshot(ShareCallbackDelegate handler)
        {
            shareHandlers.Add(handler);
            ShareContent content = new ShareContent();
            content.SetTitle(Constants.SHARE_MOMENT_CONTENT);
            content.SetText(Constants.SHARE_CONTENT);
            content.SetUrl(Constants.PKG_DOWNLOAD_URL + "?UID=" + Constants.WX_UNION_ID + "&");
            content.SetImagePath(Constants.SCREEN_SHOT_FILE);
            content.SetShareType(ContentType.Image);
            content.SetShareContentCustomize(PlatformType.WeChatMoments, content);
            ssdk.ShareContent(PlatformType.WeChatMoments, content);
        }

        public static void InviteWechatFriend(ShareCallbackDelegate handler, int roomID, string shareText)
        {
#if UNITY_IOS || UNITY_ANDROID
            shareHandlers.Add(handler);
            ShareContent content = new ShareContent();
            content.SetTitle(Constants.SHARE_TITLE + roomID);
            content.SetText(shareText);
            content.SetUrl(Constants.PKG_DOWNLOAD_URL + "?UID=" + Constants.WX_UNION_ID + "&");
            content.SetImageUrl(Constants.SHARE_ICON);
            content.SetShareType(ContentType.Webpage);
            content.SetShareContentCustomize(PlatformType.WechatPlatform, content);
            ssdk.ShareContent(PlatformType.WechatPlatform, content);
#endif
        }
    }
}


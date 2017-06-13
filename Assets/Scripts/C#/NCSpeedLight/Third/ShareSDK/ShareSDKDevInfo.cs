using System;

namespace cn.sharesdk.unity3d
{
    [Serializable]
    public class DevInfoSet
    {
        public WeChat wechat = new WeChat();
        public WeChatMoments wechatMoments = new WeChatMoments();
        public WeChatFavorites wechatFavorites = new WeChatFavorites();
    }

    public class DevInfo
    {
        public bool Enable = true;
    }


    [Serializable]
    public class WeChat : DevInfo
    {
#if UNITY_IPHONE
        public const int type = (int)PlatformType.WeChat;
        public string app_id = "wxb3ae4be45780f44a";
        public string app_secret = "60781e2b93bd09436095a48c05caff54";
#else
        public string SortId = "5";
        public const int type = (int)PlatformType.WeChat;
        public string AppId = "wxb3ae4be45780f44a";
        public string AppSecret = "60781e2b93bd09436095a48c05caff54";
        public bool BypassApproval = false;
#endif
    }

    [Serializable]
    public class WeChatMoments : DevInfo
    {
#if UNITY_IPHONE
        public const int type = (int)PlatformType.WeChatMoments;
        public string app_id = "wxb3ae4be45780f44a";
        public string app_secret = "60781e2b93bd09436095a48c05caff54";
#else
        public string SortId = "6";
        public const int type = (int)PlatformType.WeChatMoments;
        public string AppId = "wxb3ae4be45780f44a";
        public string AppSecret = "60781e2b93bd09436095a48c05caff54";
        public bool BypassApproval = false;
#endif
    }

    [Serializable]
    public class WeChatFavorites : DevInfo
    {
#if UNITY_IPHONE
        public const int type = (int)PlatformType.WeChatFavorites;
        public string app_id = "wxb3ae4be45780f44a";
        public string app_secret = "60781e2b93bd09436095a48c05caff54";
#else
        public string SortId = "7";
        public const int type = (int)PlatformType.WeChatFavorites;
        public string AppId = "wxb3ae4be45780f44a";
        public string AppSecret = "60781e2b93bd09436095a48c05caff54";
#endif
    }
}

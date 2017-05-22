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
        public string app_id = "wx776aff04142fd64f";
        public string app_secret = "67755b2094a9cb17c000f17c36e49a9e";
#else
        public string SortId = "5";
        public const int type = (int)PlatformType.WeChat;
        public string AppId = "wx776aff04142fd64f";
        public string AppSecret = "67755b2094a9cb17c000f17c36e49a9e";
        public bool BypassApproval = true;
#endif
    }

    [Serializable]
    public class WeChatMoments : DevInfo
    {
#if UNITY_IPHONE
        public const int type = (int)PlatformType.WeChatMoments;
        public string app_id = "wx776aff04142fd64f";
        public string app_secret = "67755b2094a9cb17c000f17c36e49a9e";
#else
        public string SortId = "6";
        public const int type = (int)PlatformType.WeChatMoments;
        public string AppId = "wx776aff04142fd64f";
        public string AppSecret = "67755b2094a9cb17c000f17c36e49a9e";
        public bool BypassApproval = false;
#endif
    }

    [Serializable]
    public class WeChatFavorites : DevInfo
    {
#if UNITY_IPHONE
        public const int type = (int)PlatformType.WeChatFavorites;
        public string app_id = "wx776aff04142fd64f";
        public string app_secret = "67755b2094a9cb17c000f17c36e49a9e";
#else
        public string SortId = "7";
        public const int type = (int)PlatformType.WeChatFavorites;
        public string AppId = "wx776aff04142fd64f";
        public string AppSecret = "67755b2094a9cb17c000f17c36e49a9e";
#endif
    }
}

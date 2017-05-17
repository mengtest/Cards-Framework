using UnityEngine;
using System;
using System.Collections.Generic;
using LuaInterface;
using NCSpeedLight;

using BindType = ToLuaMenu.BindType;
using System.Reflection;
using cn.sharesdk.unity3d;

public static class CustomSettings
{
    public static string saveDir = Application.dataPath + "/Scripts/C#/ToLua/Source/Generate/";
    public static string toluaBaseType = Application.dataPath + "/Scripts/C#/ToLua/BaseType/";

    //导出时强制做为静态类的类型(注意customTypeList 还要添加这个类型才能导出)
    //unity 有些类作为sealed class, 其实完全等价于静态类
    public static List<Type> staticClassTypes = new List<Type>
    {
        typeof(UnityEngine.Application),
        typeof(UnityEngine.RuntimePlatform),
        typeof(UnityEngine.Time),
        typeof(UnityEngine.Screen),
        typeof(UnityEngine.SleepTimeout),
        typeof(UnityEngine.Input),
        typeof(UnityEngine.Resources),
        typeof(UnityEngine.Physics),
        typeof(UnityEngine.RenderSettings),
        typeof(UnityEngine.QualitySettings),
        typeof(UnityEngine.GL),
    };

    //附加导出委托类型(在导出委托时, customTypeList 中牵扯的委托类型都会导出， 无需写在这里)
    public static DelegateType[] customDelegateList =
    {
        _DT(typeof(Action)),
        _DT(typeof(UnityEngine.Events.UnityAction)),
        _DT(typeof(Predicate<int>)),
        _DT(typeof(Action<int>)),
        _DT(typeof(Comparison<int>)),
        _DT(typeof(NetConnection.StatusDelegate)),
        _DT(typeof(UIEventListener.VoidDelegate)),
        _DT(typeof(ShareSDKAdapter.AuthCallbackDelegate)),
        _DT(typeof(ShareSDKAdapter.ShareCallbackDelegate)),
        _DT(typeof(RCloud.RCVoiceCaptureCallback.VoiceCaptureFinishedCallback)),
        _DT(typeof(RCloud.RCVoiceCaptureCallback.VoiceCaptureVolumeCallback)),
        _DT(typeof(RCloud.RCVoiceCaptureCallback.VoiceCaptureErrorCallback)),
        _DT(typeof(AMapAdapter.Callback)),
    };

    //在这里添加你要导出注册到lua的类型列表
    public static BindType[] customTypeList =
    {

        _GT(typeof(Debugger)).SetNameSpace(null),

        _GT(typeof(Component)),
        _GT(typeof(Transform)),
        _GT(typeof(Material)),
        _GT(typeof(Rigidbody)),
        _GT(typeof(Camera)),
        _GT(typeof(AudioSource)),

        _GT(typeof(Behaviour)),
        _GT(typeof(MonoBehaviour)),
        _GT(typeof(GameObject)),
        _GT(typeof(TrackedReference)),
        _GT(typeof(Application)),
        _GT(typeof(UnityEngine.RuntimePlatform)),
        _GT(typeof(Physics)),
        _GT(typeof(Collider)),
        _GT(typeof(Time)),
        _GT(typeof(Texture)),
        _GT(typeof(Texture2D)),
        _GT(typeof(Shader)),
        _GT(typeof(Renderer)),
        _GT(typeof(WWW)),
        _GT(typeof(Screen)),
        _GT(typeof(CameraClearFlags)),
        _GT(typeof(AudioClip)),
        _GT(typeof(AssetBundle)),
        _GT(typeof(AssetBundleManifest)),
        _GT(typeof(ParticleSystem)),
        _GT(typeof(AsyncOperation)).SetBaseType(typeof(System.Object)),

        _GT(typeof(LightType)),
        _GT(typeof(SleepTimeout)),

        _GT(typeof(Animator)),
        _GT(typeof(Input)),
        _GT(typeof(KeyCode)),
        _GT(typeof(SkinnedMeshRenderer)),
        _GT(typeof(Space)),


        _GT(typeof(MeshRenderer)),

        _GT(typeof(BoxCollider)),
        _GT(typeof(MeshCollider)),
        _GT(typeof(SphereCollider)),
        _GT(typeof(CharacterController)),
        _GT(typeof(CapsuleCollider)),

        _GT(typeof(Animation)),
        _GT(typeof(AnimationClip)).SetBaseType(typeof(UnityEngine.Object)),
        _GT(typeof(AnimationState)),
        _GT(typeof(AnimationBlendMode)),
        _GT(typeof(QueueMode)),
        _GT(typeof(PlayMode)),
        _GT(typeof(WrapMode)),

        _GT(typeof(QualitySettings)),
        _GT(typeof(RenderSettings)),
        _GT(typeof(BlendWeights)),
        _GT(typeof(RenderTexture)),
        _GT(typeof(Resources)),

        _GT(typeof(GUI)),
        _GT(typeof(GUIContent)),
        _GT(typeof(Rect)),

        _GT(typeof(UnityEngine.SceneManagement.SceneManager)),

#region SDK 
        _GT(typeof(ShareSDKAdapter)),
        _GT(typeof(ShareSDKAdapter.RetType)),
        _GT(typeof(ShareSDKAdapter.AuthInfo)),
        _GT(typeof(RCloud.RCErrorCode)),
        _GT(typeof(RongCloudAdapter)),
        _GT(typeof(AMapAdapter)),
#endregion

#region NCSpeedLight
        _GT(typeof(Evt)),
         _GT(typeof(AssetManager)),

         _GT(typeof(AudioManager)),

         _GT(typeof(LuaManager)),
         _GT(typeof(LuaBehaviour)),
         _GT(typeof(LuaLoader)),


         _GT(typeof(NetManager)),
         _GT(typeof(NetConnection)),

         _GT(typeof(Helper)),
         _GT(typeof(UIHelper)),

         _GT(typeof(Constants)),

         _GT(typeof(TipsDialog)),
         _GT(typeof(InvisiableOnTweenFinish)),
         _GT(typeof(ScheduleHide)),
         _GT(typeof(Loom)),

         _GT(typeof(LuaComponent)),

         _GT(typeof(InternalUI)),

#endregion

        #region NGUI Component
        _GT(typeof(NGUITools)),
         _GT(typeof(UIEventListener)),
         _GT(typeof(LanguageSelection)),
         _GT(typeof(TypewriterEffect)),
         _GT(typeof(UIButton)),
         _GT(typeof(UIButtonActivate)),
         _GT(typeof(UIButtonColor)),
         _GT(typeof(UIButtonKeys)),
         _GT(typeof(UIButtonMessage)),
         _GT(typeof(UIButtonOffset)),
         _GT(typeof(UIButtonRotation)),
         _GT(typeof(UIButtonScale)),
         _GT(typeof(UICenterOnChild)),
         _GT(typeof(UICenterOnClick)),
         _GT(typeof(UIDragCamera)),
         _GT(typeof(UIDragDropContainer)),
         _GT(typeof(UIDragDropItem)),
         _GT(typeof(UIDragDropRoot)),
         _GT(typeof(UIDraggableCamera)),
         _GT(typeof(UIDragObject)),
         _GT(typeof(UIDragResize)),
         _GT(typeof(UIDragScrollView)),
         _GT(typeof(UIEventTrigger)),
         _GT(typeof(UIForwardEvents)),
         _GT(typeof(UIGrid)),
         _GT(typeof(UIImageButton)),
         _GT(typeof(UIKeyBinding)),
         _GT(typeof(UIKeyNavigation)),
         _GT(typeof(UIPlayAnimation)),
         _GT(typeof(UIPlaySound)),
         _GT(typeof(UIPlayTween)),
         _GT(typeof(UIPopupList)),
         _GT(typeof(UIProgressBar)),
         _GT(typeof(UISavedOption)),
         _GT(typeof(UIScrollBar)),
         _GT(typeof(UIScrollView)),
         _GT(typeof(UISlider)),
         _GT(typeof(UISoundVolume)),
         _GT(typeof(UITable)),
         _GT(typeof(UIToggle)),
         _GT(typeof(UIToggledComponents)),
         _GT(typeof(UIToggledObjects)),
         _GT(typeof(UIWidgetContainer)),
         _GT(typeof(UIWrapContent)),

         _GT(typeof(AnimatedAlpha)),
         _GT(typeof(AnimatedColor)),
         _GT(typeof(AnimatedWidget)),
         _GT(typeof(SpringPosition)),
         _GT(typeof(TweenAlpha)),
         _GT(typeof(TweenColor)),
         _GT(typeof(TweenFOV)),
         _GT(typeof(TweenHeight)),
         _GT(typeof(TweenOrthoSize)),
         _GT(typeof(TweenPosition)),
         _GT(typeof(TweenRotation)),
         _GT(typeof(TweenScale)),
         _GT(typeof(TweenTransform)),
         _GT(typeof(TweenVolume)),
         _GT(typeof(TweenWidth)),
         _GT(typeof(UITweener)),

         _GT(typeof(UI2DSprite)),
         _GT(typeof(UI2DSpriteAnimation)),
         _GT(typeof(UIAnchor)),
         _GT(typeof(UIAtlas)),
         _GT(typeof(UICamera)),
         _GT(typeof(UIFont)),
         _GT(typeof(UIInput)),
         _GT(typeof(UIInputOnGUI)),
         _GT(typeof(UILabel)),
         _GT(typeof(UILocalize)),
         _GT(typeof(UIPanel)),
         _GT(typeof(UIRoot)),
         _GT(typeof(UIRoot.Scaling)),
         _GT(typeof(UISprite)),
         _GT(typeof(UISpriteAnimation)),
         _GT(typeof(UISpriteData)),
         _GT(typeof(UIStretch)),
         _GT(typeof(UITextList)),
         _GT(typeof(UITexture)),
         _GT(typeof(UITooltip)),
         _GT(typeof(UIViewport)),


        #endregion

         
        #region System
        _GT(typeof(BitConverter)),
        _GT(typeof(DateTime)),
        #endregion
     
        #region System.IO
        _GT(typeof(System.IO.File)),
        _GT(typeof(System.IO.FileInfo)),
        _GT(typeof(System.IO.FileMode)),
        _GT(typeof(System.IO.FileStream)),
        _GT(typeof(System.IO.MemoryStream)),
        _GT(typeof(System.IO.Path)),
        _GT(typeof(System.IO.StreamReader)),
        _GT(typeof(System.IO.StreamWriter)),
        _GT(typeof(System.IO.TextReader)),
        _GT(typeof(System.IO.TextWriter)),
        _GT(typeof(System.IO.Directory)),
        _GT(typeof(System.IO.DirectoryInfo)),
#endregion

        #region System.Collections
        _GT(typeof(System.Collections.Hashtable)),
        #endregion
    };

    public static List<Type> dynamicList = new List<Type>()
    {
        typeof(MeshRenderer),

        typeof(BoxCollider),
        typeof(MeshCollider),
        typeof(SphereCollider),
        typeof(CharacterController),
        typeof(CapsuleCollider),

        typeof(Animation),
        typeof(AnimationClip),
        typeof(AnimationState),

        typeof(BlendWeights),
        typeof(RenderTexture),
        typeof(Rigidbody),
    };

    //重载函数，相同参数个数，相同位置out参数匹配出问题时, 需要强制匹配解决
    //使用方法参见例子14
    public static List<Type> outList = new List<Type>()
    {

    };

    public static BindType _GT(Type t)
    {
        return new BindType(t);
    }

    public static DelegateType _DT(Type t)
    {
        return new DelegateType(t);
    }
}

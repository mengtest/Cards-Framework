using UnityEngine;
using System;
using System.Collections.Generic;
using LuaInterface;
using NCSpeedLight;

using BindType = ToLuaMenu.BindType;
using System.Reflection;

public static class CustomSettings
{
    public static string saveDir = Application.dataPath + "/Plugins/NCSpeedLight/3rd/ToLua/Source/Generate/";
    public static string toluaBaseType = Application.dataPath + "/Plugins/NCSpeedLight/3rd/ToLua/BaseType/";

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
        _DT(typeof(System.Predicate<int>)),
        _DT(typeof(System.Action<int>)),
        _DT(typeof(System.Comparison<int>)),
        _DT(typeof(ServerConnection.ConnectionDelegate)),
        _DT(typeof(UIEventListener.VoidDelegate)),

    };

    //在这里添加你要导出注册到lua的类型列表
    public static BindType[] customTypeList =
    {                
        //------------------------为例子导出--------------------------------
        //_GT(typeof(TestEventListener)),
        //_GT(typeof(TestProtol)),
        //_GT(typeof(TestAccount)),
        //_GT(typeof(Dictionary<int, TestAccount>)).SetLibName("AccountMap"),
        //_GT(typeof(KeyValuePair<int, TestAccount>)),    
        //_GT(typeof(TestExport)),
        //_GT(typeof(TestExport.Space)),
        //-------------------------------------------------------------------        
                
        _GT(typeof(Debugger)).SetNameSpace(null),        

#if USING_DOTWEENING
        _GT(typeof(DG.Tweening.DOTween)),
        _GT(typeof(DG.Tweening.Tween)).SetBaseType(typeof(System.Object)).AddExtendType(typeof(DG.Tweening.TweenExtensions)),
        _GT(typeof(DG.Tweening.Sequence)).AddExtendType(typeof(DG.Tweening.TweenSettingsExtensions)),
        _GT(typeof(DG.Tweening.Tweener)).AddExtendType(typeof(DG.Tweening.TweenSettingsExtensions)),
        _GT(typeof(DG.Tweening.LoopType)),
        _GT(typeof(DG.Tweening.PathMode)),
        _GT(typeof(DG.Tweening.PathType)),
        _GT(typeof(DG.Tweening.RotateMode)),
        _GT(typeof(Component)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Transform)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Light)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Material)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Rigidbody)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Camera)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(AudioSource)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        //_GT(typeof(LineRenderer)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        //_GT(typeof(TrailRenderer)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),    
#else
                                         
        _GT(typeof(Component)),
        _GT(typeof(Transform)),
        _GT(typeof(Material)),
        _GT(typeof(Light)),
        _GT(typeof(Rigidbody)),
        _GT(typeof(Camera)),
        _GT(typeof(AudioSource)),
        //_GT(typeof(LineRenderer))
        //_GT(typeof(TrailRenderer))
#endif
      
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
        _GT(typeof(ParticleSystem)),
        _GT(typeof(AsyncOperation)).SetBaseType(typeof(System.Object)),

        _GT(typeof(LightType)),
        _GT(typeof(SleepTimeout)),
#if UNITY_5_3_OR_NEWER
        _GT(typeof(UnityEngine.Experimental.Director.DirectorPlayer)),
#endif
        _GT(typeof(Animator)),
        _GT(typeof(Input)),
        _GT(typeof(KeyCode)),
        _GT(typeof(SkinnedMeshRenderer)),
        _GT(typeof(Space)),


        _GT(typeof(MeshRenderer)),
#if !UNITY_5_4_OR_NEWER
        _GT(typeof(ParticleEmitter)),
        _GT(typeof(ParticleRenderer)),
        _GT(typeof(ParticleAnimator)), 
#endif
                              
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


        #region NCSpeedLight
        _GT(typeof(GlobalEventManager)),
         _GT(typeof(Evt)),
         _GT(typeof(ResManager)),

         _GT(typeof(UIManager)),
         _GT(typeof(UIManager.StandardDialogOption)),
         _GT(typeof(UIManager.ProgressDialogOption)),
         _GT(typeof(UIManager.DialogType)),


         _GT(typeof(AudioManager)),
         _GT(typeof(LuaManager)),
         _GT(typeof(LuaBehaviour)),
         _GT(typeof(LuaView)),

         _GT(typeof(NetManager)),
         _GT(typeof(NetManager.ServerType)),
         _GT(typeof(ServerConnection)),
         _GT(typeof(ServerConnection.Listener)),


         _GT(typeof(Helper)),
         _GT(typeof(UIHelper)),

         _GT(typeof(SDKManager)),
         _GT(typeof(AndroidAdapter)),
         _GT(typeof(iOSAdapter)),

         //_GT(typeof(SceneManager)),
         //_GT(typeof(Scene)),
         //_GT(typeof(Scene.LAYER)),
         //_GT(typeof(Scene.Type)),


         _GT(typeof(PersistentManager)),

         _GT(typeof(VersionManager)),

         _GT(typeof(SharedVariable)),

#endregion

        #region NGUI Component
        _GT(typeof(UIEventListener)),

         _GT(typeof(LanguageSelection)),
         _GT(typeof(TypewriterEffect)),
         _GT(typeof(UIButton)),
         _GT(typeof(UIButtonActivate)),
         _GT(typeof(UIButtonColor)),
         _GT(typeof(UIButtonKeys)),
         _GT(typeof(UIButtonMessage)),
         _GT(typeof(UIButtonMessageExtended)),
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
         _GT(typeof(UISprite)),
         _GT(typeof(UISpriteAnimation)),
         _GT(typeof(UISpriteData)),
         _GT(typeof(UIStretch)),
         _GT(typeof(UITextList)),
         _GT(typeof(UITexture)),
         _GT(typeof(UITooltip)),
         _GT(typeof(UIViewport)),


#endregion

         _GT(typeof(string)),
         _GT(typeof(DateTime)),

    };

    public static List<Type> dynamicList = new List<Type>()
    {
        typeof(MeshRenderer),
#if !UNITY_5_4_OR_NEWER
        typeof(ParticleEmitter),
        typeof(ParticleRenderer),
        typeof(ParticleAnimator),
#endif

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

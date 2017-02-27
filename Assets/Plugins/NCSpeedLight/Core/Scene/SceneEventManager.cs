/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: SceneEventManager.cs
			// Describle:  
			// Created By:  Wells Hsu
			// Date&Time:  2016/1/19 10:03:15
            // Modify History:
            //
//----------------------------------------------------------------*/

namespace NCSpeedLight
{
    public class SceneEventManager : EventManager
    {
        private Scene m_Scene;
        public Scene Scene
        {
            get { return m_Scene; }
            set { m_Scene = value; }
        }
        public SceneEventManager(Scene scene)
        {
            m_Scene = scene;
        }
    }

    public enum SceneEventType
    {
        SE_None,
        SE_SceneLoadingEnd,
        SE_SceneLoadingBegin,
        /// <summary>
        /// 战斗界面初始化完成.
        /// </summary>
        SE_BattleUIStartEnd,
        /// <summary>
        /// 游戏开始.
        /// </summary>
        SE_StartBattleGame,
        /// <summary>
        /// 游戏相机更改
        /// </summary>
        SE_GameCameraChange,

        /// <summary>
        /// 通知飞机动画结算.
        /// </summary>
        SE_NotifyPlaneAnimaionEnd,

        /// <summary>
        /// 显示点数.
        /// </summary>
        SE_ShowDice,

        /// <summary>
        /// 通知谁掷骰子.
        /// </summary>
        SE_Notify_BattleUI_WhoDice,

        /// <summary>
        /// 飞机抵达位置.
        /// </summary>
        SE_PlaneArrive,

        /// <summary>
        /// 单个玩家飞机模型创建完成.
        /// </summary>
        SE_CharacterEnd,

        /// <summary>
        /// 游戏重连.
        /// </summary>
        SE_GameReconnection,

        /// <summary>
        /// 再玩一次.
        /// </summary>
        SE_PlayAgain,

        /// <summary>
        /// 托管状态.
        /// </summary>
        SE_TrusteeshipState,

        SE_InitedChessboard,

        ///通知TSDK登录成功;
        SE_NotifyTSDKLoginSucceed,
        SE_NotifyTSDKLoginFail,
        SE_NotifyStartTSDKLogin,
        SE_NotifyVersionUpdate,
        SE_NotifyConfigCheck,

        SE_GameOver,

        /// <summary>
        /// 加载完成.
        /// </summary>
        SE_CompletedLoading,
    }

}

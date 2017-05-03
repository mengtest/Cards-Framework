/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: AudioManager.cs
           // Describle: 游戏声音管理
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using UnityEngine;
namespace NCSpeedLight
{
    public enum UISoundEnum
    {
        None,
        Click,
        CountDown,
        Dice,
        DiceNumber,
        Finding,
        FirstHand,
        MyTurn,
        Roll,
        VS,
        Close,
        Award,
        ClickGameMode,
        Settlement,
    }
    public enum RoleSoundEnum
    {
        Appear,
        Win,
        FemaleAppear,
        Walk,
        Jump,
        Fly,
        Overlap,

        ShuaiShuai_Appear = 10,
        ShuaiShuai_Arrive,
        ShuaiShuai_Attack,
        ShuaiShuai_Fly,
        ShuaiShuai_Overlap,
        ShuaiShuai_Relax,

        Mage_Appear = 30,
        Mage_Arrive,
        Mage_Attack,
        Mage_Fly,
        Mage_Overlap,
        Mage_Relax,

        LittleSister_Appear = 50,
        LittleSister_Arrive,
        LittleSister_Attack,
        LittleSister_Fly,
        LittleSister_Overlap,
        LittleSister_Relax,

        Joe_Appear = 70,
        Joe_Arrive,
        Joe_Attack,
        Joe_Fly,
        Joe_Overlap,
        Joe_Relax,
    }
    public class AudioManager
    {
        #region declarations
        private static AudioManager m_Instance;
        public static string GAME_SETTING_CONFIG_FILE = "GameSetting.bytes";
        private EventHandlerQueue mGlobalMsgQueue;
        private bool m_EnableMusic = true;
        private bool m_EnableSound = true;
        #endregion

        #region constructor & initialize
        private AudioManager() { }
        public static AudioManager Instance
        {
            get
            {
                if (m_Instance == null)
                {
                    m_Instance = new AudioManager();
                }
                return m_Instance;
            }
        }
        public void Initialize()
        {
            //mGlobalMsgQueue = new EventHandlerQueue(GlobalEventManager.Instance);
            //mGlobalMsgQueue.Add((int)GlobalEventType.GE_LevelWasLoaded, OnLevelLoaded);
            ReadGameSettingConfig();
        }
        #endregion

        #region function groups

        #region read game setting config
        public void ReadGameSettingConfig()
        {
            //GameEffect gameSettingObj = LocalCfg.GetSingleton().DeserializeObjFromFile<GameEffect>(GAME_SETTING_CONFIG_FILE);
            //if (gameSettingObj != null && gameSettingObj.mData != null)
            //{
            //    gameSettingObj.mData.TryGetValue(GameEffectSet.pMusic, out mBoolEnableMusic);
            //    gameSettingObj.mData.TryGetValue(GameEffectSet.pSound, out mBoolEnableSound);
            //}

        }
        #endregion

        #region listen
        private void OnLevelLoaded(Evt evt)
        {
            if (m_EnableMusic)
            {
                PlayMusicPlaylist();
            }
        }
        #endregion

        #region common functions
        public void PauseAll()
        {
            PauseAll(0f);
        }
        public void PauseAll(float fadeOut)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.PauseAll(fadeOut);
        }
        public void UnPauseAll()
        {
            UnPauseAll(0f);
        }
        public void UnPauseAll(float fadeOut)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.UnpauseAll(fadeOut);
        }
        #endregion

        #region music operation functions
        public void PlayMusicPlaylist(bool forcePlay = false)
        {
            //mBoolEnableMusic = true;
            //GameScene scene = Game.GetCurrentScene() as GameScene;
            //if (scene == null || string.IsNullOrEmpty(scene.pStateName)) return;
            //string[] playlist = null;
            //if (scene.pStateName.Equals(SceneType.MainScene.ToString()))
            //{
            //    playlist = new string[] { "MusicEx_Login" };
            //}
            //else if (scene.pStateName.Equals(SceneType.SimpleScene.ToString()))
            //{
            //    playlist = new string[] { "MusicEx_Normal" };
            //}
            //else if (scene.pStateName.Equals(SceneType.LoginScene.ToString()))
            //{
            //    playlist = new string[] { "MusicEx_Login" };
            //}
            //else
            //{
            //    playlist = new string[] { };
            //}
            //string[] oldPlaylist = AudioController.GetMusicPlaylist();
            //AudioController.SetMusicPlaylist(playlist);
            //bool play = false;
            //if (oldPlaylist == null || oldPlaylist.Length == 0 || playlist.Length != oldPlaylist.Length)
            //{
            //    play = true;
            //}
            //else
            //{
            //    for (int i = 0; i < oldPlaylist.Length; i++)
            //    {
            //        string str = oldPlaylist[i];
            //        string compareStr = playlist[i];
            //        if (str != compareStr)
            //        {
            //            play = true; break;
            //        }
            //    }
            //}
            //GameScene lastScene = Game.GetLastScene();
            //if (lastScene == null)
            //{
            //    play = true;
            //}
            //if (play || forcePlay)
            //{
            //    AudioController.PlayMusicPlaylist();
            //}
        }
        public void PlayNextMusicOnPlaylist()
        {
            AudioController.PlayNextMusicOnPlaylist();
        }
        public void PlayPreviousMusicOnPlaylist()
        {
            AudioController.PlayPreviousMusicOnPlaylist();
        }
        public void StopMusic()
        {
            StopMusic(0.3f);
        }
        public void StopMusic(float fadeOut)
        {
            m_EnableMusic = false;
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.StopMusic(fadeOut);
        }
        public void PauseMusic()
        {
            PauseMusic(0f);
        }
        public void PauseMusic(float fadeOut)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.PauseMusic(fadeOut);
        }
        public void UnPauseMusic()
        {
            UnPauseMusic(0f);
        }
        public void UnPauseMusic(float fadeOut)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.UnpauseMusic(fadeOut);
        }
        #endregion

        #region sound functions
        public void SetSoundStatus(bool canPlay)
        {
            if (canPlay == false && m_EnableSound == true)
            {
                // needn't stop
                //AudioController.StopCategory("UI");
                //AudioController.StopCategory("Role");
            }
            m_EnableSound = canPlay;
        }
        public void PlayUISound(UISoundEnum soundType)
        {
            if (m_EnableSound == false) return;
            AudioController.Play(soundType.ToString());
        }
        public void StopUISound(UISoundEnum soundType)
        {
            AudioController.Stop(soundType.ToString());
        }
        public void PlayRoleSound(RoleSoundEnum soundType)
        {
            if (m_EnableSound == false) return;
            AudioController.Play(soundType.ToString());
        }
        public void StopRoleSound(RoleSoundEnum soundType, float fadeOutLength = 0.0f)
        {
            AudioController.Stop(soundType.ToString(), fadeOutLength);
        }
        #endregion

        #endregion

    }
}
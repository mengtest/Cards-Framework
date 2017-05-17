﻿/*----------------------------------------------------------------
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
    public class AudioManager
    {
        public static GameObject GO;

        private static bool m_SoundEnabled = true;

        private static bool m_MusicEnabled = true;

        public static void Initialize()
        {
            GameObject controller = AssetManager.LoadAsset("Bundle/Prefab/Audio/AudioController", typeof(GameObject)) as GameObject;
            controller = GameObject.Instantiate<GameObject>(controller);
            if (controller)
            {
                controller.transform.SetParent(Game.Instance.transform);
                controller.name = "AudioManager";
                GO = controller;
            }
            else
            {
                Helper.LogError("AudioManager.Initialize: error caused by nil AudioController go.");
            }
        }

        public static bool SoundEnabled
        {
            get
            {
                return m_SoundEnabled;
            }
            set
            {
                m_SoundEnabled = value;
            }
        }

        public static bool MusicEnabled
        {
            get
            {
                return m_MusicEnabled;
            }
            set
            {
                m_MusicEnabled = value;
            }
        }


        public static void PlayMusic(string[] playlist, bool forcePlay = false)
        {
            if (playlist == null || playlist.Length == 0 || m_MusicEnabled == false) return;
            string[] currentPlaylist = AudioController.GetMusicPlaylist();
            bool needPlay = false;
            if (currentPlaylist == null || currentPlaylist.Length == 0 || playlist.Length != currentPlaylist.Length)
            {
                needPlay = true;
            }
            else
            {
                for (int i = 0; i < currentPlaylist.Length; i++)
                {
                    string str = currentPlaylist[i];
                    string compareStr = playlist[i];
                    if (str != compareStr)
                    {
                        needPlay = true; break;
                    }
                }
            }
            if (needPlay || forcePlay)
            {
                AudioController.SetMusicPlaylist(playlist);
                AudioController.PlayMusicPlaylist();
            }
        }

        public static void StopMusic(float fadeOut = 0f)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.StopMusic(fadeOut);
        }

        public static void PauseMusic(float fadeOut = 0f)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.PauseMusic(fadeOut);
        }

        public static void UnPauseMusic(float fadeOut = 0f)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.UnpauseMusic(fadeOut);
        }

        public static void PlaySound(string sound)
        {
            if (m_SoundEnabled)
            {
                AudioController.Play(sound);
            }
        }

        public static void StopSound(string sound)
        {
            AudioController.Stop(sound);
        }

        public static void PauseAll(float fadeOut = 0f)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.PauseAll(fadeOut);
        }

        public static void UnPauseAll(float fadeOut = 0f)
        {
            fadeOut = Mathf.Max(fadeOut, 0);
            AudioController.UnpauseAll(fadeOut);
        }

        public static void SetCategoryVolume(string category, float volume)
        {
            AudioController.SetCategoryVolume(category, volume);
        }

        public static bool IsPlaylistPlaying()
        {
            return AudioController.IsPlaylistPlaying();
        }
    }
}
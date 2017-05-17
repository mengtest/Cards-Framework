using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class TestAudio : MonoBehaviour
    {
        public string Sound;

        public List<string> Playlist = new List<string>();

        public string Category;

        public float Volume;

        void OnGUI()
        {
            if (GUI.Button(new Rect(10, 10, 150, 30), "Initialize"))
            {
                AudioManager.Initialize();
            }
            if (GUI.Button(new Rect(10, 50, 150, 30), "Play Sound"))
            {
                AudioManager.PlaySound(Sound);
            }
            if (GUI.Button(new Rect(10, 90, 150, 30), "Play Musiclist"))
            {
                AudioManager.PlayMusic(Playlist.ToArray(),true);
            }
            if (GUI.Button(new Rect(10, 130, 150, 30), "Pause Musiclist"))
            {
                AudioManager.PauseMusic();
            }
            if (GUI.Button(new Rect(10, 170, 150, 30), "Unpause Musiclist"))
            {
                AudioManager.UnPauseMusic();
            }
            if (GUI.Button(new Rect(10, 210, 150, 30), "Stop Musiclist"))
            {
                AudioManager.StopMusic();
            }
            if (GUI.Button(new Rect(10, 250, 150, 30), "Set Category Volume"))
            {
                AudioManager.SetCategoryVolume(Category, Volume);
            }
        }
    }
}


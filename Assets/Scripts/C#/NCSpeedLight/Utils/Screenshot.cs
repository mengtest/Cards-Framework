using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.IO;

namespace NCSpeedLight
{
    public class Screenshot : MonoBehaviour
    {
        private static Screenshot instance;
        private static List<Action> handlers = new List<Action>();

        private void Awake()
        {
            instance = this;
            enabled = false;
        }

        private void OnDestroy()
        {
            instance = null;
        }

        private void OnPostRender()
        {
            Rect rect = new Rect(0, 0, Screen.width, Screen.height);
            float time = Time.realtimeSinceStartup;
            Texture2D tex = new Texture2D((int)rect.width, (int)rect.height);
            Helper.Log("Screenshot.OnPostRender: create texture instance toke " + (Time.realtimeSinceStartup - time) + "s.");
            time = Time.realtimeSinceStartup;
            tex.ReadPixels(rect, 0, 0);
            Helper.Log("Screenshot.OnPostRender: read pixels toke " + (Time.realtimeSinceStartup - time) + "s.");
            time = Time.realtimeSinceStartup;

            string directory = Path.GetDirectoryName(Constants.SCREEN_SHOT_FILE);
            if (Directory.Exists(directory) == false)
            {
                Directory.CreateDirectory(directory);
            }
            if (File.Exists(Constants.SCREEN_SHOT_FILE))
            {
                File.Delete(Constants.SCREEN_SHOT_FILE);
            }
            try
            {
                File.WriteAllBytes(Constants.SCREEN_SHOT_FILE, tex.EncodeToJPG(20));
                Helper.Log("Screenshot.OnPostRender: write picture bytes to file toke " + (Time.realtimeSinceStartup - time) + "s.");
            }
            catch (Exception e)
            {
                Helper.LogError("Screenshot.OnPostRender: exception: " + e.Message);
            }
            enabled = false;
            for (int i = 0; i < handlers.Count; i++)
            {
                Action handler = handlers[i];
                if (handler != null)
                {
                    handler();
                }
            }
            handlers.Clear();
        }

        public static void Take(Action handler)
        {
            instance.enabled = true;
            handlers.Add(handler);
        }
    }
}


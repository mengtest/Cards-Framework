/*----------------------------------------------------------------
            // Copyright © 2015 NCSpeedLight
            // 
            // FileName: FPSPrinter.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  2016/7/21 21:43:27
            // Modify History:
            //
//----------------------------------------------------------------*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace NCSpeedLight
{
    public class FPSPrinter : MonoBehaviour
    {
        public float CurrentFPS;
        private float UpdateInterval = 1f;
        private float TotalTime = .0f;
        private int TotalFrames = 0;
        private float TimeLeft;
        private string StrFPS;
        void Start()
        {
            TimeLeft = UpdateInterval;
        }

        void Update()
        {
            TimeLeft -= Time.deltaTime;
            TotalTime += Time.timeScale / Time.deltaTime;
            ++TotalFrames;
            if (TimeLeft <= 0)
            {
                CurrentFPS = TotalTime / TotalFrames;
                StrFPS = CurrentFPS.ToString("f" + Mathf.Clamp(1, 0, 10));
                TimeLeft = UpdateInterval;
                TotalTime = .0f;
                TotalFrames = 0;
            }
        }

        void OnGUI()
        {
            GUI.Box(new Rect(10, 10, 70, 25), StrFPS + " FPS");
        }
    }
}

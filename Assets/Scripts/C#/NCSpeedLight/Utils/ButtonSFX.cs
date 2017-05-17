using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace NCSpeedLight
{
    public class ButtonSFX : MonoBehaviour
    {
        public static string DefaultSound = "UIClick";

        public string Sound = string.Empty;

        void OnClick()
        {
            if (string.IsNullOrEmpty(Sound) == false)
            {
                AudioManager.PlaySound(Sound);
            }
            else
            {
                AudioManager.PlaySound(DefaultSound);
            }
        }
    }
}

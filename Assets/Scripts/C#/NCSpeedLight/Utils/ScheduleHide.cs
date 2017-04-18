using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NCSpeedLight
{
    public class ScheduleHide : MonoBehaviour
    {
        public float Time;
        void OnEnable()
        {
            if (IsInvoking("Hide"))
            {
                CancelInvoke("Hide");
            }
            Invoke("Hide", Time);
        }
        private void Hide()
        {
            gameObject.SetActive(false);
        }
    }
}

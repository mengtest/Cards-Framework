using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

namespace NCSpeedLight
{
    public class ScheduleHide : MonoBehaviour
    {
        public float Time;
        public Action OnFinished;
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
            if (OnFinished != null)
            {
                OnFinished();
                OnFinished = null;
            }
        }
    }
}

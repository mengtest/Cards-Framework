using UnityEngine;
using System;

namespace NCSpeedLight
{
    public class InvisiableOnTweenFinish : MonoBehaviour
    {
        public UITweener Tweener;
        public Action OnFinish;
        void Start()
        {
            if (Tweener == null)
            {
                Tweener = GetComponent<UITweener>();
            }
            if (Tweener)
            {
                Tweener.SetOnFinished(() =>
                {
                    if (Tweener)
                    {
                        Tweener.enabled = false;
                    }
                    if (gameObject)
                    {
                        gameObject.SetActive(false);
                    }
                    if (OnFinish != null)
                    {
                        OnFinish();
                    }
                });
            }
        }
    }
}


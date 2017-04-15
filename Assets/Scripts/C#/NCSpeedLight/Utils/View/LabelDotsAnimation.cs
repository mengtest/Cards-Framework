using UnityEngine;
using System.Collections;

namespace NCSpeedLight
{
    public class LabelDotsAnimation : MonoBehaviour
    {
        public UILabel Content;
        public float Interval = 0.5f;
        private string contentStr;
        private int currentIndex = 0;
        private float lastTimestamp = -1f;
        void Update()
        {
            if (lastTimestamp == -1f || (Time.time - lastTimestamp) > Interval)
            {
                lastTimestamp = Time.time;
                currentIndex++;
                string dotStr = "";
                if (currentIndex == 1)
                {
                    dotStr = ".";
                }
                else if (currentIndex == 2)
                {
                    dotStr = "..";
                }
                else if (currentIndex == 3)
                {
                    dotStr = "...";
                }
                Content.text = contentStr + dotStr;
                currentIndex = currentIndex % 3;
            }
        }
        public void SetContent(string content)
        {
            contentStr = content;
        }
    }
}


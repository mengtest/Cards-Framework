/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: TipsDialog.cs
            // Describle:  
            // Created By:  All
            // Date&Time:  2016/3/26 10:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

namespace NCSpeedLight
{

    public class TipsDialog : MonoBehaviour
    {

#if ASSETBUNDLE_MODE
		public static string ResName = "Toast";
#else
        public static string ResName = "UI/Dialog/Toast";
#endif
        private string Text = "";
        private float m_Timeout = 3.5f;
        private float m_StartTime = 0.0f;
        private int m_BGMinWith = 352;
        private int m_TextOffsetX = 64;
        void Start()
        {
            Initialize();
        }
        void Initialize()
        {
            m_StartTime = Time.time;

            Helper.SetLabelText(transform, "Parent/Label", Text);
            int tempLabelSizeX = 0;
            Transform tempTran = transform.Find("Parent/Label");
            if (tempTran != null)
            {
                UILabel tempLabel = tempTran.GetComponent<UILabel>();
                if (tempLabel != null)
                {
                    tempLabelSizeX = tempLabel.width;
                }
            }
            int tempBgSizeX = tempLabelSizeX + m_TextOffsetX;
            if (tempBgSizeX <= m_BGMinWith)
            {
                tempBgSizeX = m_BGMinWith;
            }
            tempTran = transform.Find("Parent/BG");
            if (tempTran != null)
            {
                UISprite tempsp = tempTran.GetComponent<UISprite>();
                if (tempsp != null)
                {
                    tempsp.width = tempBgSizeX;
                }
            }
            TweenPosition positionTweener = gameObject.AddComponent<TweenPosition>();
            transform.localPosition = new Vector3(0, 0, 0);
            positionTweener.from = new Vector3(0, 0, 0);
            positionTweener.to = new Vector3(0, 150, 0);
            positionTweener.duration = m_Timeout;

            //TweenAlpha alphaTweener = gameObject.AddComponent<TweenAlpha>();
            //alphaTweener.from = 1.0f;
            //alphaTweener.to = 0.5f;
            //alphaTweener.duration = m_Timeout;
        }
        void CloseDialog()
        {
            GameObject.Destroy(gameObject);
        }
        void Update()
        {
            if (Time.time - m_StartTime > m_Timeout)
            {
                CloseDialog();
            }
        }
        public void SetParam(string text, float time)
        {
            Text = text;
            m_Timeout = time;
        }
    }
}

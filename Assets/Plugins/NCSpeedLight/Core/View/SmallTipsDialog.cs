///*----------------------------------------------------------------
//            // Copyright (C) 2015 南昌光速科技有限公司
//            // 版权所有。 
//            //
//            // 文件名： SmallTipsDialog.cs
//            // 文件功能描述：小提示公用弹框;
//            //
//			// 创建标识：钟建辉20150414
            
////----------------------------------------------------------------*/

//using UnityEngine;

//namespace NCSpeedLight
//{
//    public class SmallTipsDialog : MonoBehaviour
//    {
//        /// <summary>
//        /// 存放需要显示文字信息;.
//        /// </summary>
//        private string mContents = "";
//        /// <summary>
//        /// 开始时间.
//        /// </summary>
//        private float mStartTime = 0.0f;
//        /// <summary>
//        /// 超时时间（自动关闭）.
//        /// </summary>
//        private float mTimeOut = 3.5f;
//        /// <summary>
//        /// 背景框的最小宽度.
//        /// </summary>
//        private int mBgSmallWith = 352;
//        /// <summary>
//        /// 文字宽度与背景框宽度的差值.
//        /// </summary>
//        private int mOffsetX = 64;
//        // Use this for initialization
//        void Start()
//        {
//            Init();
//            ShowDialogContents();
//        }

//        // Update is called once per frame
//        void Update()
//        {
//            if (Time.time - mStartTime > mTimeOut)
//            {
//                CloseDialog();
//            }
//        }
//        /// <summary>
//        /// 初始化.
//        /// </summary>
//        void Init()
//        {
//            mStartTime = Time.time;
//        }
//        /// <summary>
//        /// 设置要显示的文字;.
//        /// </summary>
//        /// <param name="varContents">Variable contents.</param>
//        public void SetContents(string varContents)
//        {
//            mContents = varContents;
//        }
//        //显示内容;
//        void ShowDialogContents()
//        {
//            Helper.SetLabelText(transform, "Parent/Label", mContents);
//            int tempLabelSizeX = 0;
//            Transform tempTran = transform.Find("Parent/Label");
//            if (tempTran != null)
//            {
//                UILabel tempLabel = tempTran.GetComponent<UILabel>();
//                if (tempLabel != null)
//                {
//                    tempLabelSizeX = tempLabel.width;
//                }
//            }
//            int tempBgSizeX = tempLabelSizeX + mOffsetX;
//            if (tempBgSizeX <= mBgSmallWith)
//            {
//                tempBgSizeX = mBgSmallWith;
//            }
//            tempTran = transform.Find("Parent/Background");
//            if (tempTran != null)
//            {
//                UISprite tempsp = tempTran.GetComponent<UISprite>();
//                if (tempsp != null)
//                {
//                    tempsp.width = tempBgSizeX;
//                }
//            }
//            TweenPosition tempTP = gameObject.AddComponent<TweenPosition>();
//            transform.localPosition = new Vector3(0, -100, 0);
//            tempTP.from = new Vector3(0, -100, 0);
//            tempTP.to = new Vector3(0, 0, 0);
//            tempTP.duration = 0.5f;
//            TweenAlpha tempTA = gameObject.AddComponent<TweenAlpha>();
//            tempTA.from = 1.0f;
//            tempTA.to = 0.0f;
//            tempTA.duration = 0.3f;
//            tempTA.delay = 1.2f;
//        }
//        /// <summary>
//        /// 关闭窗口.
//        /// </summary>
//        void CloseDialog()
//        {
//            UIManager.Instance.CloseDialog("Dialog/SmallDialog");
//        }
//    }

//}

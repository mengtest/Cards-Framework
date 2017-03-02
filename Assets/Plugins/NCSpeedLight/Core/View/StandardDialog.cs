///*----------------------------------------------------------------
//            // Copyright (C) 2015 南昌光速科技有限公司
//            // 版权所有。 
//            //
//            // 文件名： StandardDialog.cs
//            // 文件功能描述：标准提示公用弹框;
//            //
//			// 创建标识：钟建辉20150414
            
////----------------------------------------------------------------*/

//using UnityEngine;

//
//{
//    public class StandardDialog : MonoBehaviour
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
//        private float mTimeOut = 2.0f;
//        // Use this for initialization

//        private EventDelegate.Callback mCloseCallback;

//        void Start()
//        {
//            Init();
//            ShowDialogContents();
//        }

//        void OnDestroy()
//        {
//            if (mCloseCallback != null)
//            {
//                mCloseCallback();
//            }
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
//            Transform tempTran = transform.Find("BlackBG");
//            if (tempTran != null)
//            {
//                UIEventListener.Get(tempTran.gameObject).onClick = OnClickedSpaceArea;
//            }
//        }
//        /// <summary>
//        /// 设置要显示的文字;.
//        /// </summary>
//        /// <param name="varContents">Variable contents.</param>
//        public void SetContents(string varContents)
//        {
//            mContents = varContents;
//        }

//        public void SetCloseCallback(EventDelegate.Callback varCloseCallback)
//        {
//            mCloseCallback = varCloseCallback;
//        }

//        //显示内容;
//        void ShowDialogContents()
//        {
//            Helper.SetLabelText(transform, "Content/Label", mContents);
//            //			Transform tempTran = transform.Find ("Content");
//            //			if (tempTran != null) 
//            //			{
//            //				TweenScale tempTS=tempTran.gameObject.AddComponent<TweenScale>();
//            //				tempTS.from=new Vector3(0.7f,0.7f,1.0f);
//            //				tempTS.to=new Vector3(1.1f,1.1f,1.0f);
//            //				tempTS.duration=0.2f;
//            //
//            //				TweenScale tempTS1=tempTran.gameObject.AddComponent<TweenScale>();
//            //				tempTS1.from=new Vector3(1.1f,1.1f,1.0f);
//            //				tempTS1.to=Vector3.one;
//            //				tempTS1.duration=0.1f;
//            //				tempTS1.delay=0.2f;
//            //			}
//        }
//        /// <summary>
//        /// 点击空白区域;.
//        /// </summary>
//        /// <param name="varObj">Variable object.</param>
//        void OnClickedSpaceArea(GameObject varObj)
//        {
//            CloseDialog();
//        }
//        /// <summary>
//        /// 关闭窗口.
//        /// </summary>
//        void CloseDialog()
//        {
//            UIManager.Instance.CloseDialog("Dialog/StandardDialog");
//        }
//    }



//}

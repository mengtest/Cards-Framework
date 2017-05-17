using UnityEngine;
using System;
using System.Collections;
using AOT;

namespace RCloud
{
	public class RCGeneralCallback:RCCallBackBase
	{
		//通用callback
		public delegate void  GeneralSuccessCallback();
		public delegate void  GeneralFailureCallback(RCErrorCode errorCode);

		public GeneralSuccessCallback onSuccess;
		public GeneralFailureCallback onFailure;

		#region 开发者勿修改以下代码！！！！
		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(GeneralSuccessSDKCallback))]
		public static void OnSuccess(int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK RCGeneralSuccessCallback"));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCGeneralCallback msgCallback = callback as RCGeneralCallback;
				if (msgCallback != null && msgCallback.onSuccess != null) 
				{
					msgCallback.onSuccess ();
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}

		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="errorCode">Error code.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(GeneralFailureSDKCallback))]
		public static void OnFailure(RCErrorCode errorCode,int callbackId) 
		{
			Debug.Log (string.Format ("rongcloud SDK RCGeneralFailureCallback11 = {0}",errorCode));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCGeneralCallback msgCallback = callback as RCGeneralCallback;
				if (msgCallback != null && msgCallback.onFailure != null) 
				{
					msgCallback.onFailure (errorCode);
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}
		}
		#endregion
	}
}

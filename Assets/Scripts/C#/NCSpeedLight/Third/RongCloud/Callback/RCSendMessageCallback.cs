using UnityEngine;
using System.Collections;
using AOT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RCloud
{
	public class RCSendMessageCallback:RCCallBackBase
	{
		public delegate void  SendMessageSuccessCallback();
		public delegate void  SendMessageFailureCallback(RCErrorCode errorCode);
		public delegate void  SendMessageProgressCallback(int progress);
		public delegate void  SendMessageCallback(RCMessage massage);

		/// <summary>
		/// 发送消息成功
		/// </summary>
		public SendMessageSuccessCallback onSendSuccessCallback;

		/// <summary>
		/// 发送图片消息时进度的回调
		/// </summary>
		public SendMessageProgressCallback onSendProgressCallback;

		/// <summary>
		/// 消息发送失败回调
		/// </summary>
		public SendMessageFailureCallback onSendFailureCallback;
		/// <summary>
		/// 调用发送接口如果正确保存到本地数据库会回调此方法，这里只说明消息已经存入本地，但是可能还未发送出去
		/// </summary>
		public SendMessageCallback onSendCallback;

		#region 开发者勿修改以下代码！！！！
		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(SendMessageSuccessSDKCallback))]
		public static void OnSendSuccess(int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK SendMessage  onSuccess callbackId -{0}",callbackId));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCSendMessageCallback msgCallback = callback as RCSendMessageCallback;

				if (msgCallback != null && msgCallback.onSendSuccessCallback != null) 
				{
					msgCallback.onSendSuccessCallback ();
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}
		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="errorCode">Error code.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(SendMessageFailureSDKCallback))]
		public static void OnSendFailure(RCErrorCode errorCode,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK SendMessage onFailure callbackId -{0}",callbackId));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) {
				RCSendMessageCallback msgCallback = callback as RCSendMessageCallback;
				if (msgCallback != null && msgCallback.onSendFailureCallback != null) {
					msgCallback.onSendFailureCallback (errorCode);
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}
			Debug.Log (string.Format ("rongcloud SDK SendMessage onFailure = {0}", errorCode));
		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="progress">Progress.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(SendMessageProgressSDKCallback))]
		public static void OnSendProgress(int progress,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK SendMessage  onSendProgress callbackId -{0}",callbackId));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) {
				RCSendMessageCallback msgCallback = callback as RCSendMessageCallback;
				if (msgCallback != null && msgCallback.onSendProgressCallback != null) {
					msgCallback.onSendProgressCallback (progress);
				}
			}
			Debug.Log (string.Format ("rongcloud SDK SendMessage onProgress = {0}", progress));
		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="messageJsonStr">Message json string.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(SendMessageSDKCallback))]
		public static void OnSaved(string  messageJsonStr,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK SendMessage  onSaved callbackId -{0} messageJsonStr-{1}",callbackId,messageJsonStr));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) {
				RCSendMessageCallback msgCallback = callback as RCSendMessageCallback;
				Debug.Log (string.Format ("rongcloud SDK SendMessage onSavew_________ "));
				if (msgCallback != null && msgCallback.onSendCallback != null) {
					RCMessage msg = RCMessage.Unserialize (messageJsonStr);
					msgCallback.onSendCallback (msg);
				}
			}
			Debug.Log (string.Format ("rongcloud SDK SendMessage onSave = {0}", messageJsonStr));
		}

		#endregion
	}
}


using System;
using AOT;
using UnityEngine;
using System.Collections;

namespace RCloud
{
	/// <summary>
	/// 下载图片和语音等文件回调
	/// </summary>
	public class RCDownloadMediaFileCallback:RCCallBackBase
	{
		//下载图片语音等资源callback
		public delegate void  DownloadMediaFileSuccessCallback(string localMediaPath);
		public delegate void  DownloadMediaFileProgressCallback(int progress);
		public delegate void  DownloadMediaFileFailureCallback(RCErrorCode errorCode);

		/// <summary>
		/// 下载成功，这里会返回文件本地路径
		/// </summary>
		public DownloadMediaFileSuccessCallback onSuccess;

		/// <summary>
		/// 下载进度
		/// </summary>
		public DownloadMediaFileProgressCallback onProgress;

		/// <summary>
		/// 下载失败
		/// </summary>
		public DownloadMediaFileFailureCallback onFailure;

		#region 开发者勿修改以下代码！！！！
		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="localMediaPath">Local media path.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(DownloadMediaFileSuccessSDKCallback))]
		public static void OnSuccess(string localMediaPath,int callbackId)
		{
			Debug.Log ("rongcloud SDK RCDownloadMediaFileCallback onSuccess localMediaPath = " + localMediaPath + "; callbackId = " + callbackId);
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			Debug.Log ("aaa");
			if (callback != null) 
			{
				Debug.Log ("bbb");
				RCDownloadMediaFileCallback msgCallback = callback as RCDownloadMediaFileCallback;
				if (msgCallback != null && msgCallback.onSuccess != null) 
				{
					msgCallback.onSuccess (localMediaPath);
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}
		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="progress">Progress.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(DownloadMediaFileProgressSDKCallback))]
		public static void OnProgress(int progress,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK RCDownloadMediaFileCallback onProgress -{0}",progress));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCDownloadMediaFileCallback msgCallback = callback as RCDownloadMediaFileCallback;
				if (msgCallback != null && msgCallback.onProgress != null) 
				{
					msgCallback.onProgress (progress);
				}
			}
		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="errorCode">Error code.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(DownloadMediaFileFailureSDKCallback))]
		public static void OnFailure(RCErrorCode errorCode,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK RCDownloadMediaFileCallback onFailure -{0}",errorCode));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCDownloadMediaFileCallback msgCallback = callback as RCDownloadMediaFileCallback;
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


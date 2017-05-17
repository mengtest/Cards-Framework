using UnityEngine;
using System;
using System.Collections;
using AOT;

namespace RCloud
{
	public class RCVoiceCaptureCallback:RCCallBackBase
	{
		/// <summary>
		/// 录音delegate，timeout 是否超时，voiceUri声音文件地址，duration 时长
		/// </summary>
		public delegate void  VoiceCaptureFinishedCallback(Boolean timeout, string voiceUri, int duration);
		public delegate void  VoiceCaptureVolumeCallback(float volume);
		public delegate void  VoiceCaptureErrorCallback(RCErrorCode errorCode);

		/// <summary>
		/// 录音结束回调
		/// </summary>
		public VoiceCaptureFinishedCallback onVoiceCaptureFinished;

		/// <summary>
		/// 音量变化回调
		/// </summary>
		public VoiceCaptureVolumeCallback onVoiceVolume;

		/// <summary>
		/// 录音失败回调
		/// </summary>
		public VoiceCaptureErrorCallback onVoiceCaptureError;

		#region 开发者勿修改以下代码！！！！
		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="timeout">If set to <c>true</c> timeout.</param>
		/// <param name="voiceUri">Voice URI.</param>
		/// <param name="duration">Duration.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(VoiceCaptureFinishedSDKCallback))]
		public static void OnVoiceCaptureFinished(Boolean timeout, string voiceUri, int duration, int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK onVoiceCaptureFinished {0} - {1} - {2}",timeout,voiceUri,duration));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCVoiceCaptureCallback msgCallback = callback as RCVoiceCaptureCallback;
				if (msgCallback != null && msgCallback.onVoiceCaptureFinished != null) 
				{
					msgCallback.onVoiceCaptureFinished (timeout,voiceUri,duration);
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}
		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="volume">Volume.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(VoiceVolumeSDKCallback))]
		public static void OnVoiceVolume(float volume,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK onVoiceVolume -{0}",volume));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCVoiceCaptureCallback msgCallback = callback as RCVoiceCaptureCallback;
				if (msgCallback != null && msgCallback.onVoiceVolume != null) 
				{
					msgCallback.onVoiceVolume (volume);
				}
			}
		}

		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="errorCode">Error code.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(VoiceCaptureErrorSDKCallback))]
		public static void OnVoiceCaptureError(RCErrorCode errorCode,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK onVoiceCaptureError -{0}",errorCode));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCVoiceCaptureCallback msgCallback = callback as RCVoiceCaptureCallback;
				if (msgCallback != null && msgCallback.onVoiceCaptureError != null) 
				{
					msgCallback.onVoiceCaptureError (errorCode);
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}
		}

		~RCVoiceCaptureCallback () {
			Debug.Log ("~RCVoiceCaptureCallback");
		}
		#endregion
	}
}

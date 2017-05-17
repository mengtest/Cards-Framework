using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RCloud
{
	/// <summary>
	/// 这里定义的delegate对应融云底层回调，开发者无需关系这里的定义，只需要在对应的操作的实际callback中给相应的delegate赋值
	/// 例如发送消息：
	/// 
	/// RCTextMessageContent msg = new RCTextMessageContent ("veasdf", "asdfasdf");
	/// RCSendMessageCallback cb = new RCSendMessageCallback ();
	/// cb.onSendSuccessCallback = () => {
	///	result = string.Format("发送消息成功 targetId = {0}",targetId);
	///	Debug.Log("RYM cb.sendSuccessCallback");
	/// };
	/// RongIMAPI.GetInstance ().SendMessage (ConversationType.ConversationType_PRIVATE, targetId, msg,null, null, cb);
	/// </summary>
	public class RCCallBackBase
	{
		#region 会话列表相关callback
		public delegate void  GetConversationListSDKCallback(string conversationListJson,int callbackId);
		#endregion

		#region 下载图片语音等资源callback
		public delegate void  DownloadMediaFileSuccessSDKCallback(string localMediaPath,int callbackId);
		public delegate void  DownloadMediaFileProgressSDKCallback(int progress,int callbackId);
		public delegate void  DownloadMediaFileFailureSDKCallback(RCErrorCode errorCode,int callbackId);
		#endregion

		#region 通用callback
		public delegate void  GeneralSuccessSDKCallback(int callbackId);
		public delegate void  GeneralFailureSDKCallback(RCErrorCode errorCode,int callbackId);
		#endregion

		#region 消息相关callback
		public delegate void  GetMessageListSDKCallback(string messageListJson,int callbackId);
		public delegate void  SendMessageSuccessSDKCallback(int callbackId);
		public delegate void  SendMessageFailureSDKCallback(RCErrorCode errorCode,int callbackId);
		public delegate void  SendMessageProgressSDKCallback(int progress,int callbackId);
		public delegate void  SendMessageSDKCallback(string messageJsonStr,int callbackId);
		#endregion

		#region 录音相关callback
		public delegate void  VoiceCaptureFinishedSDKCallback(Boolean timeout, string voicePath, int duration,int callbackId);
		public delegate void  VoiceVolumeSDKCallback(float volume,int callbackId);
		public delegate void  VoiceCaptureErrorSDKCallback(RCErrorCode errorCode,int callbackId);
		#endregion

		public int CallbackId{ get; set;}

	}
}


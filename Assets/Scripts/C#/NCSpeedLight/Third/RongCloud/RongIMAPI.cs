using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.ComponentModel;
using System.Threading;
using AOT;


namespace RCloud
{
	public class RongIMAPI : BackgroundWorker
	{
		private static RongIMAPI instance;
		private static bool isInitRongCloud = false;
		private static int callbackId; 
		private static Dictionary<int,RCCallBackBase> requestCallbackList;
		private static Dictionary<string,System.Type> registerMessageTypes;
		private static object thisLock = new UnityEngine.Object();

		private RongIMAPI()
		{
			requestCallbackList = new Dictionary<int,RCCallBackBase> ();
			registerMessageTypes = new Dictionary<string,System.Type>();

			#if UNITY_ANDROID || UNITY_IOS
			setConnectionCallback(RCConnectionStatusListener.OnRCConnectChanged);
			setReciveMessageCallback (RCMessageListener.OnReceivedMessage);
			#endif

			#if UNITY_ANDROID
			WorkerReportsProgress = true;
			DoWork += RongIM_DoWork;
			ProgressChanged += RongIM_ProgressChanged;
			RunWorkerAsync();
			#endif // UNITY_ANDROID
		}

		public static RongIMAPI GetInstance()
		{
			if (instance == null)
			{
				instance = new RongIMAPI();
			}
			return instance;
		}

#if UNITY_ANDROID
		private void RongIM_DoWork (object sender, DoWorkEventArgs e)
		{
		    while (true)
			{
				ReportProgress(1);
				Thread.Sleep(30);
			}
		}

		private void RongIM_ProgressChanged (object sender, ProgressChangedEventArgs e)
		{
			requestRunInMainLoop();
		}
#endif // UNITY_ANDROID

        #region RongIM Interface
#if UNITY_ANDROID || UNITY_IOS
        /// <summary>
        /// 获取融云SDK版本号
        /// </summary>
        /// <returns>The rong cloud SDK version</returns>
        public string GetRongCloudSDKVersion ()
		{
			string sdkVersion = getSDKVersion ();
			Debug.Log ("rcsdk version = " + sdkVersion);
			return sdkVersion;
		}

		/// <summary>
		/// 初始化SDK，app生命周期只需要调用一次
		/// </summary>
		/// <param name="appkey">Appkey</param>
		public void InitRongCloud (string appkey)
		{
			if (appkey.Length < 1)
				return;
			isInitRongCloud = true;
			Debug.Log ("rcsdk InitRongCloud");
			initAppkey (appkey);
			GetInstance().RegisterMessageContent (new RCTextMessageContent());
			GetInstance().RegisterMessageContent (new RCImageMessageContent());
			GetInstance().RegisterMessageContent (new RCAudioMessageContent());
			GetInstance().RegisterMessageContent (new RCNotificationMessageContent());
		}

		/// <summary>
		/// 设置 DeviceToken，用于 APNS 的设备唯一标识。请在获取到Device
		/// Token之后立即调用该方法。仅在iOS平台使用。
		/// </summary>
		/// <param name="deviceToken">从苹果服务器获取的设备唯一标识</param>
		public void SetDeviceToken(string deviceToken)
		{
			if (deviceToken.Length < 1)
				return;
			if (!isInitRongCloud) {
				Debug.Log ("NOT InitRongCloud");
				return;
			}
#if UNITY_IOS
			setDeviceToken (deviceToken);
#endif // UNITY_IOS
		}

		/// <summary>
		/// 登录融云
		/// </summary>
		/// <param name="token">获取的用户 Token</param>
		/// <param name="userId">用户的Id</param>
		public void ConnectRongCloud (string token, string userId)
		{
			if (token.Length < 1 || userId.Length < 1)
				return;
			if (!isInitRongCloud) 
			{
				Debug.Log ("NOT InitRongCloud");
				return;
			}
			connectRongCloud (token, userId);
		}

		/// <summary>
		/// 断开链接
		/// </summary>
		/// <param name="receivedPush">是否接收推送</param>
		public void Disconnect (bool receivedPush)
		{
			Debug.Log ("rcsdk Disconnect = " + receivedPush);
			disconnect (receivedPush);
		}

		/// <summary>
		/// 获取当前连接状态
		/// </summary>
		/// <returns>The connection status</returns>
		public ConnectionStatus GetConnectionStatus ()
		{
			return getConnectionStatus ();
		}

		/// <summary>
		/// 加入聊天室
		/// </summary>
		/// <param name="chatroomId">聊天室Id</param>
		/// <param name="pullHistoryCount">拉取的历史消息条数</param>
		/// <param name="callback">回调</param>
		public void JoinChatRoom (string chatroomId, int pullHistoryCount, RCGeneralCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onFailure != null) 
				{
					callback.onFailure (RCErrorCode.CLIENT_NOT_INIT);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			joinChatRoom (chatroomId, pullHistoryCount, RCGeneralCallback.OnSuccess, RCGeneralCallback.OnFailure,callback.CallbackId);
		}

		/// <summary>
		/// 退出聊天室
		/// </summary>
		/// <param name="chatroomId">聊天室Id</param>
		/// <param name="callback">Callback</param>
		public void QuitChatRoom (string chatroomId, RCGeneralCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onFailure != null) 
				{
					callback.onFailure (RCErrorCode.CLIENT_NOT_INIT);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			quitChatRoom (chatroomId, RCGeneralCallback.OnSuccess, RCGeneralCallback.OnFailure,callback.CallbackId);
		}
			
		/// <summary>
		/// 发送消息
		/// </summary>
		/// <param name="convetsationType">会话类型</param>
		/// <param name="targetId">目标Id</param>
		/// <param name="messageContent">具体的消息</param>
		/// <param name="pushContent">推送显示的内容</param>
		/// <param name="pushData">推送附加数据</param>
		/// <param name="callback">Callback</param>
		public void SendMessage (ConversationType convetsationType, string targetId, RCMessageContent messageContent, string pushContent, string pushData, RCSendMessageCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onSendFailureCallback != null) 
				{
					callback.onSendFailureCallback (RCErrorCode.CLIENT_NOT_INIT);
				}
				return;
			}
			callback.CallbackId =this.AddCallbackToList(callback);
			sendMessage (convetsationType, targetId, messageContent.GetObjectName (), messageContent.Serialize (), pushContent, pushData, RCSendMessageCallback.OnSendSuccess, RCSendMessageCallback.OnSendFailure, RCSendMessageCallback.OnSendProgress, RCSendMessageCallback.OnSaved,callback.CallbackId);

		}

		/// <summary>
		/// 获取会话列表
		/// </summary>
		/// <param name="conversationTypes">会话类型的数组</param>
		/// <param name="callback">Callback</param>
		public void GetConversationList (ConversationType[] conversationTypes, RCConversationCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onGetConversationList != null) 
				{
					callback.onGetConversationList (null);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			getConversationList (conversationTypes, conversationTypes.Length, RCConversationCallback.OnGetConversationList,callback.CallbackId);
		}


		/// <summary>
		/// 从本地数据库删除会话
		/// </summary>
		/// <param name="conversationTypes">会话实体</param>
		/// <param name="callback">Callback</param>
		public bool RemoveConversation(RCConversation conversation)
		{
			if (!isInitRongCloud) 
			{
				return false;
			}
			return removeConversation (conversation.Type, conversation.TargetId);
		}

		/// <summary>
		/// 开始录音
		/// </summary>
		/// <param name="callback">Callback</param>
		public void StartRecordVoice (RCVoiceCaptureCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onVoiceCaptureError != null) 
				{
					callback.onVoiceCaptureError (RCErrorCode.CLIENT_NOT_INIT);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			startRecordVoice (RCVoiceCaptureCallback.OnVoiceCaptureFinished, RCVoiceCaptureCallback.OnVoiceVolume, RCVoiceCaptureCallback.OnVoiceCaptureError,callback.CallbackId);
		}

		/// <summary>
		/// 终止录音
		/// </summary>
		public void StopRecordVoice ()
		{
			stopRecordVoice ();
		}

		/// <summary>
		/// 下载语音图片等文件
		/// </summary>
		/// <param name="conversation">会话类型/param>
		/// <param name="targertId">会话Id</param>
		/// <param name="mediaType">文件类型</param>
		/// <param name="mediaUrl">文件url</param>
		/// <param name="callback">Callback</param>
		public void DownloadMedia (ConversationType conversation, string targertId, MediaType mediaType, string mediaUrl, RCDownloadMediaFileCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onFailure != null) 
				{
					callback.onFailure (RCErrorCode.CLIENT_NOT_INIT);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			downloadMedia (conversation, targertId, mediaType, mediaUrl, RCDownloadMediaFileCallback.OnSuccess, RCDownloadMediaFileCallback.OnProgress, RCDownloadMediaFileCallback.OnFailure,callback.CallbackId);
		}

		/// <summary>
		/// 获取最新消息
		/// </summary>
		/// <param name="conversationType">会话类型</param>
		/// <param name="tagertId">会话id</param>
		/// <param name="count">条数</param>
		/// <param name="callback">Callback</param>
		public void GetLatestedMessages (ConversationType conversationType, string tagertId, int count, RCGetMessageCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onGetMessageCallback != null)
				{
					callback.onGetMessageCallback (null);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			getLatestedMessages (conversationType, tagertId, count, RCGetMessageCallback.OnGetMessageList,callback.CallbackId);
		}

		/// <summary>
		/// 获取历史消息
		/// </summary>
		/// <param name="conversationType">会话类型</param>
		/// <param name="tagertId">会话id</param>
		/// <param name="oldestMessageId">消息id（从这条消息开始取之前的消息）</param>
		/// <param name="count">条数</param>
		/// <param name="callback">Callback</param>
		public void GetHistoryMessages (ConversationType conversationType, string tagertId, long oldestMessageId, int count, RCGetMessageCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onGetMessageCallback != null) 
				{
					callback.onGetMessageCallback (null);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			getHistoryMessages (conversationType, tagertId,oldestMessageId, count, RCGetMessageCallback.OnGetMessageList,callback.CallbackId);
		}

		/// <summary>
		/// 获取漫游历史消息（需开通消息漫游功能）
		/// </summary>
		/// <param name="conversationType">会话类型</param>
		/// <param name="tagertId">会话id</param>
		/// <param name="recordTime">时间戳，初始可以传0</param>
		/// <param name="count">条数</param>
		/// <param name="callback">Callback</param>
		public void GetRemoteHistoryMessages (ConversationType conversationType, string tagertId, long recordTime, int count, RCGetMessageCallback callback)
		{
			if (!isInitRongCloud) 
			{
				if (callback.onGetMessageCallback != null) 
				{
					callback.onGetMessageCallback (null);
				}
				return;
			}
			callback.CallbackId = this.AddCallbackToList(callback);
			getRemoteHistoryMessages(conversationType, tagertId,recordTime, count, RCGetMessageCallback.OnGetMessageList,callback.CallbackId);
		}


		/// <summary>
		/// 往本地数据库插入一条消息
		/// </summary>
		/// <param name="conversationType">会话类型</param>
		/// <param name="tagertId">会话id</param>
		/// <param name="sendUserId">发送者id</param>
		/// <param name="sendStatus">发送状态</param>
		/// <param name="content">消息</param>
		public int InsertMessage (ConversationType conversationType, string tagertId, string sendUserId, MessageStatus sendStatus,RCMessageContent content)
		{
			if (!isInitRongCloud) 
			{
				return -1;
			}
			return insertMessage (conversationType,tagertId,sendUserId,sendStatus,content.GetObjectName(),content.Serialize());
		}

		/// <summary>
		/// 从本地删除消息.
		/// </summary>
		/// <param name="msgIds">消息id数组</param>
		/// <returns>操作结果</returns>
		public bool DeleteMessages (long[] msgIds)
		{
			if (!isInitRongCloud) 
			{
				return false;
			}
			return deleteMessages (msgIds,msgIds.Length);
		}

		/// <summary>
		/// 从本地清除会话里的所有消息
		/// </summary>
		/// <param name="conversationType">会话类型</param>
		/// <param name="tagertId">会话id</param>
		/// <returns>操作结果</returns>
		public  bool ClearMessages (ConversationType conversationType, string tagertId)
		{
			if (!isInitRongCloud) 
			{
				return false;
			}
			return clearMessages (conversationType,tagertId);
		}

		/// <summary>
		/// 清除消息未读状态
		/// </summary>
		/// <param name="conversationType">会话类型</param>
		/// <param name="tagertId">会话id</param>
		public bool ClearMessagesUnreadStatus (ConversationType conversationType, string tagertId)
		{
			if (!isInitRongCloud) 
			{
				return false;
			}
			return clearMessagesUnreadStatus (conversationType,tagertId);
		}

		/// <summary>
		/// 从本地删除会话
		/// </summary>
		/// <param name="conversationTypes">要删除的类型的数组</param>
		public bool ClearConversations (ConversationType[]conversationTypes)
		{
			if (!isInitRongCloud) 
			{
				return false;
			}
			return clearConversations (conversationTypes,conversationTypes.Length);
		}

		/// <summary>
		/// 设置消息的接收状态
		/// </summary>
		/// <param name="messageId">消息的id</param>
		/// <param name="receivedStatus">接收状态</param>
		public bool SetMessageReceivedStatus (long messageId, MessageStatus receivedStatus)
		{
			if (!isInitRongCloud) 
			{
				return false;
			}
			return setMessageSentStatus (messageId,receivedStatus);
		}

		/// <summary>
		/// 设置消息的发送状态
		/// </summary>
		/// <param name="messageId">消息id</param>
		/// <param name="sentStatus">发送状态</param>
		public bool SetMessageSentStatus (long messageId, MessageStatus sentStatus)
		{
			if (!isInitRongCloud) 
			{
				return false;
			}
			return setMessageSentStatus (messageId,sentStatus);
		}

		/// <summary>
		/// 注册自定义消息类型，需要在init之后connect之前注册自定义消息类型
		/// </summary>
		/// <param name="messageContent">Message content</param>
		public void RegisterMessageContent(RCMessageContent message)
		{
			if (!isInitRongCloud) 
			{
				return;
			}
			string objectName = message.GetObjectName ();
			System.Type type= message.GetType ();
			if (!registerMessageTypes.ContainsKey (objectName)) 
			{
				registerMessageTypes.Add (objectName,type);
			}
			Debug.Log ("rcsdk RegisterMessageContent: objectName: " + objectName + "; type = " + type);
			registerMessageType(objectName, message.GetPersistentFlag());
		}

        /// <summary>
		/// 将请求的回调加入回调列表
		/// </summary>
		/// <returns>The callback to list</returns>
		/// <param name="callback">Callback</param>
		private int AddCallbackToList(RCCallBackBase callback)
		{
			lock (thisLock) 
			{
				callbackId++;
				Debug.Log ("rcsdk AddCallbackToList callbackId = " + callbackId);
				callback.CallbackId = callbackId;
				requestCallbackList.Add (callback.CallbackId, callback);
				return callback.CallbackId;
			}
		}

        #endif

        /// <summary>
        /// 根据objectname 获取 消息的类型
        /// </summary>
        /// <returns>The massge type by object name</returns>
        /// <param name="messageContent">Message content</param>
        public System.Type GetMassgeTypeByObjectName(string objectName)
        {
            if (registerMessageTypes.ContainsKey(objectName))
            {
                return registerMessageTypes[objectName];
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 获取回调
        /// </summary>
        /// <returns>The callback by identifier</returns>
        /// <param name="callbackId">Callback identifier</param>
        public RCCallBackBase GetCallbackById(int callbackId)
		{
			if (requestCallbackList.ContainsKey (callbackId)) 
			{
				Debug.Log ("rcsdk GetCallbackById callbackId = " + callbackId);
				return (RCCallBackBase)requestCallbackList [callbackId];
			} else 
			{
				Debug.Log ("rcsdk GetCallbackById null callbackId = " + callbackId);
				return null;
			}
		}

		/// <summary>
		/// 移除回调
		/// </summary>
		/// <param name="callbackId">Callback identifier</param>
		public void RemoveCallbackById(int callbackId)
		{
			Debug.Log ("rcsdk RemoveCallbackById callbackId = " + callbackId);
			if (requestCallbackList.ContainsKey (callbackId)) 
			{
				requestCallbackList.Remove(callbackId);
			}
		}
#endregion // RongIM Interface

#if UNITY_IOS
		[DllImport ("__Internal")]
		private static extern void initAppkey (string appKey);

		[DllImport ("__Internal")]
		private static extern void setDeviceToken(string deviceToken);

		[DllImport ("__Internal")]
		private static extern string getSDKVersion ();

		[DllImport ("__Internal")]
		private static extern void connectRongCloud (string token, string userId);

		[DllImport ("__Internal")]
		private static extern void setConnectionCallback (RCConnectionStatusListener.RCConnectStatusCallBack callback);

		[DllImport ("__Internal")]
		private static extern void setReciveMessageCallback (RCMessageListener.RCRecivedMessageCallback callback);

		[DllImport ("__Internal")]
		private static extern void disconnect (bool receivedPush);

		[DllImport ("__Internal")]
		private static extern ConnectionStatus getConnectionStatus ();

		[DllImport ("__Internal")]
		private static extern long sendMessage (ConversationType convetsationType, string targetId, string objectName, string messageContent, string pushContent, string pushData, RCSendMessageCallback.SendMessageSuccessSDKCallback successCallback, RCSendMessageCallback.SendMessageFailureSDKCallback failureCallback, RCSendMessageCallback.SendMessageProgressSDKCallback prograssCallback, RCSendMessageCallback.SendMessageSDKCallback callback,int callbackId);

		[DllImport ("__Internal")]
		private static extern void joinChatRoom (string chatroomId, int pullHistoryCount, RCGeneralCallback.GeneralSuccessSDKCallback successCallback, RCGeneralCallback.GeneralFailureSDKCallback failureCallback,int callbackId);

		[DllImport ("__Internal")]
		private static extern void quitChatRoom (string chatroomId, RCGeneralCallback.GeneralSuccessSDKCallback successCallback, RCGeneralCallback.GeneralFailureSDKCallback failureCallback,int callbackId);

		[DllImport ("__Internal")]
		private static extern void startRecordVoice (RCVoiceCaptureCallback.VoiceCaptureFinishedSDKCallback finishedCallback, RCVoiceCaptureCallback.VoiceVolumeSDKCallback volumeCallback, RCVoiceCaptureCallback.VoiceCaptureErrorSDKCallback errorCallback,int callbackId);

		[DllImport ("__Internal")]
		private static extern void stopRecordVoice ();

		[DllImport ("__Internal")]
		private static extern void downloadMedia (ConversationType conversation, string targetId, MediaType mediaType, string mediaUrl, RCDownloadMediaFileCallback.DownloadMediaFileSuccessSDKCallback successCallback, RCDownloadMediaFileCallback.DownloadMediaFileProgressSDKCallback progressCallback, RCDownloadMediaFileCallback.DownloadMediaFileFailureSDKCallback failureCallback,int callbackId);

		[DllImport ("__Internal")]
		private static extern void registerMessageType(string objectName ,MessagePsersistent persistentFlag);

		[DllImport ("__Internal")]
		private static extern void getConversationList (ConversationType[]conversationTypes, int length, RCConversationCallback.GetConversationListSDKCallback callback,int callbackId);

		[DllImport ("__Internal")]
		private static extern bool removeConversation(ConversationType conversationType, string tagertId);

		[DllImport ("__Internal")]
		private static extern bool setConversationToTop(ConversationType conversationType, string tagertId, bool isTop);

		[DllImport ("__Internal")]
		private static extern int getUnreadCount(ConversationType conversationType, string tagertId);

		[DllImport ("__Internal")]
		private static extern  int getAllUnreadCount(ConversationType conversationType, string tagertId);

		[DllImport ("__Internal")]
		private static extern void getLatestedMessages (ConversationType conversationType, string tagertId, int count, RCSendMessageCallback.GetMessageListSDKCallback callback,int callbackId);

		[DllImport ("__Internal")]
		private static extern void getHistoryMessages (ConversationType conversationType, string tagertId, long oldestMessageId, int count, RCGetMessageCallback.GetMessageListSDKCallback callback,int callbackId);

		[DllImport ("__Internal")]
		private static	extern  void getRemoteHistoryMessages (ConversationType conversationType, string tagertId, long recordTime, int count, RCGetMessageCallback.GetMessageListSDKCallback callback,int callbackId);

		[DllImport ("__Internal")]
		private static extern int insertMessage (ConversationType conversationType, string tagertId, string sendUserId, MessageStatus sendStatus, string objectName, string content);

		[DllImport ("__Internal")]
		private static extern bool deleteMessages (long[] msgIds, int length);

		[DllImport ("__Internal")]
		private static extern bool clearMessages (ConversationType conversationType, string tagertId);

		[DllImport ("__Internal")]
		private static extern bool clearMessagesUnreadStatus (ConversationType conversationType, string tagertId);

		[DllImport ("__Internal")]
		private static extern bool clearConversations (ConversationType[]conversationTypes, int length);

		[DllImport ("__Internal")]
		private static extern bool setMessageReceivedStatus (long messageId, MessageStatus receivedStatus);

		[DllImport ("__Internal")]
		private static extern bool setMessageSentStatus (long messageId, MessageStatus sentStatus);
#endif // UNITY_IOS

#if UNITY_ANDROID
		[DllImport ("rongimlibunity")]
		private static extern void requestRunInMainLoop ();

		[DllImport ("rongimlibunity")]
		private static extern void initAppkey (string appKey);

		[DllImport ("rongimlibunity")]
		private static extern string getSDKVersion ();

		[DllImport ("rongimlibunity")]
		private static extern void connectRongCloud (string token, string userId);

		[DllImport ("rongimlibunity")]
		private static extern void setConnectionCallback (RCConnectionStatusListener.RCConnectStatusCallBack callback);

		[DllImport ("rongimlibunity")]
		private static extern void setReciveMessageCallback (RCMessageListener.RCRecivedMessageCallback callback);

		[DllImport ("rongimlibunity")]
		private static extern void disconnect (bool receivedPush);

		[DllImport ("rongimlibunity")]
		private static extern ConnectionStatus getConnectionStatus ();

		[DllImport ("rongimlibunity")]
		private static extern long sendMessage (ConversationType convetsationType, string targetId, string objectName, string messageContent, string pushContent, string pushData, RCSendMessageCallback.SendMessageSuccessSDKCallback successCallback, RCSendMessageCallback.SendMessageFailureSDKCallback failureCallback, RCSendMessageCallback.SendMessageProgressSDKCallback prograssCallback, RCSendMessageCallback.SendMessageSDKCallback callback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern void joinChatRoom (string chatroomId, int pullHistoryCount, RCGeneralCallback.GeneralSuccessSDKCallback successCallback, RCGeneralCallback.GeneralFailureSDKCallback failureCallback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern void quitChatRoom (string chatroomId, RCGeneralCallback.GeneralSuccessSDKCallback successCallback, RCGeneralCallback.GeneralFailureSDKCallback failureCallback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern void startRecordVoice (RCVoiceCaptureCallback.VoiceCaptureFinishedSDKCallback finishedCallback, RCVoiceCaptureCallback.VoiceVolumeSDKCallback volumeCallback, RCVoiceCaptureCallback.VoiceCaptureErrorSDKCallback errorCallback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern void stopRecordVoice ();

		[DllImport ("rongimlibunity")]
		private static extern void downloadMedia (ConversationType conversation, string targetId, MediaType mediaType, string mediaUrl, RCDownloadMediaFileCallback.DownloadMediaFileSuccessSDKCallback successCallback, RCDownloadMediaFileCallback.DownloadMediaFileProgressSDKCallback progressCallback, RCDownloadMediaFileCallback.DownloadMediaFileFailureSDKCallback failureCallback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern void registerMessageType (string objectName, MessagePsersistent persistentFlag);

		[DllImport ("rongimlibunity")]
		private static extern void getConversationList (ConversationType[]conversationTypes, int length, RCConversationCallback.GetConversationListSDKCallback callback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern bool removeConversation (ConversationType conversationType, string tagertId);

		[DllImport ("rongimlibunity")]
		private static extern bool setConversationToTop (ConversationType conversationType, string tagertId, bool isTop);

		[DllImport ("rongimlibunity")]
		private static extern int getUnreadCount (ConversationType conversationType, string tagertId);

		[DllImport ("rongimlibunity")]
		private static extern  int getAllUnreadCount (ConversationType conversationType, string tagertId);

		[DllImport ("rongimlibunity")]
		private static extern void getLatestedMessages (ConversationType conversationType, string tagertId, int count, RCSendMessageCallback.GetMessageListSDKCallback callback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern void getHistoryMessages (ConversationType conversationType, string tagertId, long oldestMessageId, int count, RCGetMessageCallback.GetMessageListSDKCallback callback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static	extern  void getRemoteHistoryMessages (ConversationType conversationType, string tagertId, long recordTime, int count, RCGetMessageCallback.GetMessageListSDKCallback callback, int callbackId);

		[DllImport ("rongimlibunity")]
		private static extern int insertMessage (ConversationType conversationType, string tagertId, string sendUserId, MessageStatus sendStatus, string objectName, string content);

		[DllImport ("rongimlibunity")]
		private static extern bool deleteMessages (long[] msgIds, int length);

		[DllImport ("rongimlibunity")]
		private static extern bool clearMessages (ConversationType conversationType, string tagertId);

		[DllImport ("rongimlibunity")]
		private static extern bool clearMessagesUnreadStatus (ConversationType conversationType, string tagertId);

		[DllImport ("rongimlibunity")]
		private static extern bool clearConversations (ConversationType[]conversationTypes, int length);

		[DllImport ("rongimlibunity")]
		private static extern bool setMessageReceivedStatus (long messageId, MessageStatus receivedStatus);

		[DllImport ("rongimlibunity")]
		private static extern bool setMessageSentStatus (long messageId, MessageStatus sentStatus);
#endif // UNITY_ANDROID
    }

}
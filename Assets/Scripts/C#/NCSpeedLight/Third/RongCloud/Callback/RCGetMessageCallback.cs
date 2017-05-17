using UnityEngine;
using System.Collections.Generic;
using AOT;
using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;

namespace RCloud
{
	public class RCGetMessageCallback:RCCallBackBase
	{
		public delegate void  GetMessageListCallback(List<RCMessage> messageList);
		public GetMessageListCallback onGetMessageCallback;

		#region 开发者勿修改以下代码！！！！
		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="messageListJson">Message list json.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(GetMessageListSDKCallback))]
		public static void OnGetMessageList(string messageListJson,int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK RCGetMessageListCallback-{0}",messageListJson));
			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCGetMessageCallback msgCallback = callback as RCGetMessageCallback;
				if (msgCallback != null && msgCallback.onGetMessageCallback != null) 
				{
					List<RCMessage> messages = new List<RCMessage> ();
					RCJSONNode messageListNode = RCJSON.Parse(messageListJson);
					RCJSONClass messageListObj = messageListNode.AsObject;
					var list = messageListObj["list"].AsArray;
					foreach (var msgJson  in list) 
					{
						RCJSONNode messageObjNode = RCJSON.Parse(msgJson.ToString());
						RCJSONClass messageObj = messageObjNode.AsObject;
						var msgObj = messageObj["obj"];
						if (msgObj!=null && msgObj.ToString ().Length > 0) 
						{
							RCMessage msg = RCMessage.Unserialize (msgObj);
							messages.Add (msg);
							Debug.Log (string.Format ("rongcloud SDK RCGetMessageListCallback3{0}",msg.messageId));
						}
					}
					Debug.Log (string.Format ("rongcloud SDK RCGetMessageListCallback{0}",list.Count));
					msgCallback.onGetMessageCallback (messages);
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}
		}
		#endregion
	}
}


using UnityEngine;
using System;
using System.Collections.Generic;
using AOT;

namespace RCloud
{
	/// <summary>
	/// 获取会话列表回调
	/// </summary>
	public class RCConversationCallback:RCCallBackBase
	{
		//获取会话列表callback
		public delegate void  GetConversationListCallback(List<RCConversation> conversationList);

		/// <summary>
		/// 开发者可以给这个delegate 赋相应的方法来处理回调逻辑
		/// </summary>
		public GetConversationListCallback onGetConversationList;

		#region 开发者勿修改以下代码！！！！
		/// <summary>
		/// 融云底层回调调取的方法，开发者不要修改，否则底层回调可能出问题
		/// </summary>
		/// <param name="conversationListJson">Conversation list json.</param>
		/// <param name="callbackId">Callback identifier.</param>
		[MonoPInvokeCallback(typeof(GetConversationListSDKCallback))]
		public static void OnGetConversationList(string conversationListJson, int callbackId)
		{
			Debug.Log (string.Format ("rongcloud SDK RCGetConversationListCallback{0}",conversationListJson));

			RCCallBackBase callback = RongIMAPI.GetInstance().GetCallbackById (callbackId) ;
			if (callback != null) 
			{
				RCConversationCallback msgCallback = callback as RCConversationCallback;
				if (msgCallback != null && msgCallback.onGetConversationList != null) 
				{
					List<RCConversation> conversationList = new List<RCConversation> ();
					RCJSONNode conversationListNode = RCJSON.Parse(conversationListJson);
					RCJSONClass conversationListObj = conversationListNode.AsObject;
					var list = conversationListObj["list"].AsArray;
					foreach (var msgJson  in list) 
					{
						RCJSONNode conversationObjNode = RCJSON.Parse(msgJson.ToString());
						RCJSONClass conversationObj = conversationObjNode.AsObject;
						var msgObj = conversationObj["obj"];
						if (msgObj!=null && msgObj.ToString ().Length > 0) 
						{
							RCConversation conversation = RCConversation.Unserialize (msgObj);
							conversationList.Add (conversation);
							Debug.Log ("OnGetConversationList type = " + conversation.Type + ", targetId = " + conversation.TargetId);
						}
					}
					Debug.Log ("OnGetConversationList count = " +list.Count);
					msgCallback.onGetConversationList (conversationList);
				}
				RongIMAPI.GetInstance().RemoveCallbackById (callbackId);
			}

		}
		#endregion	
	}
}


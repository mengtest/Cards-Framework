using System;
using AOT;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace RCloud
{
	/// <summary>
	/// 融云消息接收监听，你如果想监听接收到的消息，可以在对应的类继承IRecivedMessageObserver接口，然后调AddObserver加入到监听列表
	/// SDK收到消息之后就会分别通知注册的Observer
	/// </summary>
	public class RCMessageListener 
	{
		private static List<IRCRecivedMessageObserver> observers = new List<IRCRecivedMessageObserver>();
		public delegate void  RCRecivedMessageCallback(ConversationType conversationType,string tagertId,MessageDirection messageDirection,string senderUserId,MessageStatus status,long sentTime,Int32 messageIds,string objectName,string messageContentJson);

		[MonoPInvokeCallback(typeof(RCRecivedMessageCallback))]
		public static void OnReceivedMessage(ConversationType conversationType,string targetId,MessageDirection messageDirection,string senderUserId,MessageStatus status,long sentTime,Int32 messageId,string objectName,string messageContentJson)
		{
			
			Debug.Log (string.Format ("rongcloud SDK onReceivedMessage conversationType= {0} tagertId ={1} messageId= {2} content ={3} objectname ={4}", conversationType,targetId,messageId,messageContentJson,objectName));
			//TODO:解析收到的消息
			try{
				RCMessage msg = new RCMessage ();
				msg.m_conversation = new RCConversation (conversationType ,targetId);
				msg.m_direction = messageDirection;
				msg.messageId = messageId;
				msg.senderUserId = senderUserId;
				msg.sentTime = sentTime;
				msg.status = status;
				if (objectName != null && objectName.Length > 0) 
				{
					System.Type type= RongIMAPI.GetInstance().GetMassgeTypeByObjectName (objectName);

					if (type != null) 
					{
						Debug.Log (string.Format ("rongcloud SDK RCMessageContent type {0}，json{1}",type,messageContentJson));
						RCMessageContent o = (RCMessageContent)System.Activator.CreateInstance(type);

						msg.content = o.Unserialize (messageContentJson);
					}else{
						RCUnknownMessageContent unknowMessage = new RCUnknownMessageContent(objectName,messageContentJson);
						msg.content = unknowMessage;
						Debug.Log (string.Format ("rongcloud SDK RCMessageContent Unserialize null "));
					}
				}

				Debug.Log (string.Format ("rongcloud SDK onReceivedMessage sentTime = {0} {1}", sentTime,objectName));
				foreach (var ob in observers) 
				{
					ob.OnRecivedMessage (msg);
				}
			}catch(Exception ex)
			{
				Debug.Log (string.Format ("rongcloud SDK onReceivedMessage error {0}", ex.StackTrace));
			}
			finally
			{
			}

		}

		/// <summary>
		/// 加入监听消息
		/// </summary>
		/// <param name="ob">Ob.</param>
		public static void AddObserver(IRCRecivedMessageObserver ob)
		{
			observers.Add(ob);
		}

		/// <summary>
		/// 移除监听消息
		/// </summary>
		/// <param name="ob">Ob.</param>
		public static void RemoveObserver(IRCRecivedMessageObserver ob)
		{
			observers.Remove(ob);
		}
	}
}


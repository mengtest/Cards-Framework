using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;
using UnityEngine;
using System.Reflection;

namespace RCloud{
	
	[Serializable]
	public class RCMessage
	{
		public RCConversation m_conversation;
		public MessageDirection m_direction;
		public string senderUserId;
		public MessageStatus status;
		public long sentTime;
		public RCMessageContent content;
		public long messageId;

		/// <summary>
		/// 把消息的json字符串解析成具体的消息实体
		/// </summary>
		/// <param name="json">Json.</param>
		public static RCMessage Unserialize (string json)
		{
			Debug.Log ("rongcloud SDK RCMessage Unserialize = " + json);
			RCMessage msg = new RCMessage();
			RCJSONClass jsonClass = RCJSON.Parse(json).AsObject;
			msg.m_conversation = RCConversation.Unserialize(jsonClass["conversation"]);
			msg.m_direction =(MessageDirection)(jsonClass["direction"].AsInt);
			msg.messageId = jsonClass["messageId"].AsInt;
			msg.senderUserId = jsonClass["senderUserId"];
			msg.sentTime = jsonClass["sentTime"].AsLong;
			msg.status = (MessageStatus)jsonClass["status"].AsInt;
			string contentJson = jsonClass["content"];
			RCJSONNode contentNode = RCJSON.Parse(contentJson);
			RCJSONClass contentJsonObj = contentNode.AsObject;
			string objectName = contentJsonObj["objectName"];
			if (objectName != null && objectName.Length > 0) 
			{
				System.Type type= RongIMAPI.GetInstance().GetMassgeTypeByObjectName (objectName);
				if (type != null) 
				{
					RCMessageContent o = (RCMessageContent)System.Activator.CreateInstance(type);
					string objectContent = contentJsonObj["object"];
					msg.content = o.Unserialize (objectContent);
				}
				if(msg.content == null)
					Debug.Log (string.Format ("rongcloud SDK RCMessageContent Unserialize null "));
			}

			Debug.Log(string.Format ("rongcloud SDK RCMessage Unserialize = {0}", msg.messageId));
			return msg;
		}
	}
}

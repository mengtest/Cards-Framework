//using System;
//using System.Runtime.Serialization.Formatters;
//using System.Runtime.Serialization;
//using UnityEngine;
//
//namespace RCloud
//{
//	[Serializable]
//	public class RCStatusMessageContent:RCMessageContent
//	{
//		public string content;
//		public string type;
//
//		public override string Serialize()
//		{ 
//			string json = JsonUtility.ToJson(this);
//			Debug.Log(json);
//			return json;
//		}
//
//		public override RCMessageContent Unserialize(string json)
//		{
//			RCStatusMessageContent msg;
//			msg = JsonUtility.FromJson<RCStatusMessageContent>(json);
//			Debug.Log(msg.content +" " + msg.extra);
//
//			JsonUtility.FromJsonOverwrite(json,msg);
//			return msg;
//		}
//
//		public override string GetObjectName()
//		{
//			return RCStatusMsgObjName;
//		}
//
//		public override MessagePsersistent GetPersistentFlag ()
//		{
//			return MessagePsersistent.MessagePersistent_PERSIST_COUNT;
//		}
//
//
//	}
//}
//
//

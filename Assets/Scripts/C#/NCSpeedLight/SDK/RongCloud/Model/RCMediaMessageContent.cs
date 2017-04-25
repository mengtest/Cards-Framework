//using System;
//using System.Runtime.Serialization.Formatters;
//using System.Runtime.Serialization;
//using UnityEngine;
//
//namespace RCloud
//{
//	[Serializable]
//	public class RCMediaMessageContent:RCMessageContent
//	{
//		public string content;
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
//			RCMediaMessageContent msg;
//			msg = JsonUtility.FromJson<RCMediaMessageContent>(json);
//			Debug.Log(msg.content +" " + msg.extra);
//
//			JsonUtility.FromJsonOverwrite(json,msg);
//			return msg;
//		}
//
//		public override string GetObjectName()
//		{
//			return rcm;
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

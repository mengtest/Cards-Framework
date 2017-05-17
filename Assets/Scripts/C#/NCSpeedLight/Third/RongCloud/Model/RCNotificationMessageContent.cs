using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;
using UnityEngine;

namespace RCloud
{
	[Serializable]
	public class RCNotificationMessageContent : RCMessageContent
	{
		private string m_content;
		private string m_type;

		public string Content
		{
			get { return m_content; }
			set { m_content = value; } 
		}

		public string Type
		{
			get { return m_type; }
			set { m_type = value; } 
		}

		public override string Serialize()
		{ 
			RCJSONClass jsonClass = new RCJSONClass ();
			jsonClass.Add ("content",new RCJSONData (m_content));
			jsonClass.Add ("type", new RCJSONData (m_type));
			jsonClass.Add ("extra",new RCJSONData (m_extra));
			string json = jsonClass.ToJSON ();
			Debug.Log ("RCNotificationMessageContent Serialize json = " + json);
			return json;
		}

		public override RCMessageContent Unserialize(string json)
		{
			Debug.Log ("RCNotificationMessageContent Unserialize: json = " + json);
			RCJSONNode jsonNode = RCJSON.Parse(json).AsObject;
			RCNotificationMessageContent msg = new RCNotificationMessageContent ();
			msg.Content = jsonNode["content"];
			msg.Type = jsonNode ["type"];
			msg.Extra = jsonNode ["extra"];
			return msg;
		}

		public override string GetObjectName()
		{
			return RCNotificationMsgObjName;
		}

		public override MessagePsersistent GetPersistentFlag ()
		{
			return MessagePsersistent.MessagePersistent_PERSIST;
		}


	}
}



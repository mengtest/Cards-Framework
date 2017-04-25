using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;
using UnityEngine;

namespace RCloud
{
	[Serializable]
	public class RCTextMessageContent : RCMessageContent
	{
		private string m_content;

		public String Content
		{
			get { return m_content; }
			set { m_content = value; }
		}

		public RCTextMessageContent()
		{
		}

		public RCTextMessageContent(string content, string extra = "")
		{
			m_content = content;
			m_extra = extra;
		}

		public override string Serialize()
		{ 
			RCJSONClass jsonClass = new RCJSONClass ();
			jsonClass.Add ("content", new RCJSONData (m_content));
			jsonClass.Add ("extra", new RCJSONData (m_extra));
			string json = jsonClass.ToJSON ();
			Debug.Log("RCTextMessageContent Serialize = " + json);
			return json;
		}

		public override RCMessageContent Unserialize(string json)
		{
			Debug.Log("RCTextMessageContent Serialize = " + json);
			RCJSONClass jsonClass = RCJSON.Parse (json).AsObject;
			RCTextMessageContent msg = new RCTextMessageContent (jsonClass["content"], jsonClass["extra"]);
			return msg;
		}

		public override string GetObjectName()
		{
			return RCTextMsgObjName;
		}

		public override MessagePsersistent GetPersistentFlag ()
		{
			return MessagePsersistent.MessagePersistent_PERSIST_COUNT;
		}
	}
}


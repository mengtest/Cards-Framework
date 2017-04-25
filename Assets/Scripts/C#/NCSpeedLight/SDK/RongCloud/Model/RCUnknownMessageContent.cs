using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;
using UnityEngine;

namespace RCloud
{
	public class RCUnknownMessageContent:RCMessageContent
	{
		private string m_rawJSONString;

		private string m_objName;

		public String ObjName
		{
			get { return m_objName; }
			set { m_objName = value; }
		}

		public String RawJSONString
		{
			get { return m_rawJSONString; }
			set { m_rawJSONString = value; }
		}

		public RCUnknownMessageContent(string objName,string json)
		{
			this.m_objName = objName;
			this.m_rawJSONString = json;
		}

		public RCUnknownMessageContent()
		{
		}

		public override string Serialize()
		{ 
			return m_rawJSONString;
		}

		public override RCMessageContent Unserialize(string json)
		{
			RCUnknownMessageContent msg = new RCUnknownMessageContent();
			RCJSONClass jsonClass = RCJSON.Parse(json).AsObject;
			string objectName = jsonClass["objectName"];
			if (objectName != null && objectName.Length > 0)
				msg.m_objName = objectName;

			msg.m_rawJSONString = json;
			return msg;
		}

		public override string GetObjectName()
		{
			return m_objName;
		}

		public override MessagePsersistent GetPersistentFlag ()
		{
			return MessagePsersistent.MessagePersistent_STATUS;
		}

	}
}



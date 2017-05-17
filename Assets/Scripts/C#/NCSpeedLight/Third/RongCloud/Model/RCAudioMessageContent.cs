using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;
using UnityEngine;

namespace RCloud
{
	[Serializable]
	public class RCAudioMessageContent : RCMessageContent
	{
		private string m_voiceUri;
		private int m_duration;

		/// <summary>
		/// 语音的URL，收到语音文件可以调用downloadMedia接口下载语音文件
		/// </summary>
		/// <value>The voice URI.</value>
		public string VoiceUri {
			get { return m_voiceUri; }
			set { m_voiceUri = value; } 
		}

		/// <summary>
		/// 时长
		/// </summary>
		/// <value>The duration.</value>
		public int Duration
		{
			get { return m_duration; }
			set { m_duration = value; } 
		}

		public RCAudioMessageContent()
		{
		}

		public RCAudioMessageContent(string voiceUri, int duration, string extra = "")
		{
			m_voiceUri = voiceUri;
			m_duration = duration;
			m_extra = extra;
		}

		public override string Serialize ()
		{ 
			RCJSONClass jsonClass = new RCJSONClass ();
			jsonClass.Add ("voiceUri", new RCJSONData (m_voiceUri));
			jsonClass.Add ("duration", new RCJSONData (m_duration));
			jsonClass.Add ("extra", new RCJSONData (m_extra));
			string json = jsonClass.ToJSON ();
			Debug.Log ("RCAudioMessageContent Serialize json = " + json);
			return json;
		}

		public override RCMessageContent Unserialize (string json)
		{
			Debug.Log("RCAudioMessageContent Unserialize json = " + json);
			RCJSONClass jsonClass = RCJSON.Parse (json).AsObject;
			RCAudioMessageContent msg = new RCAudioMessageContent (jsonClass["voiceUri"], jsonClass["duration"].AsInt, jsonClass["extra"]);
			return msg;
		}

		public override string GetObjectName ()
		{
			return RCAudioMsgObjName;
		}

		public override MessagePsersistent GetPersistentFlag ()
		{
			return MessagePsersistent.MessagePersistent_PERSIST_COUNT;
		}
	}
}


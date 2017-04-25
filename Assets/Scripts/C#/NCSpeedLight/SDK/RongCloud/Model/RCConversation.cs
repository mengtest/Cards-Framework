using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;
using UnityEngine;
using System.Reflection;

namespace RCloud
{
	[Serializable]
	public class RCConversation 
	{
		private ConversationType m_conversationType;
		private string m_targetId;

		/// <summary>
		/// 会话类型
		/// </summary>
		/// <value>The type.</value>
		public ConversationType Type
		{
			get	{ return m_conversationType; }
			set { m_conversationType = value; }
		}

		/// <summary>
		/// 会话Id
		/// </summary>
		/// <value>The target identifier.</value>
		public string TargetId
		{
			get	{ return m_targetId; }
			set { m_targetId = value; }
		}

		public RCConversation(){

		}
		public RCConversation(ConversationType type, string targetId){
			m_conversationType = type;
			m_targetId = targetId;
		}

		public static RCConversation Unserialize (string json)
		{
			Debug.Log ("RCConversation Unserialize = " + json);
			RCConversation convsersation = new RCConversation();
			RCJSONClass msgJsonObj = RCJSON.Parse(json).AsObject;
			convsersation.TargetId = msgJsonObj["targetId"];
			convsersation.Type =(ConversationType) msgJsonObj["conversationType"].AsInt;
			return convsersation;
		}
	}
}


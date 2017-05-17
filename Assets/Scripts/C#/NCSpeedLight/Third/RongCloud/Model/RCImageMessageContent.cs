using System;
using System.Runtime.Serialization.Formatters;
using System.Runtime.Serialization;
using UnityEngine;

namespace RCloud
{
	[Serializable]
	public class RCImageMessageContent : RCMessageContent
	{
		private string m_imagePath;
		private string m_thumbPath;
		private string m_remoteUri;

		/// <summary>
		/// 发送图片时本地图片的路径
		/// </summary>
		/// <value>The image path.</value>
		public string ImagePath 
		{
			get { return m_imagePath; }
			set { m_imagePath = value; } 
		}

		/// <summary>
		/// 收到图片的网络地址
		/// </summary>
		/// <value>The remote URI.</value>
		public string RemoteUri 
		{
			get { return m_remoteUri; }
			set { m_remoteUri = value; } 
		}

		/// <summary>
		/// 缩略图的本地路径
		/// </summary>
		/// <value>The thumb path.</value>
		public string ThumbPath 
		{
			get { return m_thumbPath; }
			set { m_thumbPath = value; } 
		}

		public RCImageMessageContent ()
		{
		}

		public RCImageMessageContent (string imagePath, string extra = "")
		{
			m_imagePath = imagePath;
			m_extra = extra;
		}

		public override string Serialize ()
		{ 
			RCJSONClass jsonClass = new RCJSONClass ();
			jsonClass.Add ("imageUri", new RCJSONData (m_imagePath));
			jsonClass.Add ("extra", new RCJSONData (m_extra));
			string json = jsonClass.ToJSON ();
			Debug.Log ("RCImageMessageContent Serialize json = " + json);
			return json;
		}

		public override RCMessageContent Unserialize (string json)
		{
			Debug.Log ("RCImageMessageContent Unserialize: json = " + json);
			RCJSONNode jsonNode = RCJSON.Parse (json).AsObject;
			RCImageMessageContent msg = new RCImageMessageContent ();
			msg.ThumbPath = jsonNode ["thumbPath"];
			msg.RemoteUri = jsonNode ["imageUri"];
			msg.Extra = jsonNode ["extra"];
			return msg;
		}

		public override string GetObjectName ()
		{
			return RCImageMsgObjName;
		}

		public override MessagePsersistent GetPersistentFlag ()
		{
			return MessagePsersistent.MessagePersistent_PERSIST_COUNT;
		}
	}
}


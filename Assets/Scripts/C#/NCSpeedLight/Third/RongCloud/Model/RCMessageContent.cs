using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;
using System;

namespace RCloud{

	/// <summary>
	/// 所有messageContent的基类，如果您要自定义消息，一定要继承此类，并实现类里的方法
	/// </summary>
	[Serializable]
	public abstract class RCMessageContent
	{
		#region 内置消息的objectname
		public const string RCTextMsgObjName = "RC:TxtMsg";
		public const string RCImageMsgObjName = "RC:ImgMsg";
		public const string RCAudioMsgObjName = "RC:AudMsg";
		public const string RCNotificationMsgObjName = "RC:Ntf";
		public const string RCCommandMsgObjName = "RC:Cmd";
		public const string RCFileMsgObjName = "RC:FlMsg";
		public const string RCVedioMsgObjName = "RC:VedMsg";
		public const string RCCustomMsgObjName = "RC:CustomMsg";
		public const string RCStatusMsgObjName = "RC:StatusMsg";
		#endregion

//		public string objectName;
//		public string @object;

		protected string m_extra;

		public String Extra
		{
			get { return m_extra; }
			set { m_extra = value; } 
		}

		/// <summary>
		/// 实现此方法，在方法里实现把消息序列化为json字符串
		/// </summary>
		public abstract string Serialize ();

		/// <summary>
		/// 实现此方法，在方法里实现把json字符串解析成对应的消息
		/// </summary>
		/// <param name="json">Json.</param>
		public abstract RCMessageContent Unserialize (string json);

		/// <summary>
		/// 返回消息的objectname（消息是靠这个字段来区分类型）
		/// </summary>
		/// <returns>The object name.</returns>
		public abstract string GetObjectName ();

		/// <summary>
		/// 返回消息的属性（这个属性代表消息的特性，是否存储，是否计数，是否状态消息。。）
		/// </summary>
		/// <returns>The persistent flag.</returns>
		public abstract MessagePsersistent GetPersistentFlag ();

	}
}
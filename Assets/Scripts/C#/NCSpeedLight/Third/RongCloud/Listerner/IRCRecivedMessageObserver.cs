using System;

namespace RCloud
{
	/// <summary>
	/// 监听接收消息接口
	/// </summary>
	public interface IRCRecivedMessageObserver
	{
		void OnRecivedMessage(RCMessage message);
	}
}


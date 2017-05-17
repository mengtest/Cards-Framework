using System;

namespace RCloud
{
	/// <summary>
	/// 监听连接状态变化
	/// </summary>
	public interface IRCConnectStatusObserver
	{
		void OnConnectStatusChanged(ConnectionStatus status);
	}
}


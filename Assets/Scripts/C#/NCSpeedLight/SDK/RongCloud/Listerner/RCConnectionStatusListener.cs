using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using AOT;

namespace RCloud{

	/// <summary>
	/// 融云连接状态监听，你如果想监听融云连接状态，可以在对应的类继承IRCConnectStatusObserver接口，然后调AddObserver加入到监听列表
	/// SDK收到连接变化之后就会分别通知注册的Observer
	/// </summary>
	public class RCConnectionStatusListener
	{
		private static List<IRCConnectStatusObserver> observers = new List<IRCConnectStatusObserver>();
		public delegate void  RCConnectStatusCallBack(ConnectionStatus status);

		[MonoPInvokeCallback(typeof(RCConnectStatusCallBack))]
		public static void OnRCConnectChanged(ConnectionStatus status)
		{
			Debug.Log (string.Format ("rongcloud SDK OnRCConnectChanged = {0}", status));
			foreach (var ob in observers) 
			{
				ob.OnConnectStatusChanged (status);
			}
		}

		public static void AddObserver(IRCConnectStatusObserver ob)
		{
			observers.Add(ob);
		}
		public static void RemoveObserver(IRCConnectStatusObserver ob)
		{
			observers.Remove(ob);
		}
	}
}
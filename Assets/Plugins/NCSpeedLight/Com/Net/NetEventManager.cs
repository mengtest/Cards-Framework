/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: NetEventManager.cs
			// Describle: 网络事件处理
			// Created By:  Wells Hsu
			// Date&Time:  2016/1/19 10:03:15
            // Modify History:
            //
//----------------------------------------------------------------*/

namespace NCSpeedLight
{
    public class NetEventManager : EventManager
    {
        private static NetEventManager m_Instance;
        public static NetEventManager Instance
        {
            get
            {
                if (m_Instance == null)
                {
                    m_Instance = new NetEventManager();
                }
                return m_Instance;
            }
        }
        private NetEventManager() { }
    }

    public enum NetworkEventType
    {
    }
}

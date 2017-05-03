/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Event.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  2016/1/19 10:03:15
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.Collections.Generic;
using LuaInterface;

namespace NCSpeedLight
{
    public class Evt
    {
        public int ID;

        public object Param;

        [LuaByteBuffer]
        public byte[] LuaParam;

        public Evt() { }

        public Evt(int id)
        {
            ID = id;
        }

        public Evt(int id, object param, byte[] luaParam)
        {
            ID = id;
            Param = param;
            LuaParam = luaParam;
        }
    }

    public class EventHandlerQueue
    {
        private Dictionary<int, List<EventHandlerDelegate>> m_Handlers;

        private EventManager m_Processor;

        public EventHandlerQueue(EventManager processor)
        {
            m_Handlers = new Dictionary<int, List<EventHandlerDelegate>>();
            m_Processor = processor;
        }

        public void Add(int id, EventHandlerDelegate handler)
        {
            if (handler == null)
            {
                return;
            }
            if (m_Handlers == null)
            {
                m_Handlers = new Dictionary<int, List<EventHandlerDelegate>>();
            }
            List<EventHandlerDelegate> handlers = null;
            if (m_Handlers.TryGetValue(id, out handlers) == false)
            {
                handlers = new List<EventHandlerDelegate>();
                handlers.Add(handler);
                m_Handlers.Add(id, handlers);
                m_Processor.Register(id, handler);
            }
            else
            {
                if (handlers.Contains(handler) == false)
                {
                    handlers.Add(handler);
                    m_Processor.Register(id, handler);
                }
            }
        }

        public void Remove(int id, EventHandlerDelegate handler)
        {
            if (handler == null)
            {
                return;
            }
            if (m_Handlers == null || m_Handlers.Count == 0)
            {
                return;
            }
            List<EventHandlerDelegate> tmpDels = null;
            if (m_Handlers.TryGetValue(id, out tmpDels))
            {
                tmpDels.Clear();
                m_Handlers.Remove(id);
                m_Processor.Unregister(id, handler);
            }
        }

        public void Clear()
        {
            if (m_Handlers == null || m_Handlers.Count == 0)
            {
                return;
            }
            Dictionary<int, List<EventHandlerDelegate>>.Enumerator it = m_Handlers.GetEnumerator();
            for (int i = 0; i < m_Handlers.Count; i++)
            {
                it.MoveNext();
                KeyValuePair<int, List<EventHandlerDelegate>> kvp = it.Current;
                if (kvp.Value == null || kvp.Value.Count == 0)
                {
                    continue;
                }
                for (int j = 0; j < kvp.Value.Count; j++)
                {
                    m_Processor.Register(kvp.Key, kvp.Value[j]);
                }
            }
            m_Handlers.Clear();
        }
    }
}

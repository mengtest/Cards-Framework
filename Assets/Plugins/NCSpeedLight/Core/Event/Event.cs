﻿/*----------------------------------------------------------------
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

namespace NCSpeedLight
{
    public class Event
    {
        public int EventID;
        public Event(int evtID) { EventID = evtID; }
    }

    public class EventEX<T> : Event
        where T : class
    {
        public T Param;
        public EventEX(int evtID, T param) : base(evtID)
        {
            Param = param;
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

        public void Add(int eventID, EventHandlerDelegate handler)
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
            if (m_Handlers.TryGetValue(eventID, out handlers) == false)
            {
                handlers = new List<EventHandlerDelegate>();
                handlers.Add(handler);
                m_Handlers.Add(eventID, handlers);
                m_Processor.Register(eventID, handler);
            }
            else
            {
                if (handlers.Contains(handler) == false)
                {
                    handlers.Add(handler);
                    m_Processor.Register(eventID, handler);
                }
            }
        }

        public void Remove(int eventID, EventHandlerDelegate handler)
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
            if (m_Handlers.TryGetValue(eventID, out tmpDels))
            {
                tmpDels.Clear();
                m_Handlers.Remove(eventID);
                m_Processor.Unregister(eventID, handler);
            }
        }

        public void RemoveAll()
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
                    m_Processor.Unregister(kvp.Key, kvp.Value[j]);
                }
            }
            m_Handlers.Clear();
        }
    }

}

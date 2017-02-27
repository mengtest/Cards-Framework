/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: EventManager.cs
			// Describle:  事件处理器，负责注册，分发等
			// Created By:  Wells Hsu
			// Date&Time:  2016/1/19 10:03:15
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.Linq;
using System.Collections.Generic;

namespace NCSpeedLight
{
    public delegate void EventHandlerDelegate(Event evt);

    public class EventManager
    {
        private Dictionary<int, List<EventHandlerDelegate>> m_RegisteredHandlers;
        //private List<EventHandlerDelegate> m_WillBeDeletedMsgHandlers;

        public EventManager()
        {
            m_RegisteredHandlers = new Dictionary<int, List<EventHandlerDelegate>>();
            //m_WillBeDeletedMsgHandlers = new List<EventHandlerDelegate>();
        }

        /// <summary>
        /// Get all events' handler count.
        /// </summary>
        /// <returns></returns>
        public int GetAllHandlersCount()
        {
            return m_RegisteredHandlers.Count();
        }

        /// <summary>
        /// Get a specific event's handler count.
        /// </summary>
        /// <param name="eventID"></param>
        /// <returns></returns>
        public int GetHandlersCount(int eventID)
        {
            if (m_RegisteredHandlers == null || m_RegisteredHandlers.Count == 0)
            {
                return -1;
            }
            List<EventHandlerDelegate> handlers = null;
            if (m_RegisteredHandlers.TryGetValue(eventID, out handlers))
            {
                return handlers.Count;
            }
            return 0;
        }

        /// <summary>
        /// Notify event to all registered handlers.
        /// </summary>
        /// <param name="eventID"></param>
        /// <param name="eventObj"></param>
        private void Dispatch(int eventID, Event eventObj)
        {
            List<EventHandlerDelegate> handlers = null;
            if (m_RegisteredHandlers.TryGetValue(eventID, out handlers))
            {
                //if (m_RegisteredHandlers.Count != 0 && handlers != null)
                //{
                //    for (int i = 0; i < m_WillBeDeletedMsgHandlers.Count; i++)
                //    {
                //        EventHandlerDelegate temRem = m_WillBeDeletedMsgHandlers[i];
                //        if (handlers.Contains(temRem))
                //        {
                //            handlers.Remove(temRem);
                //            m_WillBeDeletedMsgHandlers.RemoveAt(i);
                //            i--;
                //        }
                //    }
                //}
                if (handlers != null && handlers.Count > 0)
                {
                    for (int i = 0; i < handlers.Count; i++)
                    {
                        EventHandlerDelegate handler = handlers[i];
                        if (handler == null)
                        {
                            handlers.RemoveAt(i);
                            i--;
                            //m_WillBeDeletedMsgHandlers.Add(handler);
                        }
                        else
                        {
                            handler(eventObj);
                        }
                    }
                }
            }
        }


        /// <summary>
        /// Add a handler.
        /// </summary>
        /// <param name="eventID"></param>
        /// <param name="handler"></param>
        private void AddHandler(int eventID, EventHandlerDelegate handler)
        {
            if (handler == null)
            {
                return;
            }
            if (m_RegisteredHandlers == null)
            {
                m_RegisteredHandlers = new Dictionary<int, List<EventHandlerDelegate>>();
            }
            List<EventHandlerDelegate> handlers = null;
            if (m_RegisteredHandlers.TryGetValue((int)eventID, out handlers) == false)
            {
                handlers = new List<EventHandlerDelegate>();
                m_RegisteredHandlers.Add(eventID, handlers);
            }
            //else
            //{
            //    if (m_RegisteredHandlers.Count != 0 && handlers != null)
            //    {
            //        for (int i = 0; i < m_WillBeDeletedMsgHandlers.Count; i++)
            //        {
            //            EventHandlerDelegate tempHandler = m_WillBeDeletedMsgHandlers[i];
            //            if (handlers.Contains(tempHandler))
            //            {
            //                handlers.Remove(tempHandler);
            //                m_WillBeDeletedMsgHandlers.RemoveAt(i);
            //                i--;
            //            }
            //        }
            //    }
            //}
            for (int i = 0; i < handlers.Count; i++)
            {
                EventHandlerDelegate tempHandler = handlers[i];
                if (tempHandler == handler)
                {
                    return;
                }
            }
            handlers.Add(handler);
        }

        /// <summary>
        /// Remove a handler.
        /// </summary>
        /// <param name="eventID"></param>
        /// <param name="handler"></param>
        private void RemoveHandler(int eventID, EventHandlerDelegate handler)
        {
            List<EventHandlerDelegate> handlers = null;
            if (m_RegisteredHandlers.TryGetValue(eventID, out handlers))
            {
                if (handlers != null && handlers.Count > 0)
                {
                    handlers.Remove(handler);
                    //for (int i = handlers.Count - 1; i >= 0; --i)
                    //{
                    //    EventHandlerDelegate tempHandler = handlers[i];
                    //    if (tempHandler == null || tempHandler.Target == null)
                    //    {
                    //        m_WillBeDeletedMsgHandlers.Add(tempHandler);
                    //        continue;
                    //    }
                    //    if (handler != null && tempHandler.Target == handler.Target)
                    //    {
                    //        m_WillBeDeletedMsgHandlers.Add(tempHandler);
                    //        return;
                    //    }
                    //}
                }
            }
        }


        /// <summary>
        /// Remove all handlers.
        /// </summary>
        private void RemoveAllHandlers()
        {
            if (m_RegisteredHandlers != null)
            {
                m_RegisteredHandlers.Clear();
            }
            //if (m_WillBeDeletedMsgHandlers != null)
            //{
            //    m_WillBeDeletedMsgHandlers.Clear();
            //}
        }

        /// <summary>
        /// Notify event to all handlers.
        /// </summary>
        /// <param name="eventObj"></param>
        public virtual void Notify(Event eventObj)
        {
            if (eventObj == null)
            {
                return;
            }
            Dispatch(eventObj.EventID, eventObj);
        }

        /// <summary>
        /// Register handler to event processor.
        /// </summary>
        /// <param name="eventID"></param>
        /// <param name="handler"></param>
        public virtual void Register(int eventID, EventHandlerDelegate handler)
        {
            if (handler != null)
            {
                AddHandler(eventID, handler);
            }
        }

        /// <summary>
        /// Unregister handler from event processor.
        /// </summary>
        /// <param name="eventID"></param>
        /// <param name="handler"></param>
        public virtual void Unregister(int eventID, EventHandlerDelegate handler)
        {
            if (handler != null)
            {
                RemoveHandler(eventID, handler);
            }
        }

        /// <summary>
        /// Unregister all handlers form event processor.
        /// </summary>
        public virtual void UnregisterAll()
        {
            RemoveAllHandlers();
        }
    }

}

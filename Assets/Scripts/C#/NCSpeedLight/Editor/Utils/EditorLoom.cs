using UnityEditor;
using System.Collections.Generic;
using System;

namespace NCSpeedLight
{
    [InitializeOnLoad]
    public class EditorLoom
    {
        static Queue<Action> mainThreadActions = new Queue<Action>();

        static EditorLoom()
        {
            EditorEventCatcher.OnEditorUpdateEvent -= OnEditorUpdate;
            EditorEventCatcher.OnEditorUpdateEvent += OnEditorUpdate;
        }

        private static void OnEditorUpdate()
        {
            while (mainThreadActions.Count > 0)
            {
                var action = mainThreadActions.Dequeue();
                if (action != null) action();
            }
        }

        public static void QueueOnMainThread(Action action)
        {
            mainThreadActions.Enqueue(action);
        }
    }
}

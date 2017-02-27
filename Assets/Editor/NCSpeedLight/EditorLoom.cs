using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using UnityEditor;
using Debug = UnityEngine.Debug;

public class EditorLoom
{
    internal static Queue<Action> _mainThreadActions = new Queue<Action>();

    static EditorLoom()
    {
        EditorEventCatcher.OnEditorUpdateEvent -= OnEditorUpdate;
        EditorEventCatcher.OnEditorUpdateEvent += OnEditorUpdate;
    }

    public static void CallMainThread(Action action)
    {
        _mainThreadActions.Enqueue(action);
    }
    private static void OnEditorUpdate()
    {
        // 主线程委托
        while (_mainThreadActions.Count > 0)
        {
            var action = _mainThreadActions.Dequeue();
            if (action != null) action();
        }
    }
}

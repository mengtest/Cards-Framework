using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;
using System;

namespace NCSpeedLight
{
    public class EditorPreferences : EditorWindow
    {
        [MenuItem("Framework/Preferences")]
        static void Open()
        {
            GetWindowWithRect<EditorPreferences>(new Rect(30, 30, 255, 255), false, "Preferences");
        }

        void OnEnable()
        {
            Preferences.Read(null);
        }

        void OnGUI()
        {
            EditorHelper.BeginContents();

            #region Const
            EditorHelper.DrawHeader("Const");
            EditorHelper.BeginContents();

            GUILayout.BeginHorizontal();
            GUILayout.Label("Game", GUILayout.Width(90));
            Preferences.GameName = GUILayout.TextField(Preferences.GameName, GUILayout.Width(150));
            GUILayout.EndHorizontal();

            GUILayout.BeginHorizontal();
            GUILayout.Label("Channel", GUILayout.Width(90));
            Preferences.Channel = GUILayout.TextField(Preferences.Channel, GUILayout.Width(150));
            GUILayout.EndHorizontal();

            GUILayout.BeginHorizontal();
            GUILayout.Label("Company", GUILayout.Width(90));
            Preferences.Company = GUILayout.TextField(Preferences.Company, GUILayout.Width(150));
            GUILayout.EndHorizontal();

            EditorHelper.EndContents();
            #endregion

            #region Mode
            EditorHelper.DrawHeader("Mode");

            EditorHelper.BeginContents();


            GUILayout.BeginHorizontal();
            Preferences.AssetBundle = GUILayout.Toggle(Preferences.AssetBundle, string.Empty, GUILayout.Width(15));
            GUILayout.Label("AssetBundle", GUILayout.Width(100));

            Preferences.ScriptBundle = GUILayout.Toggle(Preferences.ScriptBundle, string.Empty, GUILayout.Width(15));
            GUILayout.Label("ScriptBundle", GUILayout.Width(100));

            GUILayout.EndHorizontal();


            GUILayout.BeginHorizontal();
            Preferences.CheckUpdate = GUILayout.Toggle(Preferences.CheckUpdate, string.Empty, GUILayout.Width(15));
            GUILayout.Label("CheckUpdate", GUILayout.Width(100));

            Preferences.ForceUpdate = GUILayout.Toggle(Preferences.ForceUpdate, string.Empty, GUILayout.Width(15));
            GUILayout.Label("ForceUpdate", GUILayout.Width(100));

            GUILayout.EndHorizontal();

            EditorHelper.EndContents();
            #endregion

            #region Server
            EditorHelper.DrawHeader("Server");

            EditorHelper.BeginContents();

            GUILayout.BeginHorizontal();
            GUILayout.Label("FileServer", GUILayout.Width(90));
            Preferences.FileServer = EditorGUILayout.TextField(Preferences.FileServer, GUILayout.Width(150));
            GUILayout.EndHorizontal();

            GUILayout.BeginHorizontal();
            GUILayout.Label("AccountServer", GUILayout.Width(90));
            Preferences.AccountServer = EditorGUILayout.TextField(Preferences.AccountServer, GUILayout.Width(150));
            GUILayout.EndHorizontal();

            EditorHelper.EndContents();
            #endregion

            EditorHelper.EndContents();
            if (GUILayout.Button("Save"))
            {
                Preferences.Save();
            }
        }
    }
}

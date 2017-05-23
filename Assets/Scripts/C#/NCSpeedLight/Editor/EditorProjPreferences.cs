using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace NCSpeedLight
{
    [CustomEditor(typeof(ProjPreferences))]
    public class ProjPreferencesInspector : Editor
    {
        private static ProjPreferences m_Instance;

        private void OnEnable()
        {
            m_Instance = AssetDatabase.LoadAssetAtPath<ProjPreferences>(ProjPreferences.FILE_PATH);
            if (m_Instance == null)
            {
                m_Instance = CreateInstance<ProjPreferences>();
                AssetDatabase.CreateAsset(m_Instance, ProjPreferences.FILE_PATH);
            }
        }

        public override void OnInspectorGUI()
        {
            EditorHelper.BeginContents();

            if (EditorHelper.DrawHeader("Project"))
            {
                EditorHelper.BeginContents();

                GUILayout.BeginHorizontal();
                GUILayout.Label("Asset Bundle Mode", GUILayout.Width(150));
                m_Instance.AssetBundleMode = GUILayout.Toggle(m_Instance.AssetBundleMode, string.Empty);
                GUILayout.EndHorizontal();

                GUILayout.BeginHorizontal();
                GUILayout.Label("Script Bundle Mode", GUILayout.Width(150));
                m_Instance.ScriptBundleMode = GUILayout.Toggle(m_Instance.ScriptBundleMode, string.Empty);
                GUILayout.EndHorizontal();

                GUILayout.BeginHorizontal();
                GUILayout.Label("Script Byte Code", GUILayout.Width(150));
                m_Instance.ScriptByteCode = GUILayout.Toggle(m_Instance.ScriptByteCode, string.Empty);
                GUILayout.EndHorizontal();

                GUILayout.BeginHorizontal();
                GUILayout.Label("Check Update", GUILayout.Width(150));
                m_Instance.CheckUpdate = GUILayout.Toggle(m_Instance.CheckUpdate, string.Empty);
                GUILayout.EndHorizontal();

                EditorHelper.EndContents();
            }

            if (EditorHelper.DrawHeader("Server"))
            {
                EditorHelper.BeginContents();

                GUILayout.BeginHorizontal();
                GUILayout.Label("Connect Inter Login Server", GUILayout.Width(180));
                m_Instance.ConnectInterLoginServer = GUILayout.Toggle(m_Instance.ConnectInterLoginServer, string.Empty);
                GUILayout.EndHorizontal();

                if (m_Instance.ConnectInterLoginServer)
                {
                    GUILayout.BeginHorizontal();
                    GUILayout.Space(5f);
                    GUILayout.Label("Inter Login Server Host", GUILayout.Width(180));
                    m_Instance.InterLoginServerHost = EditorGUILayout.TextField(m_Instance.InterLoginServerHost);
                    GUILayout.EndHorizontal();

                    GUILayout.BeginHorizontal();
                    GUILayout.Space(5f);
                    GUILayout.Label("Inter Login Server Port", GUILayout.Width(180));
                    m_Instance.InterLoginServerPort = EditorGUILayout.IntField(m_Instance.InterLoginServerPort);
                    GUILayout.EndHorizontal();
                }

                GUILayout.BeginHorizontal();
                GUILayout.Label("Connect Inter Asset Server", GUILayout.Width(180));
                m_Instance.ConnectInterAssetServer = GUILayout.Toggle(m_Instance.ConnectInterAssetServer, string.Empty);
                GUILayout.EndHorizontal();

                if (m_Instance.ConnectInterAssetServer)
                {
                    GUILayout.BeginHorizontal();
                    GUILayout.Space(5f);
                    GUILayout.Label("Inter Asset Server Host", GUILayout.Width(180));
                    m_Instance.InterAssetServerHost = EditorGUILayout.TextField(m_Instance.InterAssetServerHost);
                    GUILayout.EndHorizontal();

                    GUILayout.BeginHorizontal();
                    GUILayout.Space(5f);
                    GUILayout.Label("Inter Asset Server Port", GUILayout.Width(180));
                    m_Instance.InterAssetServerPort = EditorGUILayout.IntField(m_Instance.InterAssetServerPort);
                    GUILayout.EndHorizontal();
                }

                EditorHelper.EndContents();
            }

            EditorHelper.EndContents();
            EditorUtility.SetDirty(m_Instance);
        }

        [MenuItem("Framework/Preferences")]
        public static void Menu()
        {
            m_Instance = AssetDatabase.LoadAssetAtPath<ProjPreferences>(ProjPreferences.FILE_PATH);
            if (m_Instance == null)
            {
                m_Instance = CreateInstance<ProjPreferences>();
                AssetDatabase.CreateAsset(m_Instance, ProjPreferences.FILE_PATH);
            }
            Selection.activeObject = m_Instance;
        }
    }
}


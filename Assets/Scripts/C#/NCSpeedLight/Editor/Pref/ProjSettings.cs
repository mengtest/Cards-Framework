using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace NCSpeedLight
{
    public class ProjSettings : EditorWindow
    {
        [MenuItem("Framework/Preferences")]
        static void Open()
        {
            GetWindowWithRect<ProjSettings>(new Rect(30, 30, 200, 220), false, "Preferences");
        }

        private bool AssetBundleMode = false;
        private bool ScriptBundleMode = false;
        private bool ScriptByteMode = false;
        private bool CheckUpdate = false;
        private bool UseInnerLoginServer = false;
        private string InnerLoginServerHost = string.Empty;
        private int InnerLoginServerPort = 0;
        private bool UseInnerAssetServer = false;
        private string InnerAssetServerHost = string.Empty;
        private int InnerAssetServerPort = 0;

        void OnGUI()
        {
            EditorHelper.BeginContents();

            if (EditorHelper.DrawHeader("Project"))
            {
                EditorHelper.BeginContents();


                GUILayout.BeginHorizontal();
                AssetBundleMode = PlayerPrefs.GetInt(Constants.PREF_ASSET_BUNDLE_MODE_KEY) == 1;
                GUILayout.Label("AssetBundleMode", GUILayout.Width(150));
                AssetBundleMode = GUILayout.Toggle(AssetBundleMode, string.Empty);
                if (AssetBundleMode)
                {
                    PlayerPrefs.SetInt(Constants.PREF_ASSET_BUNDLE_MODE_KEY, 1);
                }
                else
                {
                    PlayerPrefs.SetInt(Constants.PREF_ASSET_BUNDLE_MODE_KEY, 0);
                }
                GUILayout.EndHorizontal();


                GUILayout.BeginHorizontal();
                ScriptBundleMode = PlayerPrefs.GetInt(Constants.PREF_SCRIPT_BUNDLE_MODE_KEY) == 1;
                GUILayout.Label("ScriptBundleMode", GUILayout.Width(150));
                ScriptBundleMode = GUILayout.Toggle(ScriptBundleMode, string.Empty);
                if (ScriptBundleMode)
                {
                    PlayerPrefs.SetInt(Constants.PREF_SCRIPT_BUNDLE_MODE_KEY, 1);
                }
                else
                {
                    PlayerPrefs.SetInt(Constants.PREF_SCRIPT_BUNDLE_MODE_KEY, 0);
                }
                GUILayout.EndHorizontal();



                GUILayout.BeginHorizontal();
                ScriptByteMode = PlayerPrefs.GetInt(Constants.PREF_SCRIPT_BYTE_MODE_KEY) == 1;
                GUILayout.Label("ScriptByteMode", GUILayout.Width(150));
                ScriptByteMode = GUILayout.Toggle(ScriptByteMode, string.Empty);
                if (ScriptByteMode)
                {
                    PlayerPrefs.SetInt(Constants.PREF_SCRIPT_BYTE_MODE_KEY, 1);
                }
                else
                {
                    PlayerPrefs.SetInt(Constants.PREF_SCRIPT_BYTE_MODE_KEY, 0);
                }
                GUILayout.EndHorizontal();



                GUILayout.BeginHorizontal();
                CheckUpdate = PlayerPrefs.GetInt(Constants.PREF_CHECK_UPDATE_KEY) == 1;
                GUILayout.Label("CheckUpdate", GUILayout.Width(150));
                CheckUpdate = GUILayout.Toggle(CheckUpdate, string.Empty);
                if (CheckUpdate)
                {
                    PlayerPrefs.SetInt(Constants.PREF_CHECK_UPDATE_KEY, 1);
                }
                else
                {
                    PlayerPrefs.SetInt(Constants.PREF_CHECK_UPDATE_KEY, 0);
                }
                GUILayout.EndHorizontal();

                EditorHelper.EndContents();
            }

            if (EditorHelper.DrawHeader("Server"))
            {
                EditorHelper.BeginContents();

                GUILayout.BeginHorizontal();
                UseInnerLoginServer = PlayerPrefs.GetInt(Constants.PREF_USE_INNER_LOGIN_SERVER_KEY) == 1;
                GUILayout.Label("UseInnerLoginServer", GUILayout.Width(150));
                UseInnerLoginServer = GUILayout.Toggle(UseInnerLoginServer, string.Empty);
                if (UseInnerLoginServer)
                {
                    PlayerPrefs.SetInt(Constants.PREF_USE_INNER_LOGIN_SERVER_KEY, 1);
                }
                else
                {
                    PlayerPrefs.SetInt(Constants.PREF_USE_INNER_LOGIN_SERVER_KEY, 0);
                }
                GUILayout.EndHorizontal();
                if (UseInnerLoginServer)
                {
                    GUILayout.BeginHorizontal();
                    GUILayout.Space(5f);
                    InnerLoginServerHost = PlayerPrefs.GetString(Constants.PREF_INNER_LOGIN_SERVER_HOST_KEY);
                    InnerLoginServerHost = EditorGUILayout.TextField(InnerLoginServerHost, GUILayout.Width(90));
                    PlayerPrefs.SetString(Constants.PREF_INNER_LOGIN_SERVER_HOST_KEY, InnerLoginServerHost);

                    EditorGUILayout.LabelField(":", GUILayout.Width(8));

                    InnerLoginServerPort = PlayerPrefs.GetInt(Constants.PREF_INNER_LOGIN_SERVER_PORT_KEY);
                    InnerLoginServerPort = EditorGUILayout.IntField(InnerLoginServerPort, GUILayout.Width(40));
                    PlayerPrefs.SetInt(Constants.PREF_INNER_LOGIN_SERVER_PORT_KEY, InnerLoginServerPort);
                    GUILayout.EndHorizontal();
                }

                GUILayout.BeginHorizontal();
                UseInnerAssetServer = PlayerPrefs.GetInt(Constants.PREF_USE_INNER_ASSET_SERVER_KEY) == 1;
                GUILayout.Label("UseInnerAssetServer", GUILayout.Width(150));
                UseInnerAssetServer = GUILayout.Toggle(UseInnerAssetServer, string.Empty);
                if (UseInnerAssetServer)
                {
                    PlayerPrefs.SetInt(Constants.PREF_USE_INNER_ASSET_SERVER_KEY, 1);
                }
                else
                {
                    PlayerPrefs.SetInt(Constants.PREF_USE_INNER_ASSET_SERVER_KEY, 0);
                }
                GUILayout.EndHorizontal();
                if (UseInnerAssetServer)
                {
                    GUILayout.BeginHorizontal();
                    GUILayout.Space(5f);
                    InnerAssetServerHost = PlayerPrefs.GetString(Constants.PREF_INNER_ASSET_SERVER_HOST_KEY);
                    InnerAssetServerHost = EditorGUILayout.TextField(InnerAssetServerHost, GUILayout.Width(90));
                    PlayerPrefs.SetString(Constants.PREF_INNER_ASSET_SERVER_HOST_KEY, InnerAssetServerHost);

                    EditorGUILayout.LabelField(":", GUILayout.Width(8));

                    InnerAssetServerPort = PlayerPrefs.GetInt(Constants.PREF_INNER_ASSET_SERVER_PORT_KEY);
                    InnerAssetServerPort = EditorGUILayout.IntField(InnerAssetServerPort, GUILayout.Width(40));
                    PlayerPrefs.SetInt(Constants.PREF_INNER_ASSET_SERVER_PORT_KEY, InnerAssetServerPort);
                    GUILayout.EndHorizontal();
                }

                EditorHelper.EndContents();
            }

            EditorHelper.EndContents();

            PlayerPrefs.Save();
        }
    }
}

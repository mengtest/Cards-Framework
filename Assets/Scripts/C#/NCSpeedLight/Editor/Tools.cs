using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using System;

namespace NCSpeedLight
{
    public class Tools
    {
        [MenuItem("Assets/Start Game", false, 0)]
        public static void StartGame()
        {
            if (!EditorApplication.isPlaying)
            {
                AssetDatabase.SaveAssets();
                EditorSceneManager.OpenScene(Application.dataPath + "/Launcher.unity");
                EditorApplication.isPlaying = true;
            }
        }

        [MenuItem("Assets/Open Lua Project")]
        public static void OpenLuaProj()
        {
            string vsCode = Environment.GetEnvironmentVariable("VSCODE");
            string cmd = vsCode + " " + '"' + Application.dataPath + "/Lua/.vscode/launch.json" + '"';
            System.Diagnostics.Process.Start(vsCode);
        }
    }
}
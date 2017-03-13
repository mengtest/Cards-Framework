using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using System;

namespace NCSpeedLight
{
    public class CommonTools : MonoBehaviour
    {
        [MenuItem("NCSpeedLight/Start Game", false, 0)]
        public static void StartGame()
        {
            if (!EditorApplication.isPlaying)
            {
                EditorApplication.SaveAssets();
                EditorSceneManager.OpenScene(Application.dataPath + "/Scenes/DownloadScene.unity");
                EditorApplication.isPlaying = true;
            }
        }

        [MenuItem("NCSpeedLight/Open Lua Project", false, 1)]
        [MenuItem("Assets/Open Lua Project")]
        public static void OpenLuaProj()
        {
            string vsCode = Environment.GetEnvironmentVariable("VSCODE");
            System.Diagnostics.Process.Start(vsCode);
        }
    }
}
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;

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
}

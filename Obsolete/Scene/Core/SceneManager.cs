/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: SceneManager.cs
			// Describle:  
			// Created By:  Wells Hsu
			// Date&Time:  2015/6/13 17:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

public class SceneManager : StateMachine
{

    private static SceneManager m_Instance;

    public static SceneManager Instance
    {
        get
        {
            if (m_Instance == null)
            {
                m_Instance = new SceneManager();
            }
            return m_Instance;
        }
    }

    public static void Initialize()
    {
        Instance.RegisterState(new Scene(Scene.Type.DownloadScene.ToString()));
        Instance.RegisterState(new Scene(Scene.Type.LoginScene.ToString()));
        Instance.RegisterState(new Scene(Scene.Type.HallScene.ToString()));
        Instance.RegisterState(new Scene(Scene.Type.GameScene.ToString()));
    }

    public static Scene GetLastScene()
    {
        return SceneManager.Instance.m_LastState as Scene;
    }

    public static Scene GetCurrentScene()
    {
        return SceneManager.Instance.GetCurrentState() as Scene;
    }

    public static void GotoScene(Scene.Type type)
    {
        if (Instance.m_LastState == null)
        {
            Instance.SetNextState(type.ToString());
        }
        else if (Instance.m_LastState.Name != type.ToString())
        {
            Instance.SetNextState(type.ToString());
        }
        else
        {
            Helper.LogError("SceneManager: can not go to same scene,name is " + type.ToString());
        }
    }
}

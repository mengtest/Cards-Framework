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
    public static SceneManager Instance()
    {
        if (m_Instance == null)
            m_Instance = new SceneManager();
        return m_Instance;
    }
    public static Scene GetLastScene()
    {
        return SceneManager.Instance().m_LastState as Scene;
    }
    public static Scene GetCurrentScene()
    {
        return SceneManager.Instance().GetCurrentState() as Scene;
    }
}

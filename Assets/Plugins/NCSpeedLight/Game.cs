/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Game.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 14:21:11
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

public class Game : LuaBehaviour
{
    public static Game Instance { get; set; }

    protected override void Awake()
    {
        LuaName = "Game";
        LuaPath = string.Empty;
        Instance = this;
        DontDestroyOnLoad(gameObject);
        LuaManager.Initialize();
        base.Awake();
    }

    protected override void Start()
    {
        base.Start();
    }

    protected override void Update()
    {
        base.Update();
        if (Application.platform == RuntimePlatform.Android && (Input.GetKeyDown(KeyCode.Escape)))
        {
            UIManager.OpenStandardDialog(new UIManager.StandardDialogOption()
            {
                Title = "提  示",
                Content = "你确定退出游戏吗？",
                DoubleButton = true,
                OnClickOK = delegate (GameObject go) { Application.Quit(); }
            });
        }
    }

    protected override void OnDisable()
    {
        base.OnDisable();
    }

    protected override void OnDestroy()
    {
        base.OnDestroy();
    }

}

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

using System.IO;
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
        ExtractAssets();
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
    }
    protected override void OnDisable()
    {
        base.OnDisable();
    }
    protected override void OnDestroy()
    {
        base.OnDestroy();
    }

    private void ExtractAssets()
    {
        if (Application.isEditor == false)
        {
            string directory = SharedVariable.DATA_PATH + "/" + SharedVariable.PLATFORM_NAME + "/Lua/";
            if (Directory.Exists(directory) == false)
            {
                Directory.CreateDirectory(directory);
            }
            else
            {
                Directory.Delete(directory);
                Directory.CreateDirectory(directory);
            }
        }
    }
}

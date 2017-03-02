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
    }
    protected override void OnDestroy()
    {
        base.LateUpdate();
    }
}

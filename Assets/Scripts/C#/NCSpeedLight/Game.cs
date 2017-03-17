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

namespace NCSpeedLight
{
    public class Game : LuaBehaviour
    {
        public static Game Instance { get; set; }
        protected override void Awake()
        {
            Module = "NCSpeedLight";
            Script = "Game";
            Instance = this;
            base.Awake();
        }

        protected override void Update()
        {
            base.Update();
            if (UnityEngine.Input.GetKeyDown(UnityEngine.KeyCode.E) == true)
            {

                //var option = new UIManager.StandardDialogOption();
                //option.Title = "提示";
                //option.Content = "你确定退出游戏吗？";
                //option.DoubleButton = true;
                //UIManager.OpenStandardDialog(option);

                UIManager.OpenWindow("Hall/UI_Main");
            }
        }
    }
}

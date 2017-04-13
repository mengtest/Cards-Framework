-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Game.lua
-- Describle:  Game component
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
require "NCSpeedLight.Core.API.C#APIDefine"
require "NCSpeedLight.Core.API.APIDefine"

require "NCSpeedLight.Utils.Log"
require "NCSpeedLight.Utils.Utility"

require "NCSpeedLight.3rd.pbc.protobuf"
require("NCSpeedLight.Utils.LuaDebug")("localhost", 7003)
require "NCSpeedLight.Utils.Protocol.GameMessage"
require "NCSpeedLight.Utils.Protocol.PBMessage"
require "NCSpeedLight.Utils.SharedVariable"
require "NCSpeedLight.Utils.Define"
require "NCSpeedLight.Core.Event.EvtQueue"
require "NCSpeedLight.Core.Event.EvtProcessor"
require "NCSpeedLight.Core.Network.NetManager"
require "NCSpeedLight.Core.View.UIManager"
require "NCSpeedLight.Core.Scene.SceneManager"
require "NCSpeedLight.Core.Asset.AssetManager"
require "NCSpeedLight.Core.Action.ActionLine"
require "NCSpeedLight.Core.Action.AnimationQueue"
require "NCSpeedLight.Modules.Download.DownloadScene"
require "NCSpeedLight.Modules.Login.LoginScene"
require "NCSpeedLight.Modules.Login.Player"
require "NCSpeedLight.Modules.Hall.HallScene"
require "NCSpeedLight.Modules.MaJiang.MJScene"
require "NCSpeedLight.Modules.MaJiang.MJPlayer"
require "NCSpeedLight.Modules.MaJiang.MJTableCard"
require "NCSpeedLight.Modules.MaJiang.MJGroupCardQueue"
require "NCSpeedLight.Modules.MaJiang.UI_MJOperate"
require "NCSpeedLight.Modules.MaJiang.MJSceneController"
require "NCSpeedLight.Modules.MaJiang.MJDefine"

Game =
{
	GO = nil,
	transform = nil,
	Platform = nil,
}

function Game.Awake(go)
	Game.GO = go;
	Game.transform = go.transform;
	Log.Initialize();
	Log.Info("Game.Awake");
	UnityEngine.Application.targetFrameRate = SharedVariable.TargetFramerate; -- 固定帧率
	UnityEngine.Screen.sleepTimeout = UnityEngine.SleepTimeout.NeverSleep; -- 禁止息屏
	Game.Platform = UnityEngine.Application.platform;
	AssetManager.Initialize();
	UIManager.Initialize();
	NetManager.Initialize();
	SceneManager.Initialize();
	SceneManager.GotoScene(SceneType.DownloadScene);
end

function Game.Update()
	ActionLine.Update();
	SceneManager.Update();
	if Game.Platform == UnityEngine.RuntimePlatform.Android then
		if UnityEngine.Input.GetKeyDown(UnityEngine.KeyCode.Escape) == true then
			local option = StandardDialogOption.New("提示", "你确定退出游戏吗", true, function()
				UnityEngine.Application.Quit();
			end, nil)
			UIManager.OpenStandardDialog(option);
		end
	end
end

function Game.LateUpdate()
end

function Game.OnGUI()
	-- if UnityEngine.GUI.Button(UnityEngine.Rect(10, 10, 150, 30), "TestReconnect.Connect") then
	-- 	TestReconnect.Connect();
	-- end
	-- if UnityEngine.GUI.Button(UnityEngine.Rect(10, 50, 150, 30), "TestReconnect.SendMsg") then
	-- 	TestReconnect.SendMsg();
	-- end
	-- if UnityEngine.GUI.Button(UnityEngine.Rect(10, 90, 150, 30), "MJGroupCardQueue.PopRear") then
	-- 	MJGroupCardQueue.PopRear();
	-- end
	-- if UnityEngine.GUI.Button(UnityEngine.Rect(10, 10, 150, 30), "Open MJ Draw") then
	-- 	UIManager.OpenWindow(UIType.UI_MJDraw);
	-- end
	-- if UnityEngine.GUI.Button(UnityEngine.Rect(10, 50, 150, 30), "Open MJ Result") then
	-- 	UIManager.OpenWindow(UIType.UI_MJResult);
	-- end
	-- if UnityEngine.GUI.Button(UnityEngine.Rect(10, 90, 150, 30), "Open MJ Total Result") then
	-- 	UIManager.OpenWindow(UIType.UI_MJTotalResult);
	-- end
	-- if UnityEngine.GUI.Button(UnityEngine.Rect(10, 130, 150, 30), "Close All Result") then
	-- 	UIManager.CloseWindow(UIType.UI_MJDraw);
	-- 	UIManager.CloseWindow(UIType.UI_MJTotalResult);
	-- 	UIManager.CloseWindow(UIType.UI_MJResult);
	-- end
end

function Game.OnDestroy()
	Log.Info("Game.OnDestroy");
	NetManager.DisconnectAll();
	Log.Close();
end

function Game.OnApplicationPause(status)
	-- Log.Info("Game.OnApplicationPause: " .. tostring(status));
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.OnApplicationPause(status);
	end
end

function Game.OnApplicationFocus(status)
	-- Log.Info("Game.OnApplicationFocus: " .. tostring(status));
	if SceneManager.CurrentScene ~= nil then
		-- SceneManager.CurrentScene.OnApplicationFocus(status);
	end
end

-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Game.lua
-- Describle:  主入口函数。从这里开始lua逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------

require 'NCSpeedLight.Utils.Define'

Game = {}

function Initialize()
	-- 固定帧率至30
	UnityEngine.Application.targetFrameRate = 30
	-- 设置屏幕不关闭
	UnityEngine.Screen.sleepTimeout = UnityEngine.SleepTimeout.NeverSleep
	
	NCSpeedLight.ResManager.Initialize()
	UIManager:Initialize()
	SceneManager.Initialize()
	NetManager:Initialize()
	TestEvent();
end

function Game.Awake()
	Initialize(go);
end

function Game.Start()
	SceneManager:GotoScene(SceneType.DownloadScene);
end

function Game.Update()
	NetManager:Update();
	SceneManager:Update();
	local platform = UnityEngine.Application.platform;
	if UnityEngine.Application.platform == UnityEngine.RuntimePlatform.Android then
		if UnityEngine.Input.GetKeyDown(UnityEngine.KeyCode.Escape) == true then
			local option = StandardDialogOption:New();
			option.Title = '提示';
			option.Content = '你确定退出游戏吗？';
			option.DoubleButton = true;
			option.OnClickOK = function(go)
				UnityEngine.Application.Quit();
			end;
			UIManager:OpenStandardDialog(option);
		end
	end
end

function Game.OnDestroy()
	NetManager:DeleteAllConnections()
end



function TestEvent()
	
	local processor = EvtProcessor:New();
	local evtQ = EvtQueue:New(processor);
	
	evtQ:Add(1, TestEventCallback1);
	evtQ:Add(2, TestEventCallback2);
	processor:Notify(1, 'Hello EvtProcessor');
	processor:Notify(2, 'Hello 32525');
	-- evtQ:Remove(1, this.TestEventCallback1);
	evtQ:Clear();
	--    processor:N();
	processor:Notify(1, 'Hello EvtProcessor');
	processor:Notify(2, 'Hello 32525');
	
end

function TestEventCallback1(param)
	print("Game.TestEventCallback1,param is " .. param);
end

function TestEventCallback2(param)
	print("Game.TestEventCallback2,param is " .. param);
end

function TestSceneManager()
	SceneManager:Initialize();
	SceneManager:GotoScene(SceneType.DownloadScene);
end


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

require 'NCSpeedLight.Utils.Include'

Game = {}
local platform;
function Initialize()
	-- 固定帧率至30
	UnityEngine.Application.targetFrameRate = SharedVariable.TargetFramerate;
	-- 设置屏幕不关闭
	UnityEngine.Screen.sleepTimeout = UnityEngine.SleepTimeout.NeverSleep;
	
	platform = UnityEngine.Application.platform;
	
	-- NCSpeedLight.ResManager.Initialize();
	AssetManager:Initialize();
	
	UIManager:Initialize();
	
	NetManager:Initialize();
	
	SceneManager.Initialize();
	
-- TestEvent();
end

function Game.Awake()
	Initialize();
end

function Game.Start()
	SceneManager:GotoScene(SceneType.DownloadScene);
end

function Game.Update()
	NetManager.Update();
	SceneManager:Update();
	if platform == UnityEngine.RuntimePlatform.Android then
		if UnityEngine.Input.GetKeyDown(UnityEngine.KeyCode.Escape) == true then
			local option = StandardDialogOption:New();
			option.Title = '提示';
			option.Content = '你确定退出游戏吗？';
			option.DoubleButton = true;
			option.OnClickOK = function(go)
				UnityEngine.Application.Quit();
			end;
			UIManager.OpenStandardDialog(option);
		end
	end
	
	if UnityEngine.Input.GetKeyDown(UnityEngine.KeyCode.W) == true then
		local option = StandardDialogOption:New();
		option.Title = '提示';
		option.Content = '你确定退出游戏吗？';
		option.DoubleButton = true;
		option.OnClickOK = function(go)
			UnityEngine.Application.Quit();
		end;
		UIManager.OpenStandardDialog(option);
	end
	
	if UnityEngine.Input.GetKeyDown(UnityEngine.KeyCode.E) == true then
		local option = ProgressDialogOption:New();
		option.Content = "333333...";
		option.AutoClose = true;
		option.Cancelable = true;
		UIManager.OpenProgressDialog(option);
	end
	
	
end

-- function Game.OnGUI()
-- 	if UnityEngine.GUI.Button(UnityEngine.Rect(10, 10, 150, 30), "Encode LoginRecord") then
-- 		-- local msg = {
-- 		-- 	m_AccountID = 889525,
-- 		-- 	m_info = nil,
-- 		-- 	m_NickName = 'hello world',
-- 		-- 	m_HeadPhotoUrl = 'qq.com',
-- 		-- 	m_sex = 1,
-- 		-- 	m_UnionID = '10086',
-- 		-- };
-- 		-- local buffer = NetManager.EncodeMsg(PBMessage.GMRoleCreate, msg);
-- 		-- msg = NetManager.DecodePB(PBMessage.GMRoleCreate, buffer);
-- 		-- local a = 1;
-- 		-- local msg =
-- 		-- {
-- 		-- 	m_AccountName = account,
-- 		-- 	m_Password = password,
-- 		-- 	accountLogInfo = nil,
-- 		-- }
-- 		-- local buffer = NetManager.EncodeMsg(PBMessage.GM_AccountCreate, msg)
-- 		-- msg = NetManager.DecodeMsg(PBMessage.GM_AccountCreate, buffer);
-- 		-- local a = 1;
-- 		local loginRecord = {
-- 			infos =
-- 			{
-- 				{
-- 					account = "hsu1994",
-- 					password = "3778774",
-- 				}
-- 			}
-- 		}
-- 		local buffer = NetManager.EncodePB("LoginRecord", loginRecord);
-- 		loginRecord = NetManager.DecodePB(PBMessage.LoginRecord, buffer);
-- 		local a = 1;
-- 	end
-- end

function Game.OnDestroy()
	NetManager.DeleteAllConnections()
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
	Log.Info("Game.TestEventCallback1,param is " .. param);
end

function TestEventCallback2(param)
	Log.Info("Game.TestEventCallback2,param is " .. param);
end

function TestSceneManager()
	SceneManager:Initialize();
	SceneManager:GotoScene(SceneType.DownloadScene);
end


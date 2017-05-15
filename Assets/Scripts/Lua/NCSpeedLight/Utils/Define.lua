UIName = {
	-- Dialog
	UI_Progress = "Dialog/UI_Progress",
	
	-- 登录场景
	UI_NormalLogin = "Login/UI_NormalLogin",
	UI_MobileLogin = "Login/UI_MobileLogin",
	UI_Register = "Login/UI_Register",
	
	-- 大厅
	UI_Hall = "Hall/UI_Hall",
	UI_Setting = "Hall/UI_Setting",
	UI_HZRule = "Hall/UI_HZRule",
	UI_Share = "Hall/UI_Share",
	UI_Record = "Hall/UI_Record",
	UI_CreateRoom = "Hall/UI_CreateRoom",
	UI_JoinRoom = "Hall/UI_JoinRoom",
	UI_SceneLoad = "Dialog/UI_SceneLoad",
	UI_SystemEmail = "Hall/UI_SystemEmail",
	UI_GetRoomCardHint = "Hall/UI_GetRoomCardHint",
	
	-- 麻将
	UI_MaJiang = "MaJiang/UI_MaJiang",
	UI_MJRequestDissolve = "MaJiang/UI_MJRequestDissolve",
	UI_MJTest = "MaJiang/UI_MJTest",
	UI_MJResult = "MaJiang/UI_MJResult",
	UI_MJTotalResult = "MaJiang/UI_MJTotalResult",
	UI_MJDraw = "MaJiang/UI_MJDraw",
	UI_MJSetting = "MaJiang/UI_MJSetting",
	UI_MJPlayerInfo = "MaJiang/UI_MJPlayerInfo",
}

SceneName =
{
	LoginScene = "LoginScene",
	HallScene = "HallScene",
	MJScene = "MJScene",
}

FBStatus = {
	
	-- 等待其他玩家准备
	WaitingPlayer = 0,
	
	-- 等待投掷骰子
	WaitingCastDice = 1,
	
	-- 游戏中
	Playing = 2,
	
	-- 回合结束
	FinishedRound = 3,
	
	ToString = function(index)
		for key, value in pairs(FBStatus) do
			if value == index then
				return key;
			end
		end
	end,
	
	ToInt = function(name)
		for key, value in pairs(FBStatus) do
			if key == name then
				return value;
			end
		end
	end
} 
--create by yangxun
GameCenterPlatform={}

--- <summary>
--- 属性:ILocalUser
--- </summary>
GameCenterPlatform.localUser=nil
--- <summary>
--- C#声明:Void ResetAllAchievements(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function GameCenterPlatform.ResetAllAchievements(arg_callback)
end
--- <summary>
--- C#声明:Void ShowDefaultAchievementCompletionBanner(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GameCenterPlatform.ShowDefaultAchievementCompletionBanner(arg_value)
end
--- <summary>
--- C#声明:Void ShowLeaderboardUI(System.String, UnityEngine.SocialPlatforms.TimeScope)
--- </summary>
--- <param name="arg_leaderboardID">System.String</param>
--- <param name="arg_timeScope">UnityEngine.SocialPlatforms.TimeScope</param>
--- <returns>System.Void</returns>
function GameCenterPlatform.ShowLeaderboardUI(arg_leaderboardID,arg_timeScope)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.ILocalUser get_localUser()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.ILocalUser</returns>
function GameCenterPlatform:get_localUser()
end
--- <summary>
--- C#声明:Void LoadUsers(System.String[], System.Action`1[UnityEngine.SocialPlatforms.IUserProfile[]])
--- </summary>
--- <param name="arg_userIDs">System.String[]</param>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IUserProfile[]]</param>
--- <returns>System.Void</returns>
function GameCenterPlatform:LoadUsers(arg_userIDs,arg_callback)
end
--- <summary>
--- C#声明:Void ReportProgress(System.String, Double, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_id">System.String</param>
--- <param name="arg_progress">System.Double</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function GameCenterPlatform:ReportProgress(arg_id,arg_progress,arg_callback)
end
--- <summary>
--- C#声明:Void LoadAchievementDescriptions(System.Action`1[UnityEngine.SocialPlatforms.IAchievementDescription[]])
--- </summary>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IAchievementDescription[]]</param>
--- <returns>System.Void</returns>
function GameCenterPlatform:LoadAchievementDescriptions(arg_callback)
end
--- <summary>
--- C#声明:Void LoadAchievements(System.Action`1[UnityEngine.SocialPlatforms.IAchievement[]])
--- </summary>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IAchievement[]]</param>
--- <returns>System.Void</returns>
function GameCenterPlatform:LoadAchievements(arg_callback)
end
--- <summary>
--- C#声明:Void ReportScore(Int64, System.String, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_score">System.Int64</param>
--- <param name="arg_board">System.String</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function GameCenterPlatform:ReportScore(arg_score,arg_board,arg_callback)
end
--- <summary>
--- C#声明:Void LoadScores(System.String, System.Action`1[UnityEngine.SocialPlatforms.IScore[]])
--- </summary>
--- <param name="arg_leaderboardID">System.String</param>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IScore[]]</param>
--- <returns>System.Void</returns>
function GameCenterPlatform:LoadScores(arg_leaderboardID,arg_callback)
end
--- <summary>
--- C#声明:Void ShowAchievementsUI()
--- </summary>
--- <returns>System.Void</returns>
function GameCenterPlatform:ShowAchievementsUI()
end
--- <summary>
--- C#声明:Void ShowLeaderboardUI()
--- </summary>
--- <returns>System.Void</returns>
function GameCenterPlatform:ShowLeaderboardUI()
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.ILeaderboard CreateLeaderboard()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.ILeaderboard</returns>
function GameCenterPlatform:CreateLeaderboard()
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IAchievement CreateAchievement()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IAchievement</returns>
function GameCenterPlatform:CreateAchievement()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function GameCenterPlatform:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function GameCenterPlatform:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function GameCenterPlatform:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function GameCenterPlatform:GetType()
end

--create by yangxun
ISocialPlatform={}

--- <summary>
--- 属性:ILocalUser
--- </summary>
ISocialPlatform.localUser=nil
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.ILocalUser get_localUser()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.ILocalUser</returns>
function ISocialPlatform:get_localUser()
end
--- <summary>
--- C#声明:Void LoadUsers(System.String[], System.Action`1[UnityEngine.SocialPlatforms.IUserProfile[]])
--- </summary>
--- <param name="arg_userIDs">System.String[]</param>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IUserProfile[]]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:LoadUsers(arg_userIDs,arg_callback)
end
--- <summary>
--- C#声明:Void ReportProgress(System.String, Double, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_achievementID">System.String</param>
--- <param name="arg_progress">System.Double</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:ReportProgress(arg_achievementID,arg_progress,arg_callback)
end
--- <summary>
--- C#声明:Void LoadAchievementDescriptions(System.Action`1[UnityEngine.SocialPlatforms.IAchievementDescription[]])
--- </summary>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IAchievementDescription[]]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:LoadAchievementDescriptions(arg_callback)
end
--- <summary>
--- C#声明:Void LoadAchievements(System.Action`1[UnityEngine.SocialPlatforms.IAchievement[]])
--- </summary>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IAchievement[]]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:LoadAchievements(arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IAchievement CreateAchievement()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IAchievement</returns>
function ISocialPlatform:CreateAchievement()
end
--- <summary>
--- C#声明:Void ReportScore(Int64, System.String, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_score">System.Int64</param>
--- <param name="arg_board">System.String</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:ReportScore(arg_score,arg_board,arg_callback)
end
--- <summary>
--- C#声明:Void LoadScores(System.String, System.Action`1[UnityEngine.SocialPlatforms.IScore[]])
--- </summary>
--- <param name="arg_leaderboardID">System.String</param>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IScore[]]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:LoadScores(arg_leaderboardID,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.ILeaderboard CreateLeaderboard()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.ILeaderboard</returns>
function ISocialPlatform:CreateLeaderboard()
end
--- <summary>
--- C#声明:Void ShowAchievementsUI()
--- </summary>
--- <returns>System.Void</returns>
function ISocialPlatform:ShowAchievementsUI()
end
--- <summary>
--- C#声明:Void ShowLeaderboardUI()
--- </summary>
--- <returns>System.Void</returns>
function ISocialPlatform:ShowLeaderboardUI()
end
--- <summary>
--- C#声明:Void Authenticate(UnityEngine.SocialPlatforms.ILocalUser, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_user">UnityEngine.SocialPlatforms.ILocalUser</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:Authenticate(arg_user,arg_callback)
end
--- <summary>
--- C#声明:Void LoadFriends(UnityEngine.SocialPlatforms.ILocalUser, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_user">UnityEngine.SocialPlatforms.ILocalUser</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:LoadFriends(arg_user,arg_callback)
end
--- <summary>
--- C#声明:Void LoadScores(UnityEngine.SocialPlatforms.ILeaderboard, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_board">UnityEngine.SocialPlatforms.ILeaderboard</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ISocialPlatform:LoadScores(arg_board,arg_callback)
end
--- <summary>
--- C#声明:Boolean GetLoading(UnityEngine.SocialPlatforms.ILeaderboard)
--- </summary>
--- <param name="arg_board">UnityEngine.SocialPlatforms.ILeaderboard</param>
--- <returns>System.Boolean</returns>
function ISocialPlatform:GetLoading(arg_board)
end

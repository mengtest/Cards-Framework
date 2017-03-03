--create by yangxun
Social={}

--- <summary>
--- 属性:ISocialPlatform
--- </summary>
Social.Active=nil
--- <summary>
--- 属性:ILocalUser
--- </summary>
Social.localUser=nil
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.ISocialPlatform get_Active()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.ISocialPlatform</returns>
function Social.get_Active()
end
--- <summary>
--- C#声明:Void set_Active(UnityEngine.SocialPlatforms.ISocialPlatform)
--- </summary>
--- <param name="arg_value">UnityEngine.SocialPlatforms.ISocialPlatform</param>
--- <returns>System.Void</returns>
function Social.set_Active(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.ILocalUser get_localUser()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.ILocalUser</returns>
function Social.get_localUser()
end
--- <summary>
--- C#声明:Void LoadUsers(System.String[], System.Action`1[UnityEngine.SocialPlatforms.IUserProfile[]])
--- </summary>
--- <param name="arg_userIDs">System.String[]</param>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IUserProfile[]]</param>
--- <returns>System.Void</returns>
function Social.LoadUsers(arg_userIDs,arg_callback)
end
--- <summary>
--- C#声明:Void ReportProgress(System.String, Double, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_achievementID">System.String</param>
--- <param name="arg_progress">System.Double</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function Social.ReportProgress(arg_achievementID,arg_progress,arg_callback)
end
--- <summary>
--- C#声明:Void LoadAchievementDescriptions(System.Action`1[UnityEngine.SocialPlatforms.IAchievementDescription[]])
--- </summary>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IAchievementDescription[]]</param>
--- <returns>System.Void</returns>
function Social.LoadAchievementDescriptions(arg_callback)
end
--- <summary>
--- C#声明:Void LoadAchievements(System.Action`1[UnityEngine.SocialPlatforms.IAchievement[]])
--- </summary>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IAchievement[]]</param>
--- <returns>System.Void</returns>
function Social.LoadAchievements(arg_callback)
end
--- <summary>
--- C#声明:Void ReportScore(Int64, System.String, System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_score">System.Int64</param>
--- <param name="arg_board">System.String</param>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function Social.ReportScore(arg_score,arg_board,arg_callback)
end
--- <summary>
--- C#声明:Void LoadScores(System.String, System.Action`1[UnityEngine.SocialPlatforms.IScore[]])
--- </summary>
--- <param name="arg_leaderboardID">System.String</param>
--- <param name="arg_callback">System.Action`1[UnityEngine.SocialPlatforms.IScore[]]</param>
--- <returns>System.Void</returns>
function Social.LoadScores(arg_leaderboardID,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.ILeaderboard CreateLeaderboard()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.ILeaderboard</returns>
function Social.CreateLeaderboard()
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IAchievement CreateAchievement()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IAchievement</returns>
function Social.CreateAchievement()
end
--- <summary>
--- C#声明:Void ShowAchievementsUI()
--- </summary>
--- <returns>System.Void</returns>
function Social.ShowAchievementsUI()
end
--- <summary>
--- C#声明:Void ShowLeaderboardUI()
--- </summary>
--- <returns>System.Void</returns>
function Social.ShowLeaderboardUI()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Social:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Social:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Social:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Social:GetType()
end

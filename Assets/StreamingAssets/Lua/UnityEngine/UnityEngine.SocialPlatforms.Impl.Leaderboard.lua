--create by yangxun
Leaderboard={}

--- <summary>
--- 属性:Boolean
--- </summary>
Leaderboard.loading=nil
--- <summary>
--- 属性:String
--- </summary>
Leaderboard.id=nil
--- <summary>
--- 属性:UserScope
--- </summary>
Leaderboard.userScope=nil
--- <summary>
--- 属性:Range
--- </summary>
Leaderboard.range=nil
--- <summary>
--- 属性:TimeScope
--- </summary>
Leaderboard.timeScope=nil
--- <summary>
--- 属性:IScore
--- </summary>
Leaderboard.localUserScore=nil
--- <summary>
--- 属性:UInt32
--- </summary>
Leaderboard.maxRange=nil
--- <summary>
--- 属性:IScore[]
--- </summary>
Leaderboard.scores=nil
--- <summary>
--- 属性:String
--- </summary>
Leaderboard.title=nil
--- <summary>
--- C#声明:Void SetUserFilter(System.String[])
--- </summary>
--- <param name="arg_userIDs">System.String[]</param>
--- <returns>System.Void</returns>
function Leaderboard:SetUserFilter(arg_userIDs)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Leaderboard:ToString()
end
--- <summary>
--- C#声明:Void LoadScores(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function Leaderboard:LoadScores(arg_callback)
end
--- <summary>
--- C#声明:Boolean get_loading()
--- </summary>
--- <returns>System.Boolean</returns>
function Leaderboard:get_loading()
end
--- <summary>
--- C#声明:Void SetLocalUserScore(UnityEngine.SocialPlatforms.IScore)
--- </summary>
--- <param name="arg_score">UnityEngine.SocialPlatforms.IScore</param>
--- <returns>System.Void</returns>
function Leaderboard:SetLocalUserScore(arg_score)
end
--- <summary>
--- C#声明:Void SetMaxRange(UInt32)
--- </summary>
--- <param name="arg_maxRange">System.UInt32</param>
--- <returns>System.Void</returns>
function Leaderboard:SetMaxRange(arg_maxRange)
end
--- <summary>
--- C#声明:Void SetScores(UnityEngine.SocialPlatforms.IScore[])
--- </summary>
--- <param name="arg_scores">UnityEngine.SocialPlatforms.IScore[]</param>
--- <returns>System.Void</returns>
function Leaderboard:SetScores(arg_scores)
end
--- <summary>
--- C#声明:Void SetTitle(System.String)
--- </summary>
--- <param name="arg_title">System.String</param>
--- <returns>System.Void</returns>
function Leaderboard:SetTitle(arg_title)
end
--- <summary>
--- C#声明:System.String[] GetUserFilter()
--- </summary>
--- <returns>System.String[]</returns>
function Leaderboard:GetUserFilter()
end
--- <summary>
--- C#声明:System.String get_id()
--- </summary>
--- <returns>System.String</returns>
function Leaderboard:get_id()
end
--- <summary>
--- C#声明:Void set_id(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Leaderboard:set_id(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.UserScope get_userScope()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.UserScope</returns>
function Leaderboard:get_userScope()
end
--- <summary>
--- C#声明:Void set_userScope(UnityEngine.SocialPlatforms.UserScope)
--- </summary>
--- <param name="arg_value">UnityEngine.SocialPlatforms.UserScope</param>
--- <returns>System.Void</returns>
function Leaderboard:set_userScope(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.Range get_range()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.Range</returns>
function Leaderboard:get_range()
end
--- <summary>
--- C#声明:Void set_range(UnityEngine.SocialPlatforms.Range)
--- </summary>
--- <param name="arg_value">UnityEngine.SocialPlatforms.Range</param>
--- <returns>System.Void</returns>
function Leaderboard:set_range(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.TimeScope get_timeScope()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.TimeScope</returns>
function Leaderboard:get_timeScope()
end
--- <summary>
--- C#声明:Void set_timeScope(UnityEngine.SocialPlatforms.TimeScope)
--- </summary>
--- <param name="arg_value">UnityEngine.SocialPlatforms.TimeScope</param>
--- <returns>System.Void</returns>
function Leaderboard:set_timeScope(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IScore get_localUserScore()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IScore</returns>
function Leaderboard:get_localUserScore()
end
--- <summary>
--- C#声明:UInt32 get_maxRange()
--- </summary>
--- <returns>System.UInt32</returns>
function Leaderboard:get_maxRange()
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IScore[] get_scores()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IScore[]</returns>
function Leaderboard:get_scores()
end
--- <summary>
--- C#声明:System.String get_title()
--- </summary>
--- <returns>System.String</returns>
function Leaderboard:get_title()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Leaderboard:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Leaderboard:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Leaderboard:GetType()
end

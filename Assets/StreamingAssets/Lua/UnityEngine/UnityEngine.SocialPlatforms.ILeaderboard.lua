--create by yangxun
ILeaderboard={}

--- <summary>
--- 属性:Boolean
--- </summary>
ILeaderboard.loading=nil
--- <summary>
--- 属性:String
--- </summary>
ILeaderboard.id=nil
--- <summary>
--- 属性:UserScope
--- </summary>
ILeaderboard.userScope=nil
--- <summary>
--- 属性:Range
--- </summary>
ILeaderboard.range=nil
--- <summary>
--- 属性:TimeScope
--- </summary>
ILeaderboard.timeScope=nil
--- <summary>
--- 属性:IScore
--- </summary>
ILeaderboard.localUserScore=nil
--- <summary>
--- 属性:UInt32
--- </summary>
ILeaderboard.maxRange=nil
--- <summary>
--- 属性:IScore[]
--- </summary>
ILeaderboard.scores=nil
--- <summary>
--- 属性:String
--- </summary>
ILeaderboard.title=nil
--- <summary>
--- C#声明:Void SetUserFilter(System.String[])
--- </summary>
--- <param name="arg_userIDs">System.String[]</param>
--- <returns>System.Void</returns>
function ILeaderboard:SetUserFilter(arg_userIDs)
end
--- <summary>
--- C#声明:Void LoadScores(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ILeaderboard:LoadScores(arg_callback)
end
--- <summary>
--- C#声明:Boolean get_loading()
--- </summary>
--- <returns>System.Boolean</returns>
function ILeaderboard:get_loading()
end
--- <summary>
--- C#声明:System.String get_id()
--- </summary>
--- <returns>System.String</returns>
function ILeaderboard:get_id()
end
--- <summary>
--- C#声明:Void set_id(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function ILeaderboard:set_id(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.UserScope get_userScope()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.UserScope</returns>
function ILeaderboard:get_userScope()
end
--- <summary>
--- C#声明:Void set_userScope(UnityEngine.SocialPlatforms.UserScope)
--- </summary>
--- <param name="arg_value">UnityEngine.SocialPlatforms.UserScope</param>
--- <returns>System.Void</returns>
function ILeaderboard:set_userScope(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.Range get_range()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.Range</returns>
function ILeaderboard:get_range()
end
--- <summary>
--- C#声明:Void set_range(UnityEngine.SocialPlatforms.Range)
--- </summary>
--- <param name="arg_value">UnityEngine.SocialPlatforms.Range</param>
--- <returns>System.Void</returns>
function ILeaderboard:set_range(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.TimeScope get_timeScope()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.TimeScope</returns>
function ILeaderboard:get_timeScope()
end
--- <summary>
--- C#声明:Void set_timeScope(UnityEngine.SocialPlatforms.TimeScope)
--- </summary>
--- <param name="arg_value">UnityEngine.SocialPlatforms.TimeScope</param>
--- <returns>System.Void</returns>
function ILeaderboard:set_timeScope(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IScore get_localUserScore()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IScore</returns>
function ILeaderboard:get_localUserScore()
end
--- <summary>
--- C#声明:UInt32 get_maxRange()
--- </summary>
--- <returns>System.UInt32</returns>
function ILeaderboard:get_maxRange()
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IScore[] get_scores()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IScore[]</returns>
function ILeaderboard:get_scores()
end
--- <summary>
--- C#声明:System.String get_title()
--- </summary>
--- <returns>System.String</returns>
function ILeaderboard:get_title()
end

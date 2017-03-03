--create by yangxun
LocalUser={}

--- <summary>
--- 属性:IUserProfile[]
--- </summary>
LocalUser.friends=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LocalUser.authenticated=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LocalUser.underage=nil
--- <summary>
--- 属性:String
--- </summary>
LocalUser.userName=nil
--- <summary>
--- 属性:String
--- </summary>
LocalUser.id=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LocalUser.isFriend=nil
--- <summary>
--- 属性:UserState
--- </summary>
LocalUser.state=nil
--- <summary>
--- 属性:Texture2D
--- </summary>
LocalUser.image=nil
--- <summary>
--- C#声明:Void Authenticate(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function LocalUser:Authenticate(arg_callback)
end
--- <summary>
--- C#声明:Void LoadFriends(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function LocalUser:LoadFriends(arg_callback)
end
--- <summary>
--- C#声明:Void SetFriends(UnityEngine.SocialPlatforms.IUserProfile[])
--- </summary>
--- <param name="arg_friends">UnityEngine.SocialPlatforms.IUserProfile[]</param>
--- <returns>System.Void</returns>
function LocalUser:SetFriends(arg_friends)
end
--- <summary>
--- C#声明:Void SetAuthenticated(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LocalUser:SetAuthenticated(arg_value)
end
--- <summary>
--- C#声明:Void SetUnderage(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LocalUser:SetUnderage(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IUserProfile[] get_friends()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IUserProfile[]</returns>
function LocalUser:get_friends()
end
--- <summary>
--- C#声明:Boolean get_authenticated()
--- </summary>
--- <returns>System.Boolean</returns>
function LocalUser:get_authenticated()
end
--- <summary>
--- C#声明:Boolean get_underage()
--- </summary>
--- <returns>System.Boolean</returns>
function LocalUser:get_underage()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function LocalUser:ToString()
end
--- <summary>
--- C#声明:Void SetUserName(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function LocalUser:SetUserName(arg_name)
end
--- <summary>
--- C#声明:Void SetUserID(System.String)
--- </summary>
--- <param name="arg_id">System.String</param>
--- <returns>System.Void</returns>
function LocalUser:SetUserID(arg_id)
end
--- <summary>
--- C#声明:Void SetImage(UnityEngine.Texture2D)
--- </summary>
--- <param name="arg_image">UnityEngine.Texture2D</param>
--- <returns>System.Void</returns>
function LocalUser:SetImage(arg_image)
end
--- <summary>
--- C#声明:Void SetIsFriend(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LocalUser:SetIsFriend(arg_value)
end
--- <summary>
--- C#声明:Void SetState(UnityEngine.SocialPlatforms.UserState)
--- </summary>
--- <param name="arg_state">UnityEngine.SocialPlatforms.UserState</param>
--- <returns>System.Void</returns>
function LocalUser:SetState(arg_state)
end
--- <summary>
--- C#声明:System.String get_userName()
--- </summary>
--- <returns>System.String</returns>
function LocalUser:get_userName()
end
--- <summary>
--- C#声明:System.String get_id()
--- </summary>
--- <returns>System.String</returns>
function LocalUser:get_id()
end
--- <summary>
--- C#声明:Boolean get_isFriend()
--- </summary>
--- <returns>System.Boolean</returns>
function LocalUser:get_isFriend()
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.UserState get_state()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.UserState</returns>
function LocalUser:get_state()
end
--- <summary>
--- C#声明:UnityEngine.Texture2D get_image()
--- </summary>
--- <returns>UnityEngine.Texture2D</returns>
function LocalUser:get_image()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function LocalUser:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function LocalUser:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function LocalUser:GetType()
end

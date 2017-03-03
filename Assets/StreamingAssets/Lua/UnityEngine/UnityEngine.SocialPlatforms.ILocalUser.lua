--create by yangxun
ILocalUser={}

--- <summary>
--- 属性:IUserProfile[]
--- </summary>
ILocalUser.friends=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ILocalUser.authenticated=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ILocalUser.underage=nil
--- <summary>
--- C#声明:Void Authenticate(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ILocalUser:Authenticate(arg_callback)
end
--- <summary>
--- C#声明:Void LoadFriends(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function ILocalUser:LoadFriends(arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.SocialPlatforms.IUserProfile[] get_friends()
--- </summary>
--- <returns>UnityEngine.SocialPlatforms.IUserProfile[]</returns>
function ILocalUser:get_friends()
end
--- <summary>
--- C#声明:Boolean get_authenticated()
--- </summary>
--- <returns>System.Boolean</returns>
function ILocalUser:get_authenticated()
end
--- <summary>
--- C#声明:Boolean get_underage()
--- </summary>
--- <returns>System.Boolean</returns>
function ILocalUser:get_underage()
end

--create by yangxun
Caching={}

--- <summary>
--- 属性:CacheIndex[]
--- </summary>
Caching.index=nil
--- <summary>
--- 属性:Int64
--- </summary>
Caching.spaceFree=nil
--- <summary>
--- 属性:Int64
--- </summary>
Caching.maximumAvailableDiskSpace=nil
--- <summary>
--- 属性:Int64
--- </summary>
Caching.spaceOccupied=nil
--- <summary>
--- 属性:Int32
--- </summary>
Caching.spaceAvailable=nil
--- <summary>
--- 属性:Int32
--- </summary>
Caching.spaceUsed=nil
--- <summary>
--- 属性:Int32
--- </summary>
Caching.expirationDelay=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Caching.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Caching.ready=nil
--- <summary>
--- C#声明:Boolean Authorize(System.String, System.String, Int64, System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_domain">System.String</param>
--- <param name="arg_size">System.Int64</param>
--- <param name="arg_signature">System.String</param>
--- <returns>System.Boolean</returns>
function Caching.Authorize(arg_name,arg_domain,arg_size,arg_signature)
end
--- <summary>
--- C#声明:Boolean Authorize(System.String, System.String, Int64, Int32, System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_domain">System.String</param>
--- <param name="arg_size">System.Int64</param>
--- <param name="arg_expiration">System.Int32</param>
--- <param name="arg_signature">System.String</param>
--- <returns>System.Boolean</returns>
function Caching.Authorize(arg_name,arg_domain,arg_size,arg_expiration,arg_signature)
end
--- <summary>
--- C#声明:Boolean Authorize(System.String, System.String, Int32, Int32, System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_domain">System.String</param>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_expiration">System.Int32</param>
--- <param name="arg_signature">System.String</param>
--- <returns>System.Boolean</returns>
function Caching.Authorize(arg_name,arg_domain,arg_size,arg_expiration,arg_signature)
end
--- <summary>
--- C#声明:Boolean Authorize(System.String, System.String, Int32, System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_domain">System.String</param>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_signature">System.String</param>
--- <returns>System.Boolean</returns>
function Caching.Authorize(arg_name,arg_domain,arg_size,arg_signature)
end
--- <summary>
--- C#声明:Boolean CleanCache()
--- </summary>
--- <returns>System.Boolean</returns>
function Caching.CleanCache()
end
--- <summary>
--- C#声明:Boolean CleanNamedCache(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function Caching.CleanNamedCache(arg_name)
end
--- <summary>
--- C#声明:Boolean DeleteFromCache(System.String)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <returns>System.Boolean</returns>
function Caching.DeleteFromCache(arg_url)
end
--- <summary>
--- C#声明:Int32 GetVersionFromCache(System.String)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <returns>System.Int32</returns>
function Caching.GetVersionFromCache(arg_url)
end
--- <summary>
--- C#声明:Boolean IsVersionCached(System.String, Int32)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_version">System.Int32</param>
--- <returns>System.Boolean</returns>
function Caching.IsVersionCached(arg_url,arg_version)
end
--- <summary>
--- C#声明:Boolean IsVersionCached(System.String, UnityEngine.Hash128)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_hash">UnityEngine.Hash128</param>
--- <returns>System.Boolean</returns>
function Caching.IsVersionCached(arg_url,arg_hash)
end
--- <summary>
--- C#声明:Boolean MarkAsUsed(System.String, Int32)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_version">System.Int32</param>
--- <returns>System.Boolean</returns>
function Caching.MarkAsUsed(arg_url,arg_version)
end
--- <summary>
--- C#声明:Boolean MarkAsUsed(System.String, UnityEngine.Hash128)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_hash">UnityEngine.Hash128</param>
--- <returns>System.Boolean</returns>
function Caching.MarkAsUsed(arg_url,arg_hash)
end
--- <summary>
--- C#声明:UnityEngine.CacheIndex[] get_index()
--- </summary>
--- <returns>UnityEngine.CacheIndex[]</returns>
function Caching.get_index()
end
--- <summary>
--- C#声明:Int64 get_spaceFree()
--- </summary>
--- <returns>System.Int64</returns>
function Caching.get_spaceFree()
end
--- <summary>
--- C#声明:Int64 get_maximumAvailableDiskSpace()
--- </summary>
--- <returns>System.Int64</returns>
function Caching.get_maximumAvailableDiskSpace()
end
--- <summary>
--- C#声明:Void set_maximumAvailableDiskSpace(Int64)
--- </summary>
--- <param name="arg_value">System.Int64</param>
--- <returns>System.Void</returns>
function Caching.set_maximumAvailableDiskSpace(arg_value)
end
--- <summary>
--- C#声明:Int64 get_spaceOccupied()
--- </summary>
--- <returns>System.Int64</returns>
function Caching.get_spaceOccupied()
end
--- <summary>
--- C#声明:Int32 get_spaceAvailable()
--- </summary>
--- <returns>System.Int32</returns>
function Caching.get_spaceAvailable()
end
--- <summary>
--- C#声明:Int32 get_spaceUsed()
--- </summary>
--- <returns>System.Int32</returns>
function Caching.get_spaceUsed()
end
--- <summary>
--- C#声明:Int32 get_expirationDelay()
--- </summary>
--- <returns>System.Int32</returns>
function Caching.get_expirationDelay()
end
--- <summary>
--- C#声明:Void set_expirationDelay(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Caching.set_expirationDelay(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Caching.get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Caching.set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_ready()
--- </summary>
--- <returns>System.Boolean</returns>
function Caching.get_ready()
end
--- <summary>
--- C#声明:Void SetNoBackupFlag(System.String, Int32)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_version">System.Int32</param>
--- <returns>System.Void</returns>
function Caching.SetNoBackupFlag(arg_url,arg_version)
end
--- <summary>
--- C#声明:Void SetNoBackupFlag(System.String, UnityEngine.Hash128)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_hash">UnityEngine.Hash128</param>
--- <returns>System.Void</returns>
function Caching.SetNoBackupFlag(arg_url,arg_hash)
end
--- <summary>
--- C#声明:Void ResetNoBackupFlag(System.String, Int32)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_version">System.Int32</param>
--- <returns>System.Void</returns>
function Caching.ResetNoBackupFlag(arg_url,arg_version)
end
--- <summary>
--- C#声明:Void ResetNoBackupFlag(System.String, UnityEngine.Hash128)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_hash">UnityEngine.Hash128</param>
--- <returns>System.Void</returns>
function Caching.ResetNoBackupFlag(arg_url,arg_hash)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Caching:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Caching:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Caching:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Caching:GetType()
end

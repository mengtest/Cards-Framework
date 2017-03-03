--create by yangxun
LocationService={}

--- <summary>
--- 属性:Boolean
--- </summary>
LocationService.isEnabledByUser=nil
--- <summary>
--- 属性:LocationServiceStatus
--- </summary>
LocationService.status=nil
--- <summary>
--- 属性:LocationInfo
--- </summary>
LocationService.lastData=nil
--- <summary>
--- C#声明:Boolean get_isEnabledByUser()
--- </summary>
--- <returns>System.Boolean</returns>
function LocationService:get_isEnabledByUser()
end
--- <summary>
--- C#声明:UnityEngine.LocationServiceStatus get_status()
--- </summary>
--- <returns>UnityEngine.LocationServiceStatus</returns>
function LocationService:get_status()
end
--- <summary>
--- C#声明:UnityEngine.LocationInfo get_lastData()
--- </summary>
--- <returns>UnityEngine.LocationInfo</returns>
function LocationService:get_lastData()
end
--- <summary>
--- C#声明:Void Start(Single, Single)
--- </summary>
--- <param name="arg_desiredAccuracyInMeters">System.Single</param>
--- <param name="arg_updateDistanceInMeters">System.Single</param>
--- <returns>System.Void</returns>
function LocationService:Start(arg_desiredAccuracyInMeters,arg_updateDistanceInMeters)
end
--- <summary>
--- C#声明:Void Start(Single)
--- </summary>
--- <param name="arg_desiredAccuracyInMeters">System.Single</param>
--- <returns>System.Void</returns>
function LocationService:Start(arg_desiredAccuracyInMeters)
end
--- <summary>
--- C#声明:Void Start()
--- </summary>
--- <returns>System.Void</returns>
function LocationService:Start()
end
--- <summary>
--- C#声明:Void Stop()
--- </summary>
--- <returns>System.Void</returns>
function LocationService:Stop()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function LocationService:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function LocationService:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function LocationService:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function LocationService:GetType()
end

--create by yangxun
Plane={}

--- <summary>
--- 属性:Vector3
--- </summary>
Plane.normal=nil
--- <summary>
--- 属性:Single
--- </summary>
Plane.distance=nil
--- <summary>
--- C#声明:UnityEngine.Vector3 get_normal()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Plane:get_normal()
end
--- <summary>
--- C#声明:Void set_normal(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Plane:set_normal(arg_value)
end
--- <summary>
--- C#声明:Single get_distance()
--- </summary>
--- <returns>System.Single</returns>
function Plane:get_distance()
end
--- <summary>
--- C#声明:Void set_distance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Plane:set_distance(arg_value)
end
--- <summary>
--- C#声明:Void SetNormalAndPosition(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_inNormal">UnityEngine.Vector3</param>
--- <param name="arg_inPoint">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Plane:SetNormalAndPosition(arg_inNormal,arg_inPoint)
end
--- <summary>
--- C#声明:Void Set3Points(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <param name="arg_b">UnityEngine.Vector3</param>
--- <param name="arg_c">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Plane:Set3Points(arg_a,arg_b,arg_c)
end
--- <summary>
--- C#声明:Single GetDistanceToPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_inPt">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Plane:GetDistanceToPoint(arg_inPt)
end
--- <summary>
--- C#声明:Boolean GetSide(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_inPt">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Plane:GetSide(arg_inPt)
end
--- <summary>
--- C#声明:Boolean SameSide(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_inPt0">UnityEngine.Vector3</param>
--- <param name="arg_inPt1">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Plane:SameSide(arg_inPt0,arg_inPt1)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, Single ByRef)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_enter">System.Single&</param>
--- <returns>System.Boolean</returns>
function Plane:Raycast(arg_ray,arg_enter)
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Plane:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Plane:GetHashCode()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Plane:ToString()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Plane:GetType()
end

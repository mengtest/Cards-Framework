--create by yangxun
Bounds={}

--- <summary>
--- 属性:Vector3
--- </summary>
Bounds.center=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Bounds.size=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Bounds.extents=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Bounds.min=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Bounds.max=nil
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Bounds:GetHashCode()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_other">System.Object</param>
--- <returns>System.Boolean</returns>
function Bounds:Equals(arg_other)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_center()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Bounds:get_center()
end
--- <summary>
--- C#声明:Void set_center(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:set_center(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_size()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Bounds:get_size()
end
--- <summary>
--- C#声明:Void set_size(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:set_size(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_extents()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Bounds:get_extents()
end
--- <summary>
--- C#声明:Void set_extents(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:set_extents(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_min()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Bounds:get_min()
end
--- <summary>
--- C#声明:Void set_min(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:set_min(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_max()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Bounds:get_max()
end
--- <summary>
--- C#声明:Void set_max(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:set_max(arg_value)
end
--- <summary>
--- C#声明:Void SetMinMax(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_min">UnityEngine.Vector3</param>
--- <param name="arg_max">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:SetMinMax(arg_min,arg_max)
end
--- <summary>
--- C#声明:Void Encapsulate(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:Encapsulate(arg_point)
end
--- <summary>
--- C#声明:Void Encapsulate(UnityEngine.Bounds)
--- </summary>
--- <param name="arg_bounds">UnityEngine.Bounds</param>
--- <returns>System.Void</returns>
function Bounds:Encapsulate(arg_bounds)
end
--- <summary>
--- C#声明:Void Expand(Single)
--- </summary>
--- <param name="arg_amount">System.Single</param>
--- <returns>System.Void</returns>
function Bounds:Expand(arg_amount)
end
--- <summary>
--- C#声明:Void Expand(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_amount">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Bounds:Expand(arg_amount)
end
--- <summary>
--- C#声明:Boolean Intersects(UnityEngine.Bounds)
--- </summary>
--- <param name="arg_bounds">UnityEngine.Bounds</param>
--- <returns>System.Boolean</returns>
function Bounds:Intersects(arg_bounds)
end
--- <summary>
--- C#声明:Boolean Contains(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Bounds:Contains(arg_point)
end
--- <summary>
--- C#声明:Single SqrDistance(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Bounds:SqrDistance(arg_point)
end
--- <summary>
--- C#声明:Boolean IntersectRay(UnityEngine.Ray)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <returns>System.Boolean</returns>
function Bounds:IntersectRay(arg_ray)
end
--- <summary>
--- C#声明:Boolean IntersectRay(UnityEngine.Ray, Single ByRef)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_distance">System.Single&</param>
--- <returns>System.Boolean</returns>
function Bounds:IntersectRay(arg_ray,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ClosestPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Bounds:ClosestPoint(arg_point)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Bounds:ToString()
end
--- <summary>
--- C#声明:System.String ToString(System.String)
--- </summary>
--- <param name="arg_format">System.String</param>
--- <returns>System.String</returns>
function Bounds:ToString(arg_format)
end
--- <summary>
--- C#声明:Boolean op_Equality(UnityEngine.Bounds, UnityEngine.Bounds)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Bounds</param>
--- <param name="arg_rhs">UnityEngine.Bounds</param>
--- <returns>System.Boolean</returns>
function Bounds.op_Equality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Boolean op_Inequality(UnityEngine.Bounds, UnityEngine.Bounds)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Bounds</param>
--- <param name="arg_rhs">UnityEngine.Bounds</param>
--- <returns>System.Boolean</returns>
function Bounds.op_Inequality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Bounds:GetType()
end

--create by yangxun
Quaternion={}

--- <summary>
--- 属性:Single
--- </summary>
Quaternion.Item=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Quaternion.identity=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Quaternion.eulerAngles=nil
--- <summary>
--- C#声明:Single get_Item(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Single</returns>
function Quaternion:get_Item(arg_index)
end
--- <summary>
--- C#声明:Void set_Item(Int32, Single)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Quaternion:set_Item(arg_index,arg_value)
end
--- <summary>
--- C#声明:Void Set(Single, Single, Single, Single)
--- </summary>
--- <param name="arg_new_x">System.Single</param>
--- <param name="arg_new_y">System.Single</param>
--- <param name="arg_new_z">System.Single</param>
--- <param name="arg_new_w">System.Single</param>
--- <returns>System.Void</returns>
function Quaternion:Set(arg_new_x,arg_new_y,arg_new_z,arg_new_w)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_identity()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.get_identity()
end
--- <summary>
--- C#声明:Single Dot(UnityEngine.Quaternion, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_a">UnityEngine.Quaternion</param>
--- <param name="arg_b">UnityEngine.Quaternion</param>
--- <returns>System.Single</returns>
function Quaternion.Dot(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion AngleAxis(Single, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.AngleAxis(arg_angle,arg_axis)
end
--- <summary>
--- C#声明:Void ToAngleAxis(Single ByRef, UnityEngine.Vector3 ByRef)
--- </summary>
--- <param name="arg_angle">System.Single&</param>
--- <param name="arg_axis">UnityEngine.Vector3&</param>
--- <returns>System.Void</returns>
function Quaternion:ToAngleAxis(arg_angle,arg_axis)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion FromToRotation(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_fromDirection">UnityEngine.Vector3</param>
--- <param name="arg_toDirection">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.FromToRotation(arg_fromDirection,arg_toDirection)
end
--- <summary>
--- C#声明:Void SetFromToRotation(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_fromDirection">UnityEngine.Vector3</param>
--- <param name="arg_toDirection">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Quaternion:SetFromToRotation(arg_fromDirection,arg_toDirection)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion LookRotation(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_forward">UnityEngine.Vector3</param>
--- <param name="arg_upwards">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.LookRotation(arg_forward,arg_upwards)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion LookRotation(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_forward">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.LookRotation(arg_forward)
end
--- <summary>
--- C#声明:Void SetLookRotation(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_view">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Quaternion:SetLookRotation(arg_view)
end
--- <summary>
--- C#声明:Void SetLookRotation(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_view">UnityEngine.Vector3</param>
--- <param name="arg_up">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Quaternion:SetLookRotation(arg_view,arg_up)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion Slerp(UnityEngine.Quaternion, UnityEngine.Quaternion, Single)
--- </summary>
--- <param name="arg_from">UnityEngine.Quaternion</param>
--- <param name="arg_to">UnityEngine.Quaternion</param>
--- <param name="arg_t">System.Single</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.Slerp(arg_from,arg_to,arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion Lerp(UnityEngine.Quaternion, UnityEngine.Quaternion, Single)
--- </summary>
--- <param name="arg_from">UnityEngine.Quaternion</param>
--- <param name="arg_to">UnityEngine.Quaternion</param>
--- <param name="arg_t">System.Single</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.Lerp(arg_from,arg_to,arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion RotateTowards(UnityEngine.Quaternion, UnityEngine.Quaternion, Single)
--- </summary>
--- <param name="arg_from">UnityEngine.Quaternion</param>
--- <param name="arg_to">UnityEngine.Quaternion</param>
--- <param name="arg_maxDegreesDelta">System.Single</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.RotateTowards(arg_from,arg_to,arg_maxDegreesDelta)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion Inverse(UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.Inverse(arg_rotation)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Quaternion:ToString()
end
--- <summary>
--- C#声明:System.String ToString(System.String)
--- </summary>
--- <param name="arg_format">System.String</param>
--- <returns>System.String</returns>
function Quaternion:ToString(arg_format)
end
--- <summary>
--- C#声明:Single Angle(UnityEngine.Quaternion, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_a">UnityEngine.Quaternion</param>
--- <param name="arg_b">UnityEngine.Quaternion</param>
--- <returns>System.Single</returns>
function Quaternion.Angle(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_eulerAngles()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Quaternion:get_eulerAngles()
end
--- <summary>
--- C#声明:Void set_eulerAngles(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Quaternion:set_eulerAngles(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion Euler(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.Euler(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion Euler(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_euler">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.Euler(arg_euler)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion EulerRotation(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.EulerRotation(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion EulerRotation(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_euler">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.EulerRotation(arg_euler)
end
--- <summary>
--- C#声明:Void SetEulerRotation(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>System.Void</returns>
function Quaternion:SetEulerRotation(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:Void SetEulerRotation(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_euler">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Quaternion:SetEulerRotation(arg_euler)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ToEuler()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Quaternion:ToEuler()
end
--- <summary>
--- C#声明:UnityEngine.Quaternion EulerAngles(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.EulerAngles(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion EulerAngles(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_euler">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.EulerAngles(arg_euler)
end
--- <summary>
--- C#声明:Void ToAxisAngle(UnityEngine.Vector3 ByRef, Single ByRef)
--- </summary>
--- <param name="arg_axis">UnityEngine.Vector3&</param>
--- <param name="arg_angle">System.Single&</param>
--- <returns>System.Void</returns>
function Quaternion:ToAxisAngle(arg_axis,arg_angle)
end
--- <summary>
--- C#声明:Void SetEulerAngles(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>System.Void</returns>
function Quaternion:SetEulerAngles(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:Void SetEulerAngles(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_euler">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Quaternion:SetEulerAngles(arg_euler)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ToEulerAngles(UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>UnityEngine.Vector3</returns>
function Quaternion.ToEulerAngles(arg_rotation)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ToEulerAngles()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Quaternion:ToEulerAngles()
end
--- <summary>
--- C#声明:UnityEngine.Quaternion AxisAngle(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <param name="arg_angle">System.Single</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.AxisAngle(arg_axis,arg_angle)
end
--- <summary>
--- C#声明:Void SetAxisAngle(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <param name="arg_angle">System.Single</param>
--- <returns>System.Void</returns>
function Quaternion:SetAxisAngle(arg_axis,arg_angle)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Quaternion:GetHashCode()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_other">System.Object</param>
--- <returns>System.Boolean</returns>
function Quaternion:Equals(arg_other)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion op_Multiply(UnityEngine.Quaternion, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Quaternion</param>
--- <param name="arg_rhs">UnityEngine.Quaternion</param>
--- <returns>UnityEngine.Quaternion</returns>
function Quaternion.op_Multiply(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Multiply(UnityEngine.Quaternion, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_point">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Quaternion.op_Multiply(arg_rotation,arg_point)
end
--- <summary>
--- C#声明:Boolean op_Equality(UnityEngine.Quaternion, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Quaternion</param>
--- <param name="arg_rhs">UnityEngine.Quaternion</param>
--- <returns>System.Boolean</returns>
function Quaternion.op_Equality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Boolean op_Inequality(UnityEngine.Quaternion, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Quaternion</param>
--- <param name="arg_rhs">UnityEngine.Quaternion</param>
--- <returns>System.Boolean</returns>
function Quaternion.op_Inequality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Quaternion:GetType()
end

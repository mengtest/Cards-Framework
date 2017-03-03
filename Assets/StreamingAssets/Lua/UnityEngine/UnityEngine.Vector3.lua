--create by yangxun
Vector3={}

--- <summary>
--- 属性:Single
--- </summary>
Vector3.Item=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.normalized=nil
--- <summary>
--- 属性:Single
--- </summary>
Vector3.magnitude=nil
--- <summary>
--- 属性:Single
--- </summary>
Vector3.sqrMagnitude=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.zero=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.one=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.forward=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.back=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.up=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.down=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.left=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.right=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Vector3.fwd=nil
--- <summary>
--- C#声明:UnityEngine.Vector3 Lerp(UnityEngine.Vector3, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector3</param>
--- <param name="arg_to">UnityEngine.Vector3</param>
--- <param name="arg_t">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Lerp(arg_from,arg_to,arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Slerp(UnityEngine.Vector3, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector3</param>
--- <param name="arg_to">UnityEngine.Vector3</param>
--- <param name="arg_t">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Slerp(arg_from,arg_to,arg_t)
end
--- <summary>
--- C#声明:Void OrthoNormalize(UnityEngine.Vector3 ByRef, UnityEngine.Vector3 ByRef)
--- </summary>
--- <param name="arg_normal">UnityEngine.Vector3&</param>
--- <param name="arg_tangent">UnityEngine.Vector3&</param>
--- <returns>System.Void</returns>
function Vector3.OrthoNormalize(arg_normal,arg_tangent)
end
--- <summary>
--- C#声明:Void OrthoNormalize(UnityEngine.Vector3 ByRef, UnityEngine.Vector3 ByRef, UnityEngine.Vector3 ByRef)
--- </summary>
--- <param name="arg_normal">UnityEngine.Vector3&</param>
--- <param name="arg_tangent">UnityEngine.Vector3&</param>
--- <param name="arg_binormal">UnityEngine.Vector3&</param>
--- <returns>System.Void</returns>
function Vector3.OrthoNormalize(arg_normal,arg_tangent,arg_binormal)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 MoveTowards(UnityEngine.Vector3, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector3</param>
--- <param name="arg_target">UnityEngine.Vector3</param>
--- <param name="arg_maxDistanceDelta">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.MoveTowards(arg_current,arg_target,arg_maxDistanceDelta)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 RotateTowards(UnityEngine.Vector3, UnityEngine.Vector3, Single, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector3</param>
--- <param name="arg_target">UnityEngine.Vector3</param>
--- <param name="arg_maxRadiansDelta">System.Single</param>
--- <param name="arg_maxMagnitudeDelta">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.RotateTowards(arg_current,arg_target,arg_maxRadiansDelta,arg_maxMagnitudeDelta)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 SmoothDamp(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Vector3 ByRef, Single, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector3</param>
--- <param name="arg_target">UnityEngine.Vector3</param>
--- <param name="arg_currentVelocity">UnityEngine.Vector3&</param>
--- <param name="arg_smoothTime">System.Single</param>
--- <param name="arg_maxSpeed">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.SmoothDamp(arg_current,arg_target,arg_currentVelocity,arg_smoothTime,arg_maxSpeed)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 SmoothDamp(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Vector3 ByRef, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector3</param>
--- <param name="arg_target">UnityEngine.Vector3</param>
--- <param name="arg_currentVelocity">UnityEngine.Vector3&</param>
--- <param name="arg_smoothTime">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.SmoothDamp(arg_current,arg_target,arg_currentVelocity,arg_smoothTime)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 SmoothDamp(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Vector3 ByRef, Single, Single, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector3</param>
--- <param name="arg_target">UnityEngine.Vector3</param>
--- <param name="arg_currentVelocity">UnityEngine.Vector3&</param>
--- <param name="arg_smoothTime">System.Single</param>
--- <param name="arg_maxSpeed">System.Single</param>
--- <param name="arg_deltaTime">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.SmoothDamp(arg_current,arg_target,arg_currentVelocity,arg_smoothTime,arg_maxSpeed,arg_deltaTime)
end
--- <summary>
--- C#声明:Single get_Item(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Single</returns>
function Vector3:get_Item(arg_index)
end
--- <summary>
--- C#声明:Void set_Item(Int32, Single)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Vector3:set_Item(arg_index,arg_value)
end
--- <summary>
--- C#声明:Void Set(Single, Single, Single)
--- </summary>
--- <param name="arg_new_x">System.Single</param>
--- <param name="arg_new_y">System.Single</param>
--- <param name="arg_new_z">System.Single</param>
--- <returns>System.Void</returns>
function Vector3:Set(arg_new_x,arg_new_y,arg_new_z)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Scale(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <param name="arg_b">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Scale(arg_a,arg_b)
end
--- <summary>
--- C#声明:Void Scale(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_scale">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Vector3:Scale(arg_scale)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Cross(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector3</param>
--- <param name="arg_rhs">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Cross(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Vector3:GetHashCode()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_other">System.Object</param>
--- <returns>System.Boolean</returns>
function Vector3:Equals(arg_other)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Reflect(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_inDirection">UnityEngine.Vector3</param>
--- <param name="arg_inNormal">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Reflect(arg_inDirection,arg_inNormal)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Normalize(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Normalize(arg_value)
end
--- <summary>
--- C#声明:Void Normalize()
--- </summary>
--- <returns>System.Void</returns>
function Vector3:Normalize()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_normalized()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3:get_normalized()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Vector3:ToString()
end
--- <summary>
--- C#声明:System.String ToString(System.String)
--- </summary>
--- <param name="arg_format">System.String</param>
--- <returns>System.String</returns>
function Vector3:ToString(arg_format)
end
--- <summary>
--- C#声明:Single Dot(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector3</param>
--- <param name="arg_rhs">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Vector3.Dot(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Project(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_vector">UnityEngine.Vector3</param>
--- <param name="arg_onNormal">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Project(arg_vector,arg_onNormal)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ProjectOnPlane(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_vector">UnityEngine.Vector3</param>
--- <param name="arg_planeNormal">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.ProjectOnPlane(arg_vector,arg_planeNormal)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Exclude(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_excludeThis">UnityEngine.Vector3</param>
--- <param name="arg_fromThat">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Exclude(arg_excludeThis,arg_fromThat)
end
--- <summary>
--- C#声明:Single Angle(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector3</param>
--- <param name="arg_to">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Vector3.Angle(arg_from,arg_to)
end
--- <summary>
--- C#声明:Single Distance(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <param name="arg_b">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Vector3.Distance(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ClampMagnitude(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_vector">UnityEngine.Vector3</param>
--- <param name="arg_maxLength">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.ClampMagnitude(arg_vector,arg_maxLength)
end
--- <summary>
--- C#声明:Single Magnitude(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Vector3.Magnitude(arg_a)
end
--- <summary>
--- C#声明:Single get_magnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector3:get_magnitude()
end
--- <summary>
--- C#声明:Single SqrMagnitude(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Vector3.SqrMagnitude(arg_a)
end
--- <summary>
--- C#声明:Single get_sqrMagnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector3:get_sqrMagnitude()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Min(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector3</param>
--- <param name="arg_rhs">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Min(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 Max(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector3</param>
--- <param name="arg_rhs">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.Max(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_zero()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_zero()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_one()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_one()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_forward()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_forward()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_back()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_back()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_up()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_up()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_down()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_down()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_left()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_left()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_right()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_right()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_fwd()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.get_fwd()
end
--- <summary>
--- C#声明:Single AngleBetween(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector3</param>
--- <param name="arg_to">UnityEngine.Vector3</param>
--- <returns>System.Single</returns>
function Vector3.AngleBetween(arg_from,arg_to)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Addition(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <param name="arg_b">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.op_Addition(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Subtraction(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <param name="arg_b">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.op_Subtraction(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_UnaryNegation(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.op_UnaryNegation(arg_a)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Multiply(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <param name="arg_d">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.op_Multiply(arg_a,arg_d)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Multiply(Single, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_d">System.Single</param>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.op_Multiply(arg_d,arg_a)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Division(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector3</param>
--- <param name="arg_d">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector3.op_Division(arg_a,arg_d)
end
--- <summary>
--- C#声明:Boolean op_Equality(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector3</param>
--- <param name="arg_rhs">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Vector3.op_Equality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Boolean op_Inequality(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector3</param>
--- <param name="arg_rhs">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Vector3.op_Inequality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Vector3:GetType()
end

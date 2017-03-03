--create by yangxun
Vector2={}

--- <summary>
--- 属性:Single
--- </summary>
Vector2.Item=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Vector2.normalized=nil
--- <summary>
--- 属性:Single
--- </summary>
Vector2.magnitude=nil
--- <summary>
--- 属性:Single
--- </summary>
Vector2.sqrMagnitude=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Vector2.zero=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Vector2.one=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Vector2.up=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Vector2.down=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Vector2.left=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Vector2.right=nil
--- <summary>
--- C#声明:Single get_Item(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Single</returns>
function Vector2:get_Item(arg_index)
end
--- <summary>
--- C#声明:Void set_Item(Int32, Single)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Vector2:set_Item(arg_index,arg_value)
end
--- <summary>
--- C#声明:Void Set(Single, Single)
--- </summary>
--- <param name="arg_new_x">System.Single</param>
--- <param name="arg_new_y">System.Single</param>
--- <returns>System.Void</returns>
function Vector2:Set(arg_new_x,arg_new_y)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 Lerp(UnityEngine.Vector2, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector2</param>
--- <param name="arg_to">UnityEngine.Vector2</param>
--- <param name="arg_t">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.Lerp(arg_from,arg_to,arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 MoveTowards(UnityEngine.Vector2, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector2</param>
--- <param name="arg_target">UnityEngine.Vector2</param>
--- <param name="arg_maxDistanceDelta">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.MoveTowards(arg_current,arg_target,arg_maxDistanceDelta)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 Scale(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <param name="arg_b">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.Scale(arg_a,arg_b)
end
--- <summary>
--- C#声明:Void Scale(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_scale">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function Vector2:Scale(arg_scale)
end
--- <summary>
--- C#声明:Void Normalize()
--- </summary>
--- <returns>System.Void</returns>
function Vector2:Normalize()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_normalized()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Vector2:get_normalized()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Vector2:ToString()
end
--- <summary>
--- C#声明:System.String ToString(System.String)
--- </summary>
--- <param name="arg_format">System.String</param>
--- <returns>System.String</returns>
function Vector2:ToString(arg_format)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Vector2:GetHashCode()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_other">System.Object</param>
--- <returns>System.Boolean</returns>
function Vector2:Equals(arg_other)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 Reflect(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_inDirection">UnityEngine.Vector2</param>
--- <param name="arg_inNormal">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.Reflect(arg_inDirection,arg_inNormal)
end
--- <summary>
--- C#声明:Single Dot(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector2</param>
--- <param name="arg_rhs">UnityEngine.Vector2</param>
--- <returns>System.Single</returns>
function Vector2.Dot(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Single get_magnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector2:get_magnitude()
end
--- <summary>
--- C#声明:Single get_sqrMagnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector2:get_sqrMagnitude()
end
--- <summary>
--- C#声明:Single Angle(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector2</param>
--- <param name="arg_to">UnityEngine.Vector2</param>
--- <returns>System.Single</returns>
function Vector2.Angle(arg_from,arg_to)
end
--- <summary>
--- C#声明:Single Distance(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <param name="arg_b">UnityEngine.Vector2</param>
--- <returns>System.Single</returns>
function Vector2.Distance(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 ClampMagnitude(UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_vector">UnityEngine.Vector2</param>
--- <param name="arg_maxLength">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.ClampMagnitude(arg_vector,arg_maxLength)
end
--- <summary>
--- C#声明:Single SqrMagnitude(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <returns>System.Single</returns>
function Vector2.SqrMagnitude(arg_a)
end
--- <summary>
--- C#声明:Single SqrMagnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector2:SqrMagnitude()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 Min(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector2</param>
--- <param name="arg_rhs">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.Min(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 Max(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector2</param>
--- <param name="arg_rhs">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.Max(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 SmoothDamp(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Vector2 ByRef, Single, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector2</param>
--- <param name="arg_target">UnityEngine.Vector2</param>
--- <param name="arg_currentVelocity">UnityEngine.Vector2&</param>
--- <param name="arg_smoothTime">System.Single</param>
--- <param name="arg_maxSpeed">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.SmoothDamp(arg_current,arg_target,arg_currentVelocity,arg_smoothTime,arg_maxSpeed)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 SmoothDamp(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Vector2 ByRef, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector2</param>
--- <param name="arg_target">UnityEngine.Vector2</param>
--- <param name="arg_currentVelocity">UnityEngine.Vector2&</param>
--- <param name="arg_smoothTime">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.SmoothDamp(arg_current,arg_target,arg_currentVelocity,arg_smoothTime)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 SmoothDamp(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Vector2 ByRef, Single, Single, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector2</param>
--- <param name="arg_target">UnityEngine.Vector2</param>
--- <param name="arg_currentVelocity">UnityEngine.Vector2&</param>
--- <param name="arg_smoothTime">System.Single</param>
--- <param name="arg_maxSpeed">System.Single</param>
--- <param name="arg_deltaTime">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.SmoothDamp(arg_current,arg_target,arg_currentVelocity,arg_smoothTime,arg_maxSpeed,arg_deltaTime)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_zero()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.get_zero()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_one()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.get_one()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_up()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.get_up()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_down()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.get_down()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_left()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.get_left()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_right()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.get_right()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_Addition(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <param name="arg_b">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.op_Addition(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_Subtraction(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <param name="arg_b">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.op_Subtraction(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_UnaryNegation(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.op_UnaryNegation(arg_a)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_Multiply(UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <param name="arg_d">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.op_Multiply(arg_a,arg_d)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_Multiply(Single, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_d">System.Single</param>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.op_Multiply(arg_d,arg_a)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_Division(UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector2</param>
--- <param name="arg_d">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.op_Division(arg_a,arg_d)
end
--- <summary>
--- C#声明:Boolean op_Equality(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector2</param>
--- <param name="arg_rhs">UnityEngine.Vector2</param>
--- <returns>System.Boolean</returns>
function Vector2.op_Equality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Boolean op_Inequality(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector2</param>
--- <param name="arg_rhs">UnityEngine.Vector2</param>
--- <returns>System.Boolean</returns>
function Vector2.op_Inequality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_Implicit(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector2.op_Implicit(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Implicit(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector2.op_Implicit(arg_v)
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Vector2:GetType()
end

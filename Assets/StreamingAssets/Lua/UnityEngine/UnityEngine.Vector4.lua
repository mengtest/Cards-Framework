--create by yangxun
Vector4={}

--- <summary>
--- 属性:Single
--- </summary>
Vector4.Item=nil
--- <summary>
--- 属性:Vector4
--- </summary>
Vector4.normalized=nil
--- <summary>
--- 属性:Single
--- </summary>
Vector4.magnitude=nil
--- <summary>
--- 属性:Single
--- </summary>
Vector4.sqrMagnitude=nil
--- <summary>
--- 属性:Vector4
--- </summary>
Vector4.zero=nil
--- <summary>
--- 属性:Vector4
--- </summary>
Vector4.one=nil
--- <summary>
--- C#声明:Single get_Item(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Single</returns>
function Vector4:get_Item(arg_index)
end
--- <summary>
--- C#声明:Void set_Item(Int32, Single)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Vector4:set_Item(arg_index,arg_value)
end
--- <summary>
--- C#声明:Void Set(Single, Single, Single, Single)
--- </summary>
--- <param name="arg_new_x">System.Single</param>
--- <param name="arg_new_y">System.Single</param>
--- <param name="arg_new_z">System.Single</param>
--- <param name="arg_new_w">System.Single</param>
--- <returns>System.Void</returns>
function Vector4:Set(arg_new_x,arg_new_y,arg_new_z,arg_new_w)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 Lerp(UnityEngine.Vector4, UnityEngine.Vector4, Single)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector4</param>
--- <param name="arg_to">UnityEngine.Vector4</param>
--- <param name="arg_t">System.Single</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.Lerp(arg_from,arg_to,arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 MoveTowards(UnityEngine.Vector4, UnityEngine.Vector4, Single)
--- </summary>
--- <param name="arg_current">UnityEngine.Vector4</param>
--- <param name="arg_target">UnityEngine.Vector4</param>
--- <param name="arg_maxDistanceDelta">System.Single</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.MoveTowards(arg_current,arg_target,arg_maxDistanceDelta)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 Scale(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_b">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.Scale(arg_a,arg_b)
end
--- <summary>
--- C#声明:Void Scale(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_scale">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Vector4:Scale(arg_scale)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Vector4:GetHashCode()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_other">System.Object</param>
--- <returns>System.Boolean</returns>
function Vector4:Equals(arg_other)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 Normalize(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.Normalize(arg_a)
end
--- <summary>
--- C#声明:Void Normalize()
--- </summary>
--- <returns>System.Void</returns>
function Vector4:Normalize()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_normalized()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function Vector4:get_normalized()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Vector4:ToString()
end
--- <summary>
--- C#声明:System.String ToString(System.String)
--- </summary>
--- <param name="arg_format">System.String</param>
--- <returns>System.String</returns>
function Vector4:ToString(arg_format)
end
--- <summary>
--- C#声明:Single Dot(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_b">UnityEngine.Vector4</param>
--- <returns>System.Single</returns>
function Vector4.Dot(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 Project(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_b">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.Project(arg_a,arg_b)
end
--- <summary>
--- C#声明:Single Distance(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_b">UnityEngine.Vector4</param>
--- <returns>System.Single</returns>
function Vector4.Distance(arg_a,arg_b)
end
--- <summary>
--- C#声明:Single Magnitude(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <returns>System.Single</returns>
function Vector4.Magnitude(arg_a)
end
--- <summary>
--- C#声明:Single get_magnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector4:get_magnitude()
end
--- <summary>
--- C#声明:Single SqrMagnitude(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <returns>System.Single</returns>
function Vector4.SqrMagnitude(arg_a)
end
--- <summary>
--- C#声明:Single SqrMagnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector4:SqrMagnitude()
end
--- <summary>
--- C#声明:Single get_sqrMagnitude()
--- </summary>
--- <returns>System.Single</returns>
function Vector4:get_sqrMagnitude()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 Min(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector4</param>
--- <param name="arg_rhs">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.Min(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 Max(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector4</param>
--- <param name="arg_rhs">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.Max(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_zero()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.get_zero()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_one()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.get_one()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Addition(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_b">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_Addition(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Subtraction(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_b">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_Subtraction(arg_a,arg_b)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_UnaryNegation(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_UnaryNegation(arg_a)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Multiply(UnityEngine.Vector4, Single)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_d">System.Single</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_Multiply(arg_a,arg_d)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Multiply(Single, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_d">System.Single</param>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_Multiply(arg_d,arg_a)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Division(UnityEngine.Vector4, Single)
--- </summary>
--- <param name="arg_a">UnityEngine.Vector4</param>
--- <param name="arg_d">System.Single</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_Division(arg_a,arg_d)
end
--- <summary>
--- C#声明:Boolean op_Equality(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector4</param>
--- <param name="arg_rhs">UnityEngine.Vector4</param>
--- <returns>System.Boolean</returns>
function Vector4.op_Equality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Boolean op_Inequality(UnityEngine.Vector4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Vector4</param>
--- <param name="arg_rhs">UnityEngine.Vector4</param>
--- <returns>System.Boolean</returns>
function Vector4.op_Inequality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Implicit(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_Implicit(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 op_Implicit(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector3</returns>
function Vector4.op_Implicit(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Implicit(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector4</returns>
function Vector4.op_Implicit(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 op_Implicit(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector2</returns>
function Vector4.op_Implicit(arg_v)
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Vector4:GetType()
end

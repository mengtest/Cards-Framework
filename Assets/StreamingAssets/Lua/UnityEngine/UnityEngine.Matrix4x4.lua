--create by yangxun
Matrix4x4={}

--- <summary>
--- 属性:Single
--- </summary>
Matrix4x4.Item=nil
--- <summary>
--- 属性:Single
--- </summary>
Matrix4x4.Item=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Matrix4x4.inverse=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Matrix4x4.transpose=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Matrix4x4.isIdentity=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Matrix4x4.zero=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Matrix4x4.identity=nil
--- <summary>
--- C#声明:Single get_Item(Int32, Int32)
--- </summary>
--- <param name="arg_row">System.Int32</param>
--- <param name="arg_column">System.Int32</param>
--- <returns>System.Single</returns>
function Matrix4x4:get_Item(arg_row,arg_column)
end
--- <summary>
--- C#声明:Void set_Item(Int32, Int32, Single)
--- </summary>
--- <param name="arg_row">System.Int32</param>
--- <param name="arg_column">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Matrix4x4:set_Item(arg_row,arg_column,arg_value)
end
--- <summary>
--- C#声明:Single get_Item(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Single</returns>
function Matrix4x4:get_Item(arg_index)
end
--- <summary>
--- C#声明:Void set_Item(Int32, Single)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Matrix4x4:set_Item(arg_index,arg_value)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Matrix4x4:GetHashCode()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_other">System.Object</param>
--- <returns>System.Boolean</returns>
function Matrix4x4:Equals(arg_other)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 Inverse(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_m">UnityEngine.Matrix4x4</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.Inverse(arg_m)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 Transpose(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_m">UnityEngine.Matrix4x4</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.Transpose(arg_m)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_inverse()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4:get_inverse()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_transpose()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4:get_transpose()
end
--- <summary>
--- C#声明:Boolean get_isIdentity()
--- </summary>
--- <returns>System.Boolean</returns>
function Matrix4x4:get_isIdentity()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 GetColumn(Int32)
--- </summary>
--- <param name="arg_i">System.Int32</param>
--- <returns>UnityEngine.Vector4</returns>
function Matrix4x4:GetColumn(arg_i)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 GetRow(Int32)
--- </summary>
--- <param name="arg_i">System.Int32</param>
--- <returns>UnityEngine.Vector4</returns>
function Matrix4x4:GetRow(arg_i)
end
--- <summary>
--- C#声明:Void SetColumn(Int32, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_i">System.Int32</param>
--- <param name="arg_v">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Matrix4x4:SetColumn(arg_i,arg_v)
end
--- <summary>
--- C#声明:Void SetRow(Int32, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_i">System.Int32</param>
--- <param name="arg_v">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Matrix4x4:SetRow(arg_i,arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 MultiplyPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Matrix4x4:MultiplyPoint(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 MultiplyPoint3x4(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Matrix4x4:MultiplyPoint3x4(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 MultiplyVector(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Matrix4x4:MultiplyVector(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 Scale(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.Scale(arg_v)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_zero()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.get_zero()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_identity()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.get_identity()
end
--- <summary>
--- C#声明:Void SetTRS(UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_pos">UnityEngine.Vector3</param>
--- <param name="arg_q">UnityEngine.Quaternion</param>
--- <param name="arg_s">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Matrix4x4:SetTRS(arg_pos,arg_q,arg_s)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 TRS(UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_pos">UnityEngine.Vector3</param>
--- <param name="arg_q">UnityEngine.Quaternion</param>
--- <param name="arg_s">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.TRS(arg_pos,arg_q,arg_s)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Matrix4x4:ToString()
end
--- <summary>
--- C#声明:System.String ToString(System.String)
--- </summary>
--- <param name="arg_format">System.String</param>
--- <returns>System.String</returns>
function Matrix4x4:ToString(arg_format)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 Ortho(Single, Single, Single, Single, Single, Single)
--- </summary>
--- <param name="arg_left">System.Single</param>
--- <param name="arg_right">System.Single</param>
--- <param name="arg_bottom">System.Single</param>
--- <param name="arg_top">System.Single</param>
--- <param name="arg_zNear">System.Single</param>
--- <param name="arg_zFar">System.Single</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.Ortho(arg_left,arg_right,arg_bottom,arg_top,arg_zNear,arg_zFar)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 Perspective(Single, Single, Single, Single)
--- </summary>
--- <param name="arg_fov">System.Single</param>
--- <param name="arg_aspect">System.Single</param>
--- <param name="arg_zNear">System.Single</param>
--- <param name="arg_zFar">System.Single</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.Perspective(arg_fov,arg_aspect,arg_zNear,arg_zFar)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 op_Multiply(UnityEngine.Matrix4x4, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Matrix4x4</param>
--- <param name="arg_rhs">UnityEngine.Matrix4x4</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Matrix4x4.op_Multiply(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 op_Multiply(UnityEngine.Matrix4x4, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Matrix4x4</param>
--- <param name="arg_v">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Vector4</returns>
function Matrix4x4.op_Multiply(arg_lhs,arg_v)
end
--- <summary>
--- C#声明:Boolean op_Equality(UnityEngine.Matrix4x4, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Matrix4x4</param>
--- <param name="arg_rhs">UnityEngine.Matrix4x4</param>
--- <returns>System.Boolean</returns>
function Matrix4x4.op_Equality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:Boolean op_Inequality(UnityEngine.Matrix4x4, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_lhs">UnityEngine.Matrix4x4</param>
--- <param name="arg_rhs">UnityEngine.Matrix4x4</param>
--- <returns>System.Boolean</returns>
function Matrix4x4.op_Inequality(arg_lhs,arg_rhs)
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Matrix4x4:GetType()
end

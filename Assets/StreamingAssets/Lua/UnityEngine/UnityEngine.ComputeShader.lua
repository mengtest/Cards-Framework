--create by yangxun
ComputeShader={}

--- <summary>
--- 属性:String
--- </summary>
ComputeShader.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
ComputeShader.hideFlags=nil
--- <summary>
--- C#声明:Int32 FindKernel(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Int32</returns>
function ComputeShader:FindKernel(arg_name)
end
--- <summary>
--- C#声明:Void SetFloat(System.String, Single)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_val">System.Single</param>
--- <returns>System.Void</returns>
function ComputeShader:SetFloat(arg_name,arg_val)
end
--- <summary>
--- C#声明:Void SetInt(System.String, Int32)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_val">System.Int32</param>
--- <returns>System.Void</returns>
function ComputeShader:SetInt(arg_name,arg_val)
end
--- <summary>
--- C#声明:Void SetVector(System.String, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_val">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function ComputeShader:SetVector(arg_name,arg_val)
end
--- <summary>
--- C#声明:Void SetFloats(System.String, Single[])
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_values">System.Single[]</param>
--- <returns>System.Void</returns>
function ComputeShader:SetFloats(arg_name,arg_values)
end
--- <summary>
--- C#声明:Void SetInts(System.String, Int32[])
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_values">System.Int32[]</param>
--- <returns>System.Void</returns>
function ComputeShader:SetInts(arg_name,arg_values)
end
--- <summary>
--- C#声明:Void SetTexture(Int32, System.String, UnityEngine.Texture)
--- </summary>
--- <param name="arg_kernelIndex">System.Int32</param>
--- <param name="arg_name">System.String</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function ComputeShader:SetTexture(arg_kernelIndex,arg_name,arg_texture)
end
--- <summary>
--- C#声明:Void SetBuffer(Int32, System.String, UnityEngine.ComputeBuffer)
--- </summary>
--- <param name="arg_kernelIndex">System.Int32</param>
--- <param name="arg_name">System.String</param>
--- <param name="arg_buffer">UnityEngine.ComputeBuffer</param>
--- <returns>System.Void</returns>
function ComputeShader:SetBuffer(arg_kernelIndex,arg_name,arg_buffer)
end
--- <summary>
--- C#声明:Void Dispatch(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_kernelIndex">System.Int32</param>
--- <param name="arg_threadsX">System.Int32</param>
--- <param name="arg_threadsY">System.Int32</param>
--- <param name="arg_threadsZ">System.Int32</param>
--- <returns>System.Void</returns>
function ComputeShader:Dispatch(arg_kernelIndex,arg_threadsX,arg_threadsY,arg_threadsZ)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function ComputeShader:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function ComputeShader:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function ComputeShader:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function ComputeShader:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function ComputeShader:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function ComputeShader:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function ComputeShader:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function ComputeShader:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function ComputeShader:GetType()
end

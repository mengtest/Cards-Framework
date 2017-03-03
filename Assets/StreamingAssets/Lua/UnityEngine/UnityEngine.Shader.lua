--create by yangxun
Shader={}

--- <summary>
--- 属性:Boolean
--- </summary>
Shader.isSupported=nil
--- <summary>
--- 属性:Int32
--- </summary>
Shader.maximumLOD=nil
--- <summary>
--- 属性:Int32
--- </summary>
Shader.globalMaximumLOD=nil
--- <summary>
--- 属性:Int32
--- </summary>
Shader.renderQueue=nil
--- <summary>
--- 属性:String
--- </summary>
Shader.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Shader.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.Shader Find(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Shader</returns>
function Shader.Find(arg_name)
end
--- <summary>
--- C#声明:Boolean get_isSupported()
--- </summary>
--- <returns>System.Boolean</returns>
function Shader:get_isSupported()
end
--- <summary>
--- C#声明:Void EnableKeyword(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Void</returns>
function Shader.EnableKeyword(arg_keyword)
end
--- <summary>
--- C#声明:Void DisableKeyword(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Void</returns>
function Shader.DisableKeyword(arg_keyword)
end
--- <summary>
--- C#声明:Boolean IsKeywordEnabled(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Boolean</returns>
function Shader.IsKeywordEnabled(arg_keyword)
end
--- <summary>
--- C#声明:Int32 get_maximumLOD()
--- </summary>
--- <returns>System.Int32</returns>
function Shader:get_maximumLOD()
end
--- <summary>
--- C#声明:Void set_maximumLOD(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Shader:set_maximumLOD(arg_value)
end
--- <summary>
--- C#声明:Int32 get_globalMaximumLOD()
--- </summary>
--- <returns>System.Int32</returns>
function Shader.get_globalMaximumLOD()
end
--- <summary>
--- C#声明:Void set_globalMaximumLOD(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Shader.set_globalMaximumLOD(arg_value)
end
--- <summary>
--- C#声明:Int32 get_renderQueue()
--- </summary>
--- <returns>System.Int32</returns>
function Shader:get_renderQueue()
end
--- <summary>
--- C#声明:Void SetGlobalColor(System.String, UnityEngine.Color)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalColor(arg_propertyName,arg_color)
end
--- <summary>
--- C#声明:Void SetGlobalColor(Int32, UnityEngine.Color)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalColor(arg_nameID,arg_color)
end
--- <summary>
--- C#声明:Void SetGlobalVector(System.String, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_vec">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalVector(arg_propertyName,arg_vec)
end
--- <summary>
--- C#声明:Void SetGlobalVector(Int32, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_vec">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalVector(arg_nameID,arg_vec)
end
--- <summary>
--- C#声明:Void SetGlobalFloat(System.String, Single)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalFloat(arg_propertyName,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalFloat(Int32, Single)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalFloat(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalInt(System.String, Int32)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalInt(arg_propertyName,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalInt(Int32, Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalInt(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalTexture(System.String, UnityEngine.Texture)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_tex">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalTexture(arg_propertyName,arg_tex)
end
--- <summary>
--- C#声明:Void SetGlobalTexture(Int32, UnityEngine.Texture)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_tex">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalTexture(arg_nameID,arg_tex)
end
--- <summary>
--- C#声明:Void SetGlobalMatrix(System.String, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_mat">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalMatrix(arg_propertyName,arg_mat)
end
--- <summary>
--- C#声明:Void SetGlobalMatrix(Int32, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_mat">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalMatrix(arg_nameID,arg_mat)
end
--- <summary>
--- C#声明:Void SetGlobalTexGenMode(System.String, UnityEngine.TexGenMode)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_mode">UnityEngine.TexGenMode</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalTexGenMode(arg_propertyName,arg_mode)
end
--- <summary>
--- C#声明:Void SetGlobalTextureMatrixName(System.String, System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_matrixName">System.String</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalTextureMatrixName(arg_propertyName,arg_matrixName)
end
--- <summary>
--- C#声明:Void SetGlobalBuffer(System.String, UnityEngine.ComputeBuffer)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_buffer">UnityEngine.ComputeBuffer</param>
--- <returns>System.Void</returns>
function Shader.SetGlobalBuffer(arg_propertyName,arg_buffer)
end
--- <summary>
--- C#声明:Int32 PropertyToID(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Int32</returns>
function Shader.PropertyToID(arg_name)
end
--- <summary>
--- C#声明:Void WarmupAllShaders()
--- </summary>
--- <returns>System.Void</returns>
function Shader.WarmupAllShaders()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Shader:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Shader:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Shader:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Shader:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Shader:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Shader:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Shader:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Shader:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Shader:GetType()
end

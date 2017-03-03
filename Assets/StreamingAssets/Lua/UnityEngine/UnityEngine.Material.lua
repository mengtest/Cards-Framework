--create by yangxun
Material={}

--- <summary>
--- 属性:Shader
--- </summary>
Material.shader=nil
--- <summary>
--- 属性:Color
--- </summary>
Material.color=nil
--- <summary>
--- 属性:Texture
--- </summary>
Material.mainTexture=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Material.mainTextureOffset=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Material.mainTextureScale=nil
--- <summary>
--- 属性:Int32
--- </summary>
Material.passCount=nil
--- <summary>
--- 属性:Int32
--- </summary>
Material.renderQueue=nil
--- <summary>
--- 属性:String[]
--- </summary>
Material.shaderKeywords=nil
--- <summary>
--- 属性:MaterialGlobalIlluminationFlags
--- </summary>
Material.globalIlluminationFlags=nil
--- <summary>
--- 属性:String
--- </summary>
Material.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Material.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.Shader get_shader()
--- </summary>
--- <returns>UnityEngine.Shader</returns>
function Material:get_shader()
end
--- <summary>
--- C#声明:Void set_shader(UnityEngine.Shader)
--- </summary>
--- <param name="arg_value">UnityEngine.Shader</param>
--- <returns>System.Void</returns>
function Material:set_shader(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Color get_color()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function Material:get_color()
end
--- <summary>
--- C#声明:Void set_color(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Material:set_color(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Texture get_mainTexture()
--- </summary>
--- <returns>UnityEngine.Texture</returns>
function Material:get_mainTexture()
end
--- <summary>
--- C#声明:Void set_mainTexture(UnityEngine.Texture)
--- </summary>
--- <param name="arg_value">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function Material:set_mainTexture(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_mainTextureOffset()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Material:get_mainTextureOffset()
end
--- <summary>
--- C#声明:Void set_mainTextureOffset(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function Material:set_mainTextureOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_mainTextureScale()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Material:get_mainTextureScale()
end
--- <summary>
--- C#声明:Void set_mainTextureScale(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function Material:set_mainTextureScale(arg_value)
end
--- <summary>
--- C#声明:Void SetColor(System.String, UnityEngine.Color)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Material:SetColor(arg_propertyName,arg_color)
end
--- <summary>
--- C#声明:Void SetColor(Int32, UnityEngine.Color)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Material:SetColor(arg_nameID,arg_color)
end
--- <summary>
--- C#声明:UnityEngine.Color GetColor(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Color</returns>
function Material:GetColor(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Color GetColor(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Color</returns>
function Material:GetColor(arg_nameID)
end
--- <summary>
--- C#声明:Void SetVector(System.String, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_vector">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Material:SetVector(arg_propertyName,arg_vector)
end
--- <summary>
--- C#声明:Void SetVector(Int32, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_vector">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Material:SetVector(arg_nameID,arg_vector)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 GetVector(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Vector4</returns>
function Material:GetVector(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 GetVector(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Vector4</returns>
function Material:GetVector(arg_nameID)
end
--- <summary>
--- C#声明:Void SetTexture(System.String, UnityEngine.Texture)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function Material:SetTexture(arg_propertyName,arg_texture)
end
--- <summary>
--- C#声明:Void SetTexture(Int32, UnityEngine.Texture)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function Material:SetTexture(arg_nameID,arg_texture)
end
--- <summary>
--- C#声明:UnityEngine.Texture GetTexture(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Texture</returns>
function Material:GetTexture(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Texture GetTexture(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Texture</returns>
function Material:GetTexture(arg_nameID)
end
--- <summary>
--- C#声明:Void SetTextureOffset(System.String, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_offset">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function Material:SetTextureOffset(arg_propertyName,arg_offset)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GetTextureOffset(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Vector2</returns>
function Material:GetTextureOffset(arg_propertyName)
end
--- <summary>
--- C#声明:Void SetTextureScale(System.String, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_scale">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function Material:SetTextureScale(arg_propertyName,arg_scale)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GetTextureScale(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Vector2</returns>
function Material:GetTextureScale(arg_propertyName)
end
--- <summary>
--- C#声明:Void SetMatrix(System.String, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Material:SetMatrix(arg_propertyName,arg_matrix)
end
--- <summary>
--- C#声明:Void SetMatrix(Int32, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Material:SetMatrix(arg_nameID,arg_matrix)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 GetMatrix(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Material:GetMatrix(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 GetMatrix(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Material:GetMatrix(arg_nameID)
end
--- <summary>
--- C#声明:Void SetFloat(System.String, Single)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Material:SetFloat(arg_propertyName,arg_value)
end
--- <summary>
--- C#声明:Void SetFloat(Int32, Single)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Material:SetFloat(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Single GetFloat(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>System.Single</returns>
function Material:GetFloat(arg_propertyName)
end
--- <summary>
--- C#声明:Single GetFloat(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>System.Single</returns>
function Material:GetFloat(arg_nameID)
end
--- <summary>
--- C#声明:Void SetInt(System.String, Int32)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Material:SetInt(arg_propertyName,arg_value)
end
--- <summary>
--- C#声明:Void SetInt(Int32, Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Material:SetInt(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Int32 GetInt(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>System.Int32</returns>
function Material:GetInt(arg_propertyName)
end
--- <summary>
--- C#声明:Int32 GetInt(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>System.Int32</returns>
function Material:GetInt(arg_nameID)
end
--- <summary>
--- C#声明:Void SetBuffer(System.String, UnityEngine.ComputeBuffer)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_buffer">UnityEngine.ComputeBuffer</param>
--- <returns>System.Void</returns>
function Material:SetBuffer(arg_propertyName,arg_buffer)
end
--- <summary>
--- C#声明:Boolean HasProperty(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>System.Boolean</returns>
function Material:HasProperty(arg_propertyName)
end
--- <summary>
--- C#声明:Boolean HasProperty(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>System.Boolean</returns>
function Material:HasProperty(arg_nameID)
end
--- <summary>
--- C#声明:System.String GetTag(System.String, Boolean, System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <param name="arg_searchFallbacks">System.Boolean</param>
--- <param name="arg_defaultValue">System.String</param>
--- <returns>System.String</returns>
function Material:GetTag(arg_tag,arg_searchFallbacks,arg_defaultValue)
end
--- <summary>
--- C#声明:System.String GetTag(System.String, Boolean)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <param name="arg_searchFallbacks">System.Boolean</param>
--- <returns>System.String</returns>
function Material:GetTag(arg_tag,arg_searchFallbacks)
end
--- <summary>
--- C#声明:Void SetOverrideTag(System.String, System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <param name="arg_val">System.String</param>
--- <returns>System.Void</returns>
function Material:SetOverrideTag(arg_tag,arg_val)
end
--- <summary>
--- C#声明:Void Lerp(UnityEngine.Material, UnityEngine.Material, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Material</param>
--- <param name="arg_end">UnityEngine.Material</param>
--- <param name="arg_t">System.Single</param>
--- <returns>System.Void</returns>
function Material:Lerp(arg_start,arg_end,arg_t)
end
--- <summary>
--- C#声明:Int32 get_passCount()
--- </summary>
--- <returns>System.Int32</returns>
function Material:get_passCount()
end
--- <summary>
--- C#声明:Boolean SetPass(Int32)
--- </summary>
--- <param name="arg_pass">System.Int32</param>
--- <returns>System.Boolean</returns>
function Material:SetPass(arg_pass)
end
--- <summary>
--- C#声明:Int32 get_renderQueue()
--- </summary>
--- <returns>System.Int32</returns>
function Material:get_renderQueue()
end
--- <summary>
--- C#声明:Void set_renderQueue(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Material:set_renderQueue(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material Create(System.String)
--- </summary>
--- <param name="arg_scriptContents">System.String</param>
--- <returns>UnityEngine.Material</returns>
function Material.Create(arg_scriptContents)
end
--- <summary>
--- C#声明:Void CopyPropertiesFromMaterial(UnityEngine.Material)
--- </summary>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Material:CopyPropertiesFromMaterial(arg_mat)
end
--- <summary>
--- C#声明:Void EnableKeyword(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Void</returns>
function Material:EnableKeyword(arg_keyword)
end
--- <summary>
--- C#声明:Void DisableKeyword(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Void</returns>
function Material:DisableKeyword(arg_keyword)
end
--- <summary>
--- C#声明:Boolean IsKeywordEnabled(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Boolean</returns>
function Material:IsKeywordEnabled(arg_keyword)
end
--- <summary>
--- C#声明:System.String[] get_shaderKeywords()
--- </summary>
--- <returns>System.String[]</returns>
function Material:get_shaderKeywords()
end
--- <summary>
--- C#声明:Void set_shaderKeywords(System.String[])
--- </summary>
--- <param name="arg_value">System.String[]</param>
--- <returns>System.Void</returns>
function Material:set_shaderKeywords(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.MaterialGlobalIlluminationFlags get_globalIlluminationFlags()
--- </summary>
--- <returns>UnityEngine.MaterialGlobalIlluminationFlags</returns>
function Material:get_globalIlluminationFlags()
end
--- <summary>
--- C#声明:Void set_globalIlluminationFlags(UnityEngine.MaterialGlobalIlluminationFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.MaterialGlobalIlluminationFlags</param>
--- <returns>System.Void</returns>
function Material:set_globalIlluminationFlags(arg_value)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Material:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Material:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Material:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Material:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Material:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Material:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Material:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Material:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Material:GetType()
end

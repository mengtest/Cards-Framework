--create by yangxun
ProceduralMaterial={}

--- <summary>
--- 属性:ProceduralCacheSize
--- </summary>
ProceduralMaterial.cacheSize=nil
--- <summary>
--- 属性:Int32
--- </summary>
ProceduralMaterial.animationUpdateRate=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ProceduralMaterial.isProcessing=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ProceduralMaterial.isCachedDataAvailable=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ProceduralMaterial.isLoadTimeGenerated=nil
--- <summary>
--- 属性:ProceduralLoadingBehavior
--- </summary>
ProceduralMaterial.loadingBehavior=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ProceduralMaterial.isSupported=nil
--- <summary>
--- 属性:ProceduralProcessorUsage
--- </summary>
ProceduralMaterial.substanceProcessorUsage=nil
--- <summary>
--- 属性:String
--- </summary>
ProceduralMaterial.preset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ProceduralMaterial.isReadable=nil
--- <summary>
--- 属性:Shader
--- </summary>
ProceduralMaterial.shader=nil
--- <summary>
--- 属性:Color
--- </summary>
ProceduralMaterial.color=nil
--- <summary>
--- 属性:Texture
--- </summary>
ProceduralMaterial.mainTexture=nil
--- <summary>
--- 属性:Vector2
--- </summary>
ProceduralMaterial.mainTextureOffset=nil
--- <summary>
--- 属性:Vector2
--- </summary>
ProceduralMaterial.mainTextureScale=nil
--- <summary>
--- 属性:Int32
--- </summary>
ProceduralMaterial.passCount=nil
--- <summary>
--- 属性:Int32
--- </summary>
ProceduralMaterial.renderQueue=nil
--- <summary>
--- 属性:String[]
--- </summary>
ProceduralMaterial.shaderKeywords=nil
--- <summary>
--- 属性:MaterialGlobalIlluminationFlags
--- </summary>
ProceduralMaterial.globalIlluminationFlags=nil
--- <summary>
--- 属性:String
--- </summary>
ProceduralMaterial.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
ProceduralMaterial.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.ProceduralPropertyDescription[] GetProceduralPropertyDescriptions()
--- </summary>
--- <returns>UnityEngine.ProceduralPropertyDescription[]</returns>
function ProceduralMaterial:GetProceduralPropertyDescriptions()
end
--- <summary>
--- C#声明:Boolean HasProceduralProperty(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:HasProceduralProperty(arg_inputName)
end
--- <summary>
--- C#声明:Boolean GetProceduralBoolean(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:GetProceduralBoolean(arg_inputName)
end
--- <summary>
--- C#声明:Void SetProceduralBoolean(System.String, Boolean)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetProceduralBoolean(arg_inputName,arg_value)
end
--- <summary>
--- C#声明:Single GetProceduralFloat(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>System.Single</returns>
function ProceduralMaterial:GetProceduralFloat(arg_inputName)
end
--- <summary>
--- C#声明:Void SetProceduralFloat(System.String, Single)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetProceduralFloat(arg_inputName,arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 GetProceduralVector(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>UnityEngine.Vector4</returns>
function ProceduralMaterial:GetProceduralVector(arg_inputName)
end
--- <summary>
--- C#声明:Void SetProceduralVector(System.String, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetProceduralVector(arg_inputName,arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Color GetProceduralColor(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>UnityEngine.Color</returns>
function ProceduralMaterial:GetProceduralColor(arg_inputName)
end
--- <summary>
--- C#声明:Void SetProceduralColor(System.String, UnityEngine.Color)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetProceduralColor(arg_inputName,arg_value)
end
--- <summary>
--- C#声明:Int32 GetProceduralEnum(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>System.Int32</returns>
function ProceduralMaterial:GetProceduralEnum(arg_inputName)
end
--- <summary>
--- C#声明:Void SetProceduralEnum(System.String, Int32)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetProceduralEnum(arg_inputName,arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Texture2D GetProceduralTexture(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>UnityEngine.Texture2D</returns>
function ProceduralMaterial:GetProceduralTexture(arg_inputName)
end
--- <summary>
--- C#声明:Void SetProceduralTexture(System.String, UnityEngine.Texture2D)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <param name="arg_value">UnityEngine.Texture2D</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetProceduralTexture(arg_inputName,arg_value)
end
--- <summary>
--- C#声明:Boolean IsProceduralPropertyCached(System.String)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:IsProceduralPropertyCached(arg_inputName)
end
--- <summary>
--- C#声明:Void CacheProceduralProperty(System.String, Boolean)
--- </summary>
--- <param name="arg_inputName">System.String</param>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:CacheProceduralProperty(arg_inputName,arg_value)
end
--- <summary>
--- C#声明:Void ClearCache()
--- </summary>
--- <returns>System.Void</returns>
function ProceduralMaterial:ClearCache()
end
--- <summary>
--- C#声明:UnityEngine.ProceduralCacheSize get_cacheSize()
--- </summary>
--- <returns>UnityEngine.ProceduralCacheSize</returns>
function ProceduralMaterial:get_cacheSize()
end
--- <summary>
--- C#声明:Void set_cacheSize(UnityEngine.ProceduralCacheSize)
--- </summary>
--- <param name="arg_value">UnityEngine.ProceduralCacheSize</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_cacheSize(arg_value)
end
--- <summary>
--- C#声明:Int32 get_animationUpdateRate()
--- </summary>
--- <returns>System.Int32</returns>
function ProceduralMaterial:get_animationUpdateRate()
end
--- <summary>
--- C#声明:Void set_animationUpdateRate(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_animationUpdateRate(arg_value)
end
--- <summary>
--- C#声明:Void RebuildTextures()
--- </summary>
--- <returns>System.Void</returns>
function ProceduralMaterial:RebuildTextures()
end
--- <summary>
--- C#声明:Void RebuildTexturesImmediately()
--- </summary>
--- <returns>System.Void</returns>
function ProceduralMaterial:RebuildTexturesImmediately()
end
--- <summary>
--- C#声明:Boolean get_isProcessing()
--- </summary>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:get_isProcessing()
end
--- <summary>
--- C#声明:Void StopRebuilds()
--- </summary>
--- <returns>System.Void</returns>
function ProceduralMaterial.StopRebuilds()
end
--- <summary>
--- C#声明:Boolean get_isCachedDataAvailable()
--- </summary>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:get_isCachedDataAvailable()
end
--- <summary>
--- C#声明:Boolean get_isLoadTimeGenerated()
--- </summary>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:get_isLoadTimeGenerated()
end
--- <summary>
--- C#声明:Void set_isLoadTimeGenerated(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_isLoadTimeGenerated(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ProceduralLoadingBehavior get_loadingBehavior()
--- </summary>
--- <returns>UnityEngine.ProceduralLoadingBehavior</returns>
function ProceduralMaterial:get_loadingBehavior()
end
--- <summary>
--- C#声明:Boolean get_isSupported()
--- </summary>
--- <returns>System.Boolean</returns>
function ProceduralMaterial.get_isSupported()
end
--- <summary>
--- C#声明:UnityEngine.ProceduralProcessorUsage get_substanceProcessorUsage()
--- </summary>
--- <returns>UnityEngine.ProceduralProcessorUsage</returns>
function ProceduralMaterial.get_substanceProcessorUsage()
end
--- <summary>
--- C#声明:Void set_substanceProcessorUsage(UnityEngine.ProceduralProcessorUsage)
--- </summary>
--- <param name="arg_value">UnityEngine.ProceduralProcessorUsage</param>
--- <returns>System.Void</returns>
function ProceduralMaterial.set_substanceProcessorUsage(arg_value)
end
--- <summary>
--- C#声明:System.String get_preset()
--- </summary>
--- <returns>System.String</returns>
function ProceduralMaterial:get_preset()
end
--- <summary>
--- C#声明:Void set_preset(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_preset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Texture[] GetGeneratedTextures()
--- </summary>
--- <returns>UnityEngine.Texture[]</returns>
function ProceduralMaterial:GetGeneratedTextures()
end
--- <summary>
--- C#声明:UnityEngine.ProceduralTexture GetGeneratedTexture(System.String)
--- </summary>
--- <param name="arg_textureName">System.String</param>
--- <returns>UnityEngine.ProceduralTexture</returns>
function ProceduralMaterial:GetGeneratedTexture(arg_textureName)
end
--- <summary>
--- C#声明:Boolean get_isReadable()
--- </summary>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:get_isReadable()
end
--- <summary>
--- C#声明:Void set_isReadable(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_isReadable(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Shader get_shader()
--- </summary>
--- <returns>UnityEngine.Shader</returns>
function ProceduralMaterial:get_shader()
end
--- <summary>
--- C#声明:Void set_shader(UnityEngine.Shader)
--- </summary>
--- <param name="arg_value">UnityEngine.Shader</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_shader(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Color get_color()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function ProceduralMaterial:get_color()
end
--- <summary>
--- C#声明:Void set_color(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_color(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Texture get_mainTexture()
--- </summary>
--- <returns>UnityEngine.Texture</returns>
function ProceduralMaterial:get_mainTexture()
end
--- <summary>
--- C#声明:Void set_mainTexture(UnityEngine.Texture)
--- </summary>
--- <param name="arg_value">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_mainTexture(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_mainTextureOffset()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function ProceduralMaterial:get_mainTextureOffset()
end
--- <summary>
--- C#声明:Void set_mainTextureOffset(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_mainTextureOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_mainTextureScale()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function ProceduralMaterial:get_mainTextureScale()
end
--- <summary>
--- C#声明:Void set_mainTextureScale(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_mainTextureScale(arg_value)
end
--- <summary>
--- C#声明:Void SetColor(System.String, UnityEngine.Color)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetColor(arg_propertyName,arg_color)
end
--- <summary>
--- C#声明:Void SetColor(Int32, UnityEngine.Color)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetColor(arg_nameID,arg_color)
end
--- <summary>
--- C#声明:UnityEngine.Color GetColor(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Color</returns>
function ProceduralMaterial:GetColor(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Color GetColor(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Color</returns>
function ProceduralMaterial:GetColor(arg_nameID)
end
--- <summary>
--- C#声明:Void SetVector(System.String, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_vector">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetVector(arg_propertyName,arg_vector)
end
--- <summary>
--- C#声明:Void SetVector(Int32, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_vector">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetVector(arg_nameID,arg_vector)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 GetVector(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Vector4</returns>
function ProceduralMaterial:GetVector(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 GetVector(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Vector4</returns>
function ProceduralMaterial:GetVector(arg_nameID)
end
--- <summary>
--- C#声明:Void SetTexture(System.String, UnityEngine.Texture)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetTexture(arg_propertyName,arg_texture)
end
--- <summary>
--- C#声明:Void SetTexture(Int32, UnityEngine.Texture)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetTexture(arg_nameID,arg_texture)
end
--- <summary>
--- C#声明:UnityEngine.Texture GetTexture(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Texture</returns>
function ProceduralMaterial:GetTexture(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Texture GetTexture(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Texture</returns>
function ProceduralMaterial:GetTexture(arg_nameID)
end
--- <summary>
--- C#声明:Void SetTextureOffset(System.String, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_offset">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetTextureOffset(arg_propertyName,arg_offset)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GetTextureOffset(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Vector2</returns>
function ProceduralMaterial:GetTextureOffset(arg_propertyName)
end
--- <summary>
--- C#声明:Void SetTextureScale(System.String, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_scale">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetTextureScale(arg_propertyName,arg_scale)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GetTextureScale(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Vector2</returns>
function ProceduralMaterial:GetTextureScale(arg_propertyName)
end
--- <summary>
--- C#声明:Void SetMatrix(System.String, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetMatrix(arg_propertyName,arg_matrix)
end
--- <summary>
--- C#声明:Void SetMatrix(Int32, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetMatrix(arg_nameID,arg_matrix)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 GetMatrix(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function ProceduralMaterial:GetMatrix(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 GetMatrix(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function ProceduralMaterial:GetMatrix(arg_nameID)
end
--- <summary>
--- C#声明:Void SetFloat(System.String, Single)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetFloat(arg_propertyName,arg_value)
end
--- <summary>
--- C#声明:Void SetFloat(Int32, Single)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetFloat(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Single GetFloat(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>System.Single</returns>
function ProceduralMaterial:GetFloat(arg_propertyName)
end
--- <summary>
--- C#声明:Single GetFloat(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>System.Single</returns>
function ProceduralMaterial:GetFloat(arg_nameID)
end
--- <summary>
--- C#声明:Void SetInt(System.String, Int32)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetInt(arg_propertyName,arg_value)
end
--- <summary>
--- C#声明:Void SetInt(Int32, Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetInt(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Int32 GetInt(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>System.Int32</returns>
function ProceduralMaterial:GetInt(arg_propertyName)
end
--- <summary>
--- C#声明:Int32 GetInt(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>System.Int32</returns>
function ProceduralMaterial:GetInt(arg_nameID)
end
--- <summary>
--- C#声明:Void SetBuffer(System.String, UnityEngine.ComputeBuffer)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <param name="arg_buffer">UnityEngine.ComputeBuffer</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetBuffer(arg_propertyName,arg_buffer)
end
--- <summary>
--- C#声明:Boolean HasProperty(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:HasProperty(arg_propertyName)
end
--- <summary>
--- C#声明:Boolean HasProperty(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:HasProperty(arg_nameID)
end
--- <summary>
--- C#声明:System.String GetTag(System.String, Boolean, System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <param name="arg_searchFallbacks">System.Boolean</param>
--- <param name="arg_defaultValue">System.String</param>
--- <returns>System.String</returns>
function ProceduralMaterial:GetTag(arg_tag,arg_searchFallbacks,arg_defaultValue)
end
--- <summary>
--- C#声明:System.String GetTag(System.String, Boolean)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <param name="arg_searchFallbacks">System.Boolean</param>
--- <returns>System.String</returns>
function ProceduralMaterial:GetTag(arg_tag,arg_searchFallbacks)
end
--- <summary>
--- C#声明:Void SetOverrideTag(System.String, System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <param name="arg_val">System.String</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:SetOverrideTag(arg_tag,arg_val)
end
--- <summary>
--- C#声明:Void Lerp(UnityEngine.Material, UnityEngine.Material, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Material</param>
--- <param name="arg_end">UnityEngine.Material</param>
--- <param name="arg_t">System.Single</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:Lerp(arg_start,arg_end,arg_t)
end
--- <summary>
--- C#声明:Int32 get_passCount()
--- </summary>
--- <returns>System.Int32</returns>
function ProceduralMaterial:get_passCount()
end
--- <summary>
--- C#声明:Boolean SetPass(Int32)
--- </summary>
--- <param name="arg_pass">System.Int32</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:SetPass(arg_pass)
end
--- <summary>
--- C#声明:Int32 get_renderQueue()
--- </summary>
--- <returns>System.Int32</returns>
function ProceduralMaterial:get_renderQueue()
end
--- <summary>
--- C#声明:Void set_renderQueue(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_renderQueue(arg_value)
end
--- <summary>
--- C#声明:Void CopyPropertiesFromMaterial(UnityEngine.Material)
--- </summary>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:CopyPropertiesFromMaterial(arg_mat)
end
--- <summary>
--- C#声明:Void EnableKeyword(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:EnableKeyword(arg_keyword)
end
--- <summary>
--- C#声明:Void DisableKeyword(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:DisableKeyword(arg_keyword)
end
--- <summary>
--- C#声明:Boolean IsKeywordEnabled(System.String)
--- </summary>
--- <param name="arg_keyword">System.String</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:IsKeywordEnabled(arg_keyword)
end
--- <summary>
--- C#声明:System.String[] get_shaderKeywords()
--- </summary>
--- <returns>System.String[]</returns>
function ProceduralMaterial:get_shaderKeywords()
end
--- <summary>
--- C#声明:Void set_shaderKeywords(System.String[])
--- </summary>
--- <param name="arg_value">System.String[]</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_shaderKeywords(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.MaterialGlobalIlluminationFlags get_globalIlluminationFlags()
--- </summary>
--- <returns>UnityEngine.MaterialGlobalIlluminationFlags</returns>
function ProceduralMaterial:get_globalIlluminationFlags()
end
--- <summary>
--- C#声明:Void set_globalIlluminationFlags(UnityEngine.MaterialGlobalIlluminationFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.MaterialGlobalIlluminationFlags</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_globalIlluminationFlags(arg_value)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function ProceduralMaterial:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function ProceduralMaterial:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function ProceduralMaterial:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function ProceduralMaterial:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function ProceduralMaterial:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function ProceduralMaterial:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function ProceduralMaterial:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function ProceduralMaterial:GetType()
end

--create by yangxun
RenderTexture={}

--- <summary>
--- 属性:Int32
--- </summary>
RenderTexture.width=nil
--- <summary>
--- 属性:Int32
--- </summary>
RenderTexture.height=nil
--- <summary>
--- 属性:Int32
--- </summary>
RenderTexture.depth=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.isPowerOfTwo=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.sRGB=nil
--- <summary>
--- 属性:RenderTextureFormat
--- </summary>
RenderTexture.format=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.useMipMap=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.generateMips=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.isCubemap=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.isVolume=nil
--- <summary>
--- 属性:Int32
--- </summary>
RenderTexture.volumeDepth=nil
--- <summary>
--- 属性:Int32
--- </summary>
RenderTexture.antiAliasing=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.enableRandomWrite=nil
--- <summary>
--- 属性:RenderBuffer
--- </summary>
RenderTexture.colorBuffer=nil
--- <summary>
--- 属性:RenderBuffer
--- </summary>
RenderTexture.depthBuffer=nil
--- <summary>
--- 属性:RenderTexture
--- </summary>
RenderTexture.active=nil
--- <summary>
--- 属性:Boolean
--- </summary>
RenderTexture.enabled=nil
--- <summary>
--- 属性:FilterMode
--- </summary>
RenderTexture.filterMode=nil
--- <summary>
--- 属性:Int32
--- </summary>
RenderTexture.anisoLevel=nil
--- <summary>
--- 属性:TextureWrapMode
--- </summary>
RenderTexture.wrapMode=nil
--- <summary>
--- 属性:Single
--- </summary>
RenderTexture.mipMapBias=nil
--- <summary>
--- 属性:Vector2
--- </summary>
RenderTexture.texelSize=nil
--- <summary>
--- 属性:String
--- </summary>
RenderTexture.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
RenderTexture.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.RenderTexture GetTemporary(Int32, Int32, Int32, UnityEngine.RenderTextureFormat, UnityEngine.RenderTextureReadWrite, Int32)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <param name="arg_format">UnityEngine.RenderTextureFormat</param>
--- <param name="arg_readWrite">UnityEngine.RenderTextureReadWrite</param>
--- <param name="arg_antiAliasing">System.Int32</param>
--- <returns>UnityEngine.RenderTexture</returns>
function RenderTexture.GetTemporary(arg_width,arg_height,arg_depthBuffer,arg_format,arg_readWrite,arg_antiAliasing)
end
--- <summary>
--- C#声明:UnityEngine.RenderTexture GetTemporary(Int32, Int32, Int32, UnityEngine.RenderTextureFormat, UnityEngine.RenderTextureReadWrite)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <param name="arg_format">UnityEngine.RenderTextureFormat</param>
--- <param name="arg_readWrite">UnityEngine.RenderTextureReadWrite</param>
--- <returns>UnityEngine.RenderTexture</returns>
function RenderTexture.GetTemporary(arg_width,arg_height,arg_depthBuffer,arg_format,arg_readWrite)
end
--- <summary>
--- C#声明:UnityEngine.RenderTexture GetTemporary(Int32, Int32, Int32, UnityEngine.RenderTextureFormat)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <param name="arg_format">UnityEngine.RenderTextureFormat</param>
--- <returns>UnityEngine.RenderTexture</returns>
function RenderTexture.GetTemporary(arg_width,arg_height,arg_depthBuffer,arg_format)
end
--- <summary>
--- C#声明:UnityEngine.RenderTexture GetTemporary(Int32, Int32, Int32)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <returns>UnityEngine.RenderTexture</returns>
function RenderTexture.GetTemporary(arg_width,arg_height,arg_depthBuffer)
end
--- <summary>
--- C#声明:UnityEngine.RenderTexture GetTemporary(Int32, Int32)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <returns>UnityEngine.RenderTexture</returns>
function RenderTexture.GetTemporary(arg_width,arg_height)
end
--- <summary>
--- C#声明:Void ReleaseTemporary(UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_temp">UnityEngine.RenderTexture</param>
--- <returns>System.Void</returns>
function RenderTexture.ReleaseTemporary(arg_temp)
end
--- <summary>
--- C#声明:Int32 get_width()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:get_width()
end
--- <summary>
--- C#声明:Void set_width(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function RenderTexture:set_width(arg_value)
end
--- <summary>
--- C#声明:Int32 get_height()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:get_height()
end
--- <summary>
--- C#声明:Void set_height(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function RenderTexture:set_height(arg_value)
end
--- <summary>
--- C#声明:Int32 get_depth()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:get_depth()
end
--- <summary>
--- C#声明:Void set_depth(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function RenderTexture:set_depth(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isPowerOfTwo()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:get_isPowerOfTwo()
end
--- <summary>
--- C#声明:Void set_isPowerOfTwo(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture:set_isPowerOfTwo(arg_value)
end
--- <summary>
--- C#声明:Boolean get_sRGB()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:get_sRGB()
end
--- <summary>
--- C#声明:UnityEngine.RenderTextureFormat get_format()
--- </summary>
--- <returns>UnityEngine.RenderTextureFormat</returns>
function RenderTexture:get_format()
end
--- <summary>
--- C#声明:Void set_format(UnityEngine.RenderTextureFormat)
--- </summary>
--- <param name="arg_value">UnityEngine.RenderTextureFormat</param>
--- <returns>System.Void</returns>
function RenderTexture:set_format(arg_value)
end
--- <summary>
--- C#声明:Boolean get_useMipMap()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:get_useMipMap()
end
--- <summary>
--- C#声明:Void set_useMipMap(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture:set_useMipMap(arg_value)
end
--- <summary>
--- C#声明:Boolean get_generateMips()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:get_generateMips()
end
--- <summary>
--- C#声明:Void set_generateMips(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture:set_generateMips(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isCubemap()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:get_isCubemap()
end
--- <summary>
--- C#声明:Void set_isCubemap(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture:set_isCubemap(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isVolume()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:get_isVolume()
end
--- <summary>
--- C#声明:Void set_isVolume(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture:set_isVolume(arg_value)
end
--- <summary>
--- C#声明:Int32 get_volumeDepth()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:get_volumeDepth()
end
--- <summary>
--- C#声明:Void set_volumeDepth(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function RenderTexture:set_volumeDepth(arg_value)
end
--- <summary>
--- C#声明:Int32 get_antiAliasing()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:get_antiAliasing()
end
--- <summary>
--- C#声明:Void set_antiAliasing(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function RenderTexture:set_antiAliasing(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enableRandomWrite()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:get_enableRandomWrite()
end
--- <summary>
--- C#声明:Void set_enableRandomWrite(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture:set_enableRandomWrite(arg_value)
end
--- <summary>
--- C#声明:Boolean Create()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:Create()
end
--- <summary>
--- C#声明:Void Release()
--- </summary>
--- <returns>System.Void</returns>
function RenderTexture:Release()
end
--- <summary>
--- C#声明:Boolean IsCreated()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture:IsCreated()
end
--- <summary>
--- C#声明:Void DiscardContents()
--- </summary>
--- <returns>System.Void</returns>
function RenderTexture:DiscardContents()
end
--- <summary>
--- C#声明:Void DiscardContents(Boolean, Boolean)
--- </summary>
--- <param name="arg_discardColor">System.Boolean</param>
--- <param name="arg_discardDepth">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture:DiscardContents(arg_discardColor,arg_discardDepth)
end
--- <summary>
--- C#声明:Void MarkRestoreExpected()
--- </summary>
--- <returns>System.Void</returns>
function RenderTexture:MarkRestoreExpected()
end
--- <summary>
--- C#声明:UnityEngine.RenderBuffer get_colorBuffer()
--- </summary>
--- <returns>UnityEngine.RenderBuffer</returns>
function RenderTexture:get_colorBuffer()
end
--- <summary>
--- C#声明:UnityEngine.RenderBuffer get_depthBuffer()
--- </summary>
--- <returns>UnityEngine.RenderBuffer</returns>
function RenderTexture:get_depthBuffer()
end
--- <summary>
--- C#声明:Void SetGlobalShaderProperty(System.String)
--- </summary>
--- <param name="arg_propertyName">System.String</param>
--- <returns>System.Void</returns>
function RenderTexture:SetGlobalShaderProperty(arg_propertyName)
end
--- <summary>
--- C#声明:UnityEngine.RenderTexture get_active()
--- </summary>
--- <returns>UnityEngine.RenderTexture</returns>
function RenderTexture.get_active()
end
--- <summary>
--- C#声明:Void set_active(UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_value">UnityEngine.RenderTexture</param>
--- <returns>System.Void</returns>
function RenderTexture.set_active(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function RenderTexture.get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function RenderTexture.set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GetTexelOffset()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function RenderTexture:GetTexelOffset()
end
--- <summary>
--- C#声明:Boolean SupportsStencil(UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_rt">UnityEngine.RenderTexture</param>
--- <returns>System.Boolean</returns>
function RenderTexture.SupportsStencil(arg_rt)
end
--- <summary>
--- C#声明:Void SetBorderColor(UnityEngine.Color)
--- </summary>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function RenderTexture:SetBorderColor(arg_color)
end
--- <summary>
--- C#声明:UnityEngine.FilterMode get_filterMode()
--- </summary>
--- <returns>UnityEngine.FilterMode</returns>
function RenderTexture:get_filterMode()
end
--- <summary>
--- C#声明:Void set_filterMode(UnityEngine.FilterMode)
--- </summary>
--- <param name="arg_value">UnityEngine.FilterMode</param>
--- <returns>System.Void</returns>
function RenderTexture:set_filterMode(arg_value)
end
--- <summary>
--- C#声明:Int32 get_anisoLevel()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:get_anisoLevel()
end
--- <summary>
--- C#声明:Void set_anisoLevel(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function RenderTexture:set_anisoLevel(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextureWrapMode get_wrapMode()
--- </summary>
--- <returns>UnityEngine.TextureWrapMode</returns>
function RenderTexture:get_wrapMode()
end
--- <summary>
--- C#声明:Void set_wrapMode(UnityEngine.TextureWrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.TextureWrapMode</param>
--- <returns>System.Void</returns>
function RenderTexture:set_wrapMode(arg_value)
end
--- <summary>
--- C#声明:Single get_mipMapBias()
--- </summary>
--- <returns>System.Single</returns>
function RenderTexture:get_mipMapBias()
end
--- <summary>
--- C#声明:Void set_mipMapBias(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function RenderTexture:set_mipMapBias(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_texelSize()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function RenderTexture:get_texelSize()
end
--- <summary>
--- C#声明:IntPtr GetNativeTexturePtr()
--- </summary>
--- <returns>System.IntPtr</returns>
function RenderTexture:GetNativeTexturePtr()
end
--- <summary>
--- C#声明:Int32 GetNativeTextureID()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:GetNativeTextureID()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function RenderTexture:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function RenderTexture:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function RenderTexture:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function RenderTexture:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function RenderTexture:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function RenderTexture:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function RenderTexture:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function RenderTexture:GetType()
end

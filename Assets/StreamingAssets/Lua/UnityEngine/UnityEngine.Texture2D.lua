--create by yangxun
Texture2D={}

--- <summary>
--- 属性:Int32
--- </summary>
Texture2D.mipmapCount=nil
--- <summary>
--- 属性:TextureFormat
--- </summary>
Texture2D.format=nil
--- <summary>
--- 属性:Texture2D
--- </summary>
Texture2D.whiteTexture=nil
--- <summary>
--- 属性:Texture2D
--- </summary>
Texture2D.blackTexture=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Texture2D.alphaIsTransparency=nil
--- <summary>
--- 属性:Int32
--- </summary>
Texture2D.width=nil
--- <summary>
--- 属性:Int32
--- </summary>
Texture2D.height=nil
--- <summary>
--- 属性:FilterMode
--- </summary>
Texture2D.filterMode=nil
--- <summary>
--- 属性:Int32
--- </summary>
Texture2D.anisoLevel=nil
--- <summary>
--- 属性:TextureWrapMode
--- </summary>
Texture2D.wrapMode=nil
--- <summary>
--- 属性:Single
--- </summary>
Texture2D.mipMapBias=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Texture2D.texelSize=nil
--- <summary>
--- 属性:String
--- </summary>
Texture2D.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Texture2D.hideFlags=nil
--- <summary>
--- C#声明:Int32 get_mipmapCount()
--- </summary>
--- <returns>System.Int32</returns>
function Texture2D:get_mipmapCount()
end
--- <summary>
--- C#声明:UnityEngine.Texture2D CreateExternalTexture(Int32, Int32, UnityEngine.TextureFormat, Boolean, Boolean, IntPtr)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_format">UnityEngine.TextureFormat</param>
--- <param name="arg_mipmap">System.Boolean</param>
--- <param name="arg_linear">System.Boolean</param>
--- <param name="arg_nativeTex">System.IntPtr</param>
--- <returns>UnityEngine.Texture2D</returns>
function Texture2D.CreateExternalTexture(arg_width,arg_height,arg_format,arg_mipmap,arg_linear,arg_nativeTex)
end
--- <summary>
--- C#声明:Void UpdateExternalTexture(IntPtr)
--- </summary>
--- <param name="arg_nativeTex">System.IntPtr</param>
--- <returns>System.Void</returns>
function Texture2D:UpdateExternalTexture(arg_nativeTex)
end
--- <summary>
--- C#声明:UnityEngine.TextureFormat get_format()
--- </summary>
--- <returns>UnityEngine.TextureFormat</returns>
function Texture2D:get_format()
end
--- <summary>
--- C#声明:UnityEngine.Texture2D get_whiteTexture()
--- </summary>
--- <returns>UnityEngine.Texture2D</returns>
function Texture2D.get_whiteTexture()
end
--- <summary>
--- C#声明:UnityEngine.Texture2D get_blackTexture()
--- </summary>
--- <returns>UnityEngine.Texture2D</returns>
function Texture2D.get_blackTexture()
end
--- <summary>
--- C#声明:Void SetPixel(Int32, Int32, UnityEngine.Color)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixel(arg_x,arg_y,arg_color)
end
--- <summary>
--- C#声明:UnityEngine.Color GetPixel(Int32, Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <returns>UnityEngine.Color</returns>
function Texture2D:GetPixel(arg_x,arg_y)
end
--- <summary>
--- C#声明:UnityEngine.Color GetPixelBilinear(Single, Single)
--- </summary>
--- <param name="arg_u">System.Single</param>
--- <param name="arg_v">System.Single</param>
--- <returns>UnityEngine.Color</returns>
function Texture2D:GetPixelBilinear(arg_u,arg_v)
end
--- <summary>
--- C#声明:Void SetPixels(UnityEngine.Color[])
--- </summary>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels(arg_colors)
end
--- <summary>
--- C#声明:Void SetPixels(UnityEngine.Color[], Int32)
--- </summary>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels(arg_colors,arg_miplevel)
end
--- <summary>
--- C#声明:Void SetPixels(Int32, Int32, Int32, Int32, UnityEngine.Color[], Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_blockWidth">System.Int32</param>
--- <param name="arg_blockHeight">System.Int32</param>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels(arg_x,arg_y,arg_blockWidth,arg_blockHeight,arg_colors,arg_miplevel)
end
--- <summary>
--- C#声明:Void SetPixels(Int32, Int32, Int32, Int32, UnityEngine.Color[])
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_blockWidth">System.Int32</param>
--- <param name="arg_blockHeight">System.Int32</param>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels(arg_x,arg_y,arg_blockWidth,arg_blockHeight,arg_colors)
end
--- <summary>
--- C#声明:Void SetPixels32(UnityEngine.Color32[])
--- </summary>
--- <param name="arg_colors">UnityEngine.Color32[]</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels32(arg_colors)
end
--- <summary>
--- C#声明:Void SetPixels32(UnityEngine.Color32[], Int32)
--- </summary>
--- <param name="arg_colors">UnityEngine.Color32[]</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels32(arg_colors,arg_miplevel)
end
--- <summary>
--- C#声明:Void SetPixels32(Int32, Int32, Int32, Int32, UnityEngine.Color32[])
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_blockWidth">System.Int32</param>
--- <param name="arg_blockHeight">System.Int32</param>
--- <param name="arg_colors">UnityEngine.Color32[]</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels32(arg_x,arg_y,arg_blockWidth,arg_blockHeight,arg_colors)
end
--- <summary>
--- C#声明:Void SetPixels32(Int32, Int32, Int32, Int32, UnityEngine.Color32[], Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_blockWidth">System.Int32</param>
--- <param name="arg_blockHeight">System.Int32</param>
--- <param name="arg_colors">UnityEngine.Color32[]</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:SetPixels32(arg_x,arg_y,arg_blockWidth,arg_blockHeight,arg_colors,arg_miplevel)
end
--- <summary>
--- C#声明:Boolean LoadImage(Byte[])
--- </summary>
--- <param name="arg_data">System.Byte[]</param>
--- <returns>System.Boolean</returns>
function Texture2D:LoadImage(arg_data)
end
--- <summary>
--- C#声明:Void LoadRawTextureData(Byte[])
--- </summary>
--- <param name="arg_data">System.Byte[]</param>
--- <returns>System.Void</returns>
function Texture2D:LoadRawTextureData(arg_data)
end
--- <summary>
--- C#声明:Byte[] GetRawTextureData()
--- </summary>
--- <returns>System.Byte[]</returns>
function Texture2D:GetRawTextureData()
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels()
--- </summary>
--- <returns>UnityEngine.Color[]</returns>
function Texture2D:GetPixels()
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels(Int32)
--- </summary>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>UnityEngine.Color[]</returns>
function Texture2D:GetPixels(arg_miplevel)
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels(Int32, Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_blockWidth">System.Int32</param>
--- <param name="arg_blockHeight">System.Int32</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>UnityEngine.Color[]</returns>
function Texture2D:GetPixels(arg_x,arg_y,arg_blockWidth,arg_blockHeight,arg_miplevel)
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_blockWidth">System.Int32</param>
--- <param name="arg_blockHeight">System.Int32</param>
--- <returns>UnityEngine.Color[]</returns>
function Texture2D:GetPixels(arg_x,arg_y,arg_blockWidth,arg_blockHeight)
end
--- <summary>
--- C#声明:UnityEngine.Color32[] GetPixels32(Int32)
--- </summary>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>UnityEngine.Color32[]</returns>
function Texture2D:GetPixels32(arg_miplevel)
end
--- <summary>
--- C#声明:UnityEngine.Color32[] GetPixels32()
--- </summary>
--- <returns>UnityEngine.Color32[]</returns>
function Texture2D:GetPixels32()
end
--- <summary>
--- C#声明:Void Apply(Boolean, Boolean)
--- </summary>
--- <param name="arg_updateMipmaps">System.Boolean</param>
--- <param name="arg_makeNoLongerReadable">System.Boolean</param>
--- <returns>System.Void</returns>
function Texture2D:Apply(arg_updateMipmaps,arg_makeNoLongerReadable)
end
--- <summary>
--- C#声明:Void Apply(Boolean)
--- </summary>
--- <param name="arg_updateMipmaps">System.Boolean</param>
--- <returns>System.Void</returns>
function Texture2D:Apply(arg_updateMipmaps)
end
--- <summary>
--- C#声明:Void Apply()
--- </summary>
--- <returns>System.Void</returns>
function Texture2D:Apply()
end
--- <summary>
--- C#声明:Boolean Resize(Int32, Int32, UnityEngine.TextureFormat, Boolean)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_format">UnityEngine.TextureFormat</param>
--- <param name="arg_hasMipMap">System.Boolean</param>
--- <returns>System.Boolean</returns>
function Texture2D:Resize(arg_width,arg_height,arg_format,arg_hasMipMap)
end
--- <summary>
--- C#声明:Boolean Resize(Int32, Int32)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <returns>System.Boolean</returns>
function Texture2D:Resize(arg_width,arg_height)
end
--- <summary>
--- C#声明:Void Compress(Boolean)
--- </summary>
--- <param name="arg_highQuality">System.Boolean</param>
--- <returns>System.Void</returns>
function Texture2D:Compress(arg_highQuality)
end
--- <summary>
--- C#声明:UnityEngine.Rect[] PackTextures(UnityEngine.Texture2D[], Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_textures">UnityEngine.Texture2D[]</param>
--- <param name="arg_padding">System.Int32</param>
--- <param name="arg_maximumAtlasSize">System.Int32</param>
--- <param name="arg_makeNoLongerReadable">System.Boolean</param>
--- <returns>UnityEngine.Rect[]</returns>
function Texture2D:PackTextures(arg_textures,arg_padding,arg_maximumAtlasSize,arg_makeNoLongerReadable)
end
--- <summary>
--- C#声明:UnityEngine.Rect[] PackTextures(UnityEngine.Texture2D[], Int32, Int32)
--- </summary>
--- <param name="arg_textures">UnityEngine.Texture2D[]</param>
--- <param name="arg_padding">System.Int32</param>
--- <param name="arg_maximumAtlasSize">System.Int32</param>
--- <returns>UnityEngine.Rect[]</returns>
function Texture2D:PackTextures(arg_textures,arg_padding,arg_maximumAtlasSize)
end
--- <summary>
--- C#声明:UnityEngine.Rect[] PackTextures(UnityEngine.Texture2D[], Int32)
--- </summary>
--- <param name="arg_textures">UnityEngine.Texture2D[]</param>
--- <param name="arg_padding">System.Int32</param>
--- <returns>UnityEngine.Rect[]</returns>
function Texture2D:PackTextures(arg_textures,arg_padding)
end
--- <summary>
--- C#声明:Void ReadPixels(UnityEngine.Rect, Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_source">UnityEngine.Rect</param>
--- <param name="arg_destX">System.Int32</param>
--- <param name="arg_destY">System.Int32</param>
--- <param name="arg_recalculateMipMaps">System.Boolean</param>
--- <returns>System.Void</returns>
function Texture2D:ReadPixels(arg_source,arg_destX,arg_destY,arg_recalculateMipMaps)
end
--- <summary>
--- C#声明:Void ReadPixels(UnityEngine.Rect, Int32, Int32)
--- </summary>
--- <param name="arg_source">UnityEngine.Rect</param>
--- <param name="arg_destX">System.Int32</param>
--- <param name="arg_destY">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:ReadPixels(arg_source,arg_destX,arg_destY)
end
--- <summary>
--- C#声明:Byte[] EncodeToPNG()
--- </summary>
--- <returns>System.Byte[]</returns>
function Texture2D:EncodeToPNG()
end
--- <summary>
--- C#声明:Byte[] EncodeToJPG(Int32)
--- </summary>
--- <param name="arg_quality">System.Int32</param>
--- <returns>System.Byte[]</returns>
function Texture2D:EncodeToJPG(arg_quality)
end
--- <summary>
--- C#声明:Byte[] EncodeToJPG()
--- </summary>
--- <returns>System.Byte[]</returns>
function Texture2D:EncodeToJPG()
end
--- <summary>
--- C#声明:Boolean get_alphaIsTransparency()
--- </summary>
--- <returns>System.Boolean</returns>
function Texture2D:get_alphaIsTransparency()
end
--- <summary>
--- C#声明:Void set_alphaIsTransparency(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Texture2D:set_alphaIsTransparency(arg_value)
end
--- <summary>
--- C#声明:Int32 get_width()
--- </summary>
--- <returns>System.Int32</returns>
function Texture2D:get_width()
end
--- <summary>
--- C#声明:Void set_width(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:set_width(arg_value)
end
--- <summary>
--- C#声明:Int32 get_height()
--- </summary>
--- <returns>System.Int32</returns>
function Texture2D:get_height()
end
--- <summary>
--- C#声明:Void set_height(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:set_height(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.FilterMode get_filterMode()
--- </summary>
--- <returns>UnityEngine.FilterMode</returns>
function Texture2D:get_filterMode()
end
--- <summary>
--- C#声明:Void set_filterMode(UnityEngine.FilterMode)
--- </summary>
--- <param name="arg_value">UnityEngine.FilterMode</param>
--- <returns>System.Void</returns>
function Texture2D:set_filterMode(arg_value)
end
--- <summary>
--- C#声明:Int32 get_anisoLevel()
--- </summary>
--- <returns>System.Int32</returns>
function Texture2D:get_anisoLevel()
end
--- <summary>
--- C#声明:Void set_anisoLevel(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Texture2D:set_anisoLevel(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextureWrapMode get_wrapMode()
--- </summary>
--- <returns>UnityEngine.TextureWrapMode</returns>
function Texture2D:get_wrapMode()
end
--- <summary>
--- C#声明:Void set_wrapMode(UnityEngine.TextureWrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.TextureWrapMode</param>
--- <returns>System.Void</returns>
function Texture2D:set_wrapMode(arg_value)
end
--- <summary>
--- C#声明:Single get_mipMapBias()
--- </summary>
--- <returns>System.Single</returns>
function Texture2D:get_mipMapBias()
end
--- <summary>
--- C#声明:Void set_mipMapBias(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Texture2D:set_mipMapBias(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_texelSize()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Texture2D:get_texelSize()
end
--- <summary>
--- C#声明:IntPtr GetNativeTexturePtr()
--- </summary>
--- <returns>System.IntPtr</returns>
function Texture2D:GetNativeTexturePtr()
end
--- <summary>
--- C#声明:Int32 GetNativeTextureID()
--- </summary>
--- <returns>System.Int32</returns>
function Texture2D:GetNativeTextureID()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Texture2D:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Texture2D:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Texture2D:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Texture2D:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Texture2D:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Texture2D:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Texture2D:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Texture2D:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Texture2D:GetType()
end

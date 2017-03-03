--create by yangxun
Cubemap={}

--- <summary>
--- 属性:TextureFormat
--- </summary>
Cubemap.format=nil
--- <summary>
--- 属性:Int32
--- </summary>
Cubemap.width=nil
--- <summary>
--- 属性:Int32
--- </summary>
Cubemap.height=nil
--- <summary>
--- 属性:FilterMode
--- </summary>
Cubemap.filterMode=nil
--- <summary>
--- 属性:Int32
--- </summary>
Cubemap.anisoLevel=nil
--- <summary>
--- 属性:TextureWrapMode
--- </summary>
Cubemap.wrapMode=nil
--- <summary>
--- 属性:Single
--- </summary>
Cubemap.mipMapBias=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Cubemap.texelSize=nil
--- <summary>
--- 属性:String
--- </summary>
Cubemap.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Cubemap.hideFlags=nil
--- <summary>
--- C#声明:Void SetPixel(UnityEngine.CubemapFace, Int32, Int32, UnityEngine.Color)
--- </summary>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Cubemap:SetPixel(arg_face,arg_x,arg_y,arg_color)
end
--- <summary>
--- C#声明:UnityEngine.Color GetPixel(UnityEngine.CubemapFace, Int32, Int32)
--- </summary>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <returns>UnityEngine.Color</returns>
function Cubemap:GetPixel(arg_face,arg_x,arg_y)
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels(UnityEngine.CubemapFace, Int32)
--- </summary>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>UnityEngine.Color[]</returns>
function Cubemap:GetPixels(arg_face,arg_miplevel)
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels(UnityEngine.CubemapFace)
--- </summary>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <returns>UnityEngine.Color[]</returns>
function Cubemap:GetPixels(arg_face)
end
--- <summary>
--- C#声明:Void SetPixels(UnityEngine.Color[], UnityEngine.CubemapFace, Int32)
--- </summary>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function Cubemap:SetPixels(arg_colors,arg_face,arg_miplevel)
end
--- <summary>
--- C#声明:Void SetPixels(UnityEngine.Color[], UnityEngine.CubemapFace)
--- </summary>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <returns>System.Void</returns>
function Cubemap:SetPixels(arg_colors,arg_face)
end
--- <summary>
--- C#声明:Void Apply(Boolean, Boolean)
--- </summary>
--- <param name="arg_updateMipmaps">System.Boolean</param>
--- <param name="arg_makeNoLongerReadable">System.Boolean</param>
--- <returns>System.Void</returns>
function Cubemap:Apply(arg_updateMipmaps,arg_makeNoLongerReadable)
end
--- <summary>
--- C#声明:Void Apply(Boolean)
--- </summary>
--- <param name="arg_updateMipmaps">System.Boolean</param>
--- <returns>System.Void</returns>
function Cubemap:Apply(arg_updateMipmaps)
end
--- <summary>
--- C#声明:Void Apply()
--- </summary>
--- <returns>System.Void</returns>
function Cubemap:Apply()
end
--- <summary>
--- C#声明:UnityEngine.TextureFormat get_format()
--- </summary>
--- <returns>UnityEngine.TextureFormat</returns>
function Cubemap:get_format()
end
--- <summary>
--- C#声明:Void SmoothEdges(Int32)
--- </summary>
--- <param name="arg_smoothRegionWidthInPixels">System.Int32</param>
--- <returns>System.Void</returns>
function Cubemap:SmoothEdges(arg_smoothRegionWidthInPixels)
end
--- <summary>
--- C#声明:Void SmoothEdges()
--- </summary>
--- <returns>System.Void</returns>
function Cubemap:SmoothEdges()
end
--- <summary>
--- C#声明:Int32 get_width()
--- </summary>
--- <returns>System.Int32</returns>
function Cubemap:get_width()
end
--- <summary>
--- C#声明:Void set_width(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Cubemap:set_width(arg_value)
end
--- <summary>
--- C#声明:Int32 get_height()
--- </summary>
--- <returns>System.Int32</returns>
function Cubemap:get_height()
end
--- <summary>
--- C#声明:Void set_height(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Cubemap:set_height(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.FilterMode get_filterMode()
--- </summary>
--- <returns>UnityEngine.FilterMode</returns>
function Cubemap:get_filterMode()
end
--- <summary>
--- C#声明:Void set_filterMode(UnityEngine.FilterMode)
--- </summary>
--- <param name="arg_value">UnityEngine.FilterMode</param>
--- <returns>System.Void</returns>
function Cubemap:set_filterMode(arg_value)
end
--- <summary>
--- C#声明:Int32 get_anisoLevel()
--- </summary>
--- <returns>System.Int32</returns>
function Cubemap:get_anisoLevel()
end
--- <summary>
--- C#声明:Void set_anisoLevel(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Cubemap:set_anisoLevel(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextureWrapMode get_wrapMode()
--- </summary>
--- <returns>UnityEngine.TextureWrapMode</returns>
function Cubemap:get_wrapMode()
end
--- <summary>
--- C#声明:Void set_wrapMode(UnityEngine.TextureWrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.TextureWrapMode</param>
--- <returns>System.Void</returns>
function Cubemap:set_wrapMode(arg_value)
end
--- <summary>
--- C#声明:Single get_mipMapBias()
--- </summary>
--- <returns>System.Single</returns>
function Cubemap:get_mipMapBias()
end
--- <summary>
--- C#声明:Void set_mipMapBias(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cubemap:set_mipMapBias(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_texelSize()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Cubemap:get_texelSize()
end
--- <summary>
--- C#声明:IntPtr GetNativeTexturePtr()
--- </summary>
--- <returns>System.IntPtr</returns>
function Cubemap:GetNativeTexturePtr()
end
--- <summary>
--- C#声明:Int32 GetNativeTextureID()
--- </summary>
--- <returns>System.Int32</returns>
function Cubemap:GetNativeTextureID()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Cubemap:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Cubemap:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Cubemap:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Cubemap:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Cubemap:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Cubemap:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Cubemap:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Cubemap:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Cubemap:GetType()
end

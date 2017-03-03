--create by yangxun
Texture3D={}

--- <summary>
--- 属性:Int32
--- </summary>
Texture3D.depth=nil
--- <summary>
--- 属性:TextureFormat
--- </summary>
Texture3D.format=nil
--- <summary>
--- 属性:Int32
--- </summary>
Texture3D.width=nil
--- <summary>
--- 属性:Int32
--- </summary>
Texture3D.height=nil
--- <summary>
--- 属性:FilterMode
--- </summary>
Texture3D.filterMode=nil
--- <summary>
--- 属性:Int32
--- </summary>
Texture3D.anisoLevel=nil
--- <summary>
--- 属性:TextureWrapMode
--- </summary>
Texture3D.wrapMode=nil
--- <summary>
--- 属性:Single
--- </summary>
Texture3D.mipMapBias=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Texture3D.texelSize=nil
--- <summary>
--- 属性:String
--- </summary>
Texture3D.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Texture3D.hideFlags=nil
--- <summary>
--- C#声明:Int32 get_depth()
--- </summary>
--- <returns>System.Int32</returns>
function Texture3D:get_depth()
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels(Int32)
--- </summary>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>UnityEngine.Color[]</returns>
function Texture3D:GetPixels(arg_miplevel)
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels()
--- </summary>
--- <returns>UnityEngine.Color[]</returns>
function Texture3D:GetPixels()
end
--- <summary>
--- C#声明:UnityEngine.Color32[] GetPixels32(Int32)
--- </summary>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>UnityEngine.Color32[]</returns>
function Texture3D:GetPixels32(arg_miplevel)
end
--- <summary>
--- C#声明:UnityEngine.Color32[] GetPixels32()
--- </summary>
--- <returns>UnityEngine.Color32[]</returns>
function Texture3D:GetPixels32()
end
--- <summary>
--- C#声明:Void SetPixels(UnityEngine.Color[], Int32)
--- </summary>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function Texture3D:SetPixels(arg_colors,arg_miplevel)
end
--- <summary>
--- C#声明:Void SetPixels(UnityEngine.Color[])
--- </summary>
--- <param name="arg_colors">UnityEngine.Color[]</param>
--- <returns>System.Void</returns>
function Texture3D:SetPixels(arg_colors)
end
--- <summary>
--- C#声明:Void SetPixels32(UnityEngine.Color32[], Int32)
--- </summary>
--- <param name="arg_colors">UnityEngine.Color32[]</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function Texture3D:SetPixels32(arg_colors,arg_miplevel)
end
--- <summary>
--- C#声明:Void SetPixels32(UnityEngine.Color32[])
--- </summary>
--- <param name="arg_colors">UnityEngine.Color32[]</param>
--- <returns>System.Void</returns>
function Texture3D:SetPixels32(arg_colors)
end
--- <summary>
--- C#声明:Void Apply(Boolean)
--- </summary>
--- <param name="arg_updateMipmaps">System.Boolean</param>
--- <returns>System.Void</returns>
function Texture3D:Apply(arg_updateMipmaps)
end
--- <summary>
--- C#声明:Void Apply()
--- </summary>
--- <returns>System.Void</returns>
function Texture3D:Apply()
end
--- <summary>
--- C#声明:UnityEngine.TextureFormat get_format()
--- </summary>
--- <returns>UnityEngine.TextureFormat</returns>
function Texture3D:get_format()
end
--- <summary>
--- C#声明:Int32 get_width()
--- </summary>
--- <returns>System.Int32</returns>
function Texture3D:get_width()
end
--- <summary>
--- C#声明:Void set_width(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Texture3D:set_width(arg_value)
end
--- <summary>
--- C#声明:Int32 get_height()
--- </summary>
--- <returns>System.Int32</returns>
function Texture3D:get_height()
end
--- <summary>
--- C#声明:Void set_height(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Texture3D:set_height(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.FilterMode get_filterMode()
--- </summary>
--- <returns>UnityEngine.FilterMode</returns>
function Texture3D:get_filterMode()
end
--- <summary>
--- C#声明:Void set_filterMode(UnityEngine.FilterMode)
--- </summary>
--- <param name="arg_value">UnityEngine.FilterMode</param>
--- <returns>System.Void</returns>
function Texture3D:set_filterMode(arg_value)
end
--- <summary>
--- C#声明:Int32 get_anisoLevel()
--- </summary>
--- <returns>System.Int32</returns>
function Texture3D:get_anisoLevel()
end
--- <summary>
--- C#声明:Void set_anisoLevel(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Texture3D:set_anisoLevel(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextureWrapMode get_wrapMode()
--- </summary>
--- <returns>UnityEngine.TextureWrapMode</returns>
function Texture3D:get_wrapMode()
end
--- <summary>
--- C#声明:Void set_wrapMode(UnityEngine.TextureWrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.TextureWrapMode</param>
--- <returns>System.Void</returns>
function Texture3D:set_wrapMode(arg_value)
end
--- <summary>
--- C#声明:Single get_mipMapBias()
--- </summary>
--- <returns>System.Single</returns>
function Texture3D:get_mipMapBias()
end
--- <summary>
--- C#声明:Void set_mipMapBias(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Texture3D:set_mipMapBias(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_texelSize()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Texture3D:get_texelSize()
end
--- <summary>
--- C#声明:IntPtr GetNativeTexturePtr()
--- </summary>
--- <returns>System.IntPtr</returns>
function Texture3D:GetNativeTexturePtr()
end
--- <summary>
--- C#声明:Int32 GetNativeTextureID()
--- </summary>
--- <returns>System.Int32</returns>
function Texture3D:GetNativeTextureID()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Texture3D:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Texture3D:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Texture3D:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Texture3D:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Texture3D:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Texture3D:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Texture3D:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Texture3D:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Texture3D:GetType()
end

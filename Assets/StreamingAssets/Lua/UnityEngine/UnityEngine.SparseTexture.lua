--create by yangxun
SparseTexture={}

--- <summary>
--- 属性:Int32
--- </summary>
SparseTexture.tileWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
SparseTexture.tileHeight=nil
--- <summary>
--- 属性:Boolean
--- </summary>
SparseTexture.isCreated=nil
--- <summary>
--- 属性:Int32
--- </summary>
SparseTexture.width=nil
--- <summary>
--- 属性:Int32
--- </summary>
SparseTexture.height=nil
--- <summary>
--- 属性:FilterMode
--- </summary>
SparseTexture.filterMode=nil
--- <summary>
--- 属性:Int32
--- </summary>
SparseTexture.anisoLevel=nil
--- <summary>
--- 属性:TextureWrapMode
--- </summary>
SparseTexture.wrapMode=nil
--- <summary>
--- 属性:Single
--- </summary>
SparseTexture.mipMapBias=nil
--- <summary>
--- 属性:Vector2
--- </summary>
SparseTexture.texelSize=nil
--- <summary>
--- 属性:String
--- </summary>
SparseTexture.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
SparseTexture.hideFlags=nil
--- <summary>
--- C#声明:Int32 get_tileWidth()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:get_tileWidth()
end
--- <summary>
--- C#声明:Int32 get_tileHeight()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:get_tileHeight()
end
--- <summary>
--- C#声明:Boolean get_isCreated()
--- </summary>
--- <returns>System.Boolean</returns>
function SparseTexture:get_isCreated()
end
--- <summary>
--- C#声明:Void UpdateTile(Int32, Int32, Int32, UnityEngine.Color32[])
--- </summary>
--- <param name="arg_tileX">System.Int32</param>
--- <param name="arg_tileY">System.Int32</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <param name="arg_data">UnityEngine.Color32[]</param>
--- <returns>System.Void</returns>
function SparseTexture:UpdateTile(arg_tileX,arg_tileY,arg_miplevel,arg_data)
end
--- <summary>
--- C#声明:Void UpdateTileRaw(Int32, Int32, Int32, Byte[])
--- </summary>
--- <param name="arg_tileX">System.Int32</param>
--- <param name="arg_tileY">System.Int32</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <param name="arg_data">System.Byte[]</param>
--- <returns>System.Void</returns>
function SparseTexture:UpdateTileRaw(arg_tileX,arg_tileY,arg_miplevel,arg_data)
end
--- <summary>
--- C#声明:Void UnloadTile(Int32, Int32, Int32)
--- </summary>
--- <param name="arg_tileX">System.Int32</param>
--- <param name="arg_tileY">System.Int32</param>
--- <param name="arg_miplevel">System.Int32</param>
--- <returns>System.Void</returns>
function SparseTexture:UnloadTile(arg_tileX,arg_tileY,arg_miplevel)
end
--- <summary>
--- C#声明:Int32 get_width()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:get_width()
end
--- <summary>
--- C#声明:Void set_width(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function SparseTexture:set_width(arg_value)
end
--- <summary>
--- C#声明:Int32 get_height()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:get_height()
end
--- <summary>
--- C#声明:Void set_height(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function SparseTexture:set_height(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.FilterMode get_filterMode()
--- </summary>
--- <returns>UnityEngine.FilterMode</returns>
function SparseTexture:get_filterMode()
end
--- <summary>
--- C#声明:Void set_filterMode(UnityEngine.FilterMode)
--- </summary>
--- <param name="arg_value">UnityEngine.FilterMode</param>
--- <returns>System.Void</returns>
function SparseTexture:set_filterMode(arg_value)
end
--- <summary>
--- C#声明:Int32 get_anisoLevel()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:get_anisoLevel()
end
--- <summary>
--- C#声明:Void set_anisoLevel(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function SparseTexture:set_anisoLevel(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextureWrapMode get_wrapMode()
--- </summary>
--- <returns>UnityEngine.TextureWrapMode</returns>
function SparseTexture:get_wrapMode()
end
--- <summary>
--- C#声明:Void set_wrapMode(UnityEngine.TextureWrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.TextureWrapMode</param>
--- <returns>System.Void</returns>
function SparseTexture:set_wrapMode(arg_value)
end
--- <summary>
--- C#声明:Single get_mipMapBias()
--- </summary>
--- <returns>System.Single</returns>
function SparseTexture:get_mipMapBias()
end
--- <summary>
--- C#声明:Void set_mipMapBias(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function SparseTexture:set_mipMapBias(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_texelSize()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function SparseTexture:get_texelSize()
end
--- <summary>
--- C#声明:IntPtr GetNativeTexturePtr()
--- </summary>
--- <returns>System.IntPtr</returns>
function SparseTexture:GetNativeTexturePtr()
end
--- <summary>
--- C#声明:Int32 GetNativeTextureID()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:GetNativeTextureID()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function SparseTexture:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function SparseTexture:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function SparseTexture:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function SparseTexture:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function SparseTexture:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function SparseTexture:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function SparseTexture:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function SparseTexture:GetType()
end

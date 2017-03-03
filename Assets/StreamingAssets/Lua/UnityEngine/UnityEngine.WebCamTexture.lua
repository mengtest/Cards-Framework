--create by yangxun
WebCamTexture={}

--- <summary>
--- 属性:Boolean
--- </summary>
WebCamTexture.isPlaying=nil
--- <summary>
--- 属性:String
--- </summary>
WebCamTexture.deviceName=nil
--- <summary>
--- 属性:Single
--- </summary>
WebCamTexture.requestedFPS=nil
--- <summary>
--- 属性:Int32
--- </summary>
WebCamTexture.requestedWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
WebCamTexture.requestedHeight=nil
--- <summary>
--- 属性:Boolean
--- </summary>
WebCamTexture.isReadable=nil
--- <summary>
--- 属性:WebCamDevice[]
--- </summary>
WebCamTexture.devices=nil
--- <summary>
--- 属性:Int32
--- </summary>
WebCamTexture.videoRotationAngle=nil
--- <summary>
--- 属性:Boolean
--- </summary>
WebCamTexture.videoVerticallyMirrored=nil
--- <summary>
--- 属性:Boolean
--- </summary>
WebCamTexture.didUpdateThisFrame=nil
--- <summary>
--- 属性:Int32
--- </summary>
WebCamTexture.width=nil
--- <summary>
--- 属性:Int32
--- </summary>
WebCamTexture.height=nil
--- <summary>
--- 属性:FilterMode
--- </summary>
WebCamTexture.filterMode=nil
--- <summary>
--- 属性:Int32
--- </summary>
WebCamTexture.anisoLevel=nil
--- <summary>
--- 属性:TextureWrapMode
--- </summary>
WebCamTexture.wrapMode=nil
--- <summary>
--- 属性:Single
--- </summary>
WebCamTexture.mipMapBias=nil
--- <summary>
--- 属性:Vector2
--- </summary>
WebCamTexture.texelSize=nil
--- <summary>
--- 属性:String
--- </summary>
WebCamTexture.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
WebCamTexture.hideFlags=nil
--- <summary>
--- C#声明:Void Play()
--- </summary>
--- <returns>System.Void</returns>
function WebCamTexture:Play()
end
--- <summary>
--- C#声明:Void Pause()
--- </summary>
--- <returns>System.Void</returns>
function WebCamTexture:Pause()
end
--- <summary>
--- C#声明:Void Stop()
--- </summary>
--- <returns>System.Void</returns>
function WebCamTexture:Stop()
end
--- <summary>
--- C#声明:Boolean get_isPlaying()
--- </summary>
--- <returns>System.Boolean</returns>
function WebCamTexture:get_isPlaying()
end
--- <summary>
--- C#声明:System.String get_deviceName()
--- </summary>
--- <returns>System.String</returns>
function WebCamTexture:get_deviceName()
end
--- <summary>
--- C#声明:Void set_deviceName(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_deviceName(arg_value)
end
--- <summary>
--- C#声明:Single get_requestedFPS()
--- </summary>
--- <returns>System.Single</returns>
function WebCamTexture:get_requestedFPS()
end
--- <summary>
--- C#声明:Void set_requestedFPS(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_requestedFPS(arg_value)
end
--- <summary>
--- C#声明:Int32 get_requestedWidth()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:get_requestedWidth()
end
--- <summary>
--- C#声明:Void set_requestedWidth(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_requestedWidth(arg_value)
end
--- <summary>
--- C#声明:Int32 get_requestedHeight()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:get_requestedHeight()
end
--- <summary>
--- C#声明:Void set_requestedHeight(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_requestedHeight(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isReadable()
--- </summary>
--- <returns>System.Boolean</returns>
function WebCamTexture:get_isReadable()
end
--- <summary>
--- C#声明:Void MarkNonReadable()
--- </summary>
--- <returns>System.Void</returns>
function WebCamTexture:MarkNonReadable()
end
--- <summary>
--- C#声明:UnityEngine.WebCamDevice[] get_devices()
--- </summary>
--- <returns>UnityEngine.WebCamDevice[]</returns>
function WebCamTexture.get_devices()
end
--- <summary>
--- C#声明:UnityEngine.Color GetPixel(Int32, Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <returns>UnityEngine.Color</returns>
function WebCamTexture:GetPixel(arg_x,arg_y)
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels()
--- </summary>
--- <returns>UnityEngine.Color[]</returns>
function WebCamTexture:GetPixels()
end
--- <summary>
--- C#声明:UnityEngine.Color[] GetPixels(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_blockWidth">System.Int32</param>
--- <param name="arg_blockHeight">System.Int32</param>
--- <returns>UnityEngine.Color[]</returns>
function WebCamTexture:GetPixels(arg_x,arg_y,arg_blockWidth,arg_blockHeight)
end
--- <summary>
--- C#声明:UnityEngine.Color32[] GetPixels32(UnityEngine.Color32[])
--- </summary>
--- <param name="arg_colors">UnityEngine.Color32[]</param>
--- <returns>UnityEngine.Color32[]</returns>
function WebCamTexture:GetPixels32(arg_colors)
end
--- <summary>
--- C#声明:UnityEngine.Color32[] GetPixels32()
--- </summary>
--- <returns>UnityEngine.Color32[]</returns>
function WebCamTexture:GetPixels32()
end
--- <summary>
--- C#声明:Int32 get_videoRotationAngle()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:get_videoRotationAngle()
end
--- <summary>
--- C#声明:Boolean get_videoVerticallyMirrored()
--- </summary>
--- <returns>System.Boolean</returns>
function WebCamTexture:get_videoVerticallyMirrored()
end
--- <summary>
--- C#声明:Boolean get_didUpdateThisFrame()
--- </summary>
--- <returns>System.Boolean</returns>
function WebCamTexture:get_didUpdateThisFrame()
end
--- <summary>
--- C#声明:Int32 get_width()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:get_width()
end
--- <summary>
--- C#声明:Void set_width(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_width(arg_value)
end
--- <summary>
--- C#声明:Int32 get_height()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:get_height()
end
--- <summary>
--- C#声明:Void set_height(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_height(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.FilterMode get_filterMode()
--- </summary>
--- <returns>UnityEngine.FilterMode</returns>
function WebCamTexture:get_filterMode()
end
--- <summary>
--- C#声明:Void set_filterMode(UnityEngine.FilterMode)
--- </summary>
--- <param name="arg_value">UnityEngine.FilterMode</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_filterMode(arg_value)
end
--- <summary>
--- C#声明:Int32 get_anisoLevel()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:get_anisoLevel()
end
--- <summary>
--- C#声明:Void set_anisoLevel(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_anisoLevel(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextureWrapMode get_wrapMode()
--- </summary>
--- <returns>UnityEngine.TextureWrapMode</returns>
function WebCamTexture:get_wrapMode()
end
--- <summary>
--- C#声明:Void set_wrapMode(UnityEngine.TextureWrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.TextureWrapMode</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_wrapMode(arg_value)
end
--- <summary>
--- C#声明:Single get_mipMapBias()
--- </summary>
--- <returns>System.Single</returns>
function WebCamTexture:get_mipMapBias()
end
--- <summary>
--- C#声明:Void set_mipMapBias(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_mipMapBias(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_texelSize()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function WebCamTexture:get_texelSize()
end
--- <summary>
--- C#声明:IntPtr GetNativeTexturePtr()
--- </summary>
--- <returns>System.IntPtr</returns>
function WebCamTexture:GetNativeTexturePtr()
end
--- <summary>
--- C#声明:Int32 GetNativeTextureID()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:GetNativeTextureID()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function WebCamTexture:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function WebCamTexture:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function WebCamTexture:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function WebCamTexture:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function WebCamTexture:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function WebCamTexture:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function WebCamTexture:GetType()
end

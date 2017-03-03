--create by yangxun
WWW={}

--- <summary>
--- 属性:Dictionary`2
--- </summary>
WWW.responseHeaders=nil
--- <summary>
--- 属性:String
--- </summary>
WWW.text=nil
--- <summary>
--- 属性:String
--- </summary>
WWW.data=nil
--- <summary>
--- 属性:Byte[]
--- </summary>
WWW.bytes=nil
--- <summary>
--- 属性:Int32
--- </summary>
WWW.size=nil
--- <summary>
--- 属性:String
--- </summary>
WWW.error=nil
--- <summary>
--- 属性:Texture2D
--- </summary>
WWW.texture=nil
--- <summary>
--- 属性:Texture2D
--- </summary>
WWW.textureNonReadable=nil
--- <summary>
--- 属性:AudioClip
--- </summary>
WWW.audioClip=nil
--- <summary>
--- 属性:MovieTexture
--- </summary>
WWW.movie=nil
--- <summary>
--- 属性:Boolean
--- </summary>
WWW.isDone=nil
--- <summary>
--- 属性:Single
--- </summary>
WWW.progress=nil
--- <summary>
--- 属性:Single
--- </summary>
WWW.uploadProgress=nil
--- <summary>
--- 属性:Int32
--- </summary>
WWW.bytesDownloaded=nil
--- <summary>
--- 属性:AudioClip
--- </summary>
WWW.oggVorbis=nil
--- <summary>
--- 属性:String
--- </summary>
WWW.url=nil
--- <summary>
--- 属性:AssetBundle
--- </summary>
WWW.assetBundle=nil
--- <summary>
--- 属性:ThreadPriority
--- </summary>
WWW.threadPriority=nil
--- <summary>
--- C#声明:Void Dispose()
--- </summary>
--- <returns>System.Void</returns>
function WWW:Dispose()
end
--- <summary>
--- C#声明:Void InitWWW(System.String, Byte[], System.String[])
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_postData">System.Byte[]</param>
--- <param name="arg_iHeaders">System.String[]</param>
--- <returns>System.Void</returns>
function WWW:InitWWW(arg_url,arg_postData,arg_iHeaders)
end
--- <summary>
--- C#声明:System.String EscapeURL(System.String)
--- </summary>
--- <param name="arg_s">System.String</param>
--- <returns>System.String</returns>
function WWW.EscapeURL(arg_s)
end
--- <summary>
--- C#声明:System.String EscapeURL(System.String, System.Text.Encoding)
--- </summary>
--- <param name="arg_s">System.String</param>
--- <param name="arg_e">System.Text.Encoding</param>
--- <returns>System.String</returns>
function WWW.EscapeURL(arg_s,arg_e)
end
--- <summary>
--- C#声明:System.String UnEscapeURL(System.String)
--- </summary>
--- <param name="arg_s">System.String</param>
--- <returns>System.String</returns>
function WWW.UnEscapeURL(arg_s)
end
--- <summary>
--- C#声明:System.String UnEscapeURL(System.String, System.Text.Encoding)
--- </summary>
--- <param name="arg_s">System.String</param>
--- <param name="arg_e">System.Text.Encoding</param>
--- <returns>System.String</returns>
function WWW.UnEscapeURL(arg_s,arg_e)
end
--- <summary>
--- C#声明:System.Collections.Generic.Dictionary`2[System.String,System.String] get_responseHeaders()
--- </summary>
--- <returns>System.Collections.Generic.Dictionary`2[System.String,System.String]</returns>
function WWW:get_responseHeaders()
end
--- <summary>
--- C#声明:System.String get_text()
--- </summary>
--- <returns>System.String</returns>
function WWW:get_text()
end
--- <summary>
--- C#声明:System.String get_data()
--- </summary>
--- <returns>System.String</returns>
function WWW:get_data()
end
--- <summary>
--- C#声明:Byte[] get_bytes()
--- </summary>
--- <returns>System.Byte[]</returns>
function WWW:get_bytes()
end
--- <summary>
--- C#声明:Int32 get_size()
--- </summary>
--- <returns>System.Int32</returns>
function WWW:get_size()
end
--- <summary>
--- C#声明:System.String get_error()
--- </summary>
--- <returns>System.String</returns>
function WWW:get_error()
end
--- <summary>
--- C#声明:UnityEngine.Texture2D get_texture()
--- </summary>
--- <returns>UnityEngine.Texture2D</returns>
function WWW:get_texture()
end
--- <summary>
--- C#声明:UnityEngine.Texture2D get_textureNonReadable()
--- </summary>
--- <returns>UnityEngine.Texture2D</returns>
function WWW:get_textureNonReadable()
end
--- <summary>
--- C#声明:UnityEngine.AudioClip get_audioClip()
--- </summary>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:get_audioClip()
end
--- <summary>
--- C#声明:UnityEngine.AudioClip GetAudioClip(Boolean)
--- </summary>
--- <param name="arg_threeD">System.Boolean</param>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:GetAudioClip(arg_threeD)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip GetAudioClip(Boolean, Boolean)
--- </summary>
--- <param name="arg_threeD">System.Boolean</param>
--- <param name="arg_stream">System.Boolean</param>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:GetAudioClip(arg_threeD,arg_stream)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip GetAudioClip(Boolean, Boolean, UnityEngine.AudioType)
--- </summary>
--- <param name="arg_threeD">System.Boolean</param>
--- <param name="arg_stream">System.Boolean</param>
--- <param name="arg_audioType">UnityEngine.AudioType</param>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:GetAudioClip(arg_threeD,arg_stream,arg_audioType)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip GetAudioClipCompressed()
--- </summary>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:GetAudioClipCompressed()
end
--- <summary>
--- C#声明:UnityEngine.AudioClip GetAudioClipCompressed(Boolean)
--- </summary>
--- <param name="arg_threeD">System.Boolean</param>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:GetAudioClipCompressed(arg_threeD)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip GetAudioClipCompressed(Boolean, UnityEngine.AudioType)
--- </summary>
--- <param name="arg_threeD">System.Boolean</param>
--- <param name="arg_audioType">UnityEngine.AudioType</param>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:GetAudioClipCompressed(arg_threeD,arg_audioType)
end
--- <summary>
--- C#声明:UnityEngine.MovieTexture get_movie()
--- </summary>
--- <returns>UnityEngine.MovieTexture</returns>
function WWW:get_movie()
end
--- <summary>
--- C#声明:Void LoadImageIntoTexture(UnityEngine.Texture2D)
--- </summary>
--- <param name="arg_tex">UnityEngine.Texture2D</param>
--- <returns>System.Void</returns>
function WWW:LoadImageIntoTexture(arg_tex)
end
--- <summary>
--- C#声明:Boolean get_isDone()
--- </summary>
--- <returns>System.Boolean</returns>
function WWW:get_isDone()
end
--- <summary>
--- C#声明:System.String GetURL(System.String)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <returns>System.String</returns>
function WWW.GetURL(arg_url)
end
--- <summary>
--- C#声明:UnityEngine.Texture2D GetTextureFromURL(System.String)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <returns>UnityEngine.Texture2D</returns>
function WWW.GetTextureFromURL(arg_url)
end
--- <summary>
--- C#声明:Single get_progress()
--- </summary>
--- <returns>System.Single</returns>
function WWW:get_progress()
end
--- <summary>
--- C#声明:Single get_uploadProgress()
--- </summary>
--- <returns>System.Single</returns>
function WWW:get_uploadProgress()
end
--- <summary>
--- C#声明:Int32 get_bytesDownloaded()
--- </summary>
--- <returns>System.Int32</returns>
function WWW:get_bytesDownloaded()
end
--- <summary>
--- C#声明:UnityEngine.AudioClip get_oggVorbis()
--- </summary>
--- <returns>UnityEngine.AudioClip</returns>
function WWW:get_oggVorbis()
end
--- <summary>
--- C#声明:Void LoadUnityWeb()
--- </summary>
--- <returns>System.Void</returns>
function WWW:LoadUnityWeb()
end
--- <summary>
--- C#声明:System.String get_url()
--- </summary>
--- <returns>System.String</returns>
function WWW:get_url()
end
--- <summary>
--- C#声明:UnityEngine.AssetBundle get_assetBundle()
--- </summary>
--- <returns>UnityEngine.AssetBundle</returns>
function WWW:get_assetBundle()
end
--- <summary>
--- C#声明:UnityEngine.ThreadPriority get_threadPriority()
--- </summary>
--- <returns>UnityEngine.ThreadPriority</returns>
function WWW:get_threadPriority()
end
--- <summary>
--- C#声明:Void set_threadPriority(UnityEngine.ThreadPriority)
--- </summary>
--- <param name="arg_value">UnityEngine.ThreadPriority</param>
--- <returns>System.Void</returns>
function WWW:set_threadPriority(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.WWW LoadFromCacheOrDownload(System.String, Int32)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_version">System.Int32</param>
--- <returns>UnityEngine.WWW</returns>
function WWW.LoadFromCacheOrDownload(arg_url,arg_version)
end
--- <summary>
--- C#声明:UnityEngine.WWW LoadFromCacheOrDownload(System.String, Int32, UInt32)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_version">System.Int32</param>
--- <param name="arg_crc">System.UInt32</param>
--- <returns>UnityEngine.WWW</returns>
function WWW.LoadFromCacheOrDownload(arg_url,arg_version,arg_crc)
end
--- <summary>
--- C#声明:UnityEngine.WWW LoadFromCacheOrDownload(System.String, UnityEngine.Hash128)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_hash">UnityEngine.Hash128</param>
--- <returns>UnityEngine.WWW</returns>
function WWW.LoadFromCacheOrDownload(arg_url,arg_hash)
end
--- <summary>
--- C#声明:UnityEngine.WWW LoadFromCacheOrDownload(System.String, UnityEngine.Hash128, UInt32)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <param name="arg_hash">UnityEngine.Hash128</param>
--- <param name="arg_crc">System.UInt32</param>
--- <returns>UnityEngine.WWW</returns>
function WWW.LoadFromCacheOrDownload(arg_url,arg_hash,arg_crc)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function WWW:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function WWW:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function WWW:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function WWW:GetType()
end

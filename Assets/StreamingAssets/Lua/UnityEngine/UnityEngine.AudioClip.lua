--create by yangxun
AudioClip={}

--- <summary>
--- 属性:Single
--- </summary>
AudioClip.length=nil
--- <summary>
--- 属性:Int32
--- </summary>
AudioClip.samples=nil
--- <summary>
--- 属性:Int32
--- </summary>
AudioClip.channels=nil
--- <summary>
--- 属性:Int32
--- </summary>
AudioClip.frequency=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioClip.isReadyToPlay=nil
--- <summary>
--- 属性:AudioClipLoadType
--- </summary>
AudioClip.loadType=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioClip.preloadAudioData=nil
--- <summary>
--- 属性:AudioDataLoadState
--- </summary>
AudioClip.loadState=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioClip.loadInBackground=nil
--- <summary>
--- 属性:String
--- </summary>
AudioClip.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
AudioClip.hideFlags=nil
--- <summary>
--- C#声明:Single get_length()
--- </summary>
--- <returns>System.Single</returns>
function AudioClip:get_length()
end
--- <summary>
--- C#声明:Int32 get_samples()
--- </summary>
--- <returns>System.Int32</returns>
function AudioClip:get_samples()
end
--- <summary>
--- C#声明:Int32 get_channels()
--- </summary>
--- <returns>System.Int32</returns>
function AudioClip:get_channels()
end
--- <summary>
--- C#声明:Int32 get_frequency()
--- </summary>
--- <returns>System.Int32</returns>
function AudioClip:get_frequency()
end
--- <summary>
--- C#声明:Boolean get_isReadyToPlay()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioClip:get_isReadyToPlay()
end
--- <summary>
--- C#声明:UnityEngine.AudioClipLoadType get_loadType()
--- </summary>
--- <returns>UnityEngine.AudioClipLoadType</returns>
function AudioClip:get_loadType()
end
--- <summary>
--- C#声明:Boolean LoadAudioData()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioClip:LoadAudioData()
end
--- <summary>
--- C#声明:Boolean UnloadAudioData()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioClip:UnloadAudioData()
end
--- <summary>
--- C#声明:Boolean get_preloadAudioData()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioClip:get_preloadAudioData()
end
--- <summary>
--- C#声明:UnityEngine.AudioDataLoadState get_loadState()
--- </summary>
--- <returns>UnityEngine.AudioDataLoadState</returns>
function AudioClip:get_loadState()
end
--- <summary>
--- C#声明:Boolean get_loadInBackground()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioClip:get_loadInBackground()
end
--- <summary>
--- C#声明:Boolean GetData(Single[], Int32)
--- </summary>
--- <param name="arg_data">System.Single[]</param>
--- <param name="arg_offsetSamples">System.Int32</param>
--- <returns>System.Boolean</returns>
function AudioClip:GetData(arg_data,arg_offsetSamples)
end
--- <summary>
--- C#声明:Boolean SetData(Single[], Int32)
--- </summary>
--- <param name="arg_data">System.Single[]</param>
--- <param name="arg_offsetSamples">System.Int32</param>
--- <returns>System.Boolean</returns>
function AudioClip:SetData(arg_data,arg_offsetSamples)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip Create(System.String, Int32, Int32, Int32, Boolean, Boolean)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_lengthSamples">System.Int32</param>
--- <param name="arg_channels">System.Int32</param>
--- <param name="arg_frequency">System.Int32</param>
--- <param name="arg__3D">System.Boolean</param>
--- <param name="arg_stream">System.Boolean</param>
--- <returns>UnityEngine.AudioClip</returns>
function AudioClip.Create(arg_name,arg_lengthSamples,arg_channels,arg_frequency,arg__3D,arg_stream)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip Create(System.String, Int32, Int32, Int32, Boolean, Boolean, PCMReaderCallback)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_lengthSamples">System.Int32</param>
--- <param name="arg_channels">System.Int32</param>
--- <param name="arg_frequency">System.Int32</param>
--- <param name="arg__3D">System.Boolean</param>
--- <param name="arg_stream">System.Boolean</param>
--- <param name="arg_pcmreadercallback">UnityEngine.AudioClip+PCMReaderCallback</param>
--- <returns>UnityEngine.AudioClip</returns>
function AudioClip.Create(arg_name,arg_lengthSamples,arg_channels,arg_frequency,arg__3D,arg_stream,arg_pcmreadercallback)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip Create(System.String, Int32, Int32, Int32, Boolean, Boolean, PCMReaderCallback, PCMSetPositionCallback)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_lengthSamples">System.Int32</param>
--- <param name="arg_channels">System.Int32</param>
--- <param name="arg_frequency">System.Int32</param>
--- <param name="arg__3D">System.Boolean</param>
--- <param name="arg_stream">System.Boolean</param>
--- <param name="arg_pcmreadercallback">UnityEngine.AudioClip+PCMReaderCallback</param>
--- <param name="arg_pcmsetpositioncallback">UnityEngine.AudioClip+PCMSetPositionCallback</param>
--- <returns>UnityEngine.AudioClip</returns>
function AudioClip.Create(arg_name,arg_lengthSamples,arg_channels,arg_frequency,arg__3D,arg_stream,arg_pcmreadercallback,arg_pcmsetpositioncallback)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip Create(System.String, Int32, Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_lengthSamples">System.Int32</param>
--- <param name="arg_channels">System.Int32</param>
--- <param name="arg_frequency">System.Int32</param>
--- <param name="arg_stream">System.Boolean</param>
--- <returns>UnityEngine.AudioClip</returns>
function AudioClip.Create(arg_name,arg_lengthSamples,arg_channels,arg_frequency,arg_stream)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip Create(System.String, Int32, Int32, Int32, Boolean, PCMReaderCallback)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_lengthSamples">System.Int32</param>
--- <param name="arg_channels">System.Int32</param>
--- <param name="arg_frequency">System.Int32</param>
--- <param name="arg_stream">System.Boolean</param>
--- <param name="arg_pcmreadercallback">UnityEngine.AudioClip+PCMReaderCallback</param>
--- <returns>UnityEngine.AudioClip</returns>
function AudioClip.Create(arg_name,arg_lengthSamples,arg_channels,arg_frequency,arg_stream,arg_pcmreadercallback)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip Create(System.String, Int32, Int32, Int32, Boolean, PCMReaderCallback, PCMSetPositionCallback)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_lengthSamples">System.Int32</param>
--- <param name="arg_channels">System.Int32</param>
--- <param name="arg_frequency">System.Int32</param>
--- <param name="arg_stream">System.Boolean</param>
--- <param name="arg_pcmreadercallback">UnityEngine.AudioClip+PCMReaderCallback</param>
--- <param name="arg_pcmsetpositioncallback">UnityEngine.AudioClip+PCMSetPositionCallback</param>
--- <returns>UnityEngine.AudioClip</returns>
function AudioClip.Create(arg_name,arg_lengthSamples,arg_channels,arg_frequency,arg_stream,arg_pcmreadercallback,arg_pcmsetpositioncallback)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function AudioClip:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function AudioClip:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function AudioClip:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function AudioClip:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function AudioClip:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function AudioClip:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function AudioClip:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function AudioClip:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function AudioClip:GetType()
end

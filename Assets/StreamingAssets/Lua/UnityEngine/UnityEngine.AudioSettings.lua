--create by yangxun
AudioSettings={}

--- <summary>
--- 属性:AudioSpeakerMode
--- </summary>
AudioSettings.driverCapabilities=nil
--- <summary>
--- 属性:AudioSpeakerMode
--- </summary>
AudioSettings.driverCaps=nil
--- <summary>
--- 属性:AudioSpeakerMode
--- </summary>
AudioSettings.speakerMode=nil
--- <summary>
--- 属性:Double
--- </summary>
AudioSettings.dspTime=nil
--- <summary>
--- 属性:Int32
--- </summary>
AudioSettings.outputSampleRate=nil
--- <summary>
--- C#声明:Void add_OnAudioConfigurationChanged(AudioConfigurationChangeHandler)
--- </summary>
--- <param name="arg_value">UnityEngine.AudioSettings+AudioConfigurationChangeHandler</param>
--- <returns>System.Void</returns>
function AudioSettings.add_OnAudioConfigurationChanged(arg_value)
end
--- <summary>
--- C#声明:Void remove_OnAudioConfigurationChanged(AudioConfigurationChangeHandler)
--- </summary>
--- <param name="arg_value">UnityEngine.AudioSettings+AudioConfigurationChangeHandler</param>
--- <returns>System.Void</returns>
function AudioSettings.remove_OnAudioConfigurationChanged(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AudioSpeakerMode get_driverCapabilities()
--- </summary>
--- <returns>UnityEngine.AudioSpeakerMode</returns>
function AudioSettings.get_driverCapabilities()
end
--- <summary>
--- C#声明:UnityEngine.AudioSpeakerMode get_driverCaps()
--- </summary>
--- <returns>UnityEngine.AudioSpeakerMode</returns>
function AudioSettings.get_driverCaps()
end
--- <summary>
--- C#声明:UnityEngine.AudioSpeakerMode get_speakerMode()
--- </summary>
--- <returns>UnityEngine.AudioSpeakerMode</returns>
function AudioSettings.get_speakerMode()
end
--- <summary>
--- C#声明:Void set_speakerMode(UnityEngine.AudioSpeakerMode)
--- </summary>
--- <param name="arg_value">UnityEngine.AudioSpeakerMode</param>
--- <returns>System.Void</returns>
function AudioSettings.set_speakerMode(arg_value)
end
--- <summary>
--- C#声明:Double get_dspTime()
--- </summary>
--- <returns>System.Double</returns>
function AudioSettings.get_dspTime()
end
--- <summary>
--- C#声明:Int32 get_outputSampleRate()
--- </summary>
--- <returns>System.Int32</returns>
function AudioSettings.get_outputSampleRate()
end
--- <summary>
--- C#声明:Void set_outputSampleRate(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function AudioSettings.set_outputSampleRate(arg_value)
end
--- <summary>
--- C#声明:Void GetDSPBufferSize(Int32 ByRef, Int32 ByRef)
--- </summary>
--- <param name="arg_bufferLength">System.Int32&</param>
--- <param name="arg_numBuffers">System.Int32&</param>
--- <returns>System.Void</returns>
function AudioSettings.GetDSPBufferSize(arg_bufferLength,arg_numBuffers)
end
--- <summary>
--- C#声明:Void SetDSPBufferSize(Int32, Int32)
--- </summary>
--- <param name="arg_bufferLength">System.Int32</param>
--- <param name="arg_numBuffers">System.Int32</param>
--- <returns>System.Void</returns>
function AudioSettings.SetDSPBufferSize(arg_bufferLength,arg_numBuffers)
end
--- <summary>
--- C#声明:UnityEngine.AudioConfiguration GetConfiguration()
--- </summary>
--- <returns>UnityEngine.AudioConfiguration</returns>
function AudioSettings.GetConfiguration()
end
--- <summary>
--- C#声明:Boolean Reset(UnityEngine.AudioConfiguration)
--- </summary>
--- <param name="arg_config">UnityEngine.AudioConfiguration</param>
--- <returns>System.Boolean</returns>
function AudioSettings.Reset(arg_config)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function AudioSettings:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function AudioSettings:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function AudioSettings:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function AudioSettings:GetType()
end

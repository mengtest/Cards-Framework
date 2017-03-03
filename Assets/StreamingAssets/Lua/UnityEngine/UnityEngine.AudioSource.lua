--create by yangxun
AudioSource={}

--- <summary>
--- 属性:Single
--- </summary>
AudioSource.volume=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.pitch=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.time=nil
--- <summary>
--- 属性:Int32
--- </summary>
AudioSource.timeSamples=nil
--- <summary>
--- 属性:AudioClip
--- </summary>
AudioSource.clip=nil
--- <summary>
--- 属性:AudioMixerGroup
--- </summary>
AudioSource.outputAudioMixerGroup=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.isPlaying=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.loop=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.ignoreListenerVolume=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.playOnAwake=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.ignoreListenerPause=nil
--- <summary>
--- 属性:AudioVelocityUpdateMode
--- </summary>
AudioSource.velocityUpdateMode=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.panStereo=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.spatialBlend=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.reverbZoneMix=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.panLevel=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.pan=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.bypassEffects=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.bypassListenerEffects=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.bypassReverbZones=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.dopplerLevel=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.spread=nil
--- <summary>
--- 属性:Int32
--- </summary>
AudioSource.priority=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.mute=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.minDistance=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.maxDistance=nil
--- <summary>
--- 属性:AudioRolloffMode
--- </summary>
AudioSource.rolloffMode=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.minVolume=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.maxVolume=nil
--- <summary>
--- 属性:Single
--- </summary>
AudioSource.rolloffFactor=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
AudioSource.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
AudioSource.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
AudioSource.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
AudioSource.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.light=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
AudioSource.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
AudioSource.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
AudioSource.hideFlags=nil
--- <summary>
--- C#声明:Void set_maxDistance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_maxDistance(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AudioRolloffMode get_rolloffMode()
--- </summary>
--- <returns>UnityEngine.AudioRolloffMode</returns>
function AudioSource:get_rolloffMode()
end
--- <summary>
--- C#声明:Void set_rolloffMode(UnityEngine.AudioRolloffMode)
--- </summary>
--- <param name="arg_value">UnityEngine.AudioRolloffMode</param>
--- <returns>System.Void</returns>
function AudioSource:set_rolloffMode(arg_value)
end
--- <summary>
--- C#声明:Single[] GetOutputData(Int32, Int32)
--- </summary>
--- <param name="arg_numSamples">System.Int32</param>
--- <param name="arg_channel">System.Int32</param>
--- <returns>System.Single[]</returns>
function AudioSource:GetOutputData(arg_numSamples,arg_channel)
end
--- <summary>
--- C#声明:Void GetOutputData(Single[], Int32)
--- </summary>
--- <param name="arg_samples">System.Single[]</param>
--- <param name="arg_channel">System.Int32</param>
--- <returns>System.Void</returns>
function AudioSource:GetOutputData(arg_samples,arg_channel)
end
--- <summary>
--- C#声明:Single[] GetSpectrumData(Int32, Int32, UnityEngine.FFTWindow)
--- </summary>
--- <param name="arg_numSamples">System.Int32</param>
--- <param name="arg_channel">System.Int32</param>
--- <param name="arg_window">UnityEngine.FFTWindow</param>
--- <returns>System.Single[]</returns>
function AudioSource:GetSpectrumData(arg_numSamples,arg_channel,arg_window)
end
--- <summary>
--- C#声明:Void GetSpectrumData(Single[], Int32, UnityEngine.FFTWindow)
--- </summary>
--- <param name="arg_samples">System.Single[]</param>
--- <param name="arg_channel">System.Int32</param>
--- <param name="arg_window">UnityEngine.FFTWindow</param>
--- <returns>System.Void</returns>
function AudioSource:GetSpectrumData(arg_samples,arg_channel,arg_window)
end
--- <summary>
--- C#声明:Single get_minVolume()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_minVolume()
end
--- <summary>
--- C#声明:Void set_minVolume(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_minVolume(arg_value)
end
--- <summary>
--- C#声明:Single get_maxVolume()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_maxVolume()
end
--- <summary>
--- C#声明:Void set_maxVolume(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_maxVolume(arg_value)
end
--- <summary>
--- C#声明:Single get_rolloffFactor()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_rolloffFactor()
end
--- <summary>
--- C#声明:Void set_rolloffFactor(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_rolloffFactor(arg_value)
end
--- <summary>
--- C#声明:Single get_volume()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_volume()
end
--- <summary>
--- C#声明:Void set_volume(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_volume(arg_value)
end
--- <summary>
--- C#声明:Single get_pitch()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_pitch()
end
--- <summary>
--- C#声明:Void set_pitch(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_pitch(arg_value)
end
--- <summary>
--- C#声明:Single get_time()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_time()
end
--- <summary>
--- C#声明:Void set_time(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_time(arg_value)
end
--- <summary>
--- C#声明:Int32 get_timeSamples()
--- </summary>
--- <returns>System.Int32</returns>
function AudioSource:get_timeSamples()
end
--- <summary>
--- C#声明:Void set_timeSamples(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function AudioSource:set_timeSamples(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AudioClip get_clip()
--- </summary>
--- <returns>UnityEngine.AudioClip</returns>
function AudioSource:get_clip()
end
--- <summary>
--- C#声明:Void set_clip(UnityEngine.AudioClip)
--- </summary>
--- <param name="arg_value">UnityEngine.AudioClip</param>
--- <returns>System.Void</returns>
function AudioSource:set_clip(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Audio.AudioMixerGroup get_outputAudioMixerGroup()
--- </summary>
--- <returns>UnityEngine.Audio.AudioMixerGroup</returns>
function AudioSource:get_outputAudioMixerGroup()
end
--- <summary>
--- C#声明:Void set_outputAudioMixerGroup(UnityEngine.Audio.AudioMixerGroup)
--- </summary>
--- <param name="arg_value">UnityEngine.Audio.AudioMixerGroup</param>
--- <returns>System.Void</returns>
function AudioSource:set_outputAudioMixerGroup(arg_value)
end
--- <summary>
--- C#声明:Void Play(UInt64)
--- </summary>
--- <param name="arg_delay">System.UInt64</param>
--- <returns>System.Void</returns>
function AudioSource:Play(arg_delay)
end
--- <summary>
--- C#声明:Void Play()
--- </summary>
--- <returns>System.Void</returns>
function AudioSource:Play()
end
--- <summary>
--- C#声明:Void PlayDelayed(Single)
--- </summary>
--- <param name="arg_delay">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:PlayDelayed(arg_delay)
end
--- <summary>
--- C#声明:Void PlayScheduled(Double)
--- </summary>
--- <param name="arg_time">System.Double</param>
--- <returns>System.Void</returns>
function AudioSource:PlayScheduled(arg_time)
end
--- <summary>
--- C#声明:Void SetScheduledStartTime(Double)
--- </summary>
--- <param name="arg_time">System.Double</param>
--- <returns>System.Void</returns>
function AudioSource:SetScheduledStartTime(arg_time)
end
--- <summary>
--- C#声明:Void SetScheduledEndTime(Double)
--- </summary>
--- <param name="arg_time">System.Double</param>
--- <returns>System.Void</returns>
function AudioSource:SetScheduledEndTime(arg_time)
end
--- <summary>
--- C#声明:Void Stop()
--- </summary>
--- <returns>System.Void</returns>
function AudioSource:Stop()
end
--- <summary>
--- C#声明:Void Pause()
--- </summary>
--- <returns>System.Void</returns>
function AudioSource:Pause()
end
--- <summary>
--- C#声明:Void UnPause()
--- </summary>
--- <returns>System.Void</returns>
function AudioSource:UnPause()
end
--- <summary>
--- C#声明:Boolean get_isPlaying()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_isPlaying()
end
--- <summary>
--- C#声明:Void PlayOneShot(UnityEngine.AudioClip, Single)
--- </summary>
--- <param name="arg_clip">UnityEngine.AudioClip</param>
--- <param name="arg_volumeScale">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:PlayOneShot(arg_clip,arg_volumeScale)
end
--- <summary>
--- C#声明:Void PlayOneShot(UnityEngine.AudioClip)
--- </summary>
--- <param name="arg_clip">UnityEngine.AudioClip</param>
--- <returns>System.Void</returns>
function AudioSource:PlayOneShot(arg_clip)
end
--- <summary>
--- C#声明:Void PlayClipAtPoint(UnityEngine.AudioClip, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_clip">UnityEngine.AudioClip</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function AudioSource.PlayClipAtPoint(arg_clip,arg_position)
end
--- <summary>
--- C#声明:Void PlayClipAtPoint(UnityEngine.AudioClip, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_clip">UnityEngine.AudioClip</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_volume">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource.PlayClipAtPoint(arg_clip,arg_position,arg_volume)
end
--- <summary>
--- C#声明:Boolean get_loop()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_loop()
end
--- <summary>
--- C#声明:Void set_loop(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_loop(arg_value)
end
--- <summary>
--- C#声明:Boolean get_ignoreListenerVolume()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_ignoreListenerVolume()
end
--- <summary>
--- C#声明:Void set_ignoreListenerVolume(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_ignoreListenerVolume(arg_value)
end
--- <summary>
--- C#声明:Boolean get_playOnAwake()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_playOnAwake()
end
--- <summary>
--- C#声明:Void set_playOnAwake(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_playOnAwake(arg_value)
end
--- <summary>
--- C#声明:Boolean get_ignoreListenerPause()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_ignoreListenerPause()
end
--- <summary>
--- C#声明:Void set_ignoreListenerPause(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_ignoreListenerPause(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AudioVelocityUpdateMode get_velocityUpdateMode()
--- </summary>
--- <returns>UnityEngine.AudioVelocityUpdateMode</returns>
function AudioSource:get_velocityUpdateMode()
end
--- <summary>
--- C#声明:Void set_velocityUpdateMode(UnityEngine.AudioVelocityUpdateMode)
--- </summary>
--- <param name="arg_value">UnityEngine.AudioVelocityUpdateMode</param>
--- <returns>System.Void</returns>
function AudioSource:set_velocityUpdateMode(arg_value)
end
--- <summary>
--- C#声明:Single get_panStereo()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_panStereo()
end
--- <summary>
--- C#声明:Void set_panStereo(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_panStereo(arg_value)
end
--- <summary>
--- C#声明:Single get_spatialBlend()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_spatialBlend()
end
--- <summary>
--- C#声明:Void set_spatialBlend(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_spatialBlend(arg_value)
end
--- <summary>
--- C#声明:Single get_reverbZoneMix()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_reverbZoneMix()
end
--- <summary>
--- C#声明:Void set_reverbZoneMix(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_reverbZoneMix(arg_value)
end
--- <summary>
--- C#声明:Single get_panLevel()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_panLevel()
end
--- <summary>
--- C#声明:Void set_panLevel(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_panLevel(arg_value)
end
--- <summary>
--- C#声明:Single get_pan()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_pan()
end
--- <summary>
--- C#声明:Void set_pan(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_pan(arg_value)
end
--- <summary>
--- C#声明:Boolean get_bypassEffects()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_bypassEffects()
end
--- <summary>
--- C#声明:Void set_bypassEffects(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_bypassEffects(arg_value)
end
--- <summary>
--- C#声明:Boolean get_bypassListenerEffects()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_bypassListenerEffects()
end
--- <summary>
--- C#声明:Void set_bypassListenerEffects(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_bypassListenerEffects(arg_value)
end
--- <summary>
--- C#声明:Boolean get_bypassReverbZones()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_bypassReverbZones()
end
--- <summary>
--- C#声明:Void set_bypassReverbZones(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_bypassReverbZones(arg_value)
end
--- <summary>
--- C#声明:Single get_dopplerLevel()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_dopplerLevel()
end
--- <summary>
--- C#声明:Void set_dopplerLevel(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_dopplerLevel(arg_value)
end
--- <summary>
--- C#声明:Single get_spread()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_spread()
end
--- <summary>
--- C#声明:Void set_spread(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_spread(arg_value)
end
--- <summary>
--- C#声明:Int32 get_priority()
--- </summary>
--- <returns>System.Int32</returns>
function AudioSource:get_priority()
end
--- <summary>
--- C#声明:Void set_priority(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function AudioSource:set_priority(arg_value)
end
--- <summary>
--- C#声明:Boolean get_mute()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_mute()
end
--- <summary>
--- C#声明:Void set_mute(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_mute(arg_value)
end
--- <summary>
--- C#声明:Single get_minDistance()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_minDistance()
end
--- <summary>
--- C#声明:Void set_minDistance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function AudioSource:set_minDistance(arg_value)
end
--- <summary>
--- C#声明:Single get_maxDistance()
--- </summary>
--- <returns>System.Single</returns>
function AudioSource:get_maxDistance()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AudioSource:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function AudioSource:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function AudioSource:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function AudioSource:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function AudioSource:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function AudioSource:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function AudioSource:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function AudioSource:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function AudioSource:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function AudioSource:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function AudioSource:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function AudioSource:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function AudioSource:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function AudioSource:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function AudioSource:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function AudioSource:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function AudioSource:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function AudioSource:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function AudioSource:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function AudioSource:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function AudioSource:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function AudioSource:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function AudioSource:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function AudioSource:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function AudioSource:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function AudioSource:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function AudioSource:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function AudioSource:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function AudioSource:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function AudioSource:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function AudioSource:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function AudioSource:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function AudioSource:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function AudioSource:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function AudioSource:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function AudioSource:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function AudioSource:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function AudioSource:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function AudioSource:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function AudioSource:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function AudioSource:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function AudioSource:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function AudioSource:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function AudioSource:GetType()
end

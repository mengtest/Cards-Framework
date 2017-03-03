--create by yangxun
Animation={}

--- <summary>
--- 属性:AnimationClip
--- </summary>
Animation.clip=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animation.playAutomatically=nil
--- <summary>
--- 属性:WrapMode
--- </summary>
Animation.wrapMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animation.isPlaying=nil
--- <summary>
--- 属性:AnimationState
--- </summary>
Animation.Item=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animation.animatePhysics=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animation.animateOnlyIfVisible=nil
--- <summary>
--- 属性:AnimationCullingType
--- </summary>
Animation.cullingType=nil
--- <summary>
--- 属性:Bounds
--- </summary>
Animation.localBounds=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animation.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animation.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
Animation.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
Animation.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
Animation.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.light=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
Animation.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
Animation.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Animation.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.AnimationClip get_clip()
--- </summary>
--- <returns>UnityEngine.AnimationClip</returns>
function Animation:get_clip()
end
--- <summary>
--- C#声明:Void set_clip(UnityEngine.AnimationClip)
--- </summary>
--- <param name="arg_value">UnityEngine.AnimationClip</param>
--- <returns>System.Void</returns>
function Animation:set_clip(arg_value)
end
--- <summary>
--- C#声明:Boolean get_playAutomatically()
--- </summary>
--- <returns>System.Boolean</returns>
function Animation:get_playAutomatically()
end
--- <summary>
--- C#声明:Void set_playAutomatically(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animation:set_playAutomatically(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.WrapMode get_wrapMode()
--- </summary>
--- <returns>UnityEngine.WrapMode</returns>
function Animation:get_wrapMode()
end
--- <summary>
--- C#声明:Void set_wrapMode(UnityEngine.WrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.WrapMode</param>
--- <returns>System.Void</returns>
function Animation:set_wrapMode(arg_value)
end
--- <summary>
--- C#声明:Void Stop()
--- </summary>
--- <returns>System.Void</returns>
function Animation:Stop()
end
--- <summary>
--- C#声明:Void Stop(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Animation:Stop(arg_name)
end
--- <summary>
--- C#声明:Void Rewind(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Animation:Rewind(arg_name)
end
--- <summary>
--- C#声明:Void Rewind()
--- </summary>
--- <returns>System.Void</returns>
function Animation:Rewind()
end
--- <summary>
--- C#声明:Void Sample()
--- </summary>
--- <returns>System.Void</returns>
function Animation:Sample()
end
--- <summary>
--- C#声明:Boolean get_isPlaying()
--- </summary>
--- <returns>System.Boolean</returns>
function Animation:get_isPlaying()
end
--- <summary>
--- C#声明:Boolean IsPlaying(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function Animation:IsPlaying(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState get_Item(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:get_Item(arg_name)
end
--- <summary>
--- C#声明:Boolean Play()
--- </summary>
--- <returns>System.Boolean</returns>
function Animation:Play()
end
--- <summary>
--- C#声明:Boolean Play(UnityEngine.PlayMode)
--- </summary>
--- <param name="arg_mode">UnityEngine.PlayMode</param>
--- <returns>System.Boolean</returns>
function Animation:Play(arg_mode)
end
--- <summary>
--- C#声明:Boolean Play(System.String, UnityEngine.PlayMode)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_mode">UnityEngine.PlayMode</param>
--- <returns>System.Boolean</returns>
function Animation:Play(arg_animation,arg_mode)
end
--- <summary>
--- C#声明:Boolean Play(System.String)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <returns>System.Boolean</returns>
function Animation:Play(arg_animation)
end
--- <summary>
--- C#声明:Void CrossFade(System.String, Single, UnityEngine.PlayMode)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_fadeLength">System.Single</param>
--- <param name="arg_mode">UnityEngine.PlayMode</param>
--- <returns>System.Void</returns>
function Animation:CrossFade(arg_animation,arg_fadeLength,arg_mode)
end
--- <summary>
--- C#声明:Void CrossFade(System.String, Single)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_fadeLength">System.Single</param>
--- <returns>System.Void</returns>
function Animation:CrossFade(arg_animation,arg_fadeLength)
end
--- <summary>
--- C#声明:Void CrossFade(System.String)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <returns>System.Void</returns>
function Animation:CrossFade(arg_animation)
end
--- <summary>
--- C#声明:Void Blend(System.String, Single, Single)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_targetWeight">System.Single</param>
--- <param name="arg_fadeLength">System.Single</param>
--- <returns>System.Void</returns>
function Animation:Blend(arg_animation,arg_targetWeight,arg_fadeLength)
end
--- <summary>
--- C#声明:Void Blend(System.String, Single)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_targetWeight">System.Single</param>
--- <returns>System.Void</returns>
function Animation:Blend(arg_animation,arg_targetWeight)
end
--- <summary>
--- C#声明:Void Blend(System.String)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <returns>System.Void</returns>
function Animation:Blend(arg_animation)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState CrossFadeQueued(System.String, Single, UnityEngine.QueueMode, UnityEngine.PlayMode)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_fadeLength">System.Single</param>
--- <param name="arg_queue">UnityEngine.QueueMode</param>
--- <param name="arg_mode">UnityEngine.PlayMode</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:CrossFadeQueued(arg_animation,arg_fadeLength,arg_queue,arg_mode)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState CrossFadeQueued(System.String, Single, UnityEngine.QueueMode)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_fadeLength">System.Single</param>
--- <param name="arg_queue">UnityEngine.QueueMode</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:CrossFadeQueued(arg_animation,arg_fadeLength,arg_queue)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState CrossFadeQueued(System.String, Single)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_fadeLength">System.Single</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:CrossFadeQueued(arg_animation,arg_fadeLength)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState CrossFadeQueued(System.String)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:CrossFadeQueued(arg_animation)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState PlayQueued(System.String, UnityEngine.QueueMode, UnityEngine.PlayMode)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_queue">UnityEngine.QueueMode</param>
--- <param name="arg_mode">UnityEngine.PlayMode</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:PlayQueued(arg_animation,arg_queue,arg_mode)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState PlayQueued(System.String, UnityEngine.QueueMode)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_queue">UnityEngine.QueueMode</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:PlayQueued(arg_animation,arg_queue)
end
--- <summary>
--- C#声明:UnityEngine.AnimationState PlayQueued(System.String)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <returns>UnityEngine.AnimationState</returns>
function Animation:PlayQueued(arg_animation)
end
--- <summary>
--- C#声明:Void AddClip(UnityEngine.AnimationClip, System.String)
--- </summary>
--- <param name="arg_clip">UnityEngine.AnimationClip</param>
--- <param name="arg_newName">System.String</param>
--- <returns>System.Void</returns>
function Animation:AddClip(arg_clip,arg_newName)
end
--- <summary>
--- C#声明:Void AddClip(UnityEngine.AnimationClip, System.String, Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_clip">UnityEngine.AnimationClip</param>
--- <param name="arg_newName">System.String</param>
--- <param name="arg_firstFrame">System.Int32</param>
--- <param name="arg_lastFrame">System.Int32</param>
--- <param name="arg_addLoopFrame">System.Boolean</param>
--- <returns>System.Void</returns>
function Animation:AddClip(arg_clip,arg_newName,arg_firstFrame,arg_lastFrame,arg_addLoopFrame)
end
--- <summary>
--- C#声明:Void AddClip(UnityEngine.AnimationClip, System.String, Int32, Int32)
--- </summary>
--- <param name="arg_clip">UnityEngine.AnimationClip</param>
--- <param name="arg_newName">System.String</param>
--- <param name="arg_firstFrame">System.Int32</param>
--- <param name="arg_lastFrame">System.Int32</param>
--- <returns>System.Void</returns>
function Animation:AddClip(arg_clip,arg_newName,arg_firstFrame,arg_lastFrame)
end
--- <summary>
--- C#声明:Void RemoveClip(UnityEngine.AnimationClip)
--- </summary>
--- <param name="arg_clip">UnityEngine.AnimationClip</param>
--- <returns>System.Void</returns>
function Animation:RemoveClip(arg_clip)
end
--- <summary>
--- C#声明:Void RemoveClip(System.String)
--- </summary>
--- <param name="arg_clipName">System.String</param>
--- <returns>System.Void</returns>
function Animation:RemoveClip(arg_clipName)
end
--- <summary>
--- C#声明:Int32 GetClipCount()
--- </summary>
--- <returns>System.Int32</returns>
function Animation:GetClipCount()
end
--- <summary>
--- C#声明:Boolean Play(UnityEngine.AnimationPlayMode)
--- </summary>
--- <param name="arg_mode">UnityEngine.AnimationPlayMode</param>
--- <returns>System.Boolean</returns>
function Animation:Play(arg_mode)
end
--- <summary>
--- C#声明:Boolean Play(System.String, UnityEngine.AnimationPlayMode)
--- </summary>
--- <param name="arg_animation">System.String</param>
--- <param name="arg_mode">UnityEngine.AnimationPlayMode</param>
--- <returns>System.Boolean</returns>
function Animation:Play(arg_animation,arg_mode)
end
--- <summary>
--- C#声明:Void SyncLayer(Int32)
--- </summary>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animation:SyncLayer(arg_layer)
end
--- <summary>
--- C#声明:System.Collections.IEnumerator GetEnumerator()
--- </summary>
--- <returns>System.Collections.IEnumerator</returns>
function Animation:GetEnumerator()
end
--- <summary>
--- C#声明:UnityEngine.AnimationClip GetClip(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.AnimationClip</returns>
function Animation:GetClip(arg_name)
end
--- <summary>
--- C#声明:Boolean get_animatePhysics()
--- </summary>
--- <returns>System.Boolean</returns>
function Animation:get_animatePhysics()
end
--- <summary>
--- C#声明:Void set_animatePhysics(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animation:set_animatePhysics(arg_value)
end
--- <summary>
--- C#声明:Boolean get_animateOnlyIfVisible()
--- </summary>
--- <returns>System.Boolean</returns>
function Animation:get_animateOnlyIfVisible()
end
--- <summary>
--- C#声明:Void set_animateOnlyIfVisible(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animation:set_animateOnlyIfVisible(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AnimationCullingType get_cullingType()
--- </summary>
--- <returns>UnityEngine.AnimationCullingType</returns>
function Animation:get_cullingType()
end
--- <summary>
--- C#声明:Void set_cullingType(UnityEngine.AnimationCullingType)
--- </summary>
--- <param name="arg_value">UnityEngine.AnimationCullingType</param>
--- <returns>System.Void</returns>
function Animation:set_cullingType(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_localBounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function Animation:get_localBounds()
end
--- <summary>
--- C#声明:Void set_localBounds(UnityEngine.Bounds)
--- </summary>
--- <param name="arg_value">UnityEngine.Bounds</param>
--- <returns>System.Void</returns>
function Animation:set_localBounds(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Animation:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animation:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Animation:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Animation:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function Animation:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Animation:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function Animation:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function Animation:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Animation:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function Animation:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Animation:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Animation:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Animation:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animation:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function Animation:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animation:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Animation:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function Animation:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Animation:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Animation:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Animation:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animation:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function Animation:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Animation:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function Animation:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animation:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function Animation:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Animation:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function Animation:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function Animation:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animation:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Animation:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Animation:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animation:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animation:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Animation:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Animation:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animation:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animation:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function Animation:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Animation:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animation:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animation:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Animation:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Animation:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Animation:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Animation:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Animation:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Animation:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Animation:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Animation:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Animation:GetType()
end

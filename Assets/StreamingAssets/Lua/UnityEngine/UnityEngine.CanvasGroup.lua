--create by yangxun
CanvasGroup={}

--- <summary>
--- 属性:Single
--- </summary>
CanvasGroup.alpha=nil
--- <summary>
--- 属性:Boolean
--- </summary>
CanvasGroup.interactable=nil
--- <summary>
--- 属性:Boolean
--- </summary>
CanvasGroup.blocksRaycasts=nil
--- <summary>
--- 属性:Boolean
--- </summary>
CanvasGroup.ignoreParentGroups=nil
--- <summary>
--- 属性:Transform
--- </summary>
CanvasGroup.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
CanvasGroup.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
CanvasGroup.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.light=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasGroup.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
CanvasGroup.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
CanvasGroup.hideFlags=nil
--- <summary>
--- C#声明:Single get_alpha()
--- </summary>
--- <returns>System.Single</returns>
function CanvasGroup:get_alpha()
end
--- <summary>
--- C#声明:Void set_alpha(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CanvasGroup:set_alpha(arg_value)
end
--- <summary>
--- C#声明:Boolean get_interactable()
--- </summary>
--- <returns>System.Boolean</returns>
function CanvasGroup:get_interactable()
end
--- <summary>
--- C#声明:Void set_interactable(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function CanvasGroup:set_interactable(arg_value)
end
--- <summary>
--- C#声明:Boolean get_blocksRaycasts()
--- </summary>
--- <returns>System.Boolean</returns>
function CanvasGroup:get_blocksRaycasts()
end
--- <summary>
--- C#声明:Void set_blocksRaycasts(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function CanvasGroup:set_blocksRaycasts(arg_value)
end
--- <summary>
--- C#声明:Boolean get_ignoreParentGroups()
--- </summary>
--- <returns>System.Boolean</returns>
function CanvasGroup:get_ignoreParentGroups()
end
--- <summary>
--- C#声明:Void set_ignoreParentGroups(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function CanvasGroup:set_ignoreParentGroups(arg_value)
end
--- <summary>
--- C#声明:Boolean IsRaycastLocationValid(UnityEngine.Vector2, UnityEngine.Camera)
--- </summary>
--- <param name="arg_sp">UnityEngine.Vector2</param>
--- <param name="arg_eventCamera">UnityEngine.Camera</param>
--- <returns>System.Boolean</returns>
function CanvasGroup:IsRaycastLocationValid(arg_sp,arg_eventCamera)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function CanvasGroup:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function CanvasGroup:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function CanvasGroup:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function CanvasGroup:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasGroup:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasGroup:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function CanvasGroup:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasGroup:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function CanvasGroup:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasGroup:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function CanvasGroup:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasGroup:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasGroup:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function CanvasGroup:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasGroup:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function CanvasGroup:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasGroup:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function CanvasGroup:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasGroup:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function CanvasGroup:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function CanvasGroup:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function CanvasGroup:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function CanvasGroup:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasGroup:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasGroup:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function CanvasGroup:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CanvasGroup:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasGroup:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasGroup:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function CanvasGroup:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function CanvasGroup:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function CanvasGroup:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function CanvasGroup:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function CanvasGroup:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function CanvasGroup:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function CanvasGroup:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function CanvasGroup:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function CanvasGroup:GetType()
end

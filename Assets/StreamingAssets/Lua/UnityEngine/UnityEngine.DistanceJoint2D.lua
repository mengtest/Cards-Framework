--create by yangxun
DistanceJoint2D={}

--- <summary>
--- 属性:Single
--- </summary>
DistanceJoint2D.distance=nil
--- <summary>
--- 属性:Boolean
--- </summary>
DistanceJoint2D.maxDistanceOnly=nil
--- <summary>
--- 属性:Vector2
--- </summary>
DistanceJoint2D.anchor=nil
--- <summary>
--- 属性:Vector2
--- </summary>
DistanceJoint2D.connectedAnchor=nil
--- <summary>
--- 属性:Rigidbody2D
--- </summary>
DistanceJoint2D.connectedBody=nil
--- <summary>
--- 属性:Boolean
--- </summary>
DistanceJoint2D.collideConnected=nil
--- <summary>
--- 属性:Boolean
--- </summary>
DistanceJoint2D.enableCollision=nil
--- <summary>
--- 属性:Boolean
--- </summary>
DistanceJoint2D.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
DistanceJoint2D.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
DistanceJoint2D.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
DistanceJoint2D.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
DistanceJoint2D.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.light=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
DistanceJoint2D.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
DistanceJoint2D.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
DistanceJoint2D.hideFlags=nil
--- <summary>
--- C#声明:Single get_distance()
--- </summary>
--- <returns>System.Single</returns>
function DistanceJoint2D:get_distance()
end
--- <summary>
--- C#声明:Void set_distance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_distance(arg_value)
end
--- <summary>
--- C#声明:Boolean get_maxDistanceOnly()
--- </summary>
--- <returns>System.Boolean</returns>
function DistanceJoint2D:get_maxDistanceOnly()
end
--- <summary>
--- C#声明:Void set_maxDistanceOnly(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_maxDistanceOnly(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GetReactionForce(Single)
--- </summary>
--- <param name="arg_timeStep">System.Single</param>
--- <returns>UnityEngine.Vector2</returns>
function DistanceJoint2D:GetReactionForce(arg_timeStep)
end
--- <summary>
--- C#声明:Single GetReactionTorque(Single)
--- </summary>
--- <param name="arg_timeStep">System.Single</param>
--- <returns>System.Single</returns>
function DistanceJoint2D:GetReactionTorque(arg_timeStep)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_anchor()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function DistanceJoint2D:get_anchor()
end
--- <summary>
--- C#声明:Void set_anchor(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_anchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_connectedAnchor()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function DistanceJoint2D:get_connectedAnchor()
end
--- <summary>
--- C#声明:Void set_connectedAnchor(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_connectedAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rigidbody2D get_connectedBody()
--- </summary>
--- <returns>UnityEngine.Rigidbody2D</returns>
function DistanceJoint2D:get_connectedBody()
end
--- <summary>
--- C#声明:Void set_connectedBody(UnityEngine.Rigidbody2D)
--- </summary>
--- <param name="arg_value">UnityEngine.Rigidbody2D</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_connectedBody(arg_value)
end
--- <summary>
--- C#声明:Boolean get_collideConnected()
--- </summary>
--- <returns>System.Boolean</returns>
function DistanceJoint2D:get_collideConnected()
end
--- <summary>
--- C#声明:Void set_collideConnected(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_collideConnected(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enableCollision()
--- </summary>
--- <returns>System.Boolean</returns>
function DistanceJoint2D:get_enableCollision()
end
--- <summary>
--- C#声明:Void set_enableCollision(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_enableCollision(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function DistanceJoint2D:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function DistanceJoint2D:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function DistanceJoint2D:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function DistanceJoint2D:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function DistanceJoint2D:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function DistanceJoint2D:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function DistanceJoint2D:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function DistanceJoint2D:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function DistanceJoint2D:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function DistanceJoint2D:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function DistanceJoint2D:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function DistanceJoint2D:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function DistanceJoint2D:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function DistanceJoint2D:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function DistanceJoint2D:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function DistanceJoint2D:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function DistanceJoint2D:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function DistanceJoint2D:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function DistanceJoint2D:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function DistanceJoint2D:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function DistanceJoint2D:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function DistanceJoint2D:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function DistanceJoint2D:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function DistanceJoint2D:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function DistanceJoint2D:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function DistanceJoint2D:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function DistanceJoint2D:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function DistanceJoint2D:GetType()
end

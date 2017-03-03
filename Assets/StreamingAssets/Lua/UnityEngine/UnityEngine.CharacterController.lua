--create by yangxun
CharacterController={}

--- <summary>
--- 属性:Boolean
--- </summary>
CharacterController.isGrounded=nil
--- <summary>
--- 属性:Vector3
--- </summary>
CharacterController.velocity=nil
--- <summary>
--- 属性:CollisionFlags
--- </summary>
CharacterController.collisionFlags=nil
--- <summary>
--- 属性:Single
--- </summary>
CharacterController.radius=nil
--- <summary>
--- 属性:Single
--- </summary>
CharacterController.height=nil
--- <summary>
--- 属性:Vector3
--- </summary>
CharacterController.center=nil
--- <summary>
--- 属性:Single
--- </summary>
CharacterController.slopeLimit=nil
--- <summary>
--- 属性:Single
--- </summary>
CharacterController.stepOffset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
CharacterController.detectCollisions=nil
--- <summary>
--- 属性:Boolean
--- </summary>
CharacterController.enabled=nil
--- <summary>
--- 属性:Rigidbody
--- </summary>
CharacterController.attachedRigidbody=nil
--- <summary>
--- 属性:Boolean
--- </summary>
CharacterController.isTrigger=nil
--- <summary>
--- 属性:Single
--- </summary>
CharacterController.contactOffset=nil
--- <summary>
--- 属性:PhysicMaterial
--- </summary>
CharacterController.material=nil
--- <summary>
--- 属性:PhysicMaterial
--- </summary>
CharacterController.sharedMaterial=nil
--- <summary>
--- 属性:Bounds
--- </summary>
CharacterController.bounds=nil
--- <summary>
--- 属性:Transform
--- </summary>
CharacterController.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
CharacterController.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
CharacterController.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.light=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
CharacterController.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
CharacterController.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
CharacterController.hideFlags=nil
--- <summary>
--- C#声明:Boolean SimpleMove(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_speed">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function CharacterController:SimpleMove(arg_speed)
end
--- <summary>
--- C#声明:UnityEngine.CollisionFlags Move(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_motion">UnityEngine.Vector3</param>
--- <returns>UnityEngine.CollisionFlags</returns>
function CharacterController:Move(arg_motion)
end
--- <summary>
--- C#声明:Boolean get_isGrounded()
--- </summary>
--- <returns>System.Boolean</returns>
function CharacterController:get_isGrounded()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_velocity()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function CharacterController:get_velocity()
end
--- <summary>
--- C#声明:UnityEngine.CollisionFlags get_collisionFlags()
--- </summary>
--- <returns>UnityEngine.CollisionFlags</returns>
function CharacterController:get_collisionFlags()
end
--- <summary>
--- C#声明:Single get_radius()
--- </summary>
--- <returns>System.Single</returns>
function CharacterController:get_radius()
end
--- <summary>
--- C#声明:Void set_radius(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CharacterController:set_radius(arg_value)
end
--- <summary>
--- C#声明:Single get_height()
--- </summary>
--- <returns>System.Single</returns>
function CharacterController:get_height()
end
--- <summary>
--- C#声明:Void set_height(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CharacterController:set_height(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_center()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function CharacterController:get_center()
end
--- <summary>
--- C#声明:Void set_center(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function CharacterController:set_center(arg_value)
end
--- <summary>
--- C#声明:Single get_slopeLimit()
--- </summary>
--- <returns>System.Single</returns>
function CharacterController:get_slopeLimit()
end
--- <summary>
--- C#声明:Void set_slopeLimit(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CharacterController:set_slopeLimit(arg_value)
end
--- <summary>
--- C#声明:Single get_stepOffset()
--- </summary>
--- <returns>System.Single</returns>
function CharacterController:get_stepOffset()
end
--- <summary>
--- C#声明:Void set_stepOffset(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CharacterController:set_stepOffset(arg_value)
end
--- <summary>
--- C#声明:Boolean get_detectCollisions()
--- </summary>
--- <returns>System.Boolean</returns>
function CharacterController:get_detectCollisions()
end
--- <summary>
--- C#声明:Void set_detectCollisions(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function CharacterController:set_detectCollisions(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function CharacterController:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function CharacterController:set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rigidbody get_attachedRigidbody()
--- </summary>
--- <returns>UnityEngine.Rigidbody</returns>
function CharacterController:get_attachedRigidbody()
end
--- <summary>
--- C#声明:Boolean get_isTrigger()
--- </summary>
--- <returns>System.Boolean</returns>
function CharacterController:get_isTrigger()
end
--- <summary>
--- C#声明:Void set_isTrigger(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function CharacterController:set_isTrigger(arg_value)
end
--- <summary>
--- C#声明:Single get_contactOffset()
--- </summary>
--- <returns>System.Single</returns>
function CharacterController:get_contactOffset()
end
--- <summary>
--- C#声明:Void set_contactOffset(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CharacterController:set_contactOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.PhysicMaterial get_material()
--- </summary>
--- <returns>UnityEngine.PhysicMaterial</returns>
function CharacterController:get_material()
end
--- <summary>
--- C#声明:Void set_material(UnityEngine.PhysicMaterial)
--- </summary>
--- <param name="arg_value">UnityEngine.PhysicMaterial</param>
--- <returns>System.Void</returns>
function CharacterController:set_material(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ClosestPointOnBounds(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function CharacterController:ClosestPointOnBounds(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.PhysicMaterial get_sharedMaterial()
--- </summary>
--- <returns>UnityEngine.PhysicMaterial</returns>
function CharacterController:get_sharedMaterial()
end
--- <summary>
--- C#声明:Void set_sharedMaterial(UnityEngine.PhysicMaterial)
--- </summary>
--- <param name="arg_value">UnityEngine.PhysicMaterial</param>
--- <returns>System.Void</returns>
function CharacterController:set_sharedMaterial(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function CharacterController:get_bounds()
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, UnityEngine.RaycastHit ByRef, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function CharacterController:Raycast(arg_ray,arg_hitInfo,arg_maxDistance)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function CharacterController:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function CharacterController:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CharacterController:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function CharacterController:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function CharacterController:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CharacterController:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function CharacterController:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CharacterController:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function CharacterController:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function CharacterController:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CharacterController:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function CharacterController:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CharacterController:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CharacterController:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function CharacterController:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CharacterController:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function CharacterController:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function CharacterController:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CharacterController:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function CharacterController:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CharacterController:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function CharacterController:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CharacterController:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function CharacterController:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function CharacterController:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function CharacterController:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function CharacterController:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CharacterController:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CharacterController:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function CharacterController:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CharacterController:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CharacterController:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CharacterController:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function CharacterController:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function CharacterController:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function CharacterController:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function CharacterController:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function CharacterController:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function CharacterController:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function CharacterController:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function CharacterController:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function CharacterController:GetType()
end

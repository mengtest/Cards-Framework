--create by yangxun
Cloth={}

--- <summary>
--- 属性:Single
--- </summary>
Cloth.sleepThreshold=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.bendingStiffness=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.stretchingStiffness=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.damping=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Cloth.externalAcceleration=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Cloth.randomAcceleration=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Cloth.useGravity=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Cloth.selfCollision=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Cloth.enabled=nil
--- <summary>
--- 属性:Vector3[]
--- </summary>
Cloth.vertices=nil
--- <summary>
--- 属性:Vector3[]
--- </summary>
Cloth.normals=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.friction=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.collisionMassScale=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.useContinuousCollision=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.useVirtualParticles=nil
--- <summary>
--- 属性:ClothSkinningCoefficient[]
--- </summary>
Cloth.coefficients=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.worldVelocityScale=nil
--- <summary>
--- 属性:Single
--- </summary>
Cloth.worldAccelerationScale=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Cloth.solverFrequency=nil
--- <summary>
--- 属性:CapsuleCollider[]
--- </summary>
Cloth.capsuleColliders=nil
--- <summary>
--- 属性:ClothSphereColliderPair[]
--- </summary>
Cloth.sphereColliders=nil
--- <summary>
--- 属性:Transform
--- </summary>
Cloth.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
Cloth.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
Cloth.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.light=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
Cloth.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
Cloth.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Cloth.hideFlags=nil
--- <summary>
--- C#声明:Single get_sleepThreshold()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_sleepThreshold()
end
--- <summary>
--- C#声明:Void set_sleepThreshold(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_sleepThreshold(arg_value)
end
--- <summary>
--- C#声明:Single get_bendingStiffness()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_bendingStiffness()
end
--- <summary>
--- C#声明:Void set_bendingStiffness(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_bendingStiffness(arg_value)
end
--- <summary>
--- C#声明:Single get_stretchingStiffness()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_stretchingStiffness()
end
--- <summary>
--- C#声明:Void set_stretchingStiffness(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_stretchingStiffness(arg_value)
end
--- <summary>
--- C#声明:Single get_damping()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_damping()
end
--- <summary>
--- C#声明:Void set_damping(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_damping(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_externalAcceleration()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Cloth:get_externalAcceleration()
end
--- <summary>
--- C#声明:Void set_externalAcceleration(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Cloth:set_externalAcceleration(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_randomAcceleration()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Cloth:get_randomAcceleration()
end
--- <summary>
--- C#声明:Void set_randomAcceleration(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Cloth:set_randomAcceleration(arg_value)
end
--- <summary>
--- C#声明:Boolean get_useGravity()
--- </summary>
--- <returns>System.Boolean</returns>
function Cloth:get_useGravity()
end
--- <summary>
--- C#声明:Void set_useGravity(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Cloth:set_useGravity(arg_value)
end
--- <summary>
--- C#声明:Boolean get_selfCollision()
--- </summary>
--- <returns>System.Boolean</returns>
function Cloth:get_selfCollision()
end
--- <summary>
--- C#声明:Void set_selfCollision(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Cloth:set_selfCollision(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Cloth:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Cloth:set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3[] get_vertices()
--- </summary>
--- <returns>UnityEngine.Vector3[]</returns>
function Cloth:get_vertices()
end
--- <summary>
--- C#声明:UnityEngine.Vector3[] get_normals()
--- </summary>
--- <returns>UnityEngine.Vector3[]</returns>
function Cloth:get_normals()
end
--- <summary>
--- C#声明:Single get_friction()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_friction()
end
--- <summary>
--- C#声明:Void set_friction(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_friction(arg_value)
end
--- <summary>
--- C#声明:Single get_collisionMassScale()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_collisionMassScale()
end
--- <summary>
--- C#声明:Void set_collisionMassScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_collisionMassScale(arg_value)
end
--- <summary>
--- C#声明:Single get_useContinuousCollision()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_useContinuousCollision()
end
--- <summary>
--- C#声明:Void set_useContinuousCollision(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_useContinuousCollision(arg_value)
end
--- <summary>
--- C#声明:Single get_useVirtualParticles()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_useVirtualParticles()
end
--- <summary>
--- C#声明:Void set_useVirtualParticles(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_useVirtualParticles(arg_value)
end
--- <summary>
--- C#声明:Void ClearTransformMotion()
--- </summary>
--- <returns>System.Void</returns>
function Cloth:ClearTransformMotion()
end
--- <summary>
--- C#声明:UnityEngine.ClothSkinningCoefficient[] get_coefficients()
--- </summary>
--- <returns>UnityEngine.ClothSkinningCoefficient[]</returns>
function Cloth:get_coefficients()
end
--- <summary>
--- C#声明:Void set_coefficients(UnityEngine.ClothSkinningCoefficient[])
--- </summary>
--- <param name="arg_value">UnityEngine.ClothSkinningCoefficient[]</param>
--- <returns>System.Void</returns>
function Cloth:set_coefficients(arg_value)
end
--- <summary>
--- C#声明:Single get_worldVelocityScale()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_worldVelocityScale()
end
--- <summary>
--- C#声明:Void set_worldVelocityScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_worldVelocityScale(arg_value)
end
--- <summary>
--- C#声明:Single get_worldAccelerationScale()
--- </summary>
--- <returns>System.Single</returns>
function Cloth:get_worldAccelerationScale()
end
--- <summary>
--- C#声明:Void set_worldAccelerationScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:set_worldAccelerationScale(arg_value)
end
--- <summary>
--- C#声明:Void SetEnabledFading(Boolean, Single)
--- </summary>
--- <param name="arg_enabled">System.Boolean</param>
--- <param name="arg_interpolationTime">System.Single</param>
--- <returns>System.Void</returns>
function Cloth:SetEnabledFading(arg_enabled,arg_interpolationTime)
end
--- <summary>
--- C#声明:Void SetEnabledFading(Boolean)
--- </summary>
--- <param name="arg_enabled">System.Boolean</param>
--- <returns>System.Void</returns>
function Cloth:SetEnabledFading(arg_enabled)
end
--- <summary>
--- C#声明:Boolean get_solverFrequency()
--- </summary>
--- <returns>System.Boolean</returns>
function Cloth:get_solverFrequency()
end
--- <summary>
--- C#声明:Void set_solverFrequency(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Cloth:set_solverFrequency(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.CapsuleCollider[] get_capsuleColliders()
--- </summary>
--- <returns>UnityEngine.CapsuleCollider[]</returns>
function Cloth:get_capsuleColliders()
end
--- <summary>
--- C#声明:Void set_capsuleColliders(UnityEngine.CapsuleCollider[])
--- </summary>
--- <param name="arg_value">UnityEngine.CapsuleCollider[]</param>
--- <returns>System.Void</returns>
function Cloth:set_capsuleColliders(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ClothSphereColliderPair[] get_sphereColliders()
--- </summary>
--- <returns>UnityEngine.ClothSphereColliderPair[]</returns>
function Cloth:get_sphereColliders()
end
--- <summary>
--- C#声明:Void set_sphereColliders(UnityEngine.ClothSphereColliderPair[])
--- </summary>
--- <param name="arg_value">UnityEngine.ClothSphereColliderPair[]</param>
--- <returns>System.Void</returns>
function Cloth:set_sphereColliders(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Cloth:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function Cloth:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Cloth:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function Cloth:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function Cloth:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Cloth:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function Cloth:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Cloth:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Cloth:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Cloth:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Cloth:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function Cloth:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Cloth:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Cloth:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function Cloth:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Cloth:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Cloth:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Cloth:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Cloth:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function Cloth:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Cloth:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function Cloth:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Cloth:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function Cloth:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Cloth:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function Cloth:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function Cloth:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Cloth:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Cloth:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Cloth:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Cloth:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Cloth:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Cloth:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Cloth:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Cloth:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Cloth:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function Cloth:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Cloth:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Cloth:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Cloth:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Cloth:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Cloth:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Cloth:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Cloth:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Cloth:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Cloth:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Cloth:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Cloth:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Cloth:GetType()
end

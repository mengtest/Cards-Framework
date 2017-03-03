--create by yangxun
TerrainCollider={}

--- <summary>
--- 属性:TerrainData
--- </summary>
TerrainCollider.terrainData=nil
--- <summary>
--- 属性:Boolean
--- </summary>
TerrainCollider.enabled=nil
--- <summary>
--- 属性:Rigidbody
--- </summary>
TerrainCollider.attachedRigidbody=nil
--- <summary>
--- 属性:Boolean
--- </summary>
TerrainCollider.isTrigger=nil
--- <summary>
--- 属性:Single
--- </summary>
TerrainCollider.contactOffset=nil
--- <summary>
--- 属性:PhysicMaterial
--- </summary>
TerrainCollider.material=nil
--- <summary>
--- 属性:PhysicMaterial
--- </summary>
TerrainCollider.sharedMaterial=nil
--- <summary>
--- 属性:Bounds
--- </summary>
TerrainCollider.bounds=nil
--- <summary>
--- 属性:Transform
--- </summary>
TerrainCollider.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
TerrainCollider.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
TerrainCollider.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.light=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
TerrainCollider.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
TerrainCollider.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
TerrainCollider.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.TerrainData get_terrainData()
--- </summary>
--- <returns>UnityEngine.TerrainData</returns>
function TerrainCollider:get_terrainData()
end
--- <summary>
--- C#声明:Void set_terrainData(UnityEngine.TerrainData)
--- </summary>
--- <param name="arg_value">UnityEngine.TerrainData</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_terrainData(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function TerrainCollider:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rigidbody get_attachedRigidbody()
--- </summary>
--- <returns>UnityEngine.Rigidbody</returns>
function TerrainCollider:get_attachedRigidbody()
end
--- <summary>
--- C#声明:Boolean get_isTrigger()
--- </summary>
--- <returns>System.Boolean</returns>
function TerrainCollider:get_isTrigger()
end
--- <summary>
--- C#声明:Void set_isTrigger(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_isTrigger(arg_value)
end
--- <summary>
--- C#声明:Single get_contactOffset()
--- </summary>
--- <returns>System.Single</returns>
function TerrainCollider:get_contactOffset()
end
--- <summary>
--- C#声明:Void set_contactOffset(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_contactOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.PhysicMaterial get_material()
--- </summary>
--- <returns>UnityEngine.PhysicMaterial</returns>
function TerrainCollider:get_material()
end
--- <summary>
--- C#声明:Void set_material(UnityEngine.PhysicMaterial)
--- </summary>
--- <param name="arg_value">UnityEngine.PhysicMaterial</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_material(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ClosestPointOnBounds(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function TerrainCollider:ClosestPointOnBounds(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.PhysicMaterial get_sharedMaterial()
--- </summary>
--- <returns>UnityEngine.PhysicMaterial</returns>
function TerrainCollider:get_sharedMaterial()
end
--- <summary>
--- C#声明:Void set_sharedMaterial(UnityEngine.PhysicMaterial)
--- </summary>
--- <param name="arg_value">UnityEngine.PhysicMaterial</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_sharedMaterial(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function TerrainCollider:get_bounds()
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, UnityEngine.RaycastHit ByRef, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function TerrainCollider:Raycast(arg_ray,arg_hitInfo,arg_maxDistance)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function TerrainCollider:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function TerrainCollider:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function TerrainCollider:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function TerrainCollider:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function TerrainCollider:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function TerrainCollider:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function TerrainCollider:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function TerrainCollider:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function TerrainCollider:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function TerrainCollider:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function TerrainCollider:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function TerrainCollider:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function TerrainCollider:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function TerrainCollider:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function TerrainCollider:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function TerrainCollider:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function TerrainCollider:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function TerrainCollider:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function TerrainCollider:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function TerrainCollider:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function TerrainCollider:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function TerrainCollider:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function TerrainCollider:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function TerrainCollider:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function TerrainCollider:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function TerrainCollider:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function TerrainCollider:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function TerrainCollider:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function TerrainCollider:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function TerrainCollider:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function TerrainCollider:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function TerrainCollider:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function TerrainCollider:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainCollider:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainCollider:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function TerrainCollider:GetType()
end

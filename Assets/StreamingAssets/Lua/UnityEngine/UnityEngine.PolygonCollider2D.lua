--create by yangxun
PolygonCollider2D={}

--- <summary>
--- 属性:Vector2[]
--- </summary>
PolygonCollider2D.points=nil
--- <summary>
--- 属性:Int32
--- </summary>
PolygonCollider2D.pathCount=nil
--- <summary>
--- 属性:Boolean
--- </summary>
PolygonCollider2D.isTrigger=nil
--- <summary>
--- 属性:Boolean
--- </summary>
PolygonCollider2D.usedByEffector=nil
--- <summary>
--- 属性:Vector2
--- </summary>
PolygonCollider2D.offset=nil
--- <summary>
--- 属性:Rigidbody2D
--- </summary>
PolygonCollider2D.attachedRigidbody=nil
--- <summary>
--- 属性:Int32
--- </summary>
PolygonCollider2D.shapeCount=nil
--- <summary>
--- 属性:Bounds
--- </summary>
PolygonCollider2D.bounds=nil
--- <summary>
--- 属性:PhysicsMaterial2D
--- </summary>
PolygonCollider2D.sharedMaterial=nil
--- <summary>
--- 属性:Boolean
--- </summary>
PolygonCollider2D.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
PolygonCollider2D.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
PolygonCollider2D.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
PolygonCollider2D.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
PolygonCollider2D.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.light=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
PolygonCollider2D.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
PolygonCollider2D.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
PolygonCollider2D.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.Vector2[] get_points()
--- </summary>
--- <returns>UnityEngine.Vector2[]</returns>
function PolygonCollider2D:get_points()
end
--- <summary>
--- C#声明:Void set_points(UnityEngine.Vector2[])
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2[]</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_points(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2[] GetPath(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.Vector2[]</returns>
function PolygonCollider2D:GetPath(arg_index)
end
--- <summary>
--- C#声明:Void SetPath(Int32, UnityEngine.Vector2[])
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_points">UnityEngine.Vector2[]</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SetPath(arg_index,arg_points)
end
--- <summary>
--- C#声明:Int32 get_pathCount()
--- </summary>
--- <returns>System.Int32</returns>
function PolygonCollider2D:get_pathCount()
end
--- <summary>
--- C#声明:Void set_pathCount(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_pathCount(arg_value)
end
--- <summary>
--- C#声明:Int32 GetTotalPointCount()
--- </summary>
--- <returns>System.Int32</returns>
function PolygonCollider2D:GetTotalPointCount()
end
--- <summary>
--- C#声明:Void CreatePrimitive(Int32, UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_sides">System.Int32</param>
--- <param name="arg_scale">UnityEngine.Vector2</param>
--- <param name="arg_offset">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:CreatePrimitive(arg_sides,arg_scale,arg_offset)
end
--- <summary>
--- C#声明:Void CreatePrimitive(Int32, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_sides">System.Int32</param>
--- <param name="arg_scale">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:CreatePrimitive(arg_sides,arg_scale)
end
--- <summary>
--- C#声明:Void CreatePrimitive(Int32)
--- </summary>
--- <param name="arg_sides">System.Int32</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:CreatePrimitive(arg_sides)
end
--- <summary>
--- C#声明:Boolean get_isTrigger()
--- </summary>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:get_isTrigger()
end
--- <summary>
--- C#声明:Void set_isTrigger(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_isTrigger(arg_value)
end
--- <summary>
--- C#声明:Boolean get_usedByEffector()
--- </summary>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:get_usedByEffector()
end
--- <summary>
--- C#声明:Void set_usedByEffector(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_usedByEffector(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_offset()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function PolygonCollider2D:get_offset()
end
--- <summary>
--- C#声明:Void set_offset(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_offset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rigidbody2D get_attachedRigidbody()
--- </summary>
--- <returns>UnityEngine.Rigidbody2D</returns>
function PolygonCollider2D:get_attachedRigidbody()
end
--- <summary>
--- C#声明:Int32 get_shapeCount()
--- </summary>
--- <returns>System.Int32</returns>
function PolygonCollider2D:get_shapeCount()
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function PolygonCollider2D:get_bounds()
end
--- <summary>
--- C#声明:Boolean OverlapPoint(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:OverlapPoint(arg_point)
end
--- <summary>
--- C#声明:UnityEngine.PhysicsMaterial2D get_sharedMaterial()
--- </summary>
--- <returns>UnityEngine.PhysicsMaterial2D</returns>
function PolygonCollider2D:get_sharedMaterial()
end
--- <summary>
--- C#声明:Void set_sharedMaterial(UnityEngine.PhysicsMaterial2D)
--- </summary>
--- <param name="arg_value">UnityEngine.PhysicsMaterial2D</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_sharedMaterial(arg_value)
end
--- <summary>
--- C#声明:Boolean IsTouching(UnityEngine.Collider2D)
--- </summary>
--- <param name="arg_collider">UnityEngine.Collider2D</param>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:IsTouching(arg_collider)
end
--- <summary>
--- C#声明:Boolean IsTouchingLayers(Int32)
--- </summary>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:IsTouchingLayers(arg_layerMask)
end
--- <summary>
--- C#声明:Boolean IsTouchingLayers()
--- </summary>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:IsTouchingLayers()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function PolygonCollider2D:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function PolygonCollider2D:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function PolygonCollider2D:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function PolygonCollider2D:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function PolygonCollider2D:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function PolygonCollider2D:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function PolygonCollider2D:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function PolygonCollider2D:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function PolygonCollider2D:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function PolygonCollider2D:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function PolygonCollider2D:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function PolygonCollider2D:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function PolygonCollider2D:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function PolygonCollider2D:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function PolygonCollider2D:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function PolygonCollider2D:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function PolygonCollider2D:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function PolygonCollider2D:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function PolygonCollider2D:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function PolygonCollider2D:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function PolygonCollider2D:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function PolygonCollider2D:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function PolygonCollider2D:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function PolygonCollider2D:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function PolygonCollider2D:GetType()
end

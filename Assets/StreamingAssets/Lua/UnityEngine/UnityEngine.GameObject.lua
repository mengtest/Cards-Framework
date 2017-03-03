--create by yangxun
GameObject={}

--- <summary>
--- 属性:Transform
--- </summary>
GameObject.transform=nil
--- <summary>
--- 属性:Int32
--- </summary>
GameObject.layer=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GameObject.active=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GameObject.activeSelf=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GameObject.activeInHierarchy=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GameObject.isStatic=nil
--- <summary>
--- 属性:String
--- </summary>
GameObject.tag=nil
--- <summary>
--- 属性:GameObject
--- </summary>
GameObject.gameObject=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.light=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
GameObject.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
GameObject.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
GameObject.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.Component AddComponent(System.String)
--- </summary>
--- <param name="arg_className">System.String</param>
--- <returns>UnityEngine.Component</returns>
function GameObject:AddComponent(arg_className)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function GameObject:get_particleSystem()
end
--- <summary>
--- C#声明:Void PlayAnimation(UnityEngine.Object)
--- </summary>
--- <param name="arg_animation">UnityEngine.Object</param>
--- <returns>System.Void</returns>
function GameObject:PlayAnimation(arg_animation)
end
--- <summary>
--- C#声明:Void StopAnimation()
--- </summary>
--- <returns>System.Void</returns>
function GameObject:StopAnimation()
end
--- <summary>
--- C#声明:UnityEngine.GameObject CreatePrimitive(UnityEngine.PrimitiveType)
--- </summary>
--- <param name="arg_type">UnityEngine.PrimitiveType</param>
--- <returns>UnityEngine.GameObject</returns>
function GameObject.CreatePrimitive(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function GameObject:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function GameObject:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function GameObject:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function GameObject:GetComponentInChildren(arg_type)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function GameObject:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function GameObject:GetComponentInParent(arg_type)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function GameObject:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function GameObject:GetComponents(arg_type)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function GameObject:GetComponents()
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function GameObject:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function GameObject:GetComponents(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function GameObject:GetComponentsInChildren(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function GameObject:GetComponentsInChildren(arg_type,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function GameObject:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function GameObject:GetComponentsInChildren(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function GameObject:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function GameObject:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function GameObject:GetComponentsInParent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function GameObject:GetComponentsInParent(arg_type,arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function GameObject:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function GameObject:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function GameObject:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function GameObject:get_transform()
end
--- <summary>
--- C#声明:Int32 get_layer()
--- </summary>
--- <returns>System.Int32</returns>
function GameObject:get_layer()
end
--- <summary>
--- C#声明:Void set_layer(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function GameObject:set_layer(arg_value)
end
--- <summary>
--- C#声明:Boolean get_active()
--- </summary>
--- <returns>System.Boolean</returns>
function GameObject:get_active()
end
--- <summary>
--- C#声明:Void set_active(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GameObject:set_active(arg_value)
end
--- <summary>
--- C#声明:Void SetActive(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GameObject:SetActive(arg_value)
end
--- <summary>
--- C#声明:Boolean get_activeSelf()
--- </summary>
--- <returns>System.Boolean</returns>
function GameObject:get_activeSelf()
end
--- <summary>
--- C#声明:Boolean get_activeInHierarchy()
--- </summary>
--- <returns>System.Boolean</returns>
function GameObject:get_activeInHierarchy()
end
--- <summary>
--- C#声明:Void SetActiveRecursively(Boolean)
--- </summary>
--- <param name="arg_state">System.Boolean</param>
--- <returns>System.Void</returns>
function GameObject:SetActiveRecursively(arg_state)
end
--- <summary>
--- C#声明:Boolean get_isStatic()
--- </summary>
--- <returns>System.Boolean</returns>
function GameObject:get_isStatic()
end
--- <summary>
--- C#声明:Void set_isStatic(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GameObject:set_isStatic(arg_value)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function GameObject:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function GameObject:set_tag(arg_value)
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function GameObject:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:UnityEngine.GameObject FindGameObjectWithTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>UnityEngine.GameObject</returns>
function GameObject.FindGameObjectWithTag(arg_tag)
end
--- <summary>
--- C#声明:UnityEngine.GameObject FindWithTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>UnityEngine.GameObject</returns>
function GameObject.FindWithTag(arg_tag)
end
--- <summary>
--- C#声明:UnityEngine.GameObject[] FindGameObjectsWithTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>UnityEngine.GameObject[]</returns>
function GameObject.FindGameObjectsWithTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function GameObject:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function GameObject:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function GameObject:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function GameObject:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function GameObject:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function GameObject:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function GameObject:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function GameObject:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function GameObject:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function GameObject:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function GameObject:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function GameObject:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component AddComponent(System.Type)
--- </summary>
--- <param name="arg_componentType">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function GameObject:AddComponent(arg_componentType)
end
--- <summary>
--- C#声明:T AddComponent[T]()
--- </summary>
--- <returns>T</returns>
function GameObject:AddComponent()
end
--- <summary>
--- C#声明:UnityEngine.GameObject Find(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.GameObject</returns>
function GameObject.Find(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function GameObject:get_gameObject()
end
--- <summary>
--- C#声明:Void SampleAnimation(UnityEngine.Object, Single)
--- </summary>
--- <param name="arg_clip">UnityEngine.Object</param>
--- <param name="arg_time">System.Single</param>
--- <returns>System.Void</returns>
function GameObject:SampleAnimation(arg_clip,arg_time)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function GameObject:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function GameObject:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function GameObject:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function GameObject:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function GameObject:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function GameObject:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function GameObject:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function GameObject:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function GameObject:GetType()
end

--create by yangxun
CanvasRenderer={}

--- <summary>
--- 属性:Boolean
--- </summary>
CanvasRenderer.isMask=nil
--- <summary>
--- 属性:Int32
--- </summary>
CanvasRenderer.relativeDepth=nil
--- <summary>
--- 属性:Int32
--- </summary>
CanvasRenderer.absoluteDepth=nil
--- <summary>
--- 属性:Transform
--- </summary>
CanvasRenderer.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
CanvasRenderer.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
CanvasRenderer.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.light=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
CanvasRenderer.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
CanvasRenderer.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
CanvasRenderer.hideFlags=nil
--- <summary>
--- C#声明:Void add_onRequestRebuild(OnRequestRebuild)
--- </summary>
--- <param name="arg_value">UnityEngine.CanvasRenderer+OnRequestRebuild</param>
--- <returns>System.Void</returns>
function CanvasRenderer.add_onRequestRebuild(arg_value)
end
--- <summary>
--- C#声明:Void remove_onRequestRebuild(OnRequestRebuild)
--- </summary>
--- <param name="arg_value">UnityEngine.CanvasRenderer+OnRequestRebuild</param>
--- <returns>System.Void</returns>
function CanvasRenderer.remove_onRequestRebuild(arg_value)
end
--- <summary>
--- C#声明:Void SetColor(UnityEngine.Color)
--- </summary>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SetColor(arg_color)
end
--- <summary>
--- C#声明:UnityEngine.Color GetColor()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function CanvasRenderer:GetColor()
end
--- <summary>
--- C#声明:Single GetAlpha()
--- </summary>
--- <returns>System.Single</returns>
function CanvasRenderer:GetAlpha()
end
--- <summary>
--- C#声明:Void SetAlpha(Single)
--- </summary>
--- <param name="arg_alpha">System.Single</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SetAlpha(arg_alpha)
end
--- <summary>
--- C#声明:Boolean get_isMask()
--- </summary>
--- <returns>System.Boolean</returns>
function CanvasRenderer:get_isMask()
end
--- <summary>
--- C#声明:Void set_isMask(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function CanvasRenderer:set_isMask(arg_value)
end
--- <summary>
--- C#声明:Void SetMaterial(UnityEngine.Material, UnityEngine.Texture)
--- </summary>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SetMaterial(arg_material,arg_texture)
end
--- <summary>
--- C#声明:UnityEngine.Material GetMaterial()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function CanvasRenderer:GetMaterial()
end
--- <summary>
--- C#声明:Void SetVertices(System.Collections.Generic.List`1[UnityEngine.UIVertex])
--- </summary>
--- <param name="arg_vertices">System.Collections.Generic.List`1[UnityEngine.UIVertex]</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SetVertices(arg_vertices)
end
--- <summary>
--- C#声明:Void SetVertices(UnityEngine.UIVertex[], Int32)
--- </summary>
--- <param name="arg_vertices">UnityEngine.UIVertex[]</param>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SetVertices(arg_vertices,arg_size)
end
--- <summary>
--- C#声明:Void Clear()
--- </summary>
--- <returns>System.Void</returns>
function CanvasRenderer:Clear()
end
--- <summary>
--- C#声明:Int32 get_relativeDepth()
--- </summary>
--- <returns>System.Int32</returns>
function CanvasRenderer:get_relativeDepth()
end
--- <summary>
--- C#声明:Int32 get_absoluteDepth()
--- </summary>
--- <returns>System.Int32</returns>
function CanvasRenderer:get_absoluteDepth()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function CanvasRenderer:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function CanvasRenderer:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function CanvasRenderer:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function CanvasRenderer:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasRenderer:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasRenderer:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function CanvasRenderer:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasRenderer:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function CanvasRenderer:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasRenderer:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function CanvasRenderer:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasRenderer:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasRenderer:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function CanvasRenderer:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasRenderer:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function CanvasRenderer:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function CanvasRenderer:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function CanvasRenderer:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function CanvasRenderer:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function CanvasRenderer:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function CanvasRenderer:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function CanvasRenderer:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function CanvasRenderer:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasRenderer:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasRenderer:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function CanvasRenderer:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function CanvasRenderer:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function CanvasRenderer:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function CanvasRenderer:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function CanvasRenderer:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function CanvasRenderer:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function CanvasRenderer:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function CanvasRenderer:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function CanvasRenderer:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function CanvasRenderer:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function CanvasRenderer:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function CanvasRenderer:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function CanvasRenderer:GetType()
end

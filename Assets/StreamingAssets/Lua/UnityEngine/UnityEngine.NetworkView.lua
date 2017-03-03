--create by yangxun
NetworkView={}

--- <summary>
--- 属性:Component
--- </summary>
NetworkView.observed=nil
--- <summary>
--- 属性:NetworkStateSynchronization
--- </summary>
NetworkView.stateSynchronization=nil
--- <summary>
--- 属性:NetworkViewID
--- </summary>
NetworkView.viewID=nil
--- <summary>
--- 属性:Int32
--- </summary>
NetworkView.group=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NetworkView.isMine=nil
--- <summary>
--- 属性:NetworkPlayer
--- </summary>
NetworkView.owner=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NetworkView.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NetworkView.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
NetworkView.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
NetworkView.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
NetworkView.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.light=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkView.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
NetworkView.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
NetworkView.hideFlags=nil
--- <summary>
--- C#声明:Void RPC(System.String, UnityEngine.RPCMode, System.Object[])
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_mode">UnityEngine.RPCMode</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function NetworkView:RPC(arg_name,arg_mode,arg_args)
end
--- <summary>
--- C#声明:Void RPC(System.String, UnityEngine.NetworkPlayer, System.Object[])
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_target">UnityEngine.NetworkPlayer</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function NetworkView:RPC(arg_name,arg_target,arg_args)
end
--- <summary>
--- C#声明:UnityEngine.Component get_observed()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_observed()
end
--- <summary>
--- C#声明:Void set_observed(UnityEngine.Component)
--- </summary>
--- <param name="arg_value">UnityEngine.Component</param>
--- <returns>System.Void</returns>
function NetworkView:set_observed(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.NetworkStateSynchronization get_stateSynchronization()
--- </summary>
--- <returns>UnityEngine.NetworkStateSynchronization</returns>
function NetworkView:get_stateSynchronization()
end
--- <summary>
--- C#声明:Void set_stateSynchronization(UnityEngine.NetworkStateSynchronization)
--- </summary>
--- <param name="arg_value">UnityEngine.NetworkStateSynchronization</param>
--- <returns>System.Void</returns>
function NetworkView:set_stateSynchronization(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.NetworkViewID get_viewID()
--- </summary>
--- <returns>UnityEngine.NetworkViewID</returns>
function NetworkView:get_viewID()
end
--- <summary>
--- C#声明:Void set_viewID(UnityEngine.NetworkViewID)
--- </summary>
--- <param name="arg_value">UnityEngine.NetworkViewID</param>
--- <returns>System.Void</returns>
function NetworkView:set_viewID(arg_value)
end
--- <summary>
--- C#声明:Int32 get_group()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkView:get_group()
end
--- <summary>
--- C#声明:Void set_group(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function NetworkView:set_group(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isMine()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkView:get_isMine()
end
--- <summary>
--- C#声明:UnityEngine.NetworkPlayer get_owner()
--- </summary>
--- <returns>UnityEngine.NetworkPlayer</returns>
function NetworkView:get_owner()
end
--- <summary>
--- C#声明:Boolean SetScope(UnityEngine.NetworkPlayer, Boolean)
--- </summary>
--- <param name="arg_player">UnityEngine.NetworkPlayer</param>
--- <param name="arg_relevancy">System.Boolean</param>
--- <returns>System.Boolean</returns>
function NetworkView:SetScope(arg_player,arg_relevancy)
end
--- <summary>
--- C#声明:UnityEngine.NetworkView Find(UnityEngine.NetworkViewID)
--- </summary>
--- <param name="arg_viewID">UnityEngine.NetworkViewID</param>
--- <returns>UnityEngine.NetworkView</returns>
function NetworkView.Find(arg_viewID)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkView:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NetworkView:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkView:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function NetworkView:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function NetworkView:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NetworkView:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function NetworkView:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function NetworkView:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NetworkView:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function NetworkView:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkView:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkView:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function NetworkView:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkView:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function NetworkView:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkView:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NetworkView:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function NetworkView:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkView:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkView:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function NetworkView:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkView:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function NetworkView:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkView:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function NetworkView:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkView:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function NetworkView:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function NetworkView:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function NetworkView:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function NetworkView:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkView:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkView:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function NetworkView:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkView:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkView:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkView:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function NetworkView:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function NetworkView:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function NetworkView:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function NetworkView:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function NetworkView:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function NetworkView:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkView:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkView:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function NetworkView:GetType()
end

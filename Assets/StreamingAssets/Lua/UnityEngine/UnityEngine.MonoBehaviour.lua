--create by yangxun
MonoBehaviour={}

--- <summary>
--- 属性:Boolean
--- </summary>
MonoBehaviour.useGUILayout=nil
--- <summary>
--- 属性:Boolean
--- </summary>
MonoBehaviour.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
MonoBehaviour.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
MonoBehaviour.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
MonoBehaviour.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
MonoBehaviour.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.light=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
MonoBehaviour.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
MonoBehaviour.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
MonoBehaviour.hideFlags=nil
--- <summary>
--- C#声明:Void Invoke(System.String, Single)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_time">System.Single</param>
--- <returns>System.Void</returns>
function MonoBehaviour:Invoke(arg_methodName,arg_time)
end
--- <summary>
--- C#声明:Void InvokeRepeating(System.String, Single, Single)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_time">System.Single</param>
--- <param name="arg_repeatRate">System.Single</param>
--- <returns>System.Void</returns>
function MonoBehaviour:InvokeRepeating(arg_methodName,arg_time,arg_repeatRate)
end
--- <summary>
--- C#声明:Void CancelInvoke()
--- </summary>
--- <returns>System.Void</returns>
function MonoBehaviour:CancelInvoke()
end
--- <summary>
--- C#声明:Void CancelInvoke(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function MonoBehaviour:CancelInvoke(arg_methodName)
end
--- <summary>
--- C#声明:Boolean IsInvoking(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Boolean</returns>
function MonoBehaviour:IsInvoking(arg_methodName)
end
--- <summary>
--- C#声明:Boolean IsInvoking()
--- </summary>
--- <returns>System.Boolean</returns>
function MonoBehaviour:IsInvoking()
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine(System.Collections.IEnumerator)
--- </summary>
--- <param name="arg_routine">System.Collections.IEnumerator</param>
--- <returns>UnityEngine.Coroutine</returns>
function MonoBehaviour:StartCoroutine(arg_routine)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine_Auto(System.Collections.IEnumerator)
--- </summary>
--- <param name="arg_routine">System.Collections.IEnumerator</param>
--- <returns>UnityEngine.Coroutine</returns>
function MonoBehaviour:StartCoroutine_Auto(arg_routine)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>UnityEngine.Coroutine</returns>
function MonoBehaviour:StartCoroutine(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>UnityEngine.Coroutine</returns>
function MonoBehaviour:StartCoroutine(arg_methodName)
end
--- <summary>
--- C#声明:Void StopCoroutine(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function MonoBehaviour:StopCoroutine(arg_methodName)
end
--- <summary>
--- C#声明:Void StopCoroutine(System.Collections.IEnumerator)
--- </summary>
--- <param name="arg_routine">System.Collections.IEnumerator</param>
--- <returns>System.Void</returns>
function MonoBehaviour:StopCoroutine(arg_routine)
end
--- <summary>
--- C#声明:Void StopCoroutine(UnityEngine.Coroutine)
--- </summary>
--- <param name="arg_routine">UnityEngine.Coroutine</param>
--- <returns>System.Void</returns>
function MonoBehaviour:StopCoroutine(arg_routine)
end
--- <summary>
--- C#声明:Void StopAllCoroutines()
--- </summary>
--- <returns>System.Void</returns>
function MonoBehaviour:StopAllCoroutines()
end
--- <summary>
--- C#声明:Void print(System.Object)
--- </summary>
--- <param name="arg_message">System.Object</param>
--- <returns>System.Void</returns>
function MonoBehaviour.print(arg_message)
end
--- <summary>
--- C#声明:Boolean get_useGUILayout()
--- </summary>
--- <returns>System.Boolean</returns>
function MonoBehaviour:get_useGUILayout()
end
--- <summary>
--- C#声明:Void set_useGUILayout(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function MonoBehaviour:set_useGUILayout(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function MonoBehaviour:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function MonoBehaviour:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function MonoBehaviour:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function MonoBehaviour:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function MonoBehaviour:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function MonoBehaviour:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function MonoBehaviour:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function MonoBehaviour:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function MonoBehaviour:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function MonoBehaviour:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function MonoBehaviour:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function MonoBehaviour:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function MonoBehaviour:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function MonoBehaviour:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function MonoBehaviour:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function MonoBehaviour:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function MonoBehaviour:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function MonoBehaviour:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function MonoBehaviour:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function MonoBehaviour:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function MonoBehaviour:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function MonoBehaviour:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function MonoBehaviour:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function MonoBehaviour:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function MonoBehaviour:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function MonoBehaviour:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function MonoBehaviour:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function MonoBehaviour:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function MonoBehaviour:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function MonoBehaviour:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function MonoBehaviour:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function MonoBehaviour:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function MonoBehaviour:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function MonoBehaviour:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function MonoBehaviour:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function MonoBehaviour:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function MonoBehaviour:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function MonoBehaviour:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function MonoBehaviour:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function MonoBehaviour:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function MonoBehaviour:GetType()
end

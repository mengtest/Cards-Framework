--create by yangxun
NetworkMatch={}

--- <summary>
--- 属性:Uri
--- </summary>
NetworkMatch.baseUri=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NetworkMatch.useGUILayout=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NetworkMatch.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NetworkMatch.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
NetworkMatch.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
NetworkMatch.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
NetworkMatch.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.light=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
NetworkMatch.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
NetworkMatch.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
NetworkMatch.hideFlags=nil
--- <summary>
--- C#声明:System.Uri get_baseUri()
--- </summary>
--- <returns>System.Uri</returns>
function NetworkMatch:get_baseUri()
end
--- <summary>
--- C#声明:Void set_baseUri(System.Uri)
--- </summary>
--- <param name="arg_value">System.Uri</param>
--- <returns>System.Void</returns>
function NetworkMatch:set_baseUri(arg_value)
end
--- <summary>
--- C#声明:Void SetProgramAppID(UnityEngine.Networking.Types.AppID)
--- </summary>
--- <param name="arg_programAppID">UnityEngine.Networking.Types.AppID</param>
--- <returns>System.Void</returns>
function NetworkMatch:SetProgramAppID(arg_programAppID)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine CreateMatch(System.String, UInt32, Boolean, System.String, ResponseDelegate`1)
--- </summary>
--- <param name="arg_matchName">System.String</param>
--- <param name="arg_matchSize">System.UInt32</param>
--- <param name="arg_matchAdvertise">System.Boolean</param>
--- <param name="arg_matchPassword">System.String</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.CreateMatchResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:CreateMatch(arg_matchName,arg_matchSize,arg_matchAdvertise,arg_matchPassword,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine CreateMatch(UnityEngine.Networking.Match.CreateMatchRequest, ResponseDelegate`1)
--- </summary>
--- <param name="arg_req">UnityEngine.Networking.Match.CreateMatchRequest</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.CreateMatchResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:CreateMatch(arg_req,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine JoinMatch(UnityEngine.Networking.Types.NetworkID, System.String, ResponseDelegate`1)
--- </summary>
--- <param name="arg_netId">UnityEngine.Networking.Types.NetworkID</param>
--- <param name="arg_matchPassword">System.String</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.JoinMatchResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:JoinMatch(arg_netId,arg_matchPassword,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine JoinMatch(UnityEngine.Networking.Match.JoinMatchRequest, ResponseDelegate`1)
--- </summary>
--- <param name="arg_req">UnityEngine.Networking.Match.JoinMatchRequest</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.JoinMatchResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:JoinMatch(arg_req,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine DestroyMatch(UnityEngine.Networking.Types.NetworkID, ResponseDelegate`1)
--- </summary>
--- <param name="arg_netId">UnityEngine.Networking.Types.NetworkID</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.BasicResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:DestroyMatch(arg_netId,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine DestroyMatch(UnityEngine.Networking.Match.DestroyMatchRequest, ResponseDelegate`1)
--- </summary>
--- <param name="arg_req">UnityEngine.Networking.Match.DestroyMatchRequest</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.BasicResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:DestroyMatch(arg_req,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine DropConnection(UnityEngine.Networking.Types.NetworkID, UnityEngine.Networking.Types.NodeID, ResponseDelegate`1)
--- </summary>
--- <param name="arg_netId">UnityEngine.Networking.Types.NetworkID</param>
--- <param name="arg_dropNodeId">UnityEngine.Networking.Types.NodeID</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.BasicResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:DropConnection(arg_netId,arg_dropNodeId,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine DropConnection(UnityEngine.Networking.Match.DropConnectionRequest, ResponseDelegate`1)
--- </summary>
--- <param name="arg_req">UnityEngine.Networking.Match.DropConnectionRequest</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.BasicResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:DropConnection(arg_req,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine ListMatches(Int32, Int32, System.String, ResponseDelegate`1)
--- </summary>
--- <param name="arg_startPageNumber">System.Int32</param>
--- <param name="arg_resultPageSize">System.Int32</param>
--- <param name="arg_matchNameFilter">System.String</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.ListMatchResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:ListMatches(arg_startPageNumber,arg_resultPageSize,arg_matchNameFilter,arg_callback)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine ListMatches(UnityEngine.Networking.Match.ListMatchRequest, ResponseDelegate`1)
--- </summary>
--- <param name="arg_req">UnityEngine.Networking.Match.ListMatchRequest</param>
--- <param name="arg_callback">UnityEngine.Networking.Match.NetworkMatch+ResponseDelegate`1[UnityEngine.Networking.Match.ListMatchResponse]</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:ListMatches(arg_req,arg_callback)
end
--- <summary>
--- C#声明:Void Invoke(System.String, Single)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_time">System.Single</param>
--- <returns>System.Void</returns>
function NetworkMatch:Invoke(arg_methodName,arg_time)
end
--- <summary>
--- C#声明:Void InvokeRepeating(System.String, Single, Single)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_time">System.Single</param>
--- <param name="arg_repeatRate">System.Single</param>
--- <returns>System.Void</returns>
function NetworkMatch:InvokeRepeating(arg_methodName,arg_time,arg_repeatRate)
end
--- <summary>
--- C#声明:Void CancelInvoke()
--- </summary>
--- <returns>System.Void</returns>
function NetworkMatch:CancelInvoke()
end
--- <summary>
--- C#声明:Void CancelInvoke(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkMatch:CancelInvoke(arg_methodName)
end
--- <summary>
--- C#声明:Boolean IsInvoking(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Boolean</returns>
function NetworkMatch:IsInvoking(arg_methodName)
end
--- <summary>
--- C#声明:Boolean IsInvoking()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkMatch:IsInvoking()
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine(System.Collections.IEnumerator)
--- </summary>
--- <param name="arg_routine">System.Collections.IEnumerator</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:StartCoroutine(arg_routine)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine_Auto(System.Collections.IEnumerator)
--- </summary>
--- <param name="arg_routine">System.Collections.IEnumerator</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:StartCoroutine_Auto(arg_routine)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:StartCoroutine(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Coroutine StartCoroutine(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>UnityEngine.Coroutine</returns>
function NetworkMatch:StartCoroutine(arg_methodName)
end
--- <summary>
--- C#声明:Void StopCoroutine(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkMatch:StopCoroutine(arg_methodName)
end
--- <summary>
--- C#声明:Void StopCoroutine(System.Collections.IEnumerator)
--- </summary>
--- <param name="arg_routine">System.Collections.IEnumerator</param>
--- <returns>System.Void</returns>
function NetworkMatch:StopCoroutine(arg_routine)
end
--- <summary>
--- C#声明:Void StopCoroutine(UnityEngine.Coroutine)
--- </summary>
--- <param name="arg_routine">UnityEngine.Coroutine</param>
--- <returns>System.Void</returns>
function NetworkMatch:StopCoroutine(arg_routine)
end
--- <summary>
--- C#声明:Void StopAllCoroutines()
--- </summary>
--- <returns>System.Void</returns>
function NetworkMatch:StopAllCoroutines()
end
--- <summary>
--- C#声明:Boolean get_useGUILayout()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkMatch:get_useGUILayout()
end
--- <summary>
--- C#声明:Void set_useGUILayout(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NetworkMatch:set_useGUILayout(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkMatch:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NetworkMatch:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function NetworkMatch:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function NetworkMatch:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function NetworkMatch:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function NetworkMatch:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function NetworkMatch:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkMatch:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkMatch:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function NetworkMatch:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkMatch:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function NetworkMatch:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkMatch:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function NetworkMatch:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkMatch:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkMatch:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function NetworkMatch:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkMatch:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function NetworkMatch:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NetworkMatch:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function NetworkMatch:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NetworkMatch:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function NetworkMatch:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function NetworkMatch:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function NetworkMatch:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function NetworkMatch:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkMatch:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkMatch:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function NetworkMatch:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NetworkMatch:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NetworkMatch:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NetworkMatch:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function NetworkMatch:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function NetworkMatch:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function NetworkMatch:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function NetworkMatch:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function NetworkMatch:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function NetworkMatch:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkMatch:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function NetworkMatch:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function NetworkMatch:GetType()
end

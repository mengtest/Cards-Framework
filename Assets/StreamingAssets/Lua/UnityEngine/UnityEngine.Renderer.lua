--create by yangxun
Renderer={}

--- <summary>
--- 属性:Boolean
--- </summary>
Renderer.isPartOfStaticBatch=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Renderer.worldToLocalMatrix=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Renderer.localToWorldMatrix=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Renderer.enabled=nil
--- <summary>
--- 属性:ShadowCastingMode
--- </summary>
Renderer.shadowCastingMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Renderer.castShadows=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Renderer.receiveShadows=nil
--- <summary>
--- 属性:Material
--- </summary>
Renderer.material=nil
--- <summary>
--- 属性:Material
--- </summary>
Renderer.sharedMaterial=nil
--- <summary>
--- 属性:Material[]
--- </summary>
Renderer.materials=nil
--- <summary>
--- 属性:Material[]
--- </summary>
Renderer.sharedMaterials=nil
--- <summary>
--- 属性:Bounds
--- </summary>
Renderer.bounds=nil
--- <summary>
--- 属性:Int32
--- </summary>
Renderer.lightmapIndex=nil
--- <summary>
--- 属性:Int32
--- </summary>
Renderer.realtimeLightmapIndex=nil
--- <summary>
--- 属性:Vector4
--- </summary>
Renderer.lightmapTilingOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
Renderer.lightmapScaleOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
Renderer.realtimeLightmapScaleOffset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Renderer.isVisible=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Renderer.useLightProbes=nil
--- <summary>
--- 属性:Transform
--- </summary>
Renderer.lightProbeAnchor=nil
--- <summary>
--- 属性:Transform
--- </summary>
Renderer.probeAnchor=nil
--- <summary>
--- 属性:ReflectionProbeUsage
--- </summary>
Renderer.reflectionProbeUsage=nil
--- <summary>
--- 属性:String
--- </summary>
Renderer.sortingLayerName=nil
--- <summary>
--- 属性:Int32
--- </summary>
Renderer.sortingLayerID=nil
--- <summary>
--- 属性:Int32
--- </summary>
Renderer.sortingOrder=nil
--- <summary>
--- 属性:Transform
--- </summary>
Renderer.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
Renderer.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
Renderer.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.light=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
Renderer.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
Renderer.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Renderer.hideFlags=nil
--- <summary>
--- C#声明:Boolean get_isPartOfStaticBatch()
--- </summary>
--- <returns>System.Boolean</returns>
function Renderer:get_isPartOfStaticBatch()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_worldToLocalMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Renderer:get_worldToLocalMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_localToWorldMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Renderer:get_localToWorldMatrix()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Renderer:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Renderer:set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ShadowCastingMode get_shadowCastingMode()
--- </summary>
--- <returns>UnityEngine.Rendering.ShadowCastingMode</returns>
function Renderer:get_shadowCastingMode()
end
--- <summary>
--- C#声明:Void set_shadowCastingMode(UnityEngine.Rendering.ShadowCastingMode)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ShadowCastingMode</param>
--- <returns>System.Void</returns>
function Renderer:set_shadowCastingMode(arg_value)
end
--- <summary>
--- C#声明:Boolean get_castShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function Renderer:get_castShadows()
end
--- <summary>
--- C#声明:Void set_castShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Renderer:set_castShadows(arg_value)
end
--- <summary>
--- C#声明:Boolean get_receiveShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function Renderer:get_receiveShadows()
end
--- <summary>
--- C#声明:Void set_receiveShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Renderer:set_receiveShadows(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_material()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function Renderer:get_material()
end
--- <summary>
--- C#声明:Void set_material(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Renderer:set_material(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_sharedMaterial()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function Renderer:get_sharedMaterial()
end
--- <summary>
--- C#声明:Void set_sharedMaterial(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Renderer:set_sharedMaterial(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_materials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function Renderer:get_materials()
end
--- <summary>
--- C#声明:Void set_materials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function Renderer:set_materials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_sharedMaterials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function Renderer:get_sharedMaterials()
end
--- <summary>
--- C#声明:Void set_sharedMaterials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function Renderer:set_sharedMaterials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function Renderer:get_bounds()
end
--- <summary>
--- C#声明:Int32 get_lightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function Renderer:get_lightmapIndex()
end
--- <summary>
--- C#声明:Void set_lightmapIndex(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Renderer:set_lightmapIndex(arg_value)
end
--- <summary>
--- C#声明:Int32 get_realtimeLightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function Renderer:get_realtimeLightmapIndex()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapTilingOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function Renderer:get_lightmapTilingOffset()
end
--- <summary>
--- C#声明:Void set_lightmapTilingOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Renderer:set_lightmapTilingOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function Renderer:get_lightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_lightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Renderer:set_lightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_realtimeLightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function Renderer:get_realtimeLightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_realtimeLightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function Renderer:set_realtimeLightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isVisible()
--- </summary>
--- <returns>System.Boolean</returns>
function Renderer:get_isVisible()
end
--- <summary>
--- C#声明:Boolean get_useLightProbes()
--- </summary>
--- <returns>System.Boolean</returns>
function Renderer:get_useLightProbes()
end
--- <summary>
--- C#声明:Void set_useLightProbes(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Renderer:set_useLightProbes(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_lightProbeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Renderer:get_lightProbeAnchor()
end
--- <summary>
--- C#声明:Void set_lightProbeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Renderer:set_lightProbeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_probeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Renderer:get_probeAnchor()
end
--- <summary>
--- C#声明:Void set_probeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Renderer:set_probeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ReflectionProbeUsage get_reflectionProbeUsage()
--- </summary>
--- <returns>UnityEngine.Rendering.ReflectionProbeUsage</returns>
function Renderer:get_reflectionProbeUsage()
end
--- <summary>
--- C#声明:Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ReflectionProbeUsage</param>
--- <returns>System.Void</returns>
function Renderer:set_reflectionProbeUsage(arg_value)
end
--- <summary>
--- C#声明:Void SetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function Renderer:SetPropertyBlock(arg_properties)
end
--- <summary>
--- C#声明:Void GetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_dest">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function Renderer:GetPropertyBlock(arg_dest)
end
--- <summary>
--- C#声明:System.String get_sortingLayerName()
--- </summary>
--- <returns>System.String</returns>
function Renderer:get_sortingLayerName()
end
--- <summary>
--- C#声明:Void set_sortingLayerName(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Renderer:set_sortingLayerName(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingLayerID()
--- </summary>
--- <returns>System.Int32</returns>
function Renderer:get_sortingLayerID()
end
--- <summary>
--- C#声明:Void set_sortingLayerID(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Renderer:set_sortingLayerID(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingOrder()
--- </summary>
--- <returns>System.Int32</returns>
function Renderer:get_sortingOrder()
end
--- <summary>
--- C#声明:Void set_sortingOrder(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Renderer:set_sortingOrder(arg_value)
end
--- <summary>
--- C#声明:Void GetClosestReflectionProbes(System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo])
--- </summary>
--- <param name="arg_result">System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo]</param>
--- <returns>System.Void</returns>
function Renderer:GetClosestReflectionProbes(arg_result)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Renderer:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function Renderer:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Renderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function Renderer:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function Renderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Renderer:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function Renderer:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Renderer:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Renderer:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Renderer:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Renderer:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function Renderer:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Renderer:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Renderer:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function Renderer:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Renderer:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Renderer:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Renderer:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Renderer:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function Renderer:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Renderer:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function Renderer:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Renderer:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function Renderer:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Renderer:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function Renderer:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function Renderer:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Renderer:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Renderer:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Renderer:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Renderer:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Renderer:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Renderer:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Renderer:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Renderer:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Renderer:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function Renderer:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Renderer:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Renderer:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Renderer:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Renderer:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Renderer:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Renderer:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Renderer:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Renderer:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Renderer:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Renderer:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Renderer:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Renderer:GetType()
end

--create by yangxun
BillboardRenderer={}

--- <summary>
--- 属性:BillboardAsset
--- </summary>
BillboardRenderer.billboard=nil
--- <summary>
--- 属性:Boolean
--- </summary>
BillboardRenderer.isPartOfStaticBatch=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
BillboardRenderer.worldToLocalMatrix=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
BillboardRenderer.localToWorldMatrix=nil
--- <summary>
--- 属性:Boolean
--- </summary>
BillboardRenderer.enabled=nil
--- <summary>
--- 属性:ShadowCastingMode
--- </summary>
BillboardRenderer.shadowCastingMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
BillboardRenderer.castShadows=nil
--- <summary>
--- 属性:Boolean
--- </summary>
BillboardRenderer.receiveShadows=nil
--- <summary>
--- 属性:Material
--- </summary>
BillboardRenderer.material=nil
--- <summary>
--- 属性:Material
--- </summary>
BillboardRenderer.sharedMaterial=nil
--- <summary>
--- 属性:Material[]
--- </summary>
BillboardRenderer.materials=nil
--- <summary>
--- 属性:Material[]
--- </summary>
BillboardRenderer.sharedMaterials=nil
--- <summary>
--- 属性:Bounds
--- </summary>
BillboardRenderer.bounds=nil
--- <summary>
--- 属性:Int32
--- </summary>
BillboardRenderer.lightmapIndex=nil
--- <summary>
--- 属性:Int32
--- </summary>
BillboardRenderer.realtimeLightmapIndex=nil
--- <summary>
--- 属性:Vector4
--- </summary>
BillboardRenderer.lightmapTilingOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
BillboardRenderer.lightmapScaleOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
BillboardRenderer.realtimeLightmapScaleOffset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
BillboardRenderer.isVisible=nil
--- <summary>
--- 属性:Boolean
--- </summary>
BillboardRenderer.useLightProbes=nil
--- <summary>
--- 属性:Transform
--- </summary>
BillboardRenderer.lightProbeAnchor=nil
--- <summary>
--- 属性:Transform
--- </summary>
BillboardRenderer.probeAnchor=nil
--- <summary>
--- 属性:ReflectionProbeUsage
--- </summary>
BillboardRenderer.reflectionProbeUsage=nil
--- <summary>
--- 属性:String
--- </summary>
BillboardRenderer.sortingLayerName=nil
--- <summary>
--- 属性:Int32
--- </summary>
BillboardRenderer.sortingLayerID=nil
--- <summary>
--- 属性:Int32
--- </summary>
BillboardRenderer.sortingOrder=nil
--- <summary>
--- 属性:Transform
--- </summary>
BillboardRenderer.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
BillboardRenderer.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
BillboardRenderer.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.light=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
BillboardRenderer.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
BillboardRenderer.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
BillboardRenderer.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.BillboardAsset get_billboard()
--- </summary>
--- <returns>UnityEngine.BillboardAsset</returns>
function BillboardRenderer:get_billboard()
end
--- <summary>
--- C#声明:Void set_billboard(UnityEngine.BillboardAsset)
--- </summary>
--- <param name="arg_value">UnityEngine.BillboardAsset</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_billboard(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isPartOfStaticBatch()
--- </summary>
--- <returns>System.Boolean</returns>
function BillboardRenderer:get_isPartOfStaticBatch()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_worldToLocalMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function BillboardRenderer:get_worldToLocalMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_localToWorldMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function BillboardRenderer:get_localToWorldMatrix()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function BillboardRenderer:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ShadowCastingMode get_shadowCastingMode()
--- </summary>
--- <returns>UnityEngine.Rendering.ShadowCastingMode</returns>
function BillboardRenderer:get_shadowCastingMode()
end
--- <summary>
--- C#声明:Void set_shadowCastingMode(UnityEngine.Rendering.ShadowCastingMode)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ShadowCastingMode</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_shadowCastingMode(arg_value)
end
--- <summary>
--- C#声明:Boolean get_castShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function BillboardRenderer:get_castShadows()
end
--- <summary>
--- C#声明:Void set_castShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_castShadows(arg_value)
end
--- <summary>
--- C#声明:Boolean get_receiveShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function BillboardRenderer:get_receiveShadows()
end
--- <summary>
--- C#声明:Void set_receiveShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_receiveShadows(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_material()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function BillboardRenderer:get_material()
end
--- <summary>
--- C#声明:Void set_material(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_material(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_sharedMaterial()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function BillboardRenderer:get_sharedMaterial()
end
--- <summary>
--- C#声明:Void set_sharedMaterial(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_sharedMaterial(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_materials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function BillboardRenderer:get_materials()
end
--- <summary>
--- C#声明:Void set_materials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_materials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_sharedMaterials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function BillboardRenderer:get_sharedMaterials()
end
--- <summary>
--- C#声明:Void set_sharedMaterials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_sharedMaterials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function BillboardRenderer:get_bounds()
end
--- <summary>
--- C#声明:Int32 get_lightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function BillboardRenderer:get_lightmapIndex()
end
--- <summary>
--- C#声明:Void set_lightmapIndex(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_lightmapIndex(arg_value)
end
--- <summary>
--- C#声明:Int32 get_realtimeLightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function BillboardRenderer:get_realtimeLightmapIndex()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapTilingOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function BillboardRenderer:get_lightmapTilingOffset()
end
--- <summary>
--- C#声明:Void set_lightmapTilingOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_lightmapTilingOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function BillboardRenderer:get_lightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_lightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_lightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_realtimeLightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function BillboardRenderer:get_realtimeLightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_realtimeLightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_realtimeLightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isVisible()
--- </summary>
--- <returns>System.Boolean</returns>
function BillboardRenderer:get_isVisible()
end
--- <summary>
--- C#声明:Boolean get_useLightProbes()
--- </summary>
--- <returns>System.Boolean</returns>
function BillboardRenderer:get_useLightProbes()
end
--- <summary>
--- C#声明:Void set_useLightProbes(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_useLightProbes(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_lightProbeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function BillboardRenderer:get_lightProbeAnchor()
end
--- <summary>
--- C#声明:Void set_lightProbeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_lightProbeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_probeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function BillboardRenderer:get_probeAnchor()
end
--- <summary>
--- C#声明:Void set_probeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_probeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ReflectionProbeUsage get_reflectionProbeUsage()
--- </summary>
--- <returns>UnityEngine.Rendering.ReflectionProbeUsage</returns>
function BillboardRenderer:get_reflectionProbeUsage()
end
--- <summary>
--- C#声明:Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ReflectionProbeUsage</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_reflectionProbeUsage(arg_value)
end
--- <summary>
--- C#声明:Void SetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SetPropertyBlock(arg_properties)
end
--- <summary>
--- C#声明:Void GetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_dest">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function BillboardRenderer:GetPropertyBlock(arg_dest)
end
--- <summary>
--- C#声明:System.String get_sortingLayerName()
--- </summary>
--- <returns>System.String</returns>
function BillboardRenderer:get_sortingLayerName()
end
--- <summary>
--- C#声明:Void set_sortingLayerName(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_sortingLayerName(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingLayerID()
--- </summary>
--- <returns>System.Int32</returns>
function BillboardRenderer:get_sortingLayerID()
end
--- <summary>
--- C#声明:Void set_sortingLayerID(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_sortingLayerID(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingOrder()
--- </summary>
--- <returns>System.Int32</returns>
function BillboardRenderer:get_sortingOrder()
end
--- <summary>
--- C#声明:Void set_sortingOrder(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_sortingOrder(arg_value)
end
--- <summary>
--- C#声明:Void GetClosestReflectionProbes(System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo])
--- </summary>
--- <param name="arg_result">System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:GetClosestReflectionProbes(arg_result)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function BillboardRenderer:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function BillboardRenderer:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function BillboardRenderer:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function BillboardRenderer:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function BillboardRenderer:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function BillboardRenderer:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function BillboardRenderer:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function BillboardRenderer:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function BillboardRenderer:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function BillboardRenderer:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function BillboardRenderer:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function BillboardRenderer:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function BillboardRenderer:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function BillboardRenderer:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function BillboardRenderer:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function BillboardRenderer:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function BillboardRenderer:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function BillboardRenderer:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function BillboardRenderer:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function BillboardRenderer:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function BillboardRenderer:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function BillboardRenderer:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function BillboardRenderer:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function BillboardRenderer:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function BillboardRenderer:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function BillboardRenderer:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function BillboardRenderer:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function BillboardRenderer:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function BillboardRenderer:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function BillboardRenderer:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function BillboardRenderer:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function BillboardRenderer:GetType()
end

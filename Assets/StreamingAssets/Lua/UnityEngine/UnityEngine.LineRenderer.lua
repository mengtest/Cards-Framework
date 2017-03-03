--create by yangxun
LineRenderer={}

--- <summary>
--- 属性:Boolean
--- </summary>
LineRenderer.useWorldSpace=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LineRenderer.isPartOfStaticBatch=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
LineRenderer.worldToLocalMatrix=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
LineRenderer.localToWorldMatrix=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LineRenderer.enabled=nil
--- <summary>
--- 属性:ShadowCastingMode
--- </summary>
LineRenderer.shadowCastingMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LineRenderer.castShadows=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LineRenderer.receiveShadows=nil
--- <summary>
--- 属性:Material
--- </summary>
LineRenderer.material=nil
--- <summary>
--- 属性:Material
--- </summary>
LineRenderer.sharedMaterial=nil
--- <summary>
--- 属性:Material[]
--- </summary>
LineRenderer.materials=nil
--- <summary>
--- 属性:Material[]
--- </summary>
LineRenderer.sharedMaterials=nil
--- <summary>
--- 属性:Bounds
--- </summary>
LineRenderer.bounds=nil
--- <summary>
--- 属性:Int32
--- </summary>
LineRenderer.lightmapIndex=nil
--- <summary>
--- 属性:Int32
--- </summary>
LineRenderer.realtimeLightmapIndex=nil
--- <summary>
--- 属性:Vector4
--- </summary>
LineRenderer.lightmapTilingOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
LineRenderer.lightmapScaleOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
LineRenderer.realtimeLightmapScaleOffset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LineRenderer.isVisible=nil
--- <summary>
--- 属性:Boolean
--- </summary>
LineRenderer.useLightProbes=nil
--- <summary>
--- 属性:Transform
--- </summary>
LineRenderer.lightProbeAnchor=nil
--- <summary>
--- 属性:Transform
--- </summary>
LineRenderer.probeAnchor=nil
--- <summary>
--- 属性:ReflectionProbeUsage
--- </summary>
LineRenderer.reflectionProbeUsage=nil
--- <summary>
--- 属性:String
--- </summary>
LineRenderer.sortingLayerName=nil
--- <summary>
--- 属性:Int32
--- </summary>
LineRenderer.sortingLayerID=nil
--- <summary>
--- 属性:Int32
--- </summary>
LineRenderer.sortingOrder=nil
--- <summary>
--- 属性:Transform
--- </summary>
LineRenderer.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
LineRenderer.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
LineRenderer.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.light=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
LineRenderer.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
LineRenderer.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
LineRenderer.hideFlags=nil
--- <summary>
--- C#声明:Void SetWidth(Single, Single)
--- </summary>
--- <param name="arg_start">System.Single</param>
--- <param name="arg_end">System.Single</param>
--- <returns>System.Void</returns>
function LineRenderer:SetWidth(arg_start,arg_end)
end
--- <summary>
--- C#声明:Void SetColors(UnityEngine.Color, UnityEngine.Color)
--- </summary>
--- <param name="arg_start">UnityEngine.Color</param>
--- <param name="arg_end">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function LineRenderer:SetColors(arg_start,arg_end)
end
--- <summary>
--- C#声明:Void SetVertexCount(Int32)
--- </summary>
--- <param name="arg_count">System.Int32</param>
--- <returns>System.Void</returns>
function LineRenderer:SetVertexCount(arg_count)
end
--- <summary>
--- C#声明:Void SetPosition(Int32, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function LineRenderer:SetPosition(arg_index,arg_position)
end
--- <summary>
--- C#声明:Boolean get_useWorldSpace()
--- </summary>
--- <returns>System.Boolean</returns>
function LineRenderer:get_useWorldSpace()
end
--- <summary>
--- C#声明:Void set_useWorldSpace(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LineRenderer:set_useWorldSpace(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isPartOfStaticBatch()
--- </summary>
--- <returns>System.Boolean</returns>
function LineRenderer:get_isPartOfStaticBatch()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_worldToLocalMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function LineRenderer:get_worldToLocalMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_localToWorldMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function LineRenderer:get_localToWorldMatrix()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function LineRenderer:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LineRenderer:set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ShadowCastingMode get_shadowCastingMode()
--- </summary>
--- <returns>UnityEngine.Rendering.ShadowCastingMode</returns>
function LineRenderer:get_shadowCastingMode()
end
--- <summary>
--- C#声明:Void set_shadowCastingMode(UnityEngine.Rendering.ShadowCastingMode)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ShadowCastingMode</param>
--- <returns>System.Void</returns>
function LineRenderer:set_shadowCastingMode(arg_value)
end
--- <summary>
--- C#声明:Boolean get_castShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function LineRenderer:get_castShadows()
end
--- <summary>
--- C#声明:Void set_castShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LineRenderer:set_castShadows(arg_value)
end
--- <summary>
--- C#声明:Boolean get_receiveShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function LineRenderer:get_receiveShadows()
end
--- <summary>
--- C#声明:Void set_receiveShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LineRenderer:set_receiveShadows(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_material()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function LineRenderer:get_material()
end
--- <summary>
--- C#声明:Void set_material(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function LineRenderer:set_material(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_sharedMaterial()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function LineRenderer:get_sharedMaterial()
end
--- <summary>
--- C#声明:Void set_sharedMaterial(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function LineRenderer:set_sharedMaterial(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_materials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function LineRenderer:get_materials()
end
--- <summary>
--- C#声明:Void set_materials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function LineRenderer:set_materials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_sharedMaterials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function LineRenderer:get_sharedMaterials()
end
--- <summary>
--- C#声明:Void set_sharedMaterials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function LineRenderer:set_sharedMaterials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function LineRenderer:get_bounds()
end
--- <summary>
--- C#声明:Int32 get_lightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function LineRenderer:get_lightmapIndex()
end
--- <summary>
--- C#声明:Void set_lightmapIndex(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function LineRenderer:set_lightmapIndex(arg_value)
end
--- <summary>
--- C#声明:Int32 get_realtimeLightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function LineRenderer:get_realtimeLightmapIndex()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapTilingOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function LineRenderer:get_lightmapTilingOffset()
end
--- <summary>
--- C#声明:Void set_lightmapTilingOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function LineRenderer:set_lightmapTilingOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function LineRenderer:get_lightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_lightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function LineRenderer:set_lightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_realtimeLightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function LineRenderer:get_realtimeLightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_realtimeLightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function LineRenderer:set_realtimeLightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isVisible()
--- </summary>
--- <returns>System.Boolean</returns>
function LineRenderer:get_isVisible()
end
--- <summary>
--- C#声明:Boolean get_useLightProbes()
--- </summary>
--- <returns>System.Boolean</returns>
function LineRenderer:get_useLightProbes()
end
--- <summary>
--- C#声明:Void set_useLightProbes(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function LineRenderer:set_useLightProbes(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_lightProbeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function LineRenderer:get_lightProbeAnchor()
end
--- <summary>
--- C#声明:Void set_lightProbeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function LineRenderer:set_lightProbeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_probeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function LineRenderer:get_probeAnchor()
end
--- <summary>
--- C#声明:Void set_probeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function LineRenderer:set_probeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ReflectionProbeUsage get_reflectionProbeUsage()
--- </summary>
--- <returns>UnityEngine.Rendering.ReflectionProbeUsage</returns>
function LineRenderer:get_reflectionProbeUsage()
end
--- <summary>
--- C#声明:Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ReflectionProbeUsage</param>
--- <returns>System.Void</returns>
function LineRenderer:set_reflectionProbeUsage(arg_value)
end
--- <summary>
--- C#声明:Void SetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function LineRenderer:SetPropertyBlock(arg_properties)
end
--- <summary>
--- C#声明:Void GetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_dest">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function LineRenderer:GetPropertyBlock(arg_dest)
end
--- <summary>
--- C#声明:System.String get_sortingLayerName()
--- </summary>
--- <returns>System.String</returns>
function LineRenderer:get_sortingLayerName()
end
--- <summary>
--- C#声明:Void set_sortingLayerName(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function LineRenderer:set_sortingLayerName(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingLayerID()
--- </summary>
--- <returns>System.Int32</returns>
function LineRenderer:get_sortingLayerID()
end
--- <summary>
--- C#声明:Void set_sortingLayerID(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function LineRenderer:set_sortingLayerID(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingOrder()
--- </summary>
--- <returns>System.Int32</returns>
function LineRenderer:get_sortingOrder()
end
--- <summary>
--- C#声明:Void set_sortingOrder(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function LineRenderer:set_sortingOrder(arg_value)
end
--- <summary>
--- C#声明:Void GetClosestReflectionProbes(System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo])
--- </summary>
--- <param name="arg_result">System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo]</param>
--- <returns>System.Void</returns>
function LineRenderer:GetClosestReflectionProbes(arg_result)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function LineRenderer:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function LineRenderer:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function LineRenderer:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function LineRenderer:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function LineRenderer:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function LineRenderer:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function LineRenderer:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function LineRenderer:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function LineRenderer:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function LineRenderer:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function LineRenderer:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function LineRenderer:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function LineRenderer:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function LineRenderer:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function LineRenderer:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function LineRenderer:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function LineRenderer:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function LineRenderer:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function LineRenderer:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function LineRenderer:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function LineRenderer:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function LineRenderer:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function LineRenderer:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function LineRenderer:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function LineRenderer:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function LineRenderer:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function LineRenderer:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function LineRenderer:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function LineRenderer:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function LineRenderer:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function LineRenderer:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function LineRenderer:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function LineRenderer:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function LineRenderer:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function LineRenderer:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function LineRenderer:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function LineRenderer:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function LineRenderer:GetType()
end

--create by yangxun
ParticleRenderer={}

--- <summary>
--- 属性:ParticleRenderMode
--- </summary>
ParticleRenderer.particleRenderMode=nil
--- <summary>
--- 属性:Single
--- </summary>
ParticleRenderer.lengthScale=nil
--- <summary>
--- 属性:Single
--- </summary>
ParticleRenderer.velocityScale=nil
--- <summary>
--- 属性:Single
--- </summary>
ParticleRenderer.cameraVelocityScale=nil
--- <summary>
--- 属性:Single
--- </summary>
ParticleRenderer.maxParticleSize=nil
--- <summary>
--- 属性:Int32
--- </summary>
ParticleRenderer.uvAnimationXTile=nil
--- <summary>
--- 属性:Int32
--- </summary>
ParticleRenderer.uvAnimationYTile=nil
--- <summary>
--- 属性:Single
--- </summary>
ParticleRenderer.uvAnimationCycles=nil
--- <summary>
--- 属性:Int32
--- </summary>
ParticleRenderer.animatedTextureCount=nil
--- <summary>
--- 属性:Single
--- </summary>
ParticleRenderer.maxPartileSize=nil
--- <summary>
--- 属性:Rect[]
--- </summary>
ParticleRenderer.uvTiles=nil
--- <summary>
--- 属性:AnimationCurve
--- </summary>
ParticleRenderer.widthCurve=nil
--- <summary>
--- 属性:AnimationCurve
--- </summary>
ParticleRenderer.heightCurve=nil
--- <summary>
--- 属性:AnimationCurve
--- </summary>
ParticleRenderer.rotationCurve=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ParticleRenderer.isPartOfStaticBatch=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
ParticleRenderer.worldToLocalMatrix=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
ParticleRenderer.localToWorldMatrix=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ParticleRenderer.enabled=nil
--- <summary>
--- 属性:ShadowCastingMode
--- </summary>
ParticleRenderer.shadowCastingMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ParticleRenderer.castShadows=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ParticleRenderer.receiveShadows=nil
--- <summary>
--- 属性:Material
--- </summary>
ParticleRenderer.material=nil
--- <summary>
--- 属性:Material
--- </summary>
ParticleRenderer.sharedMaterial=nil
--- <summary>
--- 属性:Material[]
--- </summary>
ParticleRenderer.materials=nil
--- <summary>
--- 属性:Material[]
--- </summary>
ParticleRenderer.sharedMaterials=nil
--- <summary>
--- 属性:Bounds
--- </summary>
ParticleRenderer.bounds=nil
--- <summary>
--- 属性:Int32
--- </summary>
ParticleRenderer.lightmapIndex=nil
--- <summary>
--- 属性:Int32
--- </summary>
ParticleRenderer.realtimeLightmapIndex=nil
--- <summary>
--- 属性:Vector4
--- </summary>
ParticleRenderer.lightmapTilingOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
ParticleRenderer.lightmapScaleOffset=nil
--- <summary>
--- 属性:Vector4
--- </summary>
ParticleRenderer.realtimeLightmapScaleOffset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ParticleRenderer.isVisible=nil
--- <summary>
--- 属性:Boolean
--- </summary>
ParticleRenderer.useLightProbes=nil
--- <summary>
--- 属性:Transform
--- </summary>
ParticleRenderer.lightProbeAnchor=nil
--- <summary>
--- 属性:Transform
--- </summary>
ParticleRenderer.probeAnchor=nil
--- <summary>
--- 属性:ReflectionProbeUsage
--- </summary>
ParticleRenderer.reflectionProbeUsage=nil
--- <summary>
--- 属性:String
--- </summary>
ParticleRenderer.sortingLayerName=nil
--- <summary>
--- 属性:Int32
--- </summary>
ParticleRenderer.sortingLayerID=nil
--- <summary>
--- 属性:Int32
--- </summary>
ParticleRenderer.sortingOrder=nil
--- <summary>
--- 属性:Transform
--- </summary>
ParticleRenderer.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
ParticleRenderer.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
ParticleRenderer.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.light=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
ParticleRenderer.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
ParticleRenderer.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
ParticleRenderer.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.ParticleRenderMode get_particleRenderMode()
--- </summary>
--- <returns>UnityEngine.ParticleRenderMode</returns>
function ParticleRenderer:get_particleRenderMode()
end
--- <summary>
--- C#声明:Void set_particleRenderMode(UnityEngine.ParticleRenderMode)
--- </summary>
--- <param name="arg_value">UnityEngine.ParticleRenderMode</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_particleRenderMode(arg_value)
end
--- <summary>
--- C#声明:Single get_lengthScale()
--- </summary>
--- <returns>System.Single</returns>
function ParticleRenderer:get_lengthScale()
end
--- <summary>
--- C#声明:Void set_lengthScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_lengthScale(arg_value)
end
--- <summary>
--- C#声明:Single get_velocityScale()
--- </summary>
--- <returns>System.Single</returns>
function ParticleRenderer:get_velocityScale()
end
--- <summary>
--- C#声明:Void set_velocityScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_velocityScale(arg_value)
end
--- <summary>
--- C#声明:Single get_cameraVelocityScale()
--- </summary>
--- <returns>System.Single</returns>
function ParticleRenderer:get_cameraVelocityScale()
end
--- <summary>
--- C#声明:Void set_cameraVelocityScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_cameraVelocityScale(arg_value)
end
--- <summary>
--- C#声明:Single get_maxParticleSize()
--- </summary>
--- <returns>System.Single</returns>
function ParticleRenderer:get_maxParticleSize()
end
--- <summary>
--- C#声明:Void set_maxParticleSize(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_maxParticleSize(arg_value)
end
--- <summary>
--- C#声明:Int32 get_uvAnimationXTile()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:get_uvAnimationXTile()
end
--- <summary>
--- C#声明:Void set_uvAnimationXTile(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_uvAnimationXTile(arg_value)
end
--- <summary>
--- C#声明:Int32 get_uvAnimationYTile()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:get_uvAnimationYTile()
end
--- <summary>
--- C#声明:Void set_uvAnimationYTile(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_uvAnimationYTile(arg_value)
end
--- <summary>
--- C#声明:Single get_uvAnimationCycles()
--- </summary>
--- <returns>System.Single</returns>
function ParticleRenderer:get_uvAnimationCycles()
end
--- <summary>
--- C#声明:Void set_uvAnimationCycles(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_uvAnimationCycles(arg_value)
end
--- <summary>
--- C#声明:Int32 get_animatedTextureCount()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:get_animatedTextureCount()
end
--- <summary>
--- C#声明:Void set_animatedTextureCount(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_animatedTextureCount(arg_value)
end
--- <summary>
--- C#声明:Single get_maxPartileSize()
--- </summary>
--- <returns>System.Single</returns>
function ParticleRenderer:get_maxPartileSize()
end
--- <summary>
--- C#声明:Void set_maxPartileSize(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_maxPartileSize(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rect[] get_uvTiles()
--- </summary>
--- <returns>UnityEngine.Rect[]</returns>
function ParticleRenderer:get_uvTiles()
end
--- <summary>
--- C#声明:Void set_uvTiles(UnityEngine.Rect[])
--- </summary>
--- <param name="arg_value">UnityEngine.Rect[]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_uvTiles(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AnimationCurve get_widthCurve()
--- </summary>
--- <returns>UnityEngine.AnimationCurve</returns>
function ParticleRenderer:get_widthCurve()
end
--- <summary>
--- C#声明:Void set_widthCurve(UnityEngine.AnimationCurve)
--- </summary>
--- <param name="arg_value">UnityEngine.AnimationCurve</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_widthCurve(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AnimationCurve get_heightCurve()
--- </summary>
--- <returns>UnityEngine.AnimationCurve</returns>
function ParticleRenderer:get_heightCurve()
end
--- <summary>
--- C#声明:Void set_heightCurve(UnityEngine.AnimationCurve)
--- </summary>
--- <param name="arg_value">UnityEngine.AnimationCurve</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_heightCurve(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AnimationCurve get_rotationCurve()
--- </summary>
--- <returns>UnityEngine.AnimationCurve</returns>
function ParticleRenderer:get_rotationCurve()
end
--- <summary>
--- C#声明:Void set_rotationCurve(UnityEngine.AnimationCurve)
--- </summary>
--- <param name="arg_value">UnityEngine.AnimationCurve</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_rotationCurve(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isPartOfStaticBatch()
--- </summary>
--- <returns>System.Boolean</returns>
function ParticleRenderer:get_isPartOfStaticBatch()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_worldToLocalMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function ParticleRenderer:get_worldToLocalMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_localToWorldMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function ParticleRenderer:get_localToWorldMatrix()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function ParticleRenderer:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ShadowCastingMode get_shadowCastingMode()
--- </summary>
--- <returns>UnityEngine.Rendering.ShadowCastingMode</returns>
function ParticleRenderer:get_shadowCastingMode()
end
--- <summary>
--- C#声明:Void set_shadowCastingMode(UnityEngine.Rendering.ShadowCastingMode)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ShadowCastingMode</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_shadowCastingMode(arg_value)
end
--- <summary>
--- C#声明:Boolean get_castShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function ParticleRenderer:get_castShadows()
end
--- <summary>
--- C#声明:Void set_castShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_castShadows(arg_value)
end
--- <summary>
--- C#声明:Boolean get_receiveShadows()
--- </summary>
--- <returns>System.Boolean</returns>
function ParticleRenderer:get_receiveShadows()
end
--- <summary>
--- C#声明:Void set_receiveShadows(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_receiveShadows(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_material()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function ParticleRenderer:get_material()
end
--- <summary>
--- C#声明:Void set_material(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_material(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material get_sharedMaterial()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function ParticleRenderer:get_sharedMaterial()
end
--- <summary>
--- C#声明:Void set_sharedMaterial(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_sharedMaterial(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_materials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function ParticleRenderer:get_materials()
end
--- <summary>
--- C#声明:Void set_materials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_materials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material[] get_sharedMaterials()
--- </summary>
--- <returns>UnityEngine.Material[]</returns>
function ParticleRenderer:get_sharedMaterials()
end
--- <summary>
--- C#声明:Void set_sharedMaterials(UnityEngine.Material[])
--- </summary>
--- <param name="arg_value">UnityEngine.Material[]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_sharedMaterials(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function ParticleRenderer:get_bounds()
end
--- <summary>
--- C#声明:Int32 get_lightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:get_lightmapIndex()
end
--- <summary>
--- C#声明:Void set_lightmapIndex(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_lightmapIndex(arg_value)
end
--- <summary>
--- C#声明:Int32 get_realtimeLightmapIndex()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:get_realtimeLightmapIndex()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapTilingOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function ParticleRenderer:get_lightmapTilingOffset()
end
--- <summary>
--- C#声明:Void set_lightmapTilingOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_lightmapTilingOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_lightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function ParticleRenderer:get_lightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_lightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_lightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_realtimeLightmapScaleOffset()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function ParticleRenderer:get_realtimeLightmapScaleOffset()
end
--- <summary>
--- C#声明:Void set_realtimeLightmapScaleOffset(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_realtimeLightmapScaleOffset(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isVisible()
--- </summary>
--- <returns>System.Boolean</returns>
function ParticleRenderer:get_isVisible()
end
--- <summary>
--- C#声明:Boolean get_useLightProbes()
--- </summary>
--- <returns>System.Boolean</returns>
function ParticleRenderer:get_useLightProbes()
end
--- <summary>
--- C#声明:Void set_useLightProbes(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_useLightProbes(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_lightProbeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function ParticleRenderer:get_lightProbeAnchor()
end
--- <summary>
--- C#声明:Void set_lightProbeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_lightProbeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_probeAnchor()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function ParticleRenderer:get_probeAnchor()
end
--- <summary>
--- C#声明:Void set_probeAnchor(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_probeAnchor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.ReflectionProbeUsage get_reflectionProbeUsage()
--- </summary>
--- <returns>UnityEngine.Rendering.ReflectionProbeUsage</returns>
function ParticleRenderer:get_reflectionProbeUsage()
end
--- <summary>
--- C#声明:Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.ReflectionProbeUsage</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_reflectionProbeUsage(arg_value)
end
--- <summary>
--- C#声明:Void SetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SetPropertyBlock(arg_properties)
end
--- <summary>
--- C#声明:Void GetPropertyBlock(UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_dest">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function ParticleRenderer:GetPropertyBlock(arg_dest)
end
--- <summary>
--- C#声明:System.String get_sortingLayerName()
--- </summary>
--- <returns>System.String</returns>
function ParticleRenderer:get_sortingLayerName()
end
--- <summary>
--- C#声明:Void set_sortingLayerName(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_sortingLayerName(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingLayerID()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:get_sortingLayerID()
end
--- <summary>
--- C#声明:Void set_sortingLayerID(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_sortingLayerID(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingOrder()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:get_sortingOrder()
end
--- <summary>
--- C#声明:Void set_sortingOrder(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_sortingOrder(arg_value)
end
--- <summary>
--- C#声明:Void GetClosestReflectionProbes(System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo])
--- </summary>
--- <param name="arg_result">System.Collections.Generic.List`1[UnityEngine.Rendering.ReflectionProbeBlendInfo]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:GetClosestReflectionProbes(arg_result)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function ParticleRenderer:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function ParticleRenderer:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function ParticleRenderer:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function ParticleRenderer:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function ParticleRenderer:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function ParticleRenderer:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function ParticleRenderer:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function ParticleRenderer:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function ParticleRenderer:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function ParticleRenderer:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function ParticleRenderer:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function ParticleRenderer:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function ParticleRenderer:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function ParticleRenderer:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function ParticleRenderer:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function ParticleRenderer:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function ParticleRenderer:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function ParticleRenderer:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function ParticleRenderer:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function ParticleRenderer:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function ParticleRenderer:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function ParticleRenderer:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function ParticleRenderer:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function ParticleRenderer:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function ParticleRenderer:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function ParticleRenderer:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function ParticleRenderer:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function ParticleRenderer:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function ParticleRenderer:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function ParticleRenderer:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function ParticleRenderer:GetType()
end

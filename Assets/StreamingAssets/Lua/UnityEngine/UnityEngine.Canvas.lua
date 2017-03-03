--create by yangxun
Canvas={}

--- <summary>
--- 属性:RenderMode
--- </summary>
Canvas.renderMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Canvas.isRootCanvas=nil
--- <summary>
--- 属性:Camera
--- </summary>
Canvas.worldCamera=nil
--- <summary>
--- 属性:Rect
--- </summary>
Canvas.pixelRect=nil
--- <summary>
--- 属性:Single
--- </summary>
Canvas.scaleFactor=nil
--- <summary>
--- 属性:Single
--- </summary>
Canvas.referencePixelsPerUnit=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Canvas.overridePixelPerfect=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Canvas.pixelPerfect=nil
--- <summary>
--- 属性:Single
--- </summary>
Canvas.planeDistance=nil
--- <summary>
--- 属性:Int32
--- </summary>
Canvas.renderOrder=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Canvas.overrideSorting=nil
--- <summary>
--- 属性:Int32
--- </summary>
Canvas.sortingOrder=nil
--- <summary>
--- 属性:Int32
--- </summary>
Canvas.sortingLayerID=nil
--- <summary>
--- 属性:Int32
--- </summary>
Canvas.cachedSortingLayerValue=nil
--- <summary>
--- 属性:String
--- </summary>
Canvas.sortingLayerName=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Canvas.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Canvas.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
Canvas.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
Canvas.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
Canvas.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.light=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
Canvas.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
Canvas.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Canvas.hideFlags=nil
--- <summary>
--- C#声明:Void add_willRenderCanvases(WillRenderCanvases)
--- </summary>
--- <param name="arg_value">UnityEngine.Canvas+WillRenderCanvases</param>
--- <returns>System.Void</returns>
function Canvas.add_willRenderCanvases(arg_value)
end
--- <summary>
--- C#声明:Void remove_willRenderCanvases(WillRenderCanvases)
--- </summary>
--- <param name="arg_value">UnityEngine.Canvas+WillRenderCanvases</param>
--- <returns>System.Void</returns>
function Canvas.remove_willRenderCanvases(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RenderMode get_renderMode()
--- </summary>
--- <returns>UnityEngine.RenderMode</returns>
function Canvas:get_renderMode()
end
--- <summary>
--- C#声明:Void set_renderMode(UnityEngine.RenderMode)
--- </summary>
--- <param name="arg_value">UnityEngine.RenderMode</param>
--- <returns>System.Void</returns>
function Canvas:set_renderMode(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isRootCanvas()
--- </summary>
--- <returns>System.Boolean</returns>
function Canvas:get_isRootCanvas()
end
--- <summary>
--- C#声明:UnityEngine.Camera get_worldCamera()
--- </summary>
--- <returns>UnityEngine.Camera</returns>
function Canvas:get_worldCamera()
end
--- <summary>
--- C#声明:Void set_worldCamera(UnityEngine.Camera)
--- </summary>
--- <param name="arg_value">UnityEngine.Camera</param>
--- <returns>System.Void</returns>
function Canvas:set_worldCamera(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rect get_pixelRect()
--- </summary>
--- <returns>UnityEngine.Rect</returns>
function Canvas:get_pixelRect()
end
--- <summary>
--- C#声明:Single get_scaleFactor()
--- </summary>
--- <returns>System.Single</returns>
function Canvas:get_scaleFactor()
end
--- <summary>
--- C#声明:Void set_scaleFactor(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Canvas:set_scaleFactor(arg_value)
end
--- <summary>
--- C#声明:Single get_referencePixelsPerUnit()
--- </summary>
--- <returns>System.Single</returns>
function Canvas:get_referencePixelsPerUnit()
end
--- <summary>
--- C#声明:Void set_referencePixelsPerUnit(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Canvas:set_referencePixelsPerUnit(arg_value)
end
--- <summary>
--- C#声明:Boolean get_overridePixelPerfect()
--- </summary>
--- <returns>System.Boolean</returns>
function Canvas:get_overridePixelPerfect()
end
--- <summary>
--- C#声明:Void set_overridePixelPerfect(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Canvas:set_overridePixelPerfect(arg_value)
end
--- <summary>
--- C#声明:Boolean get_pixelPerfect()
--- </summary>
--- <returns>System.Boolean</returns>
function Canvas:get_pixelPerfect()
end
--- <summary>
--- C#声明:Void set_pixelPerfect(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Canvas:set_pixelPerfect(arg_value)
end
--- <summary>
--- C#声明:Single get_planeDistance()
--- </summary>
--- <returns>System.Single</returns>
function Canvas:get_planeDistance()
end
--- <summary>
--- C#声明:Void set_planeDistance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Canvas:set_planeDistance(arg_value)
end
--- <summary>
--- C#声明:Int32 get_renderOrder()
--- </summary>
--- <returns>System.Int32</returns>
function Canvas:get_renderOrder()
end
--- <summary>
--- C#声明:Boolean get_overrideSorting()
--- </summary>
--- <returns>System.Boolean</returns>
function Canvas:get_overrideSorting()
end
--- <summary>
--- C#声明:Void set_overrideSorting(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Canvas:set_overrideSorting(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingOrder()
--- </summary>
--- <returns>System.Int32</returns>
function Canvas:get_sortingOrder()
end
--- <summary>
--- C#声明:Void set_sortingOrder(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Canvas:set_sortingOrder(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sortingLayerID()
--- </summary>
--- <returns>System.Int32</returns>
function Canvas:get_sortingLayerID()
end
--- <summary>
--- C#声明:Void set_sortingLayerID(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Canvas:set_sortingLayerID(arg_value)
end
--- <summary>
--- C#声明:Int32 get_cachedSortingLayerValue()
--- </summary>
--- <returns>System.Int32</returns>
function Canvas:get_cachedSortingLayerValue()
end
--- <summary>
--- C#声明:System.String get_sortingLayerName()
--- </summary>
--- <returns>System.String</returns>
function Canvas:get_sortingLayerName()
end
--- <summary>
--- C#声明:Void set_sortingLayerName(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Canvas:set_sortingLayerName(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Material GetDefaultCanvasMaterial()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function Canvas.GetDefaultCanvasMaterial()
end
--- <summary>
--- C#声明:UnityEngine.Material GetDefaultCanvasTextMaterial()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function Canvas.GetDefaultCanvasTextMaterial()
end
--- <summary>
--- C#声明:Void ForceUpdateCanvases()
--- </summary>
--- <returns>System.Void</returns>
function Canvas.ForceUpdateCanvases()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Canvas:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Canvas:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Canvas:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Canvas:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function Canvas:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Canvas:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function Canvas:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function Canvas:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Canvas:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function Canvas:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Canvas:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Canvas:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Canvas:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Canvas:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function Canvas:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Canvas:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Canvas:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function Canvas:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Canvas:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Canvas:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Canvas:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Canvas:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function Canvas:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Canvas:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function Canvas:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Canvas:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function Canvas:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Canvas:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function Canvas:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function Canvas:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Canvas:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Canvas:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Canvas:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Canvas:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Canvas:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Canvas:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Canvas:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Canvas:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Canvas:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function Canvas:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Canvas:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Canvas:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Canvas:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Canvas:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Canvas:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Canvas:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Canvas:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Canvas:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Canvas:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Canvas:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Canvas:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Canvas:GetType()
end

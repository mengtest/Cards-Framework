--create by yangxun
Camera={}

--- <summary>
--- 属性:Single
--- </summary>
Camera.fov=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.near=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.far=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.fieldOfView=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.nearClipPlane=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.farClipPlane=nil
--- <summary>
--- 属性:RenderingPath
--- </summary>
Camera.renderingPath=nil
--- <summary>
--- 属性:RenderingPath
--- </summary>
Camera.actualRenderingPath=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.hdr=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.orthographicSize=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.isOrthoGraphic=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.orthographic=nil
--- <summary>
--- 属性:OpaqueSortMode
--- </summary>
Camera.opaqueSortMode=nil
--- <summary>
--- 属性:TransparencySortMode
--- </summary>
Camera.transparencySortMode=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.depth=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.aspect=nil
--- <summary>
--- 属性:Int32
--- </summary>
Camera.cullingMask=nil
--- <summary>
--- 属性:Int32
--- </summary>
Camera.eventMask=nil
--- <summary>
--- 属性:Color
--- </summary>
Camera.backgroundColor=nil
--- <summary>
--- 属性:Rect
--- </summary>
Camera.rect=nil
--- <summary>
--- 属性:Rect
--- </summary>
Camera.pixelRect=nil
--- <summary>
--- 属性:RenderTexture
--- </summary>
Camera.targetTexture=nil
--- <summary>
--- 属性:Int32
--- </summary>
Camera.pixelWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
Camera.pixelHeight=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Camera.cameraToWorldMatrix=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Camera.worldToCameraMatrix=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Camera.projectionMatrix=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Camera.velocity=nil
--- <summary>
--- 属性:CameraClearFlags
--- </summary>
Camera.clearFlags=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.stereoEnabled=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.stereoSeparation=nil
--- <summary>
--- 属性:Single
--- </summary>
Camera.stereoConvergence=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.stereoMirrorMode=nil
--- <summary>
--- 属性:Int32
--- </summary>
Camera.targetDisplay=nil
--- <summary>
--- 属性:Camera
--- </summary>
Camera.main=nil
--- <summary>
--- 属性:Camera
--- </summary>
Camera.current=nil
--- <summary>
--- 属性:Camera[]
--- </summary>
Camera.allCameras=nil
--- <summary>
--- 属性:Int32
--- </summary>
Camera.allCamerasCount=nil
--- <summary>
--- 属性:Camera
--- </summary>
Camera.mainCamera=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.useOcclusionCulling=nil
--- <summary>
--- 属性:Single[]
--- </summary>
Camera.layerCullDistances=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.layerCullSpherical=nil
--- <summary>
--- 属性:DepthTextureMode
--- </summary>
Camera.depthTextureMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.clearStencilAfterLightingPass=nil
--- <summary>
--- 属性:Int32
--- </summary>
Camera.commandBufferCount=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Camera.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
Camera.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
Camera.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
Camera.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.light=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
Camera.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
Camera.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Camera.hideFlags=nil
--- <summary>
--- C#声明:Void AddCommandBuffer(UnityEngine.Rendering.CameraEvent, UnityEngine.Rendering.CommandBuffer)
--- </summary>
--- <param name="arg_evt">UnityEngine.Rendering.CameraEvent</param>
--- <param name="arg_buffer">UnityEngine.Rendering.CommandBuffer</param>
--- <returns>System.Void</returns>
function Camera:AddCommandBuffer(arg_evt,arg_buffer)
end
--- <summary>
--- C#声明:Void RemoveCommandBuffer(UnityEngine.Rendering.CameraEvent, UnityEngine.Rendering.CommandBuffer)
--- </summary>
--- <param name="arg_evt">UnityEngine.Rendering.CameraEvent</param>
--- <param name="arg_buffer">UnityEngine.Rendering.CommandBuffer</param>
--- <returns>System.Void</returns>
function Camera:RemoveCommandBuffer(arg_evt,arg_buffer)
end
--- <summary>
--- C#声明:Void RemoveCommandBuffers(UnityEngine.Rendering.CameraEvent)
--- </summary>
--- <param name="arg_evt">UnityEngine.Rendering.CameraEvent</param>
--- <returns>System.Void</returns>
function Camera:RemoveCommandBuffers(arg_evt)
end
--- <summary>
--- C#声明:Void RemoveAllCommandBuffers()
--- </summary>
--- <returns>System.Void</returns>
function Camera:RemoveAllCommandBuffers()
end
--- <summary>
--- C#声明:UnityEngine.Rendering.CommandBuffer[] GetCommandBuffers(UnityEngine.Rendering.CameraEvent)
--- </summary>
--- <param name="arg_evt">UnityEngine.Rendering.CameraEvent</param>
--- <returns>UnityEngine.Rendering.CommandBuffer[]</returns>
function Camera:GetCommandBuffers(arg_evt)
end
--- <summary>
--- C#声明:Int32 get_commandBufferCount()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:get_commandBufferCount()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 CalculateObliqueMatrix(UnityEngine.Vector4)
--- </summary>
--- <param name="arg_clipPlane">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function Camera:CalculateObliqueMatrix(arg_clipPlane)
end
--- <summary>
--- C#声明:Void ResetAspect()
--- </summary>
--- <returns>System.Void</returns>
function Camera:ResetAspect()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_velocity()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Camera:get_velocity()
end
--- <summary>
--- C#声明:UnityEngine.CameraClearFlags get_clearFlags()
--- </summary>
--- <returns>UnityEngine.CameraClearFlags</returns>
function Camera:get_clearFlags()
end
--- <summary>
--- C#声明:Void set_clearFlags(UnityEngine.CameraClearFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.CameraClearFlags</param>
--- <returns>System.Void</returns>
function Camera:set_clearFlags(arg_value)
end
--- <summary>
--- C#声明:Boolean get_stereoEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_stereoEnabled()
end
--- <summary>
--- C#声明:Single get_stereoSeparation()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_stereoSeparation()
end
--- <summary>
--- C#声明:Void set_stereoSeparation(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_stereoSeparation(arg_value)
end
--- <summary>
--- C#声明:Single get_stereoConvergence()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_stereoConvergence()
end
--- <summary>
--- C#声明:Void set_stereoConvergence(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_stereoConvergence(arg_value)
end
--- <summary>
--- C#声明:Boolean get_stereoMirrorMode()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_stereoMirrorMode()
end
--- <summary>
--- C#声明:Void set_stereoMirrorMode(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_stereoMirrorMode(arg_value)
end
--- <summary>
--- C#声明:Int32 get_targetDisplay()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:get_targetDisplay()
end
--- <summary>
--- C#声明:Void set_targetDisplay(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Camera:set_targetDisplay(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 WorldToScreenPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Camera:WorldToScreenPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 WorldToViewportPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Camera:WorldToViewportPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ViewportToWorldPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Camera:ViewportToWorldPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ScreenToWorldPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Camera:ScreenToWorldPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ScreenToViewportPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Camera:ScreenToViewportPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 ViewportToScreenPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Camera:ViewportToScreenPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Ray ViewportPointToRay(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Ray</returns>
function Camera:ViewportPointToRay(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Ray ScreenPointToRay(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Ray</returns>
function Camera:ScreenPointToRay(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Camera get_main()
--- </summary>
--- <returns>UnityEngine.Camera</returns>
function Camera.get_main()
end
--- <summary>
--- C#声明:UnityEngine.Camera get_current()
--- </summary>
--- <returns>UnityEngine.Camera</returns>
function Camera.get_current()
end
--- <summary>
--- C#声明:UnityEngine.Camera[] get_allCameras()
--- </summary>
--- <returns>UnityEngine.Camera[]</returns>
function Camera.get_allCameras()
end
--- <summary>
--- C#声明:Int32 get_allCamerasCount()
--- </summary>
--- <returns>System.Int32</returns>
function Camera.get_allCamerasCount()
end
--- <summary>
--- C#声明:Int32 GetAllCameras(UnityEngine.Camera[])
--- </summary>
--- <param name="arg_cameras">UnityEngine.Camera[]</param>
--- <returns>System.Int32</returns>
function Camera.GetAllCameras(arg_cameras)
end
--- <summary>
--- C#声明:Single GetScreenWidth()
--- </summary>
--- <returns>System.Single</returns>
function Camera:GetScreenWidth()
end
--- <summary>
--- C#声明:Single GetScreenHeight()
--- </summary>
--- <returns>System.Single</returns>
function Camera:GetScreenHeight()
end
--- <summary>
--- C#声明:UnityEngine.Camera get_mainCamera()
--- </summary>
--- <returns>UnityEngine.Camera</returns>
function Camera.get_mainCamera()
end
--- <summary>
--- C#声明:Void DoClear()
--- </summary>
--- <returns>System.Void</returns>
function Camera:DoClear()
end
--- <summary>
--- C#声明:Void Render()
--- </summary>
--- <returns>System.Void</returns>
function Camera:Render()
end
--- <summary>
--- C#声明:Void RenderWithShader(UnityEngine.Shader, System.String)
--- </summary>
--- <param name="arg_shader">UnityEngine.Shader</param>
--- <param name="arg_replacementTag">System.String</param>
--- <returns>System.Void</returns>
function Camera:RenderWithShader(arg_shader,arg_replacementTag)
end
--- <summary>
--- C#声明:Void SetReplacementShader(UnityEngine.Shader, System.String)
--- </summary>
--- <param name="arg_shader">UnityEngine.Shader</param>
--- <param name="arg_replacementTag">System.String</param>
--- <returns>System.Void</returns>
function Camera:SetReplacementShader(arg_shader,arg_replacementTag)
end
--- <summary>
--- C#声明:Void ResetReplacementShader()
--- </summary>
--- <returns>System.Void</returns>
function Camera:ResetReplacementShader()
end
--- <summary>
--- C#声明:Boolean get_useOcclusionCulling()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_useOcclusionCulling()
end
--- <summary>
--- C#声明:Void set_useOcclusionCulling(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_useOcclusionCulling(arg_value)
end
--- <summary>
--- C#声明:Void RenderDontRestore()
--- </summary>
--- <returns>System.Void</returns>
function Camera:RenderDontRestore()
end
--- <summary>
--- C#声明:Void SetupCurrent(UnityEngine.Camera)
--- </summary>
--- <param name="arg_cur">UnityEngine.Camera</param>
--- <returns>System.Void</returns>
function Camera.SetupCurrent(arg_cur)
end
--- <summary>
--- C#声明:Boolean RenderToCubemap(UnityEngine.Cubemap)
--- </summary>
--- <param name="arg_cubemap">UnityEngine.Cubemap</param>
--- <returns>System.Boolean</returns>
function Camera:RenderToCubemap(arg_cubemap)
end
--- <summary>
--- C#声明:Boolean RenderToCubemap(UnityEngine.Cubemap, Int32)
--- </summary>
--- <param name="arg_cubemap">UnityEngine.Cubemap</param>
--- <param name="arg_faceMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Camera:RenderToCubemap(arg_cubemap,arg_faceMask)
end
--- <summary>
--- C#声明:Boolean RenderToCubemap(UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_cubemap">UnityEngine.RenderTexture</param>
--- <returns>System.Boolean</returns>
function Camera:RenderToCubemap(arg_cubemap)
end
--- <summary>
--- C#声明:Boolean RenderToCubemap(UnityEngine.RenderTexture, Int32)
--- </summary>
--- <param name="arg_cubemap">UnityEngine.RenderTexture</param>
--- <param name="arg_faceMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Camera:RenderToCubemap(arg_cubemap,arg_faceMask)
end
--- <summary>
--- C#声明:Single[] get_layerCullDistances()
--- </summary>
--- <returns>System.Single[]</returns>
function Camera:get_layerCullDistances()
end
--- <summary>
--- C#声明:Void set_layerCullDistances(Single[])
--- </summary>
--- <param name="arg_value">System.Single[]</param>
--- <returns>System.Void</returns>
function Camera:set_layerCullDistances(arg_value)
end
--- <summary>
--- C#声明:Boolean get_layerCullSpherical()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_layerCullSpherical()
end
--- <summary>
--- C#声明:Void set_layerCullSpherical(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_layerCullSpherical(arg_value)
end
--- <summary>
--- C#声明:Void CopyFrom(UnityEngine.Camera)
--- </summary>
--- <param name="arg_other">UnityEngine.Camera</param>
--- <returns>System.Void</returns>
function Camera:CopyFrom(arg_other)
end
--- <summary>
--- C#声明:UnityEngine.DepthTextureMode get_depthTextureMode()
--- </summary>
--- <returns>UnityEngine.DepthTextureMode</returns>
function Camera:get_depthTextureMode()
end
--- <summary>
--- C#声明:Void set_depthTextureMode(UnityEngine.DepthTextureMode)
--- </summary>
--- <param name="arg_value">UnityEngine.DepthTextureMode</param>
--- <returns>System.Void</returns>
function Camera:set_depthTextureMode(arg_value)
end
--- <summary>
--- C#声明:Boolean get_clearStencilAfterLightingPass()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_clearStencilAfterLightingPass()
end
--- <summary>
--- C#声明:Void set_clearStencilAfterLightingPass(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_clearStencilAfterLightingPass(arg_value)
end
--- <summary>
--- C#声明:Single get_fov()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_fov()
end
--- <summary>
--- C#声明:Void set_fov(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_fov(arg_value)
end
--- <summary>
--- C#声明:Single get_near()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_near()
end
--- <summary>
--- C#声明:Void set_near(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_near(arg_value)
end
--- <summary>
--- C#声明:Single get_far()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_far()
end
--- <summary>
--- C#声明:Void set_far(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_far(arg_value)
end
--- <summary>
--- C#声明:Single get_fieldOfView()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_fieldOfView()
end
--- <summary>
--- C#声明:Void set_fieldOfView(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_fieldOfView(arg_value)
end
--- <summary>
--- C#声明:Single get_nearClipPlane()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_nearClipPlane()
end
--- <summary>
--- C#声明:Void set_nearClipPlane(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_nearClipPlane(arg_value)
end
--- <summary>
--- C#声明:Single get_farClipPlane()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_farClipPlane()
end
--- <summary>
--- C#声明:Void set_farClipPlane(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_farClipPlane(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RenderingPath get_renderingPath()
--- </summary>
--- <returns>UnityEngine.RenderingPath</returns>
function Camera:get_renderingPath()
end
--- <summary>
--- C#声明:Void set_renderingPath(UnityEngine.RenderingPath)
--- </summary>
--- <param name="arg_value">UnityEngine.RenderingPath</param>
--- <returns>System.Void</returns>
function Camera:set_renderingPath(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RenderingPath get_actualRenderingPath()
--- </summary>
--- <returns>UnityEngine.RenderingPath</returns>
function Camera:get_actualRenderingPath()
end
--- <summary>
--- C#声明:Boolean get_hdr()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_hdr()
end
--- <summary>
--- C#声明:Void set_hdr(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_hdr(arg_value)
end
--- <summary>
--- C#声明:Single get_orthographicSize()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_orthographicSize()
end
--- <summary>
--- C#声明:Void set_orthographicSize(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_orthographicSize(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isOrthoGraphic()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_isOrthoGraphic()
end
--- <summary>
--- C#声明:Void set_isOrthoGraphic(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_isOrthoGraphic(arg_value)
end
--- <summary>
--- C#声明:Boolean get_orthographic()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_orthographic()
end
--- <summary>
--- C#声明:Void set_orthographic(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_orthographic(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rendering.OpaqueSortMode get_opaqueSortMode()
--- </summary>
--- <returns>UnityEngine.Rendering.OpaqueSortMode</returns>
function Camera:get_opaqueSortMode()
end
--- <summary>
--- C#声明:Void set_opaqueSortMode(UnityEngine.Rendering.OpaqueSortMode)
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.OpaqueSortMode</param>
--- <returns>System.Void</returns>
function Camera:set_opaqueSortMode(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TransparencySortMode get_transparencySortMode()
--- </summary>
--- <returns>UnityEngine.TransparencySortMode</returns>
function Camera:get_transparencySortMode()
end
--- <summary>
--- C#声明:Void set_transparencySortMode(UnityEngine.TransparencySortMode)
--- </summary>
--- <param name="arg_value">UnityEngine.TransparencySortMode</param>
--- <returns>System.Void</returns>
function Camera:set_transparencySortMode(arg_value)
end
--- <summary>
--- C#声明:Single get_depth()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_depth()
end
--- <summary>
--- C#声明:Void set_depth(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_depth(arg_value)
end
--- <summary>
--- C#声明:Single get_aspect()
--- </summary>
--- <returns>System.Single</returns>
function Camera:get_aspect()
end
--- <summary>
--- C#声明:Void set_aspect(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Camera:set_aspect(arg_value)
end
--- <summary>
--- C#声明:Int32 get_cullingMask()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:get_cullingMask()
end
--- <summary>
--- C#声明:Void set_cullingMask(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Camera:set_cullingMask(arg_value)
end
--- <summary>
--- C#声明:Int32 get_eventMask()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:get_eventMask()
end
--- <summary>
--- C#声明:Void set_eventMask(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Camera:set_eventMask(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Color get_backgroundColor()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function Camera:get_backgroundColor()
end
--- <summary>
--- C#声明:Void set_backgroundColor(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Camera:set_backgroundColor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rect get_rect()
--- </summary>
--- <returns>UnityEngine.Rect</returns>
function Camera:get_rect()
end
--- <summary>
--- C#声明:Void set_rect(UnityEngine.Rect)
--- </summary>
--- <param name="arg_value">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function Camera:set_rect(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Rect get_pixelRect()
--- </summary>
--- <returns>UnityEngine.Rect</returns>
function Camera:get_pixelRect()
end
--- <summary>
--- C#声明:Void set_pixelRect(UnityEngine.Rect)
--- </summary>
--- <param name="arg_value">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function Camera:set_pixelRect(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RenderTexture get_targetTexture()
--- </summary>
--- <returns>UnityEngine.RenderTexture</returns>
function Camera:get_targetTexture()
end
--- <summary>
--- C#声明:Void set_targetTexture(UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_value">UnityEngine.RenderTexture</param>
--- <returns>System.Void</returns>
function Camera:set_targetTexture(arg_value)
end
--- <summary>
--- C#声明:Void SetTargetBuffers(UnityEngine.RenderBuffer, UnityEngine.RenderBuffer)
--- </summary>
--- <param name="arg_colorBuffer">UnityEngine.RenderBuffer</param>
--- <param name="arg_depthBuffer">UnityEngine.RenderBuffer</param>
--- <returns>System.Void</returns>
function Camera:SetTargetBuffers(arg_colorBuffer,arg_depthBuffer)
end
--- <summary>
--- C#声明:Void SetTargetBuffers(UnityEngine.RenderBuffer[], UnityEngine.RenderBuffer)
--- </summary>
--- <param name="arg_colorBuffer">UnityEngine.RenderBuffer[]</param>
--- <param name="arg_depthBuffer">UnityEngine.RenderBuffer</param>
--- <returns>System.Void</returns>
function Camera:SetTargetBuffers(arg_colorBuffer,arg_depthBuffer)
end
--- <summary>
--- C#声明:Int32 get_pixelWidth()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:get_pixelWidth()
end
--- <summary>
--- C#声明:Int32 get_pixelHeight()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:get_pixelHeight()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_cameraToWorldMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Camera:get_cameraToWorldMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_worldToCameraMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Camera:get_worldToCameraMatrix()
end
--- <summary>
--- C#声明:Void set_worldToCameraMatrix(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_value">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Camera:set_worldToCameraMatrix(arg_value)
end
--- <summary>
--- C#声明:Void ResetWorldToCameraMatrix()
--- </summary>
--- <returns>System.Void</returns>
function Camera:ResetWorldToCameraMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_projectionMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Camera:get_projectionMatrix()
end
--- <summary>
--- C#声明:Void set_projectionMatrix(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_value">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Camera:set_projectionMatrix(arg_value)
end
--- <summary>
--- C#声明:Void ResetProjectionMatrix()
--- </summary>
--- <returns>System.Void</returns>
function Camera:ResetProjectionMatrix()
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Camera:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Camera:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Camera:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function Camera:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Camera:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function Camera:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function Camera:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Camera:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function Camera:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Camera:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Camera:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Camera:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Camera:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function Camera:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Camera:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Camera:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function Camera:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Camera:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Camera:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Camera:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Camera:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function Camera:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Camera:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function Camera:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Camera:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function Camera:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Camera:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function Camera:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function Camera:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Camera:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Camera:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Camera:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Camera:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Camera:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Camera:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Camera:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Camera:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Camera:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function Camera:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Camera:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Camera:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Camera:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Camera:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Camera:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Camera:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Camera:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Camera:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Camera:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Camera:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Camera:GetType()
end

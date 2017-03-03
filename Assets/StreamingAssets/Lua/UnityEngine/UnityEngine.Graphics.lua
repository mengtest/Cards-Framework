--create by yangxun
Graphics={}

--- <summary>
--- 属性:RenderBuffer
--- </summary>
Graphics.activeColorBuffer=nil
--- <summary>
--- 属性:RenderBuffer
--- </summary>
Graphics.activeDepthBuffer=nil
--- <summary>
--- 属性:String
--- </summary>
Graphics.deviceName=nil
--- <summary>
--- 属性:String
--- </summary>
Graphics.deviceVendor=nil
--- <summary>
--- 属性:String
--- </summary>
Graphics.deviceVersion=nil
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_rt">UnityEngine.RenderTexture</param>
--- <returns>System.Void</returns>
function Graphics.SetRenderTarget(arg_rt)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.RenderTexture, Int32)
--- </summary>
--- <param name="arg_rt">UnityEngine.RenderTexture</param>
--- <param name="arg_mipLevel">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.SetRenderTarget(arg_rt,arg_mipLevel)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.RenderTexture, Int32, UnityEngine.CubemapFace)
--- </summary>
--- <param name="arg_rt">UnityEngine.RenderTexture</param>
--- <param name="arg_mipLevel">System.Int32</param>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <returns>System.Void</returns>
function Graphics.SetRenderTarget(arg_rt,arg_mipLevel,arg_face)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.RenderBuffer, UnityEngine.RenderBuffer)
--- </summary>
--- <param name="arg_colorBuffer">UnityEngine.RenderBuffer</param>
--- <param name="arg_depthBuffer">UnityEngine.RenderBuffer</param>
--- <returns>System.Void</returns>
function Graphics.SetRenderTarget(arg_colorBuffer,arg_depthBuffer)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.RenderBuffer, UnityEngine.RenderBuffer, Int32)
--- </summary>
--- <param name="arg_colorBuffer">UnityEngine.RenderBuffer</param>
--- <param name="arg_depthBuffer">UnityEngine.RenderBuffer</param>
--- <param name="arg_mipLevel">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.SetRenderTarget(arg_colorBuffer,arg_depthBuffer,arg_mipLevel)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.RenderBuffer, UnityEngine.RenderBuffer, Int32, UnityEngine.CubemapFace)
--- </summary>
--- <param name="arg_colorBuffer">UnityEngine.RenderBuffer</param>
--- <param name="arg_depthBuffer">UnityEngine.RenderBuffer</param>
--- <param name="arg_mipLevel">System.Int32</param>
--- <param name="arg_face">UnityEngine.CubemapFace</param>
--- <returns>System.Void</returns>
function Graphics.SetRenderTarget(arg_colorBuffer,arg_depthBuffer,arg_mipLevel,arg_face)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.RenderBuffer[], UnityEngine.RenderBuffer)
--- </summary>
--- <param name="arg_colorBuffers">UnityEngine.RenderBuffer[]</param>
--- <param name="arg_depthBuffer">UnityEngine.RenderBuffer</param>
--- <returns>System.Void</returns>
function Graphics.SetRenderTarget(arg_colorBuffers,arg_depthBuffer)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, Boolean)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">System.Boolean</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera,arg_submeshIndex)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, Boolean, Boolean)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">System.Boolean</param>
--- <param name="arg_receiveShadows">System.Boolean</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows,arg_receiveShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, UnityEngine.Rendering.ShadowCastingMode, Boolean)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">UnityEngine.Rendering.ShadowCastingMode</param>
--- <param name="arg_receiveShadows">System.Boolean</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows,arg_receiveShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, UnityEngine.Rendering.ShadowCastingMode)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">UnityEngine.Rendering.ShadowCastingMode</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, UnityEngine.Rendering.ShadowCastingMode, Boolean, UnityEngine.Transform)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">UnityEngine.Rendering.ShadowCastingMode</param>
--- <param name="arg_receiveShadows">System.Boolean</param>
--- <param name="arg_probeAnchor">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows,arg_receiveShadows,arg_probeAnchor)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, Boolean)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">System.Boolean</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera,arg_submeshIndex)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, Boolean, Boolean)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">System.Boolean</param>
--- <param name="arg_receiveShadows">System.Boolean</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows,arg_receiveShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, UnityEngine.Rendering.ShadowCastingMode, Boolean)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">UnityEngine.Rendering.ShadowCastingMode</param>
--- <param name="arg_receiveShadows">System.Boolean</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows,arg_receiveShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, UnityEngine.Rendering.ShadowCastingMode)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">UnityEngine.Rendering.ShadowCastingMode</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.Camera, Int32, UnityEngine.MaterialPropertyBlock, UnityEngine.Rendering.ShadowCastingMode, Boolean, UnityEngine.Transform)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <param name="arg_castShadows">UnityEngine.Rendering.ShadowCastingMode</param>
--- <param name="arg_receiveShadows">System.Boolean</param>
--- <param name="arg_probeAnchor">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_material,arg_layer,arg_camera,arg_submeshIndex,arg_properties,arg_castShadows,arg_receiveShadows,arg_probeAnchor)
end
--- <summary>
--- C#声明:Void DrawMeshNow(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Graphics.DrawMeshNow(arg_mesh,arg_position,arg_rotation)
end
--- <summary>
--- C#声明:Void DrawMeshNow(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_materialIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMeshNow(arg_mesh,arg_position,arg_rotation,arg_materialIndex)
end
--- <summary>
--- C#声明:Void DrawMeshNow(UnityEngine.Mesh, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Graphics.DrawMeshNow(arg_mesh,arg_matrix)
end
--- <summary>
--- C#声明:Void DrawMeshNow(UnityEngine.Mesh, UnityEngine.Matrix4x4, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_materialIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMeshNow(arg_mesh,arg_matrix,arg_materialIndex)
end
--- <summary>
--- C#声明:Void DrawProcedural(UnityEngine.MeshTopology, Int32, Int32)
--- </summary>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_vertexCount">System.Int32</param>
--- <param name="arg_instanceCount">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawProcedural(arg_topology,arg_vertexCount,arg_instanceCount)
end
--- <summary>
--- C#声明:Void DrawProcedural(UnityEngine.MeshTopology, Int32)
--- </summary>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_vertexCount">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawProcedural(arg_topology,arg_vertexCount)
end
--- <summary>
--- C#声明:Void DrawProceduralIndirect(UnityEngine.MeshTopology, UnityEngine.ComputeBuffer, Int32)
--- </summary>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_bufferWithArgs">UnityEngine.ComputeBuffer</param>
--- <param name="arg_argsOffset">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawProceduralIndirect(arg_topology,arg_bufferWithArgs,arg_argsOffset)
end
--- <summary>
--- C#声明:Void DrawProceduralIndirect(UnityEngine.MeshTopology, UnityEngine.ComputeBuffer)
--- </summary>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_bufferWithArgs">UnityEngine.ComputeBuffer</param>
--- <returns>System.Void</returns>
function Graphics.DrawProceduralIndirect(arg_topology,arg_bufferWithArgs)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Material)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture,arg_mat)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, Int32, Int32, Int32, Int32, UnityEngine.Material)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder,arg_mat)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Rect, Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_sourceRect">UnityEngine.Rect</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture,arg_sourceRect,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Rect, Int32, Int32, Int32, Int32, UnityEngine.Material)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_sourceRect">UnityEngine.Rect</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture,arg_sourceRect,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder,arg_mat)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Rect, Int32, Int32, Int32, Int32, UnityEngine.Color)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_sourceRect">UnityEngine.Rect</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture,arg_sourceRect,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder,arg_color)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Rect, Int32, Int32, Int32, Int32, UnityEngine.Color, UnityEngine.Material)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_sourceRect">UnityEngine.Rect</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Graphics.DrawTexture(arg_screenRect,arg_texture,arg_sourceRect,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder,arg_color,arg_mat)
end
--- <summary>
--- C#声明:Void ExecuteCommandBuffer(UnityEngine.Rendering.CommandBuffer)
--- </summary>
--- <param name="arg_buffer">UnityEngine.Rendering.CommandBuffer</param>
--- <returns>System.Void</returns>
function Graphics.ExecuteCommandBuffer(arg_buffer)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_dest">UnityEngine.RenderTexture</param>
--- <returns>System.Void</returns>
function Graphics.Blit(arg_source,arg_dest)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.RenderTexture, UnityEngine.Material)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_dest">UnityEngine.RenderTexture</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Graphics.Blit(arg_source,arg_dest,arg_mat)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.RenderTexture, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_dest">UnityEngine.RenderTexture</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <param name="arg_pass">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.Blit(arg_source,arg_dest,arg_mat,arg_pass)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.Material)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Graphics.Blit(arg_source,arg_mat)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <param name="arg_pass">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.Blit(arg_source,arg_mat,arg_pass)
end
--- <summary>
--- C#声明:Void BlitMultiTap(UnityEngine.Texture, UnityEngine.RenderTexture, UnityEngine.Material, UnityEngine.Vector2[])
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_dest">UnityEngine.RenderTexture</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <param name="arg_offsets">UnityEngine.Vector2[]</param>
--- <returns>System.Void</returns>
function Graphics.BlitMultiTap(arg_source,arg_dest,arg_mat,arg_offsets)
end
--- <summary>
--- C#声明:UnityEngine.RenderBuffer get_activeColorBuffer()
--- </summary>
--- <returns>UnityEngine.RenderBuffer</returns>
function Graphics.get_activeColorBuffer()
end
--- <summary>
--- C#声明:UnityEngine.RenderBuffer get_activeDepthBuffer()
--- </summary>
--- <returns>UnityEngine.RenderBuffer</returns>
function Graphics.get_activeDepthBuffer()
end
--- <summary>
--- C#声明:Void SetRandomWriteTarget(Int32, UnityEngine.RenderTexture)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_uav">UnityEngine.RenderTexture</param>
--- <returns>System.Void</returns>
function Graphics.SetRandomWriteTarget(arg_index,arg_uav)
end
--- <summary>
--- C#声明:Void SetRandomWriteTarget(Int32, UnityEngine.ComputeBuffer)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_uav">UnityEngine.ComputeBuffer</param>
--- <returns>System.Void</returns>
function Graphics.SetRandomWriteTarget(arg_index,arg_uav)
end
--- <summary>
--- C#声明:Void ClearRandomWriteTargets()
--- </summary>
--- <returns>System.Void</returns>
function Graphics.ClearRandomWriteTargets()
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_materialIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_materialIndex)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_materialIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Graphics.DrawMesh(arg_mesh,arg_matrix,arg_materialIndex)
end
--- <summary>
--- C#声明:System.String get_deviceName()
--- </summary>
--- <returns>System.String</returns>
function Graphics.get_deviceName()
end
--- <summary>
--- C#声明:System.String get_deviceVendor()
--- </summary>
--- <returns>System.String</returns>
function Graphics.get_deviceVendor()
end
--- <summary>
--- C#声明:System.String get_deviceVersion()
--- </summary>
--- <returns>System.String</returns>
function Graphics.get_deviceVersion()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Graphics:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Graphics:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Graphics:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Graphics:GetType()
end

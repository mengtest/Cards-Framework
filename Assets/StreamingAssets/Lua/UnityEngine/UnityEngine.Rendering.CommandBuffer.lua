--create by yangxun
CommandBuffer={}

--- <summary>
--- 属性:String
--- </summary>
CommandBuffer.name=nil
--- <summary>
--- 属性:Int32
--- </summary>
CommandBuffer.sizeInBytes=nil
--- <summary>
--- C#声明:Void Dispose()
--- </summary>
--- <returns>System.Void</returns>
function CommandBuffer:Dispose()
end
--- <summary>
--- C#声明:Void Release()
--- </summary>
--- <returns>System.Void</returns>
function CommandBuffer:Release()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function CommandBuffer:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function CommandBuffer:set_name(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sizeInBytes()
--- </summary>
--- <returns>System.Int32</returns>
function CommandBuffer:get_sizeInBytes()
end
--- <summary>
--- C#声明:Void Clear()
--- </summary>
--- <returns>System.Void</returns>
function CommandBuffer:Clear()
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, Int32, UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawMesh(arg_mesh,arg_matrix,arg_material,arg_submeshIndex,arg_shaderPass,arg_properties)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawMesh(arg_mesh,arg_matrix,arg_material,arg_submeshIndex,arg_shaderPass)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawMesh(arg_mesh,arg_matrix,arg_material,arg_submeshIndex)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Matrix4x4, UnityEngine.Material)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawMesh(arg_mesh,arg_matrix,arg_material)
end
--- <summary>
--- C#声明:Void DrawRenderer(UnityEngine.Renderer, UnityEngine.Material, Int32, Int32)
--- </summary>
--- <param name="arg_renderer">UnityEngine.Renderer</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawRenderer(arg_renderer,arg_material,arg_submeshIndex,arg_shaderPass)
end
--- <summary>
--- C#声明:Void DrawRenderer(UnityEngine.Renderer, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_renderer">UnityEngine.Renderer</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawRenderer(arg_renderer,arg_material,arg_submeshIndex)
end
--- <summary>
--- C#声明:Void DrawRenderer(UnityEngine.Renderer, UnityEngine.Material)
--- </summary>
--- <param name="arg_renderer">UnityEngine.Renderer</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawRenderer(arg_renderer,arg_material)
end
--- <summary>
--- C#声明:Void DrawProcedural(UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.MeshTopology, Int32, Int32, UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_vertexCount">System.Int32</param>
--- <param name="arg_instanceCount">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawProcedural(arg_matrix,arg_material,arg_shaderPass,arg_topology,arg_vertexCount,arg_instanceCount,arg_properties)
end
--- <summary>
--- C#声明:Void DrawProcedural(UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.MeshTopology, Int32, Int32)
--- </summary>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_vertexCount">System.Int32</param>
--- <param name="arg_instanceCount">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawProcedural(arg_matrix,arg_material,arg_shaderPass,arg_topology,arg_vertexCount,arg_instanceCount)
end
--- <summary>
--- C#声明:Void DrawProcedural(UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.MeshTopology, Int32)
--- </summary>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_vertexCount">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawProcedural(arg_matrix,arg_material,arg_shaderPass,arg_topology,arg_vertexCount)
end
--- <summary>
--- C#声明:Void DrawProceduralIndirect(UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.MeshTopology, UnityEngine.ComputeBuffer, Int32, UnityEngine.MaterialPropertyBlock)
--- </summary>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_bufferWithArgs">UnityEngine.ComputeBuffer</param>
--- <param name="arg_argsOffset">System.Int32</param>
--- <param name="arg_properties">UnityEngine.MaterialPropertyBlock</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawProceduralIndirect(arg_matrix,arg_material,arg_shaderPass,arg_topology,arg_bufferWithArgs,arg_argsOffset,arg_properties)
end
--- <summary>
--- C#声明:Void DrawProceduralIndirect(UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.MeshTopology, UnityEngine.ComputeBuffer, Int32)
--- </summary>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_bufferWithArgs">UnityEngine.ComputeBuffer</param>
--- <param name="arg_argsOffset">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawProceduralIndirect(arg_matrix,arg_material,arg_shaderPass,arg_topology,arg_bufferWithArgs,arg_argsOffset)
end
--- <summary>
--- C#声明:Void DrawProceduralIndirect(UnityEngine.Matrix4x4, UnityEngine.Material, Int32, UnityEngine.MeshTopology, UnityEngine.ComputeBuffer)
--- </summary>
--- <param name="arg_matrix">UnityEngine.Matrix4x4</param>
--- <param name="arg_material">UnityEngine.Material</param>
--- <param name="arg_shaderPass">System.Int32</param>
--- <param name="arg_topology">UnityEngine.MeshTopology</param>
--- <param name="arg_bufferWithArgs">UnityEngine.ComputeBuffer</param>
--- <returns>System.Void</returns>
function CommandBuffer:DrawProceduralIndirect(arg_matrix,arg_material,arg_shaderPass,arg_topology,arg_bufferWithArgs)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier)
--- </summary>
--- <param name="arg_rt">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetRenderTarget(arg_rt)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Rendering.RenderTargetIdentifier)
--- </summary>
--- <param name="arg_color">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_depth">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetRenderTarget(arg_color,arg_depth)
end
--- <summary>
--- C#声明:Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier[], UnityEngine.Rendering.RenderTargetIdentifier)
--- </summary>
--- <param name="arg_colors">UnityEngine.Rendering.RenderTargetIdentifier[]</param>
--- <param name="arg_depth">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetRenderTarget(arg_colors,arg_depth)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.Rendering.RenderTargetIdentifier)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_dest">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <returns>System.Void</returns>
function CommandBuffer:Blit(arg_source,arg_dest)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Material)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_dest">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function CommandBuffer:Blit(arg_source,arg_dest,arg_mat)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Texture, UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_source">UnityEngine.Texture</param>
--- <param name="arg_dest">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <param name="arg_pass">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:Blit(arg_source,arg_dest,arg_mat,arg_pass)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Rendering.RenderTargetIdentifier)
--- </summary>
--- <param name="arg_source">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_dest">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <returns>System.Void</returns>
function CommandBuffer:Blit(arg_source,arg_dest)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Material)
--- </summary>
--- <param name="arg_source">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_dest">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function CommandBuffer:Blit(arg_source,arg_dest,arg_mat)
end
--- <summary>
--- C#声明:Void Blit(UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Rendering.RenderTargetIdentifier, UnityEngine.Material, Int32)
--- </summary>
--- <param name="arg_source">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_dest">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <param name="arg_pass">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:Blit(arg_source,arg_dest,arg_mat,arg_pass)
end
--- <summary>
--- C#声明:Void GetTemporaryRT(Int32, Int32, Int32, Int32, UnityEngine.FilterMode, UnityEngine.RenderTextureFormat, UnityEngine.RenderTextureReadWrite, Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <param name="arg_filter">UnityEngine.FilterMode</param>
--- <param name="arg_format">UnityEngine.RenderTextureFormat</param>
--- <param name="arg_readWrite">UnityEngine.RenderTextureReadWrite</param>
--- <param name="arg_antiAliasing">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:GetTemporaryRT(arg_nameID,arg_width,arg_height,arg_depthBuffer,arg_filter,arg_format,arg_readWrite,arg_antiAliasing)
end
--- <summary>
--- C#声明:Void GetTemporaryRT(Int32, Int32, Int32, Int32, UnityEngine.FilterMode, UnityEngine.RenderTextureFormat, UnityEngine.RenderTextureReadWrite)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <param name="arg_filter">UnityEngine.FilterMode</param>
--- <param name="arg_format">UnityEngine.RenderTextureFormat</param>
--- <param name="arg_readWrite">UnityEngine.RenderTextureReadWrite</param>
--- <returns>System.Void</returns>
function CommandBuffer:GetTemporaryRT(arg_nameID,arg_width,arg_height,arg_depthBuffer,arg_filter,arg_format,arg_readWrite)
end
--- <summary>
--- C#声明:Void GetTemporaryRT(Int32, Int32, Int32, Int32, UnityEngine.FilterMode, UnityEngine.RenderTextureFormat)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <param name="arg_filter">UnityEngine.FilterMode</param>
--- <param name="arg_format">UnityEngine.RenderTextureFormat</param>
--- <returns>System.Void</returns>
function CommandBuffer:GetTemporaryRT(arg_nameID,arg_width,arg_height,arg_depthBuffer,arg_filter,arg_format)
end
--- <summary>
--- C#声明:Void GetTemporaryRT(Int32, Int32, Int32, Int32, UnityEngine.FilterMode)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <param name="arg_filter">UnityEngine.FilterMode</param>
--- <returns>System.Void</returns>
function CommandBuffer:GetTemporaryRT(arg_nameID,arg_width,arg_height,arg_depthBuffer,arg_filter)
end
--- <summary>
--- C#声明:Void GetTemporaryRT(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_depthBuffer">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:GetTemporaryRT(arg_nameID,arg_width,arg_height,arg_depthBuffer)
end
--- <summary>
--- C#声明:Void GetTemporaryRT(Int32, Int32, Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:GetTemporaryRT(arg_nameID,arg_width,arg_height)
end
--- <summary>
--- C#声明:Void ReleaseTemporaryRT(Int32)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <returns>System.Void</returns>
function CommandBuffer:ReleaseTemporaryRT(arg_nameID)
end
--- <summary>
--- C#声明:Void ClearRenderTarget(Boolean, Boolean, UnityEngine.Color, Single)
--- </summary>
--- <param name="arg_clearDepth">System.Boolean</param>
--- <param name="arg_clearColor">System.Boolean</param>
--- <param name="arg_backgroundColor">UnityEngine.Color</param>
--- <param name="arg_depth">System.Single</param>
--- <returns>System.Void</returns>
function CommandBuffer:ClearRenderTarget(arg_clearDepth,arg_clearColor,arg_backgroundColor,arg_depth)
end
--- <summary>
--- C#声明:Void ClearRenderTarget(Boolean, Boolean, UnityEngine.Color)
--- </summary>
--- <param name="arg_clearDepth">System.Boolean</param>
--- <param name="arg_clearColor">System.Boolean</param>
--- <param name="arg_backgroundColor">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function CommandBuffer:ClearRenderTarget(arg_clearDepth,arg_clearColor,arg_backgroundColor)
end
--- <summary>
--- C#声明:Void SetGlobalFloat(System.String, Single)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalFloat(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalFloat(Int32, Single)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalFloat(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalVector(System.String, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalVector(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalVector(Int32, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">UnityEngine.Vector4</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalVector(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalColor(System.String, UnityEngine.Color)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalColor(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalColor(Int32, UnityEngine.Color)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalColor(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalMatrix(System.String, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalMatrix(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalMatrix(Int32, UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalMatrix(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalTexture(System.String, UnityEngine.Rendering.RenderTargetIdentifier)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalTexture(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetGlobalTexture(Int32, UnityEngine.Rendering.RenderTargetIdentifier)
--- </summary>
--- <param name="arg_nameID">System.Int32</param>
--- <param name="arg_value">UnityEngine.Rendering.RenderTargetIdentifier</param>
--- <returns>System.Void</returns>
function CommandBuffer:SetGlobalTexture(arg_nameID,arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function CommandBuffer:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function CommandBuffer:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function CommandBuffer:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function CommandBuffer:GetType()
end

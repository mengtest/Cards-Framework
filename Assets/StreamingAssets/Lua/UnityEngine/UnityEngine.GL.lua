--create by yangxun
GL={}

--- <summary>
--- 属性:Matrix4x4
--- </summary>
GL.modelview=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GL.wireframe=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GL.sRGBWrite=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GL.invertCulling=nil
--- <summary>
--- C#声明:Void Vertex3(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>System.Void</returns>
function GL.Vertex3(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:Void Vertex(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function GL.Vertex(arg_v)
end
--- <summary>
--- C#声明:Void Color(UnityEngine.Color)
--- </summary>
--- <param name="arg_c">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function GL.Color(arg_c)
end
--- <summary>
--- C#声明:Void TexCoord(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function GL.TexCoord(arg_v)
end
--- <summary>
--- C#声明:Void TexCoord2(Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <returns>System.Void</returns>
function GL.TexCoord2(arg_x,arg_y)
end
--- <summary>
--- C#声明:Void TexCoord3(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>System.Void</returns>
function GL.TexCoord3(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:Void MultiTexCoord2(Int32, Single, Single)
--- </summary>
--- <param name="arg_unit">System.Int32</param>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <returns>System.Void</returns>
function GL.MultiTexCoord2(arg_unit,arg_x,arg_y)
end
--- <summary>
--- C#声明:Void MultiTexCoord3(Int32, Single, Single, Single)
--- </summary>
--- <param name="arg_unit">System.Int32</param>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>System.Void</returns>
function GL.MultiTexCoord3(arg_unit,arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:Void MultiTexCoord(Int32, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_unit">System.Int32</param>
--- <param name="arg_v">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function GL.MultiTexCoord(arg_unit,arg_v)
end
--- <summary>
--- C#声明:Void Begin(Int32)
--- </summary>
--- <param name="arg_mode">System.Int32</param>
--- <returns>System.Void</returns>
function GL.Begin(arg_mode)
end
--- <summary>
--- C#声明:Void End()
--- </summary>
--- <returns>System.Void</returns>
function GL.End()
end
--- <summary>
--- C#声明:Void LoadOrtho()
--- </summary>
--- <returns>System.Void</returns>
function GL.LoadOrtho()
end
--- <summary>
--- C#声明:Void LoadPixelMatrix()
--- </summary>
--- <returns>System.Void</returns>
function GL.LoadPixelMatrix()
end
--- <summary>
--- C#声明:Void LoadPixelMatrix(Single, Single, Single, Single)
--- </summary>
--- <param name="arg_left">System.Single</param>
--- <param name="arg_right">System.Single</param>
--- <param name="arg_bottom">System.Single</param>
--- <param name="arg_top">System.Single</param>
--- <returns>System.Void</returns>
function GL.LoadPixelMatrix(arg_left,arg_right,arg_bottom,arg_top)
end
--- <summary>
--- C#声明:Void Viewport(UnityEngine.Rect)
--- </summary>
--- <param name="arg_pixelRect">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function GL.Viewport(arg_pixelRect)
end
--- <summary>
--- C#声明:Void LoadProjectionMatrix(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_mat">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function GL.LoadProjectionMatrix(arg_mat)
end
--- <summary>
--- C#声明:Void LoadIdentity()
--- </summary>
--- <returns>System.Void</returns>
function GL.LoadIdentity()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_modelview()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function GL.get_modelview()
end
--- <summary>
--- C#声明:Void set_modelview(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_value">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function GL.set_modelview(arg_value)
end
--- <summary>
--- C#声明:Void MultMatrix(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_mat">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function GL.MultMatrix(arg_mat)
end
--- <summary>
--- C#声明:Void PushMatrix()
--- </summary>
--- <returns>System.Void</returns>
function GL.PushMatrix()
end
--- <summary>
--- C#声明:Void PopMatrix()
--- </summary>
--- <returns>System.Void</returns>
function GL.PopMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 GetGPUProjectionMatrix(UnityEngine.Matrix4x4, Boolean)
--- </summary>
--- <param name="arg_proj">UnityEngine.Matrix4x4</param>
--- <param name="arg_renderIntoTexture">System.Boolean</param>
--- <returns>UnityEngine.Matrix4x4</returns>
function GL.GetGPUProjectionMatrix(arg_proj,arg_renderIntoTexture)
end
--- <summary>
--- C#声明:Boolean get_wireframe()
--- </summary>
--- <returns>System.Boolean</returns>
function GL.get_wireframe()
end
--- <summary>
--- C#声明:Void set_wireframe(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GL.set_wireframe(arg_value)
end
--- <summary>
--- C#声明:Boolean get_sRGBWrite()
--- </summary>
--- <returns>System.Boolean</returns>
function GL.get_sRGBWrite()
end
--- <summary>
--- C#声明:Void set_sRGBWrite(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GL.set_sRGBWrite(arg_value)
end
--- <summary>
--- C#声明:Boolean get_invertCulling()
--- </summary>
--- <returns>System.Boolean</returns>
function GL.get_invertCulling()
end
--- <summary>
--- C#声明:Void set_invertCulling(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GL.set_invertCulling(arg_value)
end
--- <summary>
--- C#声明:Void SetRevertBackfacing(Boolean)
--- </summary>
--- <param name="arg_revertBackFaces">System.Boolean</param>
--- <returns>System.Void</returns>
function GL.SetRevertBackfacing(arg_revertBackFaces)
end
--- <summary>
--- C#声明:Void Clear(Boolean, Boolean, UnityEngine.Color)
--- </summary>
--- <param name="arg_clearDepth">System.Boolean</param>
--- <param name="arg_clearColor">System.Boolean</param>
--- <param name="arg_backgroundColor">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function GL.Clear(arg_clearDepth,arg_clearColor,arg_backgroundColor)
end
--- <summary>
--- C#声明:Void Clear(Boolean, Boolean, UnityEngine.Color, Single)
--- </summary>
--- <param name="arg_clearDepth">System.Boolean</param>
--- <param name="arg_clearColor">System.Boolean</param>
--- <param name="arg_backgroundColor">UnityEngine.Color</param>
--- <param name="arg_depth">System.Single</param>
--- <returns>System.Void</returns>
function GL.Clear(arg_clearDepth,arg_clearColor,arg_backgroundColor,arg_depth)
end
--- <summary>
--- C#声明:Void ClearWithSkybox(Boolean, UnityEngine.Camera)
--- </summary>
--- <param name="arg_clearDepth">System.Boolean</param>
--- <param name="arg_camera">UnityEngine.Camera</param>
--- <returns>System.Void</returns>
function GL.ClearWithSkybox(arg_clearDepth,arg_camera)
end
--- <summary>
--- C#声明:Void InvalidateState()
--- </summary>
--- <returns>System.Void</returns>
function GL.InvalidateState()
end
--- <summary>
--- C#声明:Void IssuePluginEvent(Int32)
--- </summary>
--- <param name="arg_eventID">System.Int32</param>
--- <returns>System.Void</returns>
function GL.IssuePluginEvent(arg_eventID)
end
--- <summary>
--- C#声明:Void RenderTargetBarrier()
--- </summary>
--- <returns>System.Void</returns>
function GL.RenderTargetBarrier()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function GL:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function GL:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function GL:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function GL:GetType()
end

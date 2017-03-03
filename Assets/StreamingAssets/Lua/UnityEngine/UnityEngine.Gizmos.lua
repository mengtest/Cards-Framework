--create by yangxun
Gizmos={}

--- <summary>
--- 属性:Color
--- </summary>
Gizmos.color=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Gizmos.matrix=nil
--- <summary>
--- C#声明:Void DrawRay(UnityEngine.Ray)
--- </summary>
--- <param name="arg_r">UnityEngine.Ray</param>
--- <returns>System.Void</returns>
function Gizmos.DrawRay(arg_r)
end
--- <summary>
--- C#声明:Void DrawRay(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawRay(arg_from,arg_direction)
end
--- <summary>
--- C#声明:Void DrawLine(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_from">UnityEngine.Vector3</param>
--- <param name="arg_to">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawLine(arg_from,arg_to)
end
--- <summary>
--- C#声明:Void DrawWireSphere(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_center">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireSphere(arg_center,arg_radius)
end
--- <summary>
--- C#声明:Void DrawSphere(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_center">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>System.Void</returns>
function Gizmos.DrawSphere(arg_center,arg_radius)
end
--- <summary>
--- C#声明:Void DrawWireCube(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_center">UnityEngine.Vector3</param>
--- <param name="arg_size">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireCube(arg_center,arg_size)
end
--- <summary>
--- C#声明:Void DrawCube(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_center">UnityEngine.Vector3</param>
--- <param name="arg_size">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawCube(arg_center,arg_size)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh,arg_position,arg_rotation)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh,arg_position)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_scale">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh,arg_position,arg_rotation,arg_scale)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, Int32, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_scale">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh,arg_submeshIndex,arg_position,arg_rotation,arg_scale)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, Int32, UnityEngine.Vector3, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh,arg_submeshIndex,arg_position,arg_rotation)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, Int32, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh,arg_submeshIndex,arg_position)
end
--- <summary>
--- C#声明:Void DrawMesh(UnityEngine.Mesh, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Gizmos.DrawMesh(arg_mesh,arg_submeshIndex)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh,arg_position,arg_rotation)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh,arg_position)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_scale">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh,arg_position,arg_rotation,arg_scale)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh, Int32, UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <param name="arg_scale">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh,arg_submeshIndex,arg_position,arg_rotation,arg_scale)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh, Int32, UnityEngine.Vector3, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_rotation">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh,arg_submeshIndex,arg_position,arg_rotation)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh, Int32, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh,arg_submeshIndex,arg_position)
end
--- <summary>
--- C#声明:Void DrawWireMesh(UnityEngine.Mesh, Int32)
--- </summary>
--- <param name="arg_mesh">UnityEngine.Mesh</param>
--- <param name="arg_submeshIndex">System.Int32</param>
--- <returns>System.Void</returns>
function Gizmos.DrawWireMesh(arg_mesh,arg_submeshIndex)
end
--- <summary>
--- C#声明:Void DrawIcon(UnityEngine.Vector3, System.String, Boolean)
--- </summary>
--- <param name="arg_center">UnityEngine.Vector3</param>
--- <param name="arg_name">System.String</param>
--- <param name="arg_allowScaling">System.Boolean</param>
--- <returns>System.Void</returns>
function Gizmos.DrawIcon(arg_center,arg_name,arg_allowScaling)
end
--- <summary>
--- C#声明:Void DrawIcon(UnityEngine.Vector3, System.String)
--- </summary>
--- <param name="arg_center">UnityEngine.Vector3</param>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Gizmos.DrawIcon(arg_center,arg_name)
end
--- <summary>
--- C#声明:Void DrawGUITexture(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function Gizmos.DrawGUITexture(arg_screenRect,arg_texture)
end
--- <summary>
--- C#声明:Void DrawGUITexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Material)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Gizmos.DrawGUITexture(arg_screenRect,arg_texture,arg_mat)
end
--- <summary>
--- C#声明:Void DrawGUITexture(UnityEngine.Rect, UnityEngine.Texture, Int32, Int32, Int32, Int32, UnityEngine.Material)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <param name="arg_mat">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Gizmos.DrawGUITexture(arg_screenRect,arg_texture,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder,arg_mat)
end
--- <summary>
--- C#声明:Void DrawGUITexture(UnityEngine.Rect, UnityEngine.Texture, Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <param name="arg_texture">UnityEngine.Texture</param>
--- <param name="arg_leftBorder">System.Int32</param>
--- <param name="arg_rightBorder">System.Int32</param>
--- <param name="arg_topBorder">System.Int32</param>
--- <param name="arg_bottomBorder">System.Int32</param>
--- <returns>System.Void</returns>
function Gizmos.DrawGUITexture(arg_screenRect,arg_texture,arg_leftBorder,arg_rightBorder,arg_topBorder,arg_bottomBorder)
end
--- <summary>
--- C#声明:UnityEngine.Color get_color()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function Gizmos.get_color()
end
--- <summary>
--- C#声明:Void set_color(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Gizmos.set_color(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_matrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Gizmos.get_matrix()
end
--- <summary>
--- C#声明:Void set_matrix(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_value">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function Gizmos.set_matrix(arg_value)
end
--- <summary>
--- C#声明:Void DrawFrustum(UnityEngine.Vector3, Single, Single, Single, Single)
--- </summary>
--- <param name="arg_center">UnityEngine.Vector3</param>
--- <param name="arg_fov">System.Single</param>
--- <param name="arg_maxRange">System.Single</param>
--- <param name="arg_minRange">System.Single</param>
--- <param name="arg_aspect">System.Single</param>
--- <returns>System.Void</returns>
function Gizmos.DrawFrustum(arg_center,arg_fov,arg_maxRange,arg_minRange,arg_aspect)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Gizmos:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Gizmos:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Gizmos:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Gizmos:GetType()
end

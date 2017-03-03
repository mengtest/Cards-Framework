--create by yangxun
Sprite={}

--- <summary>
--- 属性:Bounds
--- </summary>
Sprite.bounds=nil
--- <summary>
--- 属性:Rect
--- </summary>
Sprite.rect=nil
--- <summary>
--- 属性:Single
--- </summary>
Sprite.pixelsPerUnit=nil
--- <summary>
--- 属性:Texture2D
--- </summary>
Sprite.texture=nil
--- <summary>
--- 属性:Rect
--- </summary>
Sprite.textureRect=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Sprite.textureRectOffset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Sprite.packed=nil
--- <summary>
--- 属性:SpritePackingMode
--- </summary>
Sprite.packingMode=nil
--- <summary>
--- 属性:SpritePackingRotation
--- </summary>
Sprite.packingRotation=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Sprite.pivot=nil
--- <summary>
--- 属性:Vector4
--- </summary>
Sprite.border=nil
--- <summary>
--- 属性:Vector2[]
--- </summary>
Sprite.vertices=nil
--- <summary>
--- 属性:UInt16[]
--- </summary>
Sprite.triangles=nil
--- <summary>
--- 属性:Vector2[]
--- </summary>
Sprite.uv=nil
--- <summary>
--- 属性:String
--- </summary>
Sprite.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Sprite.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.Sprite Create(UnityEngine.Texture2D, UnityEngine.Rect, UnityEngine.Vector2, Single, UInt32, UnityEngine.SpriteMeshType, UnityEngine.Vector4)
--- </summary>
--- <param name="arg_texture">UnityEngine.Texture2D</param>
--- <param name="arg_rect">UnityEngine.Rect</param>
--- <param name="arg_pivot">UnityEngine.Vector2</param>
--- <param name="arg_pixelsPerUnit">System.Single</param>
--- <param name="arg_extrude">System.UInt32</param>
--- <param name="arg_meshType">UnityEngine.SpriteMeshType</param>
--- <param name="arg_border">UnityEngine.Vector4</param>
--- <returns>UnityEngine.Sprite</returns>
function Sprite.Create(arg_texture,arg_rect,arg_pivot,arg_pixelsPerUnit,arg_extrude,arg_meshType,arg_border)
end
--- <summary>
--- C#声明:UnityEngine.Sprite Create(UnityEngine.Texture2D, UnityEngine.Rect, UnityEngine.Vector2, Single, UInt32, UnityEngine.SpriteMeshType)
--- </summary>
--- <param name="arg_texture">UnityEngine.Texture2D</param>
--- <param name="arg_rect">UnityEngine.Rect</param>
--- <param name="arg_pivot">UnityEngine.Vector2</param>
--- <param name="arg_pixelsPerUnit">System.Single</param>
--- <param name="arg_extrude">System.UInt32</param>
--- <param name="arg_meshType">UnityEngine.SpriteMeshType</param>
--- <returns>UnityEngine.Sprite</returns>
function Sprite.Create(arg_texture,arg_rect,arg_pivot,arg_pixelsPerUnit,arg_extrude,arg_meshType)
end
--- <summary>
--- C#声明:UnityEngine.Sprite Create(UnityEngine.Texture2D, UnityEngine.Rect, UnityEngine.Vector2, Single, UInt32)
--- </summary>
--- <param name="arg_texture">UnityEngine.Texture2D</param>
--- <param name="arg_rect">UnityEngine.Rect</param>
--- <param name="arg_pivot">UnityEngine.Vector2</param>
--- <param name="arg_pixelsPerUnit">System.Single</param>
--- <param name="arg_extrude">System.UInt32</param>
--- <returns>UnityEngine.Sprite</returns>
function Sprite.Create(arg_texture,arg_rect,arg_pivot,arg_pixelsPerUnit,arg_extrude)
end
--- <summary>
--- C#声明:UnityEngine.Sprite Create(UnityEngine.Texture2D, UnityEngine.Rect, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_texture">UnityEngine.Texture2D</param>
--- <param name="arg_rect">UnityEngine.Rect</param>
--- <param name="arg_pivot">UnityEngine.Vector2</param>
--- <param name="arg_pixelsPerUnit">System.Single</param>
--- <returns>UnityEngine.Sprite</returns>
function Sprite.Create(arg_texture,arg_rect,arg_pivot,arg_pixelsPerUnit)
end
--- <summary>
--- C#声明:UnityEngine.Sprite Create(UnityEngine.Texture2D, UnityEngine.Rect, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_texture">UnityEngine.Texture2D</param>
--- <param name="arg_rect">UnityEngine.Rect</param>
--- <param name="arg_pivot">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Sprite</returns>
function Sprite.Create(arg_texture,arg_rect,arg_pivot)
end
--- <summary>
--- C#声明:UnityEngine.Bounds get_bounds()
--- </summary>
--- <returns>UnityEngine.Bounds</returns>
function Sprite:get_bounds()
end
--- <summary>
--- C#声明:UnityEngine.Rect get_rect()
--- </summary>
--- <returns>UnityEngine.Rect</returns>
function Sprite:get_rect()
end
--- <summary>
--- C#声明:Single get_pixelsPerUnit()
--- </summary>
--- <returns>System.Single</returns>
function Sprite:get_pixelsPerUnit()
end
--- <summary>
--- C#声明:UnityEngine.Texture2D get_texture()
--- </summary>
--- <returns>UnityEngine.Texture2D</returns>
function Sprite:get_texture()
end
--- <summary>
--- C#声明:UnityEngine.Rect get_textureRect()
--- </summary>
--- <returns>UnityEngine.Rect</returns>
function Sprite:get_textureRect()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_textureRectOffset()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Sprite:get_textureRectOffset()
end
--- <summary>
--- C#声明:Boolean get_packed()
--- </summary>
--- <returns>System.Boolean</returns>
function Sprite:get_packed()
end
--- <summary>
--- C#声明:UnityEngine.SpritePackingMode get_packingMode()
--- </summary>
--- <returns>UnityEngine.SpritePackingMode</returns>
function Sprite:get_packingMode()
end
--- <summary>
--- C#声明:UnityEngine.SpritePackingRotation get_packingRotation()
--- </summary>
--- <returns>UnityEngine.SpritePackingRotation</returns>
function Sprite:get_packingRotation()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_pivot()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Sprite:get_pivot()
end
--- <summary>
--- C#声明:UnityEngine.Vector4 get_border()
--- </summary>
--- <returns>UnityEngine.Vector4</returns>
function Sprite:get_border()
end
--- <summary>
--- C#声明:UnityEngine.Vector2[] get_vertices()
--- </summary>
--- <returns>UnityEngine.Vector2[]</returns>
function Sprite:get_vertices()
end
--- <summary>
--- C#声明:UInt16[] get_triangles()
--- </summary>
--- <returns>System.UInt16[]</returns>
function Sprite:get_triangles()
end
--- <summary>
--- C#声明:UnityEngine.Vector2[] get_uv()
--- </summary>
--- <returns>UnityEngine.Vector2[]</returns>
function Sprite:get_uv()
end
--- <summary>
--- C#声明:Void OverrideGeometry(UnityEngine.Vector2[], UInt16[])
--- </summary>
--- <param name="arg_vertices">UnityEngine.Vector2[]</param>
--- <param name="arg_triangles">System.UInt16[]</param>
--- <returns>System.Void</returns>
function Sprite:OverrideGeometry(arg_vertices,arg_triangles)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Sprite:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Sprite:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Sprite:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Sprite:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Sprite:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Sprite:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Sprite:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Sprite:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Sprite:GetType()
end

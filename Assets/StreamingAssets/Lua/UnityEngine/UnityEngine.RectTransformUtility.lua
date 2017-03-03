--create by yangxun
RectTransformUtility={}

--- <summary>
--- C#声明:Boolean RectangleContainsScreenPoint(UnityEngine.RectTransform, UnityEngine.Vector2, UnityEngine.Camera)
--- </summary>
--- <param name="arg_rect">UnityEngine.RectTransform</param>
--- <param name="arg_screenPoint">UnityEngine.Vector2</param>
--- <param name="arg_cam">UnityEngine.Camera</param>
--- <returns>System.Boolean</returns>
function RectTransformUtility.RectangleContainsScreenPoint(arg_rect,arg_screenPoint,arg_cam)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 PixelAdjustPoint(UnityEngine.Vector2, UnityEngine.Transform, UnityEngine.Canvas)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_elementTransform">UnityEngine.Transform</param>
--- <param name="arg_canvas">UnityEngine.Canvas</param>
--- <returns>UnityEngine.Vector2</returns>
function RectTransformUtility.PixelAdjustPoint(arg_point,arg_elementTransform,arg_canvas)
end
--- <summary>
--- C#声明:UnityEngine.Rect PixelAdjustRect(UnityEngine.RectTransform, UnityEngine.Canvas)
--- </summary>
--- <param name="arg_rectTransform">UnityEngine.RectTransform</param>
--- <param name="arg_canvas">UnityEngine.Canvas</param>
--- <returns>UnityEngine.Rect</returns>
function RectTransformUtility.PixelAdjustRect(arg_rectTransform,arg_canvas)
end
--- <summary>
--- C#声明:Boolean ScreenPointToWorldPointInRectangle(UnityEngine.RectTransform, UnityEngine.Vector2, UnityEngine.Camera, UnityEngine.Vector3 ByRef)
--- </summary>
--- <param name="arg_rect">UnityEngine.RectTransform</param>
--- <param name="arg_screenPoint">UnityEngine.Vector2</param>
--- <param name="arg_cam">UnityEngine.Camera</param>
--- <param name="arg_worldPoint">UnityEngine.Vector3&</param>
--- <returns>System.Boolean</returns>
function RectTransformUtility.ScreenPointToWorldPointInRectangle(arg_rect,arg_screenPoint,arg_cam,arg_worldPoint)
end
--- <summary>
--- C#声明:Boolean ScreenPointToLocalPointInRectangle(UnityEngine.RectTransform, UnityEngine.Vector2, UnityEngine.Camera, UnityEngine.Vector2 ByRef)
--- </summary>
--- <param name="arg_rect">UnityEngine.RectTransform</param>
--- <param name="arg_screenPoint">UnityEngine.Vector2</param>
--- <param name="arg_cam">UnityEngine.Camera</param>
--- <param name="arg_localPoint">UnityEngine.Vector2&</param>
--- <returns>System.Boolean</returns>
function RectTransformUtility.ScreenPointToLocalPointInRectangle(arg_rect,arg_screenPoint,arg_cam,arg_localPoint)
end
--- <summary>
--- C#声明:UnityEngine.Ray ScreenPointToRay(UnityEngine.Camera, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_cam">UnityEngine.Camera</param>
--- <param name="arg_screenPos">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Ray</returns>
function RectTransformUtility.ScreenPointToRay(arg_cam,arg_screenPos)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 WorldToScreenPoint(UnityEngine.Camera, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_cam">UnityEngine.Camera</param>
--- <param name="arg_worldPoint">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector2</returns>
function RectTransformUtility.WorldToScreenPoint(arg_cam,arg_worldPoint)
end
--- <summary>
--- C#声明:UnityEngine.Bounds CalculateRelativeRectTransformBounds(UnityEngine.Transform, UnityEngine.Transform)
--- </summary>
--- <param name="arg_root">UnityEngine.Transform</param>
--- <param name="arg_child">UnityEngine.Transform</param>
--- <returns>UnityEngine.Bounds</returns>
function RectTransformUtility.CalculateRelativeRectTransformBounds(arg_root,arg_child)
end
--- <summary>
--- C#声明:UnityEngine.Bounds CalculateRelativeRectTransformBounds(UnityEngine.Transform)
--- </summary>
--- <param name="arg_trans">UnityEngine.Transform</param>
--- <returns>UnityEngine.Bounds</returns>
function RectTransformUtility.CalculateRelativeRectTransformBounds(arg_trans)
end
--- <summary>
--- C#声明:Void FlipLayoutOnAxis(UnityEngine.RectTransform, Int32, Boolean, Boolean)
--- </summary>
--- <param name="arg_rect">UnityEngine.RectTransform</param>
--- <param name="arg_axis">System.Int32</param>
--- <param name="arg_keepPositioning">System.Boolean</param>
--- <param name="arg_recursive">System.Boolean</param>
--- <returns>System.Void</returns>
function RectTransformUtility.FlipLayoutOnAxis(arg_rect,arg_axis,arg_keepPositioning,arg_recursive)
end
--- <summary>
--- C#声明:Void FlipLayoutAxes(UnityEngine.RectTransform, Boolean, Boolean)
--- </summary>
--- <param name="arg_rect">UnityEngine.RectTransform</param>
--- <param name="arg_keepPositioning">System.Boolean</param>
--- <param name="arg_recursive">System.Boolean</param>
--- <returns>System.Void</returns>
function RectTransformUtility.FlipLayoutAxes(arg_rect,arg_keepPositioning,arg_recursive)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function RectTransformUtility:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function RectTransformUtility:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function RectTransformUtility:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function RectTransformUtility:GetType()
end

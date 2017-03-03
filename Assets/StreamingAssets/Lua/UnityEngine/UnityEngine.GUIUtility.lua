--create by yangxun
GUIUtility={}

--- <summary>
--- 属性:Int32
--- </summary>
GUIUtility.hotControl=nil
--- <summary>
--- 属性:Int32
--- </summary>
GUIUtility.keyboardControl=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUIUtility.hasModalWindow=nil
--- <summary>
--- C#声明:Int32 GetControlID(UnityEngine.FocusType)
--- </summary>
--- <param name="arg_focus">UnityEngine.FocusType</param>
--- <returns>System.Int32</returns>
function GUIUtility.GetControlID(arg_focus)
end
--- <summary>
--- C#声明:Int32 GetControlID(Int32, UnityEngine.FocusType)
--- </summary>
--- <param name="arg_hint">System.Int32</param>
--- <param name="arg_focus">UnityEngine.FocusType</param>
--- <returns>System.Int32</returns>
function GUIUtility.GetControlID(arg_hint,arg_focus)
end
--- <summary>
--- C#声明:Int32 GetControlID(UnityEngine.GUIContent, UnityEngine.FocusType)
--- </summary>
--- <param name="arg_contents">UnityEngine.GUIContent</param>
--- <param name="arg_focus">UnityEngine.FocusType</param>
--- <returns>System.Int32</returns>
function GUIUtility.GetControlID(arg_contents,arg_focus)
end
--- <summary>
--- C#声明:Int32 GetControlID(UnityEngine.FocusType, UnityEngine.Rect)
--- </summary>
--- <param name="arg_focus">UnityEngine.FocusType</param>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <returns>System.Int32</returns>
function GUIUtility.GetControlID(arg_focus,arg_position)
end
--- <summary>
--- C#声明:Int32 GetControlID(Int32, UnityEngine.FocusType, UnityEngine.Rect)
--- </summary>
--- <param name="arg_hint">System.Int32</param>
--- <param name="arg_focus">UnityEngine.FocusType</param>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <returns>System.Int32</returns>
function GUIUtility.GetControlID(arg_hint,arg_focus,arg_position)
end
--- <summary>
--- C#声明:Int32 GetControlID(UnityEngine.GUIContent, UnityEngine.FocusType, UnityEngine.Rect)
--- </summary>
--- <param name="arg_contents">UnityEngine.GUIContent</param>
--- <param name="arg_focus">UnityEngine.FocusType</param>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <returns>System.Int32</returns>
function GUIUtility.GetControlID(arg_contents,arg_focus,arg_position)
end
--- <summary>
--- C#声明:System.Object GetStateObject(System.Type, Int32)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_controlID">System.Int32</param>
--- <returns>System.Object</returns>
function GUIUtility.GetStateObject(arg_t,arg_controlID)
end
--- <summary>
--- C#声明:System.Object QueryStateObject(System.Type, Int32)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_controlID">System.Int32</param>
--- <returns>System.Object</returns>
function GUIUtility.QueryStateObject(arg_t,arg_controlID)
end
--- <summary>
--- C#声明:Int32 get_hotControl()
--- </summary>
--- <returns>System.Int32</returns>
function GUIUtility.get_hotControl()
end
--- <summary>
--- C#声明:Void set_hotControl(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function GUIUtility.set_hotControl(arg_value)
end
--- <summary>
--- C#声明:Int32 get_keyboardControl()
--- </summary>
--- <returns>System.Int32</returns>
function GUIUtility.get_keyboardControl()
end
--- <summary>
--- C#声明:Void set_keyboardControl(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function GUIUtility.set_keyboardControl(arg_value)
end
--- <summary>
--- C#声明:Void ExitGUI()
--- </summary>
--- <returns>System.Void</returns>
function GUIUtility.ExitGUI()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GUIToScreenPoint(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_guiPoint">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function GUIUtility.GUIToScreenPoint(arg_guiPoint)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 ScreenToGUIPoint(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_screenPoint">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function GUIUtility.ScreenToGUIPoint(arg_screenPoint)
end
--- <summary>
--- C#声明:UnityEngine.Rect ScreenToGUIRect(UnityEngine.Rect)
--- </summary>
--- <param name="arg_screenRect">UnityEngine.Rect</param>
--- <returns>UnityEngine.Rect</returns>
function GUIUtility.ScreenToGUIRect(arg_screenRect)
end
--- <summary>
--- C#声明:Void RotateAroundPivot(Single, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_pivotPoint">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function GUIUtility.RotateAroundPivot(arg_angle,arg_pivotPoint)
end
--- <summary>
--- C#声明:Void ScaleAroundPivot(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_scale">UnityEngine.Vector2</param>
--- <param name="arg_pivotPoint">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function GUIUtility.ScaleAroundPivot(arg_scale,arg_pivotPoint)
end
--- <summary>
--- C#声明:Boolean get_hasModalWindow()
--- </summary>
--- <returns>System.Boolean</returns>
function GUIUtility.get_hasModalWindow()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function GUIUtility:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function GUIUtility:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function GUIUtility:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function GUIUtility:GetType()
end

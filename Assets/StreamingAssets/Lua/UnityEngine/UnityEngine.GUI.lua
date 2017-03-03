--create by yangxun
GUI={}

--- <summary>
--- 属性:GUISkin
--- </summary>
GUI.skin=nil
--- <summary>
--- 属性:Color
--- </summary>
GUI.color=nil
--- <summary>
--- 属性:Color
--- </summary>
GUI.backgroundColor=nil
--- <summary>
--- 属性:Color
--- </summary>
GUI.contentColor=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUI.changed=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUI.enabled=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
GUI.matrix=nil
--- <summary>
--- 属性:String
--- </summary>
GUI.tooltip=nil
--- <summary>
--- 属性:Int32
--- </summary>
GUI.depth=nil
--- <summary>
--- C#声明:UnityEngine.Rect ModalWindow(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.Texture)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.ModalWindow(arg_id,arg_clientRect,arg_func,arg_image)
end
--- <summary>
--- C#声明:UnityEngine.Rect ModalWindow(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.ModalWindow(arg_id,arg_clientRect,arg_func,arg_content)
end
--- <summary>
--- C#声明:UnityEngine.Rect ModalWindow(Int32, UnityEngine.Rect, WindowFunction, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.ModalWindow(arg_id,arg_clientRect,arg_func,arg_text,arg_style)
end
--- <summary>
--- C#声明:UnityEngine.Rect ModalWindow(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.ModalWindow(arg_id,arg_clientRect,arg_func,arg_image,arg_style)
end
--- <summary>
--- C#声明:UnityEngine.Rect ModalWindow(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.ModalWindow(arg_id,arg_clientRect,arg_func,arg_content,arg_style)
end
--- <summary>
--- C#声明:Void DragWindow(UnityEngine.Rect)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function GUI.DragWindow(arg_position)
end
--- <summary>
--- C#声明:Void DragWindow()
--- </summary>
--- <returns>System.Void</returns>
function GUI.DragWindow()
end
--- <summary>
--- C#声明:Void BringWindowToFront(Int32)
--- </summary>
--- <param name="arg_windowID">System.Int32</param>
--- <returns>System.Void</returns>
function GUI.BringWindowToFront(arg_windowID)
end
--- <summary>
--- C#声明:Void BringWindowToBack(Int32)
--- </summary>
--- <param name="arg_windowID">System.Int32</param>
--- <returns>System.Void</returns>
function GUI.BringWindowToBack(arg_windowID)
end
--- <summary>
--- C#声明:Void FocusWindow(Int32)
--- </summary>
--- <param name="arg_windowID">System.Int32</param>
--- <returns>System.Void</returns>
function GUI.FocusWindow(arg_windowID)
end
--- <summary>
--- C#声明:Void UnfocusWindow()
--- </summary>
--- <returns>System.Void</returns>
function GUI.UnfocusWindow()
end
--- <summary>
--- C#声明:System.String PasswordField(UnityEngine.Rect, System.String, Char)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_password">System.String</param>
--- <param name="arg_maskChar">System.Char</param>
--- <returns>System.String</returns>
function GUI.PasswordField(arg_position,arg_password,arg_maskChar)
end
--- <summary>
--- C#声明:System.String PasswordField(UnityEngine.Rect, System.String, Char, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_password">System.String</param>
--- <param name="arg_maskChar">System.Char</param>
--- <param name="arg_maxLength">System.Int32</param>
--- <returns>System.String</returns>
function GUI.PasswordField(arg_position,arg_password,arg_maskChar,arg_maxLength)
end
--- <summary>
--- C#声明:System.String PasswordField(UnityEngine.Rect, System.String, Char, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_password">System.String</param>
--- <param name="arg_maskChar">System.Char</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.String</returns>
function GUI.PasswordField(arg_position,arg_password,arg_maskChar,arg_style)
end
--- <summary>
--- C#声明:System.String PasswordField(UnityEngine.Rect, System.String, Char, Int32, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_password">System.String</param>
--- <param name="arg_maskChar">System.Char</param>
--- <param name="arg_maxLength">System.Int32</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.String</returns>
function GUI.PasswordField(arg_position,arg_password,arg_maskChar,arg_maxLength,arg_style)
end
--- <summary>
--- C#声明:System.String TextArea(UnityEngine.Rect, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.String</returns>
function GUI.TextArea(arg_position,arg_text)
end
--- <summary>
--- C#声明:System.String TextArea(UnityEngine.Rect, System.String, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_maxLength">System.Int32</param>
--- <returns>System.String</returns>
function GUI.TextArea(arg_position,arg_text,arg_maxLength)
end
--- <summary>
--- C#声明:System.String TextArea(UnityEngine.Rect, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.String</returns>
function GUI.TextArea(arg_position,arg_text,arg_style)
end
--- <summary>
--- C#声明:System.String TextArea(UnityEngine.Rect, System.String, Int32, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_maxLength">System.Int32</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.String</returns>
function GUI.TextArea(arg_position,arg_text,arg_maxLength,arg_style)
end
--- <summary>
--- C#声明:Void SetNextControlName(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function GUI.SetNextControlName(arg_name)
end
--- <summary>
--- C#声明:System.String GetNameOfFocusedControl()
--- </summary>
--- <returns>System.String</returns>
function GUI.GetNameOfFocusedControl()
end
--- <summary>
--- C#声明:Void FocusControl(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function GUI.FocusControl(arg_name)
end
--- <summary>
--- C#声明:Boolean Toggle(UnityEngine.Rect, Boolean, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.Boolean</returns>
function GUI.Toggle(arg_position,arg_value,arg_text)
end
--- <summary>
--- C#声明:Boolean Toggle(UnityEngine.Rect, Boolean, UnityEngine.Texture)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>System.Boolean</returns>
function GUI.Toggle(arg_position,arg_value,arg_image)
end
--- <summary>
--- C#声明:Boolean Toggle(UnityEngine.Rect, Boolean, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>System.Boolean</returns>
function GUI.Toggle(arg_position,arg_value,arg_content)
end
--- <summary>
--- C#声明:Boolean Toggle(UnityEngine.Rect, Boolean, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.Toggle(arg_position,arg_value,arg_text,arg_style)
end
--- <summary>
--- C#声明:Boolean Toggle(UnityEngine.Rect, Boolean, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.Toggle(arg_position,arg_value,arg_image,arg_style)
end
--- <summary>
--- C#声明:Boolean Toggle(UnityEngine.Rect, Boolean, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.Toggle(arg_position,arg_value,arg_content,arg_style)
end
--- <summary>
--- C#声明:Boolean Toggle(UnityEngine.Rect, Int32, Boolean, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.Toggle(arg_position,arg_id,arg_value,arg_content,arg_style)
end
--- <summary>
--- C#声明:Int32 Toolbar(UnityEngine.Rect, Int32, System.String[])
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_texts">System.String[]</param>
--- <returns>System.Int32</returns>
function GUI.Toolbar(arg_position,arg_selected,arg_texts)
end
--- <summary>
--- C#声明:Int32 Toolbar(UnityEngine.Rect, Int32, UnityEngine.Texture[])
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_images">UnityEngine.Texture[]</param>
--- <returns>System.Int32</returns>
function GUI.Toolbar(arg_position,arg_selected,arg_images)
end
--- <summary>
--- C#声明:Int32 Toolbar(UnityEngine.Rect, Int32, UnityEngine.GUIContent[])
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_content">UnityEngine.GUIContent[]</param>
--- <returns>System.Int32</returns>
function GUI.Toolbar(arg_position,arg_selected,arg_content)
end
--- <summary>
--- C#声明:Int32 Toolbar(UnityEngine.Rect, Int32, System.String[], UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_texts">System.String[]</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Int32</returns>
function GUI.Toolbar(arg_position,arg_selected,arg_texts,arg_style)
end
--- <summary>
--- C#声明:Int32 Toolbar(UnityEngine.Rect, Int32, UnityEngine.Texture[], UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_images">UnityEngine.Texture[]</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Int32</returns>
function GUI.Toolbar(arg_position,arg_selected,arg_images,arg_style)
end
--- <summary>
--- C#声明:Int32 Toolbar(UnityEngine.Rect, Int32, UnityEngine.GUIContent[], UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_contents">UnityEngine.GUIContent[]</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Int32</returns>
function GUI.Toolbar(arg_position,arg_selected,arg_contents,arg_style)
end
--- <summary>
--- C#声明:Int32 SelectionGrid(UnityEngine.Rect, Int32, System.String[], Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_texts">System.String[]</param>
--- <param name="arg_xCount">System.Int32</param>
--- <returns>System.Int32</returns>
function GUI.SelectionGrid(arg_position,arg_selected,arg_texts,arg_xCount)
end
--- <summary>
--- C#声明:Int32 SelectionGrid(UnityEngine.Rect, Int32, UnityEngine.Texture[], Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_images">UnityEngine.Texture[]</param>
--- <param name="arg_xCount">System.Int32</param>
--- <returns>System.Int32</returns>
function GUI.SelectionGrid(arg_position,arg_selected,arg_images,arg_xCount)
end
--- <summary>
--- C#声明:Int32 SelectionGrid(UnityEngine.Rect, Int32, UnityEngine.GUIContent[], Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_content">UnityEngine.GUIContent[]</param>
--- <param name="arg_xCount">System.Int32</param>
--- <returns>System.Int32</returns>
function GUI.SelectionGrid(arg_position,arg_selected,arg_content,arg_xCount)
end
--- <summary>
--- C#声明:Int32 SelectionGrid(UnityEngine.Rect, Int32, System.String[], Int32, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_texts">System.String[]</param>
--- <param name="arg_xCount">System.Int32</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Int32</returns>
function GUI.SelectionGrid(arg_position,arg_selected,arg_texts,arg_xCount,arg_style)
end
--- <summary>
--- C#声明:Int32 SelectionGrid(UnityEngine.Rect, Int32, UnityEngine.Texture[], Int32, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_images">UnityEngine.Texture[]</param>
--- <param name="arg_xCount">System.Int32</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Int32</returns>
function GUI.SelectionGrid(arg_position,arg_selected,arg_images,arg_xCount,arg_style)
end
--- <summary>
--- C#声明:Int32 SelectionGrid(UnityEngine.Rect, Int32, UnityEngine.GUIContent[], Int32, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_selected">System.Int32</param>
--- <param name="arg_contents">UnityEngine.GUIContent[]</param>
--- <param name="arg_xCount">System.Int32</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Int32</returns>
function GUI.SelectionGrid(arg_position,arg_selected,arg_contents,arg_xCount,arg_style)
end
--- <summary>
--- C#声明:Single HorizontalSlider(UnityEngine.Rect, Single, Single, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_leftValue">System.Single</param>
--- <param name="arg_rightValue">System.Single</param>
--- <returns>System.Single</returns>
function GUI.HorizontalSlider(arg_position,arg_value,arg_leftValue,arg_rightValue)
end
--- <summary>
--- C#声明:Single HorizontalSlider(UnityEngine.Rect, Single, Single, Single, UnityEngine.GUIStyle, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_leftValue">System.Single</param>
--- <param name="arg_rightValue">System.Single</param>
--- <param name="arg_slider">UnityEngine.GUIStyle</param>
--- <param name="arg_thumb">UnityEngine.GUIStyle</param>
--- <returns>System.Single</returns>
function GUI.HorizontalSlider(arg_position,arg_value,arg_leftValue,arg_rightValue,arg_slider,arg_thumb)
end
--- <summary>
--- C#声明:Single VerticalSlider(UnityEngine.Rect, Single, Single, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_topValue">System.Single</param>
--- <param name="arg_bottomValue">System.Single</param>
--- <returns>System.Single</returns>
function GUI.VerticalSlider(arg_position,arg_value,arg_topValue,arg_bottomValue)
end
--- <summary>
--- C#声明:Single VerticalSlider(UnityEngine.Rect, Single, Single, Single, UnityEngine.GUIStyle, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_topValue">System.Single</param>
--- <param name="arg_bottomValue">System.Single</param>
--- <param name="arg_slider">UnityEngine.GUIStyle</param>
--- <param name="arg_thumb">UnityEngine.GUIStyle</param>
--- <returns>System.Single</returns>
function GUI.VerticalSlider(arg_position,arg_value,arg_topValue,arg_bottomValue,arg_slider,arg_thumb)
end
--- <summary>
--- C#声明:Single Slider(UnityEngine.Rect, Single, Single, Single, Single, UnityEngine.GUIStyle, UnityEngine.GUIStyle, Boolean, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_size">System.Single</param>
--- <param name="arg_start">System.Single</param>
--- <param name="arg_end">System.Single</param>
--- <param name="arg_slider">UnityEngine.GUIStyle</param>
--- <param name="arg_thumb">UnityEngine.GUIStyle</param>
--- <param name="arg_horiz">System.Boolean</param>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Single</returns>
function GUI.Slider(arg_position,arg_value,arg_size,arg_start,arg_end,arg_slider,arg_thumb,arg_horiz,arg_id)
end
--- <summary>
--- C#声明:Single HorizontalScrollbar(UnityEngine.Rect, Single, Single, Single, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_size">System.Single</param>
--- <param name="arg_leftValue">System.Single</param>
--- <param name="arg_rightValue">System.Single</param>
--- <returns>System.Single</returns>
function GUI.HorizontalScrollbar(arg_position,arg_value,arg_size,arg_leftValue,arg_rightValue)
end
--- <summary>
--- C#声明:Single HorizontalScrollbar(UnityEngine.Rect, Single, Single, Single, Single, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_size">System.Single</param>
--- <param name="arg_leftValue">System.Single</param>
--- <param name="arg_rightValue">System.Single</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Single</returns>
function GUI.HorizontalScrollbar(arg_position,arg_value,arg_size,arg_leftValue,arg_rightValue,arg_style)
end
--- <summary>
--- C#声明:Single VerticalScrollbar(UnityEngine.Rect, Single, Single, Single, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_size">System.Single</param>
--- <param name="arg_topValue">System.Single</param>
--- <param name="arg_bottomValue">System.Single</param>
--- <returns>System.Single</returns>
function GUI.VerticalScrollbar(arg_position,arg_value,arg_size,arg_topValue,arg_bottomValue)
end
--- <summary>
--- C#声明:Single VerticalScrollbar(UnityEngine.Rect, Single, Single, Single, Single, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_size">System.Single</param>
--- <param name="arg_topValue">System.Single</param>
--- <param name="arg_bottomValue">System.Single</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Single</returns>
function GUI.VerticalScrollbar(arg_position,arg_value,arg_size,arg_topValue,arg_bottomValue,arg_style)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position,arg_text)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position,arg_image)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position,arg_content)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position,arg_style)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position,arg_text,arg_style)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position,arg_image,arg_style)
end
--- <summary>
--- C#声明:Void BeginGroup(UnityEngine.Rect, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.BeginGroup(arg_position,arg_content,arg_style)
end
--- <summary>
--- C#声明:Void EndGroup()
--- </summary>
--- <returns>System.Void</returns>
function GUI.EndGroup()
end
--- <summary>
--- C#声明:Void BeginClip(UnityEngine.Rect)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function GUI.BeginClip(arg_position)
end
--- <summary>
--- C#声明:Void EndClip()
--- </summary>
--- <returns>System.Void</returns>
function GUI.EndClip()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect, UnityEngine.Vector2, UnityEngine.Rect)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_scrollPosition">UnityEngine.Vector2</param>
--- <param name="arg_viewRect">UnityEngine.Rect</param>
--- <returns>UnityEngine.Vector2</returns>
function GUI.BeginScrollView(arg_position,arg_scrollPosition,arg_viewRect)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect, UnityEngine.Vector2, UnityEngine.Rect, Boolean, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_scrollPosition">UnityEngine.Vector2</param>
--- <param name="arg_viewRect">UnityEngine.Rect</param>
--- <param name="arg_alwaysShowHorizontal">System.Boolean</param>
--- <param name="arg_alwaysShowVertical">System.Boolean</param>
--- <returns>UnityEngine.Vector2</returns>
function GUI.BeginScrollView(arg_position,arg_scrollPosition,arg_viewRect,arg_alwaysShowHorizontal,arg_alwaysShowVertical)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect, UnityEngine.Vector2, UnityEngine.Rect, UnityEngine.GUIStyle, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_scrollPosition">UnityEngine.Vector2</param>
--- <param name="arg_viewRect">UnityEngine.Rect</param>
--- <param name="arg_horizontalScrollbar">UnityEngine.GUIStyle</param>
--- <param name="arg_verticalScrollbar">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Vector2</returns>
function GUI.BeginScrollView(arg_position,arg_scrollPosition,arg_viewRect,arg_horizontalScrollbar,arg_verticalScrollbar)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect, UnityEngine.Vector2, UnityEngine.Rect, Boolean, Boolean, UnityEngine.GUIStyle, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_scrollPosition">UnityEngine.Vector2</param>
--- <param name="arg_viewRect">UnityEngine.Rect</param>
--- <param name="arg_alwaysShowHorizontal">System.Boolean</param>
--- <param name="arg_alwaysShowVertical">System.Boolean</param>
--- <param name="arg_horizontalScrollbar">UnityEngine.GUIStyle</param>
--- <param name="arg_verticalScrollbar">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Vector2</returns>
function GUI.BeginScrollView(arg_position,arg_scrollPosition,arg_viewRect,arg_alwaysShowHorizontal,arg_alwaysShowVertical,arg_horizontalScrollbar,arg_verticalScrollbar)
end
--- <summary>
--- C#声明:Void EndScrollView()
--- </summary>
--- <returns>System.Void</returns>
function GUI.EndScrollView()
end
--- <summary>
--- C#声明:Void EndScrollView(Boolean)
--- </summary>
--- <param name="arg_handleScrollWheel">System.Boolean</param>
--- <returns>System.Void</returns>
function GUI.EndScrollView(arg_handleScrollWheel)
end
--- <summary>
--- C#声明:Void ScrollTo(UnityEngine.Rect)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function GUI.ScrollTo(arg_position)
end
--- <summary>
--- C#声明:Boolean ScrollTowards(UnityEngine.Rect, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_maxDelta">System.Single</param>
--- <returns>System.Boolean</returns>
function GUI.ScrollTowards(arg_position,arg_maxDelta)
end
--- <summary>
--- C#声明:UnityEngine.Rect Window(Int32, UnityEngine.Rect, WindowFunction, System.String)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_text">System.String</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.Window(arg_id,arg_clientRect,arg_func,arg_text)
end
--- <summary>
--- C#声明:UnityEngine.Rect Window(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.Texture)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.Window(arg_id,arg_clientRect,arg_func,arg_image)
end
--- <summary>
--- C#声明:UnityEngine.Rect Window(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.Window(arg_id,arg_clientRect,arg_func,arg_content)
end
--- <summary>
--- C#声明:UnityEngine.Rect Window(Int32, UnityEngine.Rect, WindowFunction, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.Window(arg_id,arg_clientRect,arg_func,arg_text,arg_style)
end
--- <summary>
--- C#声明:UnityEngine.Rect Window(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.Window(arg_id,arg_clientRect,arg_func,arg_image,arg_style)
end
--- <summary>
--- C#声明:UnityEngine.Rect Window(Int32, UnityEngine.Rect, WindowFunction, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_title">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.Window(arg_id,arg_clientRect,arg_func,arg_title,arg_style)
end
--- <summary>
--- C#声明:UnityEngine.Rect ModalWindow(Int32, UnityEngine.Rect, WindowFunction, System.String)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_clientRect">UnityEngine.Rect</param>
--- <param name="arg_func">UnityEngine.GUI+WindowFunction</param>
--- <param name="arg_text">System.String</param>
--- <returns>UnityEngine.Rect</returns>
function GUI.ModalWindow(arg_id,arg_clientRect,arg_func,arg_text)
end
--- <summary>
--- C#声明:Void set_skin(UnityEngine.GUISkin)
--- </summary>
--- <param name="arg_value">UnityEngine.GUISkin</param>
--- <returns>System.Void</returns>
function GUI.set_skin(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUISkin get_skin()
--- </summary>
--- <returns>UnityEngine.GUISkin</returns>
function GUI.get_skin()
end
--- <summary>
--- C#声明:UnityEngine.Color get_color()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function GUI.get_color()
end
--- <summary>
--- C#声明:Void set_color(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function GUI.set_color(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Color get_backgroundColor()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function GUI.get_backgroundColor()
end
--- <summary>
--- C#声明:Void set_backgroundColor(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function GUI.set_backgroundColor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Color get_contentColor()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function GUI.get_contentColor()
end
--- <summary>
--- C#声明:Void set_contentColor(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function GUI.set_contentColor(arg_value)
end
--- <summary>
--- C#声明:Boolean get_changed()
--- </summary>
--- <returns>System.Boolean</returns>
function GUI.get_changed()
end
--- <summary>
--- C#声明:Void set_changed(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GUI.set_changed(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function GUI.get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GUI.set_enabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_matrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function GUI.get_matrix()
end
--- <summary>
--- C#声明:Void set_matrix(UnityEngine.Matrix4x4)
--- </summary>
--- <param name="arg_value">UnityEngine.Matrix4x4</param>
--- <returns>System.Void</returns>
function GUI.set_matrix(arg_value)
end
--- <summary>
--- C#声明:System.String get_tooltip()
--- </summary>
--- <returns>System.String</returns>
function GUI.get_tooltip()
end
--- <summary>
--- C#声明:Void set_tooltip(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function GUI.set_tooltip(arg_value)
end
--- <summary>
--- C#声明:Int32 get_depth()
--- </summary>
--- <returns>System.Int32</returns>
function GUI.get_depth()
end
--- <summary>
--- C#声明:Void set_depth(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function GUI.set_depth(arg_value)
end
--- <summary>
--- C#声明:Void Label(UnityEngine.Rect, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.Void</returns>
function GUI.Label(arg_position,arg_text)
end
--- <summary>
--- C#声明:Void Label(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function GUI.Label(arg_position,arg_image)
end
--- <summary>
--- C#声明:Void Label(UnityEngine.Rect, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>System.Void</returns>
function GUI.Label(arg_position,arg_content)
end
--- <summary>
--- C#声明:Void Label(UnityEngine.Rect, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.Label(arg_position,arg_text,arg_style)
end
--- <summary>
--- C#声明:Void Label(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.Label(arg_position,arg_image,arg_style)
end
--- <summary>
--- C#声明:Void Label(UnityEngine.Rect, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.Label(arg_position,arg_content,arg_style)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.ScaleMode, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_scaleMode">UnityEngine.ScaleMode</param>
--- <param name="arg_alphaBlend">System.Boolean</param>
--- <returns>System.Void</returns>
function GUI.DrawTexture(arg_position,arg_image,arg_scaleMode,arg_alphaBlend)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.ScaleMode)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_scaleMode">UnityEngine.ScaleMode</param>
--- <returns>System.Void</returns>
function GUI.DrawTexture(arg_position,arg_image,arg_scaleMode)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function GUI.DrawTexture(arg_position,arg_image)
end
--- <summary>
--- C#声明:Void DrawTexture(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.ScaleMode, Boolean, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_scaleMode">UnityEngine.ScaleMode</param>
--- <param name="arg_alphaBlend">System.Boolean</param>
--- <param name="arg_imageAspect">System.Single</param>
--- <returns>System.Void</returns>
function GUI.DrawTexture(arg_position,arg_image,arg_scaleMode,arg_alphaBlend,arg_imageAspect)
end
--- <summary>
--- C#声明:Void DrawTextureWithTexCoords(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Rect)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_texCoords">UnityEngine.Rect</param>
--- <returns>System.Void</returns>
function GUI.DrawTextureWithTexCoords(arg_position,arg_image,arg_texCoords)
end
--- <summary>
--- C#声明:Void DrawTextureWithTexCoords(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.Rect, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_texCoords">UnityEngine.Rect</param>
--- <param name="arg_alphaBlend">System.Boolean</param>
--- <returns>System.Void</returns>
function GUI.DrawTextureWithTexCoords(arg_position,arg_image,arg_texCoords,arg_alphaBlend)
end
--- <summary>
--- C#声明:Void Box(UnityEngine.Rect, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.Void</returns>
function GUI.Box(arg_position,arg_text)
end
--- <summary>
--- C#声明:Void Box(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>System.Void</returns>
function GUI.Box(arg_position,arg_image)
end
--- <summary>
--- C#声明:Void Box(UnityEngine.Rect, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>System.Void</returns>
function GUI.Box(arg_position,arg_content)
end
--- <summary>
--- C#声明:Void Box(UnityEngine.Rect, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.Box(arg_position,arg_text,arg_style)
end
--- <summary>
--- C#声明:Void Box(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.Box(arg_position,arg_image,arg_style)
end
--- <summary>
--- C#声明:Void Box(UnityEngine.Rect, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Void</returns>
function GUI.Box(arg_position,arg_content,arg_style)
end
--- <summary>
--- C#声明:Boolean Button(UnityEngine.Rect, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.Boolean</returns>
function GUI.Button(arg_position,arg_text)
end
--- <summary>
--- C#声明:Boolean Button(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>System.Boolean</returns>
function GUI.Button(arg_position,arg_image)
end
--- <summary>
--- C#声明:Boolean Button(UnityEngine.Rect, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>System.Boolean</returns>
function GUI.Button(arg_position,arg_content)
end
--- <summary>
--- C#声明:Boolean Button(UnityEngine.Rect, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.Button(arg_position,arg_text,arg_style)
end
--- <summary>
--- C#声明:Boolean Button(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.Button(arg_position,arg_image,arg_style)
end
--- <summary>
--- C#声明:Boolean Button(UnityEngine.Rect, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.Button(arg_position,arg_content,arg_style)
end
--- <summary>
--- C#声明:Boolean RepeatButton(UnityEngine.Rect, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.Boolean</returns>
function GUI.RepeatButton(arg_position,arg_text)
end
--- <summary>
--- C#声明:Boolean RepeatButton(UnityEngine.Rect, UnityEngine.Texture)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <returns>System.Boolean</returns>
function GUI.RepeatButton(arg_position,arg_image)
end
--- <summary>
--- C#声明:Boolean RepeatButton(UnityEngine.Rect, UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>System.Boolean</returns>
function GUI.RepeatButton(arg_position,arg_content)
end
--- <summary>
--- C#声明:Boolean RepeatButton(UnityEngine.Rect, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.RepeatButton(arg_position,arg_text,arg_style)
end
--- <summary>
--- C#声明:Boolean RepeatButton(UnityEngine.Rect, UnityEngine.Texture, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.RepeatButton(arg_position,arg_image,arg_style)
end
--- <summary>
--- C#声明:Boolean RepeatButton(UnityEngine.Rect, UnityEngine.GUIContent, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.Boolean</returns>
function GUI.RepeatButton(arg_position,arg_content,arg_style)
end
--- <summary>
--- C#声明:System.String TextField(UnityEngine.Rect, System.String)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <returns>System.String</returns>
function GUI.TextField(arg_position,arg_text)
end
--- <summary>
--- C#声明:System.String TextField(UnityEngine.Rect, System.String, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_maxLength">System.Int32</param>
--- <returns>System.String</returns>
function GUI.TextField(arg_position,arg_text,arg_maxLength)
end
--- <summary>
--- C#声明:System.String TextField(UnityEngine.Rect, System.String, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.String</returns>
function GUI.TextField(arg_position,arg_text,arg_style)
end
--- <summary>
--- C#声明:System.String TextField(UnityEngine.Rect, System.String, Int32, UnityEngine.GUIStyle)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_maxLength">System.Int32</param>
--- <param name="arg_style">UnityEngine.GUIStyle</param>
--- <returns>System.String</returns>
function GUI.TextField(arg_position,arg_text,arg_maxLength,arg_style)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function GUI:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function GUI:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function GUI:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function GUI:GetType()
end

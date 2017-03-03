--create by yangxun
TouchScreenKeyboard={}

--- <summary>
--- 属性:Boolean
--- </summary>
TouchScreenKeyboard.isSupported=nil
--- <summary>
--- 属性:String
--- </summary>
TouchScreenKeyboard.text=nil
--- <summary>
--- 属性:Boolean
--- </summary>
TouchScreenKeyboard.hideInput=nil
--- <summary>
--- 属性:Boolean
--- </summary>
TouchScreenKeyboard.active=nil
--- <summary>
--- 属性:Boolean
--- </summary>
TouchScreenKeyboard.done=nil
--- <summary>
--- 属性:Boolean
--- </summary>
TouchScreenKeyboard.wasCanceled=nil
--- <summary>
--- 属性:Rect
--- </summary>
TouchScreenKeyboard.area=nil
--- <summary>
--- 属性:Boolean
--- </summary>
TouchScreenKeyboard.visible=nil
--- <summary>
--- C#声明:Boolean get_isSupported()
--- </summary>
--- <returns>System.Boolean</returns>
function TouchScreenKeyboard.get_isSupported()
end
--- <summary>
--- C#声明:UnityEngine.TouchScreenKeyboard Open(System.String, UnityEngine.TouchScreenKeyboardType, Boolean, Boolean, Boolean, Boolean)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <param name="arg_keyboardType">UnityEngine.TouchScreenKeyboardType</param>
--- <param name="arg_autocorrection">System.Boolean</param>
--- <param name="arg_multiline">System.Boolean</param>
--- <param name="arg_secure">System.Boolean</param>
--- <param name="arg_alert">System.Boolean</param>
--- <returns>UnityEngine.TouchScreenKeyboard</returns>
function TouchScreenKeyboard.Open(arg_text,arg_keyboardType,arg_autocorrection,arg_multiline,arg_secure,arg_alert)
end
--- <summary>
--- C#声明:UnityEngine.TouchScreenKeyboard Open(System.String, UnityEngine.TouchScreenKeyboardType, Boolean, Boolean, Boolean)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <param name="arg_keyboardType">UnityEngine.TouchScreenKeyboardType</param>
--- <param name="arg_autocorrection">System.Boolean</param>
--- <param name="arg_multiline">System.Boolean</param>
--- <param name="arg_secure">System.Boolean</param>
--- <returns>UnityEngine.TouchScreenKeyboard</returns>
function TouchScreenKeyboard.Open(arg_text,arg_keyboardType,arg_autocorrection,arg_multiline,arg_secure)
end
--- <summary>
--- C#声明:UnityEngine.TouchScreenKeyboard Open(System.String, UnityEngine.TouchScreenKeyboardType, Boolean, Boolean)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <param name="arg_keyboardType">UnityEngine.TouchScreenKeyboardType</param>
--- <param name="arg_autocorrection">System.Boolean</param>
--- <param name="arg_multiline">System.Boolean</param>
--- <returns>UnityEngine.TouchScreenKeyboard</returns>
function TouchScreenKeyboard.Open(arg_text,arg_keyboardType,arg_autocorrection,arg_multiline)
end
--- <summary>
--- C#声明:UnityEngine.TouchScreenKeyboard Open(System.String, UnityEngine.TouchScreenKeyboardType, Boolean)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <param name="arg_keyboardType">UnityEngine.TouchScreenKeyboardType</param>
--- <param name="arg_autocorrection">System.Boolean</param>
--- <returns>UnityEngine.TouchScreenKeyboard</returns>
function TouchScreenKeyboard.Open(arg_text,arg_keyboardType,arg_autocorrection)
end
--- <summary>
--- C#声明:UnityEngine.TouchScreenKeyboard Open(System.String, UnityEngine.TouchScreenKeyboardType)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <param name="arg_keyboardType">UnityEngine.TouchScreenKeyboardType</param>
--- <returns>UnityEngine.TouchScreenKeyboard</returns>
function TouchScreenKeyboard.Open(arg_text,arg_keyboardType)
end
--- <summary>
--- C#声明:UnityEngine.TouchScreenKeyboard Open(System.String)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <returns>UnityEngine.TouchScreenKeyboard</returns>
function TouchScreenKeyboard.Open(arg_text)
end
--- <summary>
--- C#声明:UnityEngine.TouchScreenKeyboard Open(System.String, UnityEngine.TouchScreenKeyboardType, Boolean, Boolean, Boolean, Boolean, System.String)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <param name="arg_keyboardType">UnityEngine.TouchScreenKeyboardType</param>
--- <param name="arg_autocorrection">System.Boolean</param>
--- <param name="arg_multiline">System.Boolean</param>
--- <param name="arg_secure">System.Boolean</param>
--- <param name="arg_alert">System.Boolean</param>
--- <param name="arg_textPlaceholder">System.String</param>
--- <returns>UnityEngine.TouchScreenKeyboard</returns>
function TouchScreenKeyboard.Open(arg_text,arg_keyboardType,arg_autocorrection,arg_multiline,arg_secure,arg_alert,arg_textPlaceholder)
end
--- <summary>
--- C#声明:System.String get_text()
--- </summary>
--- <returns>System.String</returns>
function TouchScreenKeyboard:get_text()
end
--- <summary>
--- C#声明:Void set_text(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function TouchScreenKeyboard:set_text(arg_value)
end
--- <summary>
--- C#声明:Boolean get_hideInput()
--- </summary>
--- <returns>System.Boolean</returns>
function TouchScreenKeyboard.get_hideInput()
end
--- <summary>
--- C#声明:Void set_hideInput(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function TouchScreenKeyboard.set_hideInput(arg_value)
end
--- <summary>
--- C#声明:Boolean get_active()
--- </summary>
--- <returns>System.Boolean</returns>
function TouchScreenKeyboard:get_active()
end
--- <summary>
--- C#声明:Void set_active(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function TouchScreenKeyboard:set_active(arg_value)
end
--- <summary>
--- C#声明:Boolean get_done()
--- </summary>
--- <returns>System.Boolean</returns>
function TouchScreenKeyboard:get_done()
end
--- <summary>
--- C#声明:Boolean get_wasCanceled()
--- </summary>
--- <returns>System.Boolean</returns>
function TouchScreenKeyboard:get_wasCanceled()
end
--- <summary>
--- C#声明:UnityEngine.Rect get_area()
--- </summary>
--- <returns>UnityEngine.Rect</returns>
function TouchScreenKeyboard.get_area()
end
--- <summary>
--- C#声明:Boolean get_visible()
--- </summary>
--- <returns>System.Boolean</returns>
function TouchScreenKeyboard.get_visible()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function TouchScreenKeyboard:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function TouchScreenKeyboard:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function TouchScreenKeyboard:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function TouchScreenKeyboard:GetType()
end

--create by yangxun
Input={}

--- <summary>
--- 属性:Boolean
--- </summary>
Input.compensateSensors=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.isGyroAvailable=nil
--- <summary>
--- 属性:Gyroscope
--- </summary>
Input.gyro=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Input.mousePosition=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Input.mouseScrollDelta=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.mousePresent=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.simulateMouseWithTouches=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.anyKey=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.anyKeyDown=nil
--- <summary>
--- 属性:String
--- </summary>
Input.inputString=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Input.acceleration=nil
--- <summary>
--- 属性:AccelerationEvent[]
--- </summary>
Input.accelerationEvents=nil
--- <summary>
--- 属性:Int32
--- </summary>
Input.accelerationEventCount=nil
--- <summary>
--- 属性:Touch[]
--- </summary>
Input.touches=nil
--- <summary>
--- 属性:Int32
--- </summary>
Input.touchCount=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.eatKeyPressOnTextFieldFocus=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.touchSupported=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.multiTouchEnabled=nil
--- <summary>
--- 属性:LocationService
--- </summary>
Input.location=nil
--- <summary>
--- 属性:Compass
--- </summary>
Input.compass=nil
--- <summary>
--- 属性:DeviceOrientation
--- </summary>
Input.deviceOrientation=nil
--- <summary>
--- 属性:IMECompositionMode
--- </summary>
Input.imeCompositionMode=nil
--- <summary>
--- 属性:String
--- </summary>
Input.compositionString=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Input.imeIsSelected=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Input.compositionCursorPos=nil
--- <summary>
--- C#声明:Single GetAxis(System.String)
--- </summary>
--- <param name="arg_axisName">System.String</param>
--- <returns>System.Single</returns>
function Input.GetAxis(arg_axisName)
end
--- <summary>
--- C#声明:Single GetAxisRaw(System.String)
--- </summary>
--- <param name="arg_axisName">System.String</param>
--- <returns>System.Single</returns>
function Input.GetAxisRaw(arg_axisName)
end
--- <summary>
--- C#声明:Boolean GetButton(System.String)
--- </summary>
--- <param name="arg_buttonName">System.String</param>
--- <returns>System.Boolean</returns>
function Input.GetButton(arg_buttonName)
end
--- <summary>
--- C#声明:Boolean get_compensateSensors()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_compensateSensors()
end
--- <summary>
--- C#声明:Void set_compensateSensors(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Input.set_compensateSensors(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isGyroAvailable()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_isGyroAvailable()
end
--- <summary>
--- C#声明:UnityEngine.Gyroscope get_gyro()
--- </summary>
--- <returns>UnityEngine.Gyroscope</returns>
function Input.get_gyro()
end
--- <summary>
--- C#声明:Boolean GetButtonDown(System.String)
--- </summary>
--- <param name="arg_buttonName">System.String</param>
--- <returns>System.Boolean</returns>
function Input.GetButtonDown(arg_buttonName)
end
--- <summary>
--- C#声明:Boolean GetButtonUp(System.String)
--- </summary>
--- <param name="arg_buttonName">System.String</param>
--- <returns>System.Boolean</returns>
function Input.GetButtonUp(arg_buttonName)
end
--- <summary>
--- C#声明:Boolean GetKey(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function Input.GetKey(arg_name)
end
--- <summary>
--- C#声明:Boolean GetKey(UnityEngine.KeyCode)
--- </summary>
--- <param name="arg_key">UnityEngine.KeyCode</param>
--- <returns>System.Boolean</returns>
function Input.GetKey(arg_key)
end
--- <summary>
--- C#声明:Boolean GetKeyDown(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function Input.GetKeyDown(arg_name)
end
--- <summary>
--- C#声明:Boolean GetKeyDown(UnityEngine.KeyCode)
--- </summary>
--- <param name="arg_key">UnityEngine.KeyCode</param>
--- <returns>System.Boolean</returns>
function Input.GetKeyDown(arg_key)
end
--- <summary>
--- C#声明:Boolean GetKeyUp(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function Input.GetKeyUp(arg_name)
end
--- <summary>
--- C#声明:Boolean GetKeyUp(UnityEngine.KeyCode)
--- </summary>
--- <param name="arg_key">UnityEngine.KeyCode</param>
--- <returns>System.Boolean</returns>
function Input.GetKeyUp(arg_key)
end
--- <summary>
--- C#声明:System.String[] GetJoystickNames()
--- </summary>
--- <returns>System.String[]</returns>
function Input.GetJoystickNames()
end
--- <summary>
--- C#声明:Boolean IsJoystickPreconfigured(System.String)
--- </summary>
--- <param name="arg_joystickName">System.String</param>
--- <returns>System.Boolean</returns>
function Input.IsJoystickPreconfigured(arg_joystickName)
end
--- <summary>
--- C#声明:Boolean GetMouseButton(Int32)
--- </summary>
--- <param name="arg_button">System.Int32</param>
--- <returns>System.Boolean</returns>
function Input.GetMouseButton(arg_button)
end
--- <summary>
--- C#声明:Boolean GetMouseButtonDown(Int32)
--- </summary>
--- <param name="arg_button">System.Int32</param>
--- <returns>System.Boolean</returns>
function Input.GetMouseButtonDown(arg_button)
end
--- <summary>
--- C#声明:Boolean GetMouseButtonUp(Int32)
--- </summary>
--- <param name="arg_button">System.Int32</param>
--- <returns>System.Boolean</returns>
function Input.GetMouseButtonUp(arg_button)
end
--- <summary>
--- C#声明:Void ResetInputAxes()
--- </summary>
--- <returns>System.Void</returns>
function Input.ResetInputAxes()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_mousePosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Input.get_mousePosition()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_mouseScrollDelta()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Input.get_mouseScrollDelta()
end
--- <summary>
--- C#声明:Boolean get_mousePresent()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_mousePresent()
end
--- <summary>
--- C#声明:Boolean get_simulateMouseWithTouches()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_simulateMouseWithTouches()
end
--- <summary>
--- C#声明:Void set_simulateMouseWithTouches(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Input.set_simulateMouseWithTouches(arg_value)
end
--- <summary>
--- C#声明:Boolean get_anyKey()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_anyKey()
end
--- <summary>
--- C#声明:Boolean get_anyKeyDown()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_anyKeyDown()
end
--- <summary>
--- C#声明:System.String get_inputString()
--- </summary>
--- <returns>System.String</returns>
function Input.get_inputString()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_acceleration()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Input.get_acceleration()
end
--- <summary>
--- C#声明:UnityEngine.AccelerationEvent[] get_accelerationEvents()
--- </summary>
--- <returns>UnityEngine.AccelerationEvent[]</returns>
function Input.get_accelerationEvents()
end
--- <summary>
--- C#声明:UnityEngine.AccelerationEvent GetAccelerationEvent(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.AccelerationEvent</returns>
function Input.GetAccelerationEvent(arg_index)
end
--- <summary>
--- C#声明:Int32 get_accelerationEventCount()
--- </summary>
--- <returns>System.Int32</returns>
function Input.get_accelerationEventCount()
end
--- <summary>
--- C#声明:UnityEngine.Touch[] get_touches()
--- </summary>
--- <returns>UnityEngine.Touch[]</returns>
function Input.get_touches()
end
--- <summary>
--- C#声明:UnityEngine.Touch GetTouch(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.Touch</returns>
function Input.GetTouch(arg_index)
end
--- <summary>
--- C#声明:Int32 get_touchCount()
--- </summary>
--- <returns>System.Int32</returns>
function Input.get_touchCount()
end
--- <summary>
--- C#声明:Boolean get_eatKeyPressOnTextFieldFocus()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_eatKeyPressOnTextFieldFocus()
end
--- <summary>
--- C#声明:Void set_eatKeyPressOnTextFieldFocus(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Input.set_eatKeyPressOnTextFieldFocus(arg_value)
end
--- <summary>
--- C#声明:Boolean get_touchSupported()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_touchSupported()
end
--- <summary>
--- C#声明:Boolean get_multiTouchEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_multiTouchEnabled()
end
--- <summary>
--- C#声明:Void set_multiTouchEnabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Input.set_multiTouchEnabled(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.LocationService get_location()
--- </summary>
--- <returns>UnityEngine.LocationService</returns>
function Input.get_location()
end
--- <summary>
--- C#声明:UnityEngine.Compass get_compass()
--- </summary>
--- <returns>UnityEngine.Compass</returns>
function Input.get_compass()
end
--- <summary>
--- C#声明:UnityEngine.DeviceOrientation get_deviceOrientation()
--- </summary>
--- <returns>UnityEngine.DeviceOrientation</returns>
function Input.get_deviceOrientation()
end
--- <summary>
--- C#声明:UnityEngine.Quaternion GetRotation(Int32)
--- </summary>
--- <param name="arg_deviceID">System.Int32</param>
--- <returns>UnityEngine.Quaternion</returns>
function Input.GetRotation(arg_deviceID)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 GetPosition(Int32)
--- </summary>
--- <param name="arg_deviceID">System.Int32</param>
--- <returns>UnityEngine.Vector3</returns>
function Input.GetPosition(arg_deviceID)
end
--- <summary>
--- C#声明:UnityEngine.IMECompositionMode get_imeCompositionMode()
--- </summary>
--- <returns>UnityEngine.IMECompositionMode</returns>
function Input.get_imeCompositionMode()
end
--- <summary>
--- C#声明:Void set_imeCompositionMode(UnityEngine.IMECompositionMode)
--- </summary>
--- <param name="arg_value">UnityEngine.IMECompositionMode</param>
--- <returns>System.Void</returns>
function Input.set_imeCompositionMode(arg_value)
end
--- <summary>
--- C#声明:System.String get_compositionString()
--- </summary>
--- <returns>System.String</returns>
function Input.get_compositionString()
end
--- <summary>
--- C#声明:Boolean get_imeIsSelected()
--- </summary>
--- <returns>System.Boolean</returns>
function Input.get_imeIsSelected()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_compositionCursorPos()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Input.get_compositionCursorPos()
end
--- <summary>
--- C#声明:Void set_compositionCursorPos(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function Input.set_compositionCursorPos(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Input:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Input:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Input:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Input:GetType()
end

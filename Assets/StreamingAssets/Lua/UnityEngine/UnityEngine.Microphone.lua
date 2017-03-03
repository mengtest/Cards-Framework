--create by yangxun
Microphone={}

--- <summary>
--- 属性:String[]
--- </summary>
Microphone.devices=nil
--- <summary>
--- C#声明:UnityEngine.AudioClip Start(System.String, Boolean, Int32, Int32)
--- </summary>
--- <param name="arg_deviceName">System.String</param>
--- <param name="arg_loop">System.Boolean</param>
--- <param name="arg_lengthSec">System.Int32</param>
--- <param name="arg_frequency">System.Int32</param>
--- <returns>UnityEngine.AudioClip</returns>
function Microphone.Start(arg_deviceName,arg_loop,arg_lengthSec,arg_frequency)
end
--- <summary>
--- C#声明:Void End(System.String)
--- </summary>
--- <param name="arg_deviceName">System.String</param>
--- <returns>System.Void</returns>
function Microphone.End(arg_deviceName)
end
--- <summary>
--- C#声明:System.String[] get_devices()
--- </summary>
--- <returns>System.String[]</returns>
function Microphone.get_devices()
end
--- <summary>
--- C#声明:Boolean IsRecording(System.String)
--- </summary>
--- <param name="arg_deviceName">System.String</param>
--- <returns>System.Boolean</returns>
function Microphone.IsRecording(arg_deviceName)
end
--- <summary>
--- C#声明:Int32 GetPosition(System.String)
--- </summary>
--- <param name="arg_deviceName">System.String</param>
--- <returns>System.Int32</returns>
function Microphone.GetPosition(arg_deviceName)
end
--- <summary>
--- C#声明:Void GetDeviceCaps(System.String, Int32 ByRef, Int32 ByRef)
--- </summary>
--- <param name="arg_deviceName">System.String</param>
--- <param name="arg_minFreq">System.Int32&</param>
--- <param name="arg_maxFreq">System.Int32&</param>
--- <returns>System.Void</returns>
function Microphone.GetDeviceCaps(arg_deviceName,arg_minFreq,arg_maxFreq)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Microphone:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Microphone:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Microphone:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Microphone:GetType()
end

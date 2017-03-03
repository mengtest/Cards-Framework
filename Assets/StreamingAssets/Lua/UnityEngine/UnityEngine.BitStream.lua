--create by yangxun
BitStream={}

--- <summary>
--- 属性:Boolean
--- </summary>
BitStream.isReading=nil
--- <summary>
--- 属性:Boolean
--- </summary>
BitStream.isWriting=nil
--- <summary>
--- C#声明:Void Serialize(Boolean ByRef)
--- </summary>
--- <param name="arg_value">System.Boolean&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(Char ByRef)
--- </summary>
--- <param name="arg_value">System.Char&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(Int16 ByRef)
--- </summary>
--- <param name="arg_value">System.Int16&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(Int32 ByRef)
--- </summary>
--- <param name="arg_value">System.Int32&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(Single ByRef)
--- </summary>
--- <param name="arg_value">System.Single&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(Single ByRef, Single)
--- </summary>
--- <param name="arg_value">System.Single&</param>
--- <param name="arg_maxDelta">System.Single</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value,arg_maxDelta)
end
--- <summary>
--- C#声明:Void Serialize(UnityEngine.Quaternion ByRef)
--- </summary>
--- <param name="arg_value">UnityEngine.Quaternion&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(UnityEngine.Quaternion ByRef, Single)
--- </summary>
--- <param name="arg_value">UnityEngine.Quaternion&</param>
--- <param name="arg_maxDelta">System.Single</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value,arg_maxDelta)
end
--- <summary>
--- C#声明:Void Serialize(UnityEngine.Vector3 ByRef)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(UnityEngine.Vector3 ByRef, Single)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3&</param>
--- <param name="arg_maxDelta">System.Single</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value,arg_maxDelta)
end
--- <summary>
--- C#声明:Void Serialize(UnityEngine.NetworkPlayer ByRef)
--- </summary>
--- <param name="arg_value">UnityEngine.NetworkPlayer&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_value)
end
--- <summary>
--- C#声明:Void Serialize(UnityEngine.NetworkViewID ByRef)
--- </summary>
--- <param name="arg_viewID">UnityEngine.NetworkViewID&</param>
--- <returns>System.Void</returns>
function BitStream:Serialize(arg_viewID)
end
--- <summary>
--- C#声明:Boolean get_isReading()
--- </summary>
--- <returns>System.Boolean</returns>
function BitStream:get_isReading()
end
--- <summary>
--- C#声明:Boolean get_isWriting()
--- </summary>
--- <returns>System.Boolean</returns>
function BitStream:get_isWriting()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function BitStream:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function BitStream:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function BitStream:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function BitStream:GetType()
end

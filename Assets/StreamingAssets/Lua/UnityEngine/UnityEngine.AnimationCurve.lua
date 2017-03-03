--create by yangxun
AnimationCurve={}

--- <summary>
--- 属性:Keyframe[]
--- </summary>
AnimationCurve.keys=nil
--- <summary>
--- 属性:Keyframe
--- </summary>
AnimationCurve.Item=nil
--- <summary>
--- 属性:Int32
--- </summary>
AnimationCurve.length=nil
--- <summary>
--- 属性:WrapMode
--- </summary>
AnimationCurve.preWrapMode=nil
--- <summary>
--- 属性:WrapMode
--- </summary>
AnimationCurve.postWrapMode=nil
--- <summary>
--- C#声明:Single Evaluate(Single)
--- </summary>
--- <param name="arg_time">System.Single</param>
--- <returns>System.Single</returns>
function AnimationCurve:Evaluate(arg_time)
end
--- <summary>
--- C#声明:UnityEngine.Keyframe[] get_keys()
--- </summary>
--- <returns>UnityEngine.Keyframe[]</returns>
function AnimationCurve:get_keys()
end
--- <summary>
--- C#声明:Void set_keys(UnityEngine.Keyframe[])
--- </summary>
--- <param name="arg_value">UnityEngine.Keyframe[]</param>
--- <returns>System.Void</returns>
function AnimationCurve:set_keys(arg_value)
end
--- <summary>
--- C#声明:Int32 AddKey(Single, Single)
--- </summary>
--- <param name="arg_time">System.Single</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Int32</returns>
function AnimationCurve:AddKey(arg_time,arg_value)
end
--- <summary>
--- C#声明:Int32 AddKey(UnityEngine.Keyframe)
--- </summary>
--- <param name="arg_key">UnityEngine.Keyframe</param>
--- <returns>System.Int32</returns>
function AnimationCurve:AddKey(arg_key)
end
--- <summary>
--- C#声明:Int32 MoveKey(Int32, UnityEngine.Keyframe)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_key">UnityEngine.Keyframe</param>
--- <returns>System.Int32</returns>
function AnimationCurve:MoveKey(arg_index,arg_key)
end
--- <summary>
--- C#声明:Void RemoveKey(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Void</returns>
function AnimationCurve:RemoveKey(arg_index)
end
--- <summary>
--- C#声明:UnityEngine.Keyframe get_Item(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.Keyframe</returns>
function AnimationCurve:get_Item(arg_index)
end
--- <summary>
--- C#声明:Int32 get_length()
--- </summary>
--- <returns>System.Int32</returns>
function AnimationCurve:get_length()
end
--- <summary>
--- C#声明:Void SmoothTangents(Int32, Single)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_weight">System.Single</param>
--- <returns>System.Void</returns>
function AnimationCurve:SmoothTangents(arg_index,arg_weight)
end
--- <summary>
--- C#声明:UnityEngine.AnimationCurve Linear(Single, Single, Single, Single)
--- </summary>
--- <param name="arg_timeStart">System.Single</param>
--- <param name="arg_valueStart">System.Single</param>
--- <param name="arg_timeEnd">System.Single</param>
--- <param name="arg_valueEnd">System.Single</param>
--- <returns>UnityEngine.AnimationCurve</returns>
function AnimationCurve.Linear(arg_timeStart,arg_valueStart,arg_timeEnd,arg_valueEnd)
end
--- <summary>
--- C#声明:UnityEngine.AnimationCurve EaseInOut(Single, Single, Single, Single)
--- </summary>
--- <param name="arg_timeStart">System.Single</param>
--- <param name="arg_valueStart">System.Single</param>
--- <param name="arg_timeEnd">System.Single</param>
--- <param name="arg_valueEnd">System.Single</param>
--- <returns>UnityEngine.AnimationCurve</returns>
function AnimationCurve.EaseInOut(arg_timeStart,arg_valueStart,arg_timeEnd,arg_valueEnd)
end
--- <summary>
--- C#声明:UnityEngine.WrapMode get_preWrapMode()
--- </summary>
--- <returns>UnityEngine.WrapMode</returns>
function AnimationCurve:get_preWrapMode()
end
--- <summary>
--- C#声明:Void set_preWrapMode(UnityEngine.WrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.WrapMode</param>
--- <returns>System.Void</returns>
function AnimationCurve:set_preWrapMode(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.WrapMode get_postWrapMode()
--- </summary>
--- <returns>UnityEngine.WrapMode</returns>
function AnimationCurve:get_postWrapMode()
end
--- <summary>
--- C#声明:Void set_postWrapMode(UnityEngine.WrapMode)
--- </summary>
--- <param name="arg_value">UnityEngine.WrapMode</param>
--- <returns>System.Void</returns>
function AnimationCurve:set_postWrapMode(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function AnimationCurve:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function AnimationCurve:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function AnimationCurve:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function AnimationCurve:GetType()
end

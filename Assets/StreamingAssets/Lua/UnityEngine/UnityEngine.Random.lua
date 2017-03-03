--create by yangxun
Random={}

--- <summary>
--- 属性:Int32
--- </summary>
Random.seed=nil
--- <summary>
--- 属性:Single
--- </summary>
Random.value=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Random.insideUnitSphere=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Random.insideUnitCircle=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Random.onUnitSphere=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Random.rotation=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Random.rotationUniform=nil
--- <summary>
--- C#声明:Int32 get_seed()
--- </summary>
--- <returns>System.Int32</returns>
function Random.get_seed()
end
--- <summary>
--- C#声明:Void set_seed(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Random.set_seed(arg_value)
end
--- <summary>
--- C#声明:Single Range(Single, Single)
--- </summary>
--- <param name="arg_min">System.Single</param>
--- <param name="arg_max">System.Single</param>
--- <returns>System.Single</returns>
function Random.Range(arg_min,arg_max)
end
--- <summary>
--- C#声明:Int32 Range(Int32, Int32)
--- </summary>
--- <param name="arg_min">System.Int32</param>
--- <param name="arg_max">System.Int32</param>
--- <returns>System.Int32</returns>
function Random.Range(arg_min,arg_max)
end
--- <summary>
--- C#声明:Single get_value()
--- </summary>
--- <returns>System.Single</returns>
function Random.get_value()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_insideUnitSphere()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Random.get_insideUnitSphere()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_insideUnitCircle()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Random.get_insideUnitCircle()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_onUnitSphere()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Random.get_onUnitSphere()
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_rotation()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Random.get_rotation()
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_rotationUniform()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Random.get_rotationUniform()
end
--- <summary>
--- C#声明:Single RandomRange(Single, Single)
--- </summary>
--- <param name="arg_min">System.Single</param>
--- <param name="arg_max">System.Single</param>
--- <returns>System.Single</returns>
function Random.RandomRange(arg_min,arg_max)
end
--- <summary>
--- C#声明:Int32 RandomRange(Int32, Int32)
--- </summary>
--- <param name="arg_min">System.Int32</param>
--- <param name="arg_max">System.Int32</param>
--- <returns>System.Int32</returns>
function Random.RandomRange(arg_min,arg_max)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Random:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Random:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Random:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Random:GetType()
end

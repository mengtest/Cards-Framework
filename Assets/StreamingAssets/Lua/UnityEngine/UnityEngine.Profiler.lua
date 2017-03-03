--create by yangxun
Profiler={}

--- <summary>
--- 属性:Boolean
--- </summary>
Profiler.supported=nil
--- <summary>
--- 属性:String
--- </summary>
Profiler.logFile=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Profiler.enableBinaryLog=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Profiler.enabled=nil
--- <summary>
--- 属性:Int32
--- </summary>
Profiler.maxNumberOfSamplesPerFrame=nil
--- <summary>
--- 属性:UInt32
--- </summary>
Profiler.usedHeapSize=nil
--- <summary>
--- C#声明:Boolean get_supported()
--- </summary>
--- <returns>System.Boolean</returns>
function Profiler.get_supported()
end
--- <summary>
--- C#声明:System.String get_logFile()
--- </summary>
--- <returns>System.String</returns>
function Profiler.get_logFile()
end
--- <summary>
--- C#声明:Void set_logFile(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Profiler.set_logFile(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enableBinaryLog()
--- </summary>
--- <returns>System.Boolean</returns>
function Profiler.get_enableBinaryLog()
end
--- <summary>
--- C#声明:Void set_enableBinaryLog(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Profiler.set_enableBinaryLog(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Profiler.get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Profiler.set_enabled(arg_value)
end
--- <summary>
--- C#声明:Void AddFramesFromFile(System.String)
--- </summary>
--- <param name="arg_file">System.String</param>
--- <returns>System.Void</returns>
function Profiler.AddFramesFromFile(arg_file)
end
--- <summary>
--- C#声明:Void BeginSample(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Profiler.BeginSample(arg_name)
end
--- <summary>
--- C#声明:Void BeginSample(System.String, UnityEngine.Object)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_targetObject">UnityEngine.Object</param>
--- <returns>System.Void</returns>
function Profiler.BeginSample(arg_name,arg_targetObject)
end
--- <summary>
--- C#声明:Void EndSample()
--- </summary>
--- <returns>System.Void</returns>
function Profiler.EndSample()
end
--- <summary>
--- C#声明:Int32 get_maxNumberOfSamplesPerFrame()
--- </summary>
--- <returns>System.Int32</returns>
function Profiler.get_maxNumberOfSamplesPerFrame()
end
--- <summary>
--- C#声明:Void set_maxNumberOfSamplesPerFrame(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Profiler.set_maxNumberOfSamplesPerFrame(arg_value)
end
--- <summary>
--- C#声明:UInt32 get_usedHeapSize()
--- </summary>
--- <returns>System.UInt32</returns>
function Profiler.get_usedHeapSize()
end
--- <summary>
--- C#声明:Int32 GetRuntimeMemorySize(UnityEngine.Object)
--- </summary>
--- <param name="arg_o">UnityEngine.Object</param>
--- <returns>System.Int32</returns>
function Profiler.GetRuntimeMemorySize(arg_o)
end
--- <summary>
--- C#声明:UInt32 GetMonoHeapSize()
--- </summary>
--- <returns>System.UInt32</returns>
function Profiler.GetMonoHeapSize()
end
--- <summary>
--- C#声明:UInt32 GetMonoUsedSize()
--- </summary>
--- <returns>System.UInt32</returns>
function Profiler.GetMonoUsedSize()
end
--- <summary>
--- C#声明:UInt32 GetTotalAllocatedMemory()
--- </summary>
--- <returns>System.UInt32</returns>
function Profiler.GetTotalAllocatedMemory()
end
--- <summary>
--- C#声明:UInt32 GetTotalUnusedReservedMemory()
--- </summary>
--- <returns>System.UInt32</returns>
function Profiler.GetTotalUnusedReservedMemory()
end
--- <summary>
--- C#声明:UInt32 GetTotalReservedMemory()
--- </summary>
--- <returns>System.UInt32</returns>
function Profiler.GetTotalReservedMemory()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Profiler:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Profiler:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Profiler:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Profiler:GetType()
end

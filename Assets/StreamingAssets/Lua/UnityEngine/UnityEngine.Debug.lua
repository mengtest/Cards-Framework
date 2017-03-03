--create by yangxun
Debug={}

--- <summary>
--- 属性:Boolean
--- </summary>
Debug.developerConsoleVisible=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Debug.isDebugBuild=nil
--- <summary>
--- C#声明:Void DrawLine(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Color, Single, Boolean)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <param name="arg_duration">System.Single</param>
--- <param name="arg_depthTest">System.Boolean</param>
--- <returns>System.Void</returns>
function Debug.DrawLine(arg_start,arg_end,arg_color,arg_duration,arg_depthTest)
end
--- <summary>
--- C#声明:Void DrawLine(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Color, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <param name="arg_duration">System.Single</param>
--- <returns>System.Void</returns>
function Debug.DrawLine(arg_start,arg_end,arg_color,arg_duration)
end
--- <summary>
--- C#声明:Void DrawLine(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Color)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Debug.DrawLine(arg_start,arg_end,arg_color)
end
--- <summary>
--- C#声明:Void DrawLine(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Debug.DrawLine(arg_start,arg_end)
end
--- <summary>
--- C#声明:Void DrawRay(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Color, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_dir">UnityEngine.Vector3</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <param name="arg_duration">System.Single</param>
--- <returns>System.Void</returns>
function Debug.DrawRay(arg_start,arg_dir,arg_color,arg_duration)
end
--- <summary>
--- C#声明:Void DrawRay(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Color)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_dir">UnityEngine.Vector3</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function Debug.DrawRay(arg_start,arg_dir,arg_color)
end
--- <summary>
--- C#声明:Void DrawRay(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_dir">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Debug.DrawRay(arg_start,arg_dir)
end
--- <summary>
--- C#声明:Void DrawRay(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Color, Single, Boolean)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_dir">UnityEngine.Vector3</param>
--- <param name="arg_color">UnityEngine.Color</param>
--- <param name="arg_duration">System.Single</param>
--- <param name="arg_depthTest">System.Boolean</param>
--- <returns>System.Void</returns>
function Debug.DrawRay(arg_start,arg_dir,arg_color,arg_duration,arg_depthTest)
end
--- <summary>
--- C#声明:Void Break()
--- </summary>
--- <returns>System.Void</returns>
function Debug.Break()
end
--- <summary>
--- C#声明:Void DebugBreak()
--- </summary>
--- <returns>System.Void</returns>
function Debug.DebugBreak()
end
--- <summary>
--- C#声明:Void Log(System.Object)
--- </summary>
--- <param name="arg_message">System.Object</param>
--- <returns>System.Void</returns>
function Debug.Log(arg_message)
end
--- <summary>
--- C#声明:Void Log(System.Object, UnityEngine.Object)
--- </summary>
--- <param name="arg_message">System.Object</param>
--- <param name="arg_context">UnityEngine.Object</param>
--- <returns>System.Void</returns>
function Debug.Log(arg_message,arg_context)
end
--- <summary>
--- C#声明:Void LogFormat(System.String, System.Object[])
--- </summary>
--- <param name="arg_format">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Debug.LogFormat(arg_format,arg_args)
end
--- <summary>
--- C#声明:Void LogFormat(UnityEngine.Object, System.String, System.Object[])
--- </summary>
--- <param name="arg_context">UnityEngine.Object</param>
--- <param name="arg_format">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Debug.LogFormat(arg_context,arg_format,arg_args)
end
--- <summary>
--- C#声明:Void LogError(System.Object)
--- </summary>
--- <param name="arg_message">System.Object</param>
--- <returns>System.Void</returns>
function Debug.LogError(arg_message)
end
--- <summary>
--- C#声明:Void LogError(System.Object, UnityEngine.Object)
--- </summary>
--- <param name="arg_message">System.Object</param>
--- <param name="arg_context">UnityEngine.Object</param>
--- <returns>System.Void</returns>
function Debug.LogError(arg_message,arg_context)
end
--- <summary>
--- C#声明:Void LogErrorFormat(System.String, System.Object[])
--- </summary>
--- <param name="arg_format">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Debug.LogErrorFormat(arg_format,arg_args)
end
--- <summary>
--- C#声明:Void LogErrorFormat(UnityEngine.Object, System.String, System.Object[])
--- </summary>
--- <param name="arg_context">UnityEngine.Object</param>
--- <param name="arg_format">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Debug.LogErrorFormat(arg_context,arg_format,arg_args)
end
--- <summary>
--- C#声明:Void ClearDeveloperConsole()
--- </summary>
--- <returns>System.Void</returns>
function Debug.ClearDeveloperConsole()
end
--- <summary>
--- C#声明:Boolean get_developerConsoleVisible()
--- </summary>
--- <returns>System.Boolean</returns>
function Debug.get_developerConsoleVisible()
end
--- <summary>
--- C#声明:Void set_developerConsoleVisible(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Debug.set_developerConsoleVisible(arg_value)
end
--- <summary>
--- C#声明:Void LogException(System.Exception)
--- </summary>
--- <param name="arg_exception">System.Exception</param>
--- <returns>System.Void</returns>
function Debug.LogException(arg_exception)
end
--- <summary>
--- C#声明:Void LogException(System.Exception, UnityEngine.Object)
--- </summary>
--- <param name="arg_exception">System.Exception</param>
--- <param name="arg_context">UnityEngine.Object</param>
--- <returns>System.Void</returns>
function Debug.LogException(arg_exception,arg_context)
end
--- <summary>
--- C#声明:Void LogWarning(System.Object)
--- </summary>
--- <param name="arg_message">System.Object</param>
--- <returns>System.Void</returns>
function Debug.LogWarning(arg_message)
end
--- <summary>
--- C#声明:Void LogWarning(System.Object, UnityEngine.Object)
--- </summary>
--- <param name="arg_message">System.Object</param>
--- <param name="arg_context">UnityEngine.Object</param>
--- <returns>System.Void</returns>
function Debug.LogWarning(arg_message,arg_context)
end
--- <summary>
--- C#声明:Void LogWarningFormat(System.String, System.Object[])
--- </summary>
--- <param name="arg_format">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Debug.LogWarningFormat(arg_format,arg_args)
end
--- <summary>
--- C#声明:Void LogWarningFormat(UnityEngine.Object, System.String, System.Object[])
--- </summary>
--- <param name="arg_context">UnityEngine.Object</param>
--- <param name="arg_format">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Debug.LogWarningFormat(arg_context,arg_format,arg_args)
end
--- <summary>
--- C#声明:Void Assert(Boolean)
--- </summary>
--- <param name="arg_condition">System.Boolean</param>
--- <returns>System.Void</returns>
function Debug.Assert(arg_condition)
end
--- <summary>
--- C#声明:Void Assert(Boolean, System.String)
--- </summary>
--- <param name="arg_condition">System.Boolean</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Debug.Assert(arg_condition,arg_message)
end
--- <summary>
--- C#声明:Void Assert(Boolean, System.String, System.Object[])
--- </summary>
--- <param name="arg_condition">System.Boolean</param>
--- <param name="arg_format">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Debug.Assert(arg_condition,arg_format,arg_args)
end
--- <summary>
--- C#声明:Boolean get_isDebugBuild()
--- </summary>
--- <returns>System.Boolean</returns>
function Debug.get_isDebugBuild()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Debug:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Debug:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Debug:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Debug:GetType()
end

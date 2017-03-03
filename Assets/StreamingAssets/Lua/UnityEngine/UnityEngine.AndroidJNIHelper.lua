--create by yangxun
AndroidJNIHelper={}

--- <summary>
--- 属性:Boolean
--- </summary>
AndroidJNIHelper.debug=nil
--- <summary>
--- C#声明:Boolean get_debug()
--- </summary>
--- <returns>System.Boolean</returns>
function AndroidJNIHelper.get_debug()
end
--- <summary>
--- C#声明:Void set_debug(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function AndroidJNIHelper.set_debug(arg_value)
end
--- <summary>
--- C#声明:IntPtr GetConstructorID(IntPtr)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetConstructorID(arg_javaClass)
end
--- <summary>
--- C#声明:IntPtr GetConstructorID(IntPtr, System.String)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <param name="arg_signature">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetConstructorID(arg_javaClass,arg_signature)
end
--- <summary>
--- C#声明:IntPtr GetMethodID(IntPtr, System.String, System.String)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_signature">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetMethodID(arg_javaClass,arg_methodName,arg_signature)
end
--- <summary>
--- C#声明:IntPtr GetMethodID(IntPtr, System.String)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetMethodID(arg_javaClass,arg_methodName)
end
--- <summary>
--- C#声明:IntPtr GetMethodID(IntPtr, System.String, System.String, Boolean)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_signature">System.String</param>
--- <param name="arg_isStatic">System.Boolean</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetMethodID(arg_javaClass,arg_methodName,arg_signature,arg_isStatic)
end
--- <summary>
--- C#声明:IntPtr GetFieldID(IntPtr, System.String, System.String)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_signature">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetFieldID(arg_javaClass,arg_fieldName,arg_signature)
end
--- <summary>
--- C#声明:IntPtr GetFieldID(IntPtr, System.String)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <param name="arg_fieldName">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetFieldID(arg_javaClass,arg_fieldName)
end
--- <summary>
--- C#声明:IntPtr GetFieldID(IntPtr, System.String, System.String, Boolean)
--- </summary>
--- <param name="arg_javaClass">System.IntPtr</param>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_signature">System.String</param>
--- <param name="arg_isStatic">System.Boolean</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetFieldID(arg_javaClass,arg_fieldName,arg_signature,arg_isStatic)
end
--- <summary>
--- C#声明:IntPtr CreateJavaRunnable(UnityEngine.AndroidJavaRunnable)
--- </summary>
--- <param name="arg_jrunnable">UnityEngine.AndroidJavaRunnable</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.CreateJavaRunnable(arg_jrunnable)
end
--- <summary>
--- C#声明:IntPtr CreateJavaProxy(UnityEngine.AndroidJavaProxy)
--- </summary>
--- <param name="arg_proxy">UnityEngine.AndroidJavaProxy</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.CreateJavaProxy(arg_proxy)
end
--- <summary>
--- C#声明:IntPtr ConvertToJNIArray(System.Array)
--- </summary>
--- <param name="arg_array">System.Array</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.ConvertToJNIArray(arg_array)
end
--- <summary>
--- C#声明:UnityEngine.jvalue[] CreateJNIArgArray(System.Object[])
--- </summary>
--- <param name="arg_args">System.Object[]</param>
--- <returns>UnityEngine.jvalue[]</returns>
function AndroidJNIHelper.CreateJNIArgArray(arg_args)
end
--- <summary>
--- C#声明:Void DeleteJNIArgArray(System.Object[], UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_args">System.Object[]</param>
--- <param name="arg_jniArgs">UnityEngine.jvalue[]</param>
--- <returns>System.Void</returns>
function AndroidJNIHelper.DeleteJNIArgArray(arg_args,arg_jniArgs)
end
--- <summary>
--- C#声明:IntPtr GetConstructorID(IntPtr, System.Object[])
--- </summary>
--- <param name="arg_jclass">System.IntPtr</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetConstructorID(arg_jclass,arg_args)
end
--- <summary>
--- C#声明:IntPtr GetMethodID(IntPtr, System.String, System.Object[], Boolean)
--- </summary>
--- <param name="arg_jclass">System.IntPtr</param>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <param name="arg_isStatic">System.Boolean</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetMethodID(arg_jclass,arg_methodName,arg_args,arg_isStatic)
end
--- <summary>
--- C#声明:System.String GetSignature(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.String</returns>
function AndroidJNIHelper.GetSignature(arg_obj)
end
--- <summary>
--- C#声明:System.String GetSignature(System.Object[])
--- </summary>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.String</returns>
function AndroidJNIHelper.GetSignature(arg_args)
end
--- <summary>
--- C#声明:ArrayType ConvertFromJNIArray[ArrayType](IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>ArrayType</returns>
function AndroidJNIHelper.ConvertFromJNIArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr GetMethodID[ReturnType](IntPtr, System.String, System.Object[], Boolean)
--- </summary>
--- <param name="arg_jclass">System.IntPtr</param>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <param name="arg_isStatic">System.Boolean</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetMethodID(arg_jclass,arg_methodName,arg_args,arg_isStatic)
end
--- <summary>
--- C#声明:IntPtr GetFieldID[FieldType](IntPtr, System.String, Boolean)
--- </summary>
--- <param name="arg_jclass">System.IntPtr</param>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_isStatic">System.Boolean</param>
--- <returns>System.IntPtr</returns>
function AndroidJNIHelper.GetFieldID(arg_jclass,arg_fieldName,arg_isStatic)
end
--- <summary>
--- C#声明:System.String GetSignature[ReturnType](System.Object[])
--- </summary>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.String</returns>
function AndroidJNIHelper.GetSignature(arg_args)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function AndroidJNIHelper:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function AndroidJNIHelper:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function AndroidJNIHelper:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function AndroidJNIHelper:GetType()
end

--create by yangxun
GetMethodDelegate={}

--- <summary>
--- 属性:MethodInfo
--- </summary>
GetMethodDelegate.Method=nil
--- <summary>
--- 属性:Object
--- </summary>
GetMethodDelegate.Target=nil
--- <summary>
--- C#声明:System.Reflection.MethodInfo Invoke(System.Type, System.String, Boolean, Boolean, System.Type[])
--- </summary>
--- <param name="arg_classType">System.Type</param>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_searchBaseTypes">System.Boolean</param>
--- <param name="arg_instanceMethod">System.Boolean</param>
--- <param name="arg_methodParamTypes">System.Type[]</param>
--- <returns>System.Reflection.MethodInfo</returns>
function GetMethodDelegate:Invoke(arg_classType,arg_methodName,arg_searchBaseTypes,arg_instanceMethod,arg_methodParamTypes)
end
--- <summary>
--- C#声明:System.IAsyncResult BeginInvoke(System.Type, System.String, Boolean, Boolean, System.Type[], System.AsyncCallback, System.Object)
--- </summary>
--- <param name="arg_classType">System.Type</param>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_searchBaseTypes">System.Boolean</param>
--- <param name="arg_instanceMethod">System.Boolean</param>
--- <param name="arg_methodParamTypes">System.Type[]</param>
--- <param name="arg_callback">System.AsyncCallback</param>
--- <param name="arg_object">System.Object</param>
--- <returns>System.IAsyncResult</returns>
function GetMethodDelegate:BeginInvoke(arg_classType,arg_methodName,arg_searchBaseTypes,arg_instanceMethod,arg_methodParamTypes,arg_callback,arg_object)
end
--- <summary>
--- C#声明:System.Reflection.MethodInfo EndInvoke(System.IAsyncResult)
--- </summary>
--- <param name="arg_result">System.IAsyncResult</param>
--- <returns>System.Reflection.MethodInfo</returns>
function GetMethodDelegate:EndInvoke(arg_result)
end
--- <summary>
--- C#声明:Void GetObjectData(System.Runtime.Serialization.SerializationInfo, System.Runtime.Serialization.StreamingContext)
--- </summary>
--- <param name="arg_info">System.Runtime.Serialization.SerializationInfo</param>
--- <param name="arg_context">System.Runtime.Serialization.StreamingContext</param>
--- <returns>System.Void</returns>
function GetMethodDelegate:GetObjectData(arg_info,arg_context)
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function GetMethodDelegate:Equals(arg_obj)
end
--- <summary>
--- C#声明:System.Delegate[] GetInvocationList()
--- </summary>
--- <returns>System.Delegate[]</returns>
function GetMethodDelegate:GetInvocationList()
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function GetMethodDelegate:GetHashCode()
end
--- <summary>
--- C#声明:System.Object DynamicInvoke(System.Object[])
--- </summary>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Object</returns>
function GetMethodDelegate:DynamicInvoke(arg_args)
end
--- <summary>
--- C#声明:System.Reflection.MethodInfo get_Method()
--- </summary>
--- <returns>System.Reflection.MethodInfo</returns>
function GetMethodDelegate:get_Method()
end
--- <summary>
--- C#声明:System.Object get_Target()
--- </summary>
--- <returns>System.Object</returns>
function GetMethodDelegate:get_Target()
end
--- <summary>
--- C#声明:System.Object Clone()
--- </summary>
--- <returns>System.Object</returns>
function GetMethodDelegate:Clone()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function GetMethodDelegate:ToString()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function GetMethodDelegate:GetType()
end

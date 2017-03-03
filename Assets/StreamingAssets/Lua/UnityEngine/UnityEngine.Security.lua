--create by yangxun
Security={}

--- <summary>
--- C#声明:Boolean PrefetchSocketPolicy(System.String, Int32)
--- </summary>
--- <param name="arg_ip">System.String</param>
--- <param name="arg_atPort">System.Int32</param>
--- <returns>System.Boolean</returns>
function Security.PrefetchSocketPolicy(arg_ip,arg_atPort)
end
--- <summary>
--- C#声明:Boolean PrefetchSocketPolicy(System.String, Int32, Int32)
--- </summary>
--- <param name="arg_ip">System.String</param>
--- <param name="arg_atPort">System.Int32</param>
--- <param name="arg_timeout">System.Int32</param>
--- <returns>System.Boolean</returns>
function Security.PrefetchSocketPolicy(arg_ip,arg_atPort,arg_timeout)
end
--- <summary>
--- C#声明:System.String GetChainOfTrustValue(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.String</returns>
function Security.GetChainOfTrustValue(arg_name)
end
--- <summary>
--- C#声明:System.Reflection.Assembly LoadAndVerifyAssembly(Byte[], System.String)
--- </summary>
--- <param name="arg_assemblyData">System.Byte[]</param>
--- <param name="arg_authorizationKey">System.String</param>
--- <returns>System.Reflection.Assembly</returns>
function Security.LoadAndVerifyAssembly(arg_assemblyData,arg_authorizationKey)
end
--- <summary>
--- C#声明:System.Reflection.Assembly LoadAndVerifyAssembly(Byte[])
--- </summary>
--- <param name="arg_assemblyData">System.Byte[]</param>
--- <returns>System.Reflection.Assembly</returns>
function Security.LoadAndVerifyAssembly(arg_assemblyData)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Security:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Security:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Security:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Security:GetType()
end

--create by yangxun
UnitySurrogateSelector={}

--- <summary>
--- C#声明:System.Runtime.Serialization.ISerializationSurrogate GetSurrogate(System.Type, System.Runtime.Serialization.StreamingContext, System.Runtime.Serialization.ISurrogateSelector ByRef)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_context">System.Runtime.Serialization.StreamingContext</param>
--- <param name="arg_selector">System.Runtime.Serialization.ISurrogateSelector&</param>
--- <returns>System.Runtime.Serialization.ISerializationSurrogate</returns>
function UnitySurrogateSelector:GetSurrogate(arg_type,arg_context,arg_selector)
end
--- <summary>
--- C#声明:Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector)
--- </summary>
--- <param name="arg_selector">System.Runtime.Serialization.ISurrogateSelector</param>
--- <returns>System.Void</returns>
function UnitySurrogateSelector:ChainSelector(arg_selector)
end
--- <summary>
--- C#声明:System.Runtime.Serialization.ISurrogateSelector GetNextSelector()
--- </summary>
--- <returns>System.Runtime.Serialization.ISurrogateSelector</returns>
function UnitySurrogateSelector:GetNextSelector()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function UnitySurrogateSelector:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function UnitySurrogateSelector:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function UnitySurrogateSelector:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function UnitySurrogateSelector:GetType()
end

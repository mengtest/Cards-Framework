--create by yangxun
WWWForm={}

--- <summary>
--- 属性:Dictionary`2
--- </summary>
WWWForm.headers=nil
--- <summary>
--- 属性:Byte[]
--- </summary>
WWWForm.data=nil
--- <summary>
--- C#声明:Void AddField(System.String, System.String)
--- </summary>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function WWWForm:AddField(arg_fieldName,arg_value)
end
--- <summary>
--- C#声明:Void AddField(System.String, System.String, System.Text.Encoding)
--- </summary>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_value">System.String</param>
--- <param name="arg_e">System.Text.Encoding</param>
--- <returns>System.Void</returns>
function WWWForm:AddField(arg_fieldName,arg_value,arg_e)
end
--- <summary>
--- C#声明:Void AddField(System.String, Int32)
--- </summary>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_i">System.Int32</param>
--- <returns>System.Void</returns>
function WWWForm:AddField(arg_fieldName,arg_i)
end
--- <summary>
--- C#声明:Void AddBinaryData(System.String, Byte[], System.String)
--- </summary>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_contents">System.Byte[]</param>
--- <param name="arg_fileName">System.String</param>
--- <returns>System.Void</returns>
function WWWForm:AddBinaryData(arg_fieldName,arg_contents,arg_fileName)
end
--- <summary>
--- C#声明:Void AddBinaryData(System.String, Byte[])
--- </summary>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_contents">System.Byte[]</param>
--- <returns>System.Void</returns>
function WWWForm:AddBinaryData(arg_fieldName,arg_contents)
end
--- <summary>
--- C#声明:Void AddBinaryData(System.String, Byte[], System.String, System.String)
--- </summary>
--- <param name="arg_fieldName">System.String</param>
--- <param name="arg_contents">System.Byte[]</param>
--- <param name="arg_fileName">System.String</param>
--- <param name="arg_mimeType">System.String</param>
--- <returns>System.Void</returns>
function WWWForm:AddBinaryData(arg_fieldName,arg_contents,arg_fileName,arg_mimeType)
end
--- <summary>
--- C#声明:System.Collections.Generic.Dictionary`2[System.String,System.String] get_headers()
--- </summary>
--- <returns>System.Collections.Generic.Dictionary`2[System.String,System.String]</returns>
function WWWForm:get_headers()
end
--- <summary>
--- C#声明:Byte[] get_data()
--- </summary>
--- <returns>System.Byte[]</returns>
function WWWForm:get_data()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function WWWForm:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function WWWForm:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function WWWForm:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function WWWForm:GetType()
end

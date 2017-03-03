--create by yangxun
TextGenerator={}

--- <summary>
--- 属性:Rect
--- </summary>
TextGenerator.rectExtents=nil
--- <summary>
--- 属性:Int32
--- </summary>
TextGenerator.vertexCount=nil
--- <summary>
--- 属性:Int32
--- </summary>
TextGenerator.characterCount=nil
--- <summary>
--- 属性:Int32
--- </summary>
TextGenerator.characterCountVisible=nil
--- <summary>
--- 属性:Int32
--- </summary>
TextGenerator.lineCount=nil
--- <summary>
--- 属性:Int32
--- </summary>
TextGenerator.fontSizeUsedForBestFit=nil
--- <summary>
--- 属性:IList`1
--- </summary>
TextGenerator.verts=nil
--- <summary>
--- 属性:IList`1
--- </summary>
TextGenerator.characters=nil
--- <summary>
--- 属性:IList`1
--- </summary>
TextGenerator.lines=nil
--- <summary>
--- C#声明:UnityEngine.Rect get_rectExtents()
--- </summary>
--- <returns>UnityEngine.Rect</returns>
function TextGenerator:get_rectExtents()
end
--- <summary>
--- C#声明:Int32 get_vertexCount()
--- </summary>
--- <returns>System.Int32</returns>
function TextGenerator:get_vertexCount()
end
--- <summary>
--- C#声明:UnityEngine.UIVertex[] GetVerticesArray()
--- </summary>
--- <returns>UnityEngine.UIVertex[]</returns>
function TextGenerator:GetVerticesArray()
end
--- <summary>
--- C#声明:Int32 get_characterCount()
--- </summary>
--- <returns>System.Int32</returns>
function TextGenerator:get_characterCount()
end
--- <summary>
--- C#声明:Int32 get_characterCountVisible()
--- </summary>
--- <returns>System.Int32</returns>
function TextGenerator:get_characterCountVisible()
end
--- <summary>
--- C#声明:UnityEngine.UICharInfo[] GetCharactersArray()
--- </summary>
--- <returns>UnityEngine.UICharInfo[]</returns>
function TextGenerator:GetCharactersArray()
end
--- <summary>
--- C#声明:Int32 get_lineCount()
--- </summary>
--- <returns>System.Int32</returns>
function TextGenerator:get_lineCount()
end
--- <summary>
--- C#声明:UnityEngine.UILineInfo[] GetLinesArray()
--- </summary>
--- <returns>UnityEngine.UILineInfo[]</returns>
function TextGenerator:GetLinesArray()
end
--- <summary>
--- C#声明:Int32 get_fontSizeUsedForBestFit()
--- </summary>
--- <returns>System.Int32</returns>
function TextGenerator:get_fontSizeUsedForBestFit()
end
--- <summary>
--- C#声明:Void Invalidate()
--- </summary>
--- <returns>System.Void</returns>
function TextGenerator:Invalidate()
end
--- <summary>
--- C#声明:Void GetCharacters(System.Collections.Generic.List`1[UnityEngine.UICharInfo])
--- </summary>
--- <param name="arg_characters">System.Collections.Generic.List`1[UnityEngine.UICharInfo]</param>
--- <returns>System.Void</returns>
function TextGenerator:GetCharacters(arg_characters)
end
--- <summary>
--- C#声明:Void GetLines(System.Collections.Generic.List`1[UnityEngine.UILineInfo])
--- </summary>
--- <param name="arg_lines">System.Collections.Generic.List`1[UnityEngine.UILineInfo]</param>
--- <returns>System.Void</returns>
function TextGenerator:GetLines(arg_lines)
end
--- <summary>
--- C#声明:Void GetVertices(System.Collections.Generic.List`1[UnityEngine.UIVertex])
--- </summary>
--- <param name="arg_vertices">System.Collections.Generic.List`1[UnityEngine.UIVertex]</param>
--- <returns>System.Void</returns>
function TextGenerator:GetVertices(arg_vertices)
end
--- <summary>
--- C#声明:Single GetPreferredWidth(System.String, UnityEngine.TextGenerationSettings)
--- </summary>
--- <param name="arg_str">System.String</param>
--- <param name="arg_settings">UnityEngine.TextGenerationSettings</param>
--- <returns>System.Single</returns>
function TextGenerator:GetPreferredWidth(arg_str,arg_settings)
end
--- <summary>
--- C#声明:Single GetPreferredHeight(System.String, UnityEngine.TextGenerationSettings)
--- </summary>
--- <param name="arg_str">System.String</param>
--- <param name="arg_settings">UnityEngine.TextGenerationSettings</param>
--- <returns>System.Single</returns>
function TextGenerator:GetPreferredHeight(arg_str,arg_settings)
end
--- <summary>
--- C#声明:Boolean Populate(System.String, UnityEngine.TextGenerationSettings)
--- </summary>
--- <param name="arg_str">System.String</param>
--- <param name="arg_settings">UnityEngine.TextGenerationSettings</param>
--- <returns>System.Boolean</returns>
function TextGenerator:Populate(arg_str,arg_settings)
end
--- <summary>
--- C#声明:System.Collections.Generic.IList`1[UnityEngine.UIVertex] get_verts()
--- </summary>
--- <returns>System.Collections.Generic.IList`1[UnityEngine.UIVertex]</returns>
function TextGenerator:get_verts()
end
--- <summary>
--- C#声明:System.Collections.Generic.IList`1[UnityEngine.UICharInfo] get_characters()
--- </summary>
--- <returns>System.Collections.Generic.IList`1[UnityEngine.UICharInfo]</returns>
function TextGenerator:get_characters()
end
--- <summary>
--- C#声明:System.Collections.Generic.IList`1[UnityEngine.UILineInfo] get_lines()
--- </summary>
--- <returns>System.Collections.Generic.IList`1[UnityEngine.UILineInfo]</returns>
function TextGenerator:get_lines()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function TextGenerator:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function TextGenerator:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function TextGenerator:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function TextGenerator:GetType()
end

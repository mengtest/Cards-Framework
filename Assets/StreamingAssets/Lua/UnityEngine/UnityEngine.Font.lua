--create by yangxun
Font={}

--- <summary>
--- 属性:Material
--- </summary>
Font.material=nil
--- <summary>
--- 属性:String[]
--- </summary>
Font.fontNames=nil
--- <summary>
--- 属性:CharacterInfo[]
--- </summary>
Font.characterInfo=nil
--- <summary>
--- 属性:FontTextureRebuildCallback
--- </summary>
Font.textureRebuildCallback=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Font.dynamic=nil
--- <summary>
--- 属性:Int32
--- </summary>
Font.ascent=nil
--- <summary>
--- 属性:Int32
--- </summary>
Font.lineHeight=nil
--- <summary>
--- 属性:Int32
--- </summary>
Font.fontSize=nil
--- <summary>
--- 属性:String
--- </summary>
Font.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Font.hideFlags=nil
--- <summary>
--- C#声明:Void add_textureRebuilt(System.Action`1[UnityEngine.Font])
--- </summary>
--- <param name="arg_value">System.Action`1[UnityEngine.Font]</param>
--- <returns>System.Void</returns>
function Font.add_textureRebuilt(arg_value)
end
--- <summary>
--- C#声明:Void remove_textureRebuilt(System.Action`1[UnityEngine.Font])
--- </summary>
--- <param name="arg_value">System.Action`1[UnityEngine.Font]</param>
--- <returns>System.Void</returns>
function Font.remove_textureRebuilt(arg_value)
end
--- <summary>
--- C#声明:System.String[] GetOSInstalledFontNames()
--- </summary>
--- <returns>System.String[]</returns>
function Font.GetOSInstalledFontNames()
end
--- <summary>
--- C#声明:UnityEngine.Font CreateDynamicFontFromOSFont(System.String, Int32)
--- </summary>
--- <param name="arg_fontname">System.String</param>
--- <param name="arg_size">System.Int32</param>
--- <returns>UnityEngine.Font</returns>
function Font.CreateDynamicFontFromOSFont(arg_fontname,arg_size)
end
--- <summary>
--- C#声明:UnityEngine.Font CreateDynamicFontFromOSFont(System.String[], Int32)
--- </summary>
--- <param name="arg_fontnames">System.String[]</param>
--- <param name="arg_size">System.Int32</param>
--- <returns>UnityEngine.Font</returns>
function Font.CreateDynamicFontFromOSFont(arg_fontnames,arg_size)
end
--- <summary>
--- C#声明:UnityEngine.Material get_material()
--- </summary>
--- <returns>UnityEngine.Material</returns>
function Font:get_material()
end
--- <summary>
--- C#声明:Void set_material(UnityEngine.Material)
--- </summary>
--- <param name="arg_value">UnityEngine.Material</param>
--- <returns>System.Void</returns>
function Font:set_material(arg_value)
end
--- <summary>
--- C#声明:Boolean HasCharacter(Char)
--- </summary>
--- <param name="arg_c">System.Char</param>
--- <returns>System.Boolean</returns>
function Font:HasCharacter(arg_c)
end
--- <summary>
--- C#声明:System.String[] get_fontNames()
--- </summary>
--- <returns>System.String[]</returns>
function Font:get_fontNames()
end
--- <summary>
--- C#声明:Void set_fontNames(System.String[])
--- </summary>
--- <param name="arg_value">System.String[]</param>
--- <returns>System.Void</returns>
function Font:set_fontNames(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.CharacterInfo[] get_characterInfo()
--- </summary>
--- <returns>UnityEngine.CharacterInfo[]</returns>
function Font:get_characterInfo()
end
--- <summary>
--- C#声明:Void set_characterInfo(UnityEngine.CharacterInfo[])
--- </summary>
--- <param name="arg_value">UnityEngine.CharacterInfo[]</param>
--- <returns>System.Void</returns>
function Font:set_characterInfo(arg_value)
end
--- <summary>
--- C#声明:Void RequestCharactersInTexture(System.String, Int32, UnityEngine.FontStyle)
--- </summary>
--- <param name="arg_characters">System.String</param>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_style">UnityEngine.FontStyle</param>
--- <returns>System.Void</returns>
function Font:RequestCharactersInTexture(arg_characters,arg_size,arg_style)
end
--- <summary>
--- C#声明:Void RequestCharactersInTexture(System.String, Int32)
--- </summary>
--- <param name="arg_characters">System.String</param>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.Void</returns>
function Font:RequestCharactersInTexture(arg_characters,arg_size)
end
--- <summary>
--- C#声明:Void RequestCharactersInTexture(System.String)
--- </summary>
--- <param name="arg_characters">System.String</param>
--- <returns>System.Void</returns>
function Font:RequestCharactersInTexture(arg_characters)
end
--- <summary>
--- C#声明:FontTextureRebuildCallback get_textureRebuildCallback()
--- </summary>
--- <returns>UnityEngine.Font+FontTextureRebuildCallback</returns>
function Font:get_textureRebuildCallback()
end
--- <summary>
--- C#声明:Void set_textureRebuildCallback(FontTextureRebuildCallback)
--- </summary>
--- <param name="arg_value">UnityEngine.Font+FontTextureRebuildCallback</param>
--- <returns>System.Void</returns>
function Font:set_textureRebuildCallback(arg_value)
end
--- <summary>
--- C#声明:Int32 GetMaxVertsForString(System.String)
--- </summary>
--- <param name="arg_str">System.String</param>
--- <returns>System.Int32</returns>
function Font.GetMaxVertsForString(arg_str)
end
--- <summary>
--- C#声明:Boolean GetCharacterInfo(Char, UnityEngine.CharacterInfo ByRef, Int32, UnityEngine.FontStyle)
--- </summary>
--- <param name="arg_ch">System.Char</param>
--- <param name="arg_info">UnityEngine.CharacterInfo&</param>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_style">UnityEngine.FontStyle</param>
--- <returns>System.Boolean</returns>
function Font:GetCharacterInfo(arg_ch,arg_info,arg_size,arg_style)
end
--- <summary>
--- C#声明:Boolean GetCharacterInfo(Char, UnityEngine.CharacterInfo ByRef, Int32)
--- </summary>
--- <param name="arg_ch">System.Char</param>
--- <param name="arg_info">UnityEngine.CharacterInfo&</param>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.Boolean</returns>
function Font:GetCharacterInfo(arg_ch,arg_info,arg_size)
end
--- <summary>
--- C#声明:Boolean GetCharacterInfo(Char, UnityEngine.CharacterInfo ByRef)
--- </summary>
--- <param name="arg_ch">System.Char</param>
--- <param name="arg_info">UnityEngine.CharacterInfo&</param>
--- <returns>System.Boolean</returns>
function Font:GetCharacterInfo(arg_ch,arg_info)
end
--- <summary>
--- C#声明:Boolean get_dynamic()
--- </summary>
--- <returns>System.Boolean</returns>
function Font:get_dynamic()
end
--- <summary>
--- C#声明:Int32 get_ascent()
--- </summary>
--- <returns>System.Int32</returns>
function Font:get_ascent()
end
--- <summary>
--- C#声明:Int32 get_lineHeight()
--- </summary>
--- <returns>System.Int32</returns>
function Font:get_lineHeight()
end
--- <summary>
--- C#声明:Int32 get_fontSize()
--- </summary>
--- <returns>System.Int32</returns>
function Font:get_fontSize()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Font:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Font:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Font:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Font:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Font:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Font:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Font:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Font:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Font:GetType()
end

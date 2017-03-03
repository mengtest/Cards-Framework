--create by yangxun
GUIStyle={}

--- <summary>
--- 属性:String
--- </summary>
GUIStyle.name=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.normal=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.hover=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.active=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.onNormal=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.onHover=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.onActive=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.focused=nil
--- <summary>
--- 属性:GUIStyleState
--- </summary>
GUIStyle.onFocused=nil
--- <summary>
--- 属性:RectOffset
--- </summary>
GUIStyle.border=nil
--- <summary>
--- 属性:RectOffset
--- </summary>
GUIStyle.margin=nil
--- <summary>
--- 属性:RectOffset
--- </summary>
GUIStyle.padding=nil
--- <summary>
--- 属性:RectOffset
--- </summary>
GUIStyle.overflow=nil
--- <summary>
--- 属性:ImagePosition
--- </summary>
GUIStyle.imagePosition=nil
--- <summary>
--- 属性:TextAnchor
--- </summary>
GUIStyle.alignment=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUIStyle.wordWrap=nil
--- <summary>
--- 属性:TextClipping
--- </summary>
GUIStyle.clipping=nil
--- <summary>
--- 属性:Vector2
--- </summary>
GUIStyle.contentOffset=nil
--- <summary>
--- 属性:Vector2
--- </summary>
GUIStyle.clipOffset=nil
--- <summary>
--- 属性:Single
--- </summary>
GUIStyle.fixedWidth=nil
--- <summary>
--- 属性:Single
--- </summary>
GUIStyle.fixedHeight=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUIStyle.stretchWidth=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUIStyle.stretchHeight=nil
--- <summary>
--- 属性:Font
--- </summary>
GUIStyle.font=nil
--- <summary>
--- 属性:Int32
--- </summary>
GUIStyle.fontSize=nil
--- <summary>
--- 属性:FontStyle
--- </summary>
GUIStyle.fontStyle=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUIStyle.richText=nil
--- <summary>
--- 属性:Single
--- </summary>
GUIStyle.lineHeight=nil
--- <summary>
--- 属性:GUIStyle
--- </summary>
GUIStyle.none=nil
--- <summary>
--- 属性:Boolean
--- </summary>
GUIStyle.isHeightDependantOnWidth=nil
--- <summary>
--- C#声明:Void set_richText(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:set_richText(arg_value)
end
--- <summary>
--- C#声明:Single get_lineHeight()
--- </summary>
--- <returns>System.Single</returns>
function GUIStyle:get_lineHeight()
end
--- <summary>
--- C#声明:Void Draw(UnityEngine.Rect, Boolean, Boolean, Boolean, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_isHover">System.Boolean</param>
--- <param name="arg_isActive">System.Boolean</param>
--- <param name="arg_on">System.Boolean</param>
--- <param name="arg_hasKeyboardFocus">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:Draw(arg_position,arg_isHover,arg_isActive,arg_on,arg_hasKeyboardFocus)
end
--- <summary>
--- C#声明:Void Draw(UnityEngine.Rect, System.String, Boolean, Boolean, Boolean, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_text">System.String</param>
--- <param name="arg_isHover">System.Boolean</param>
--- <param name="arg_isActive">System.Boolean</param>
--- <param name="arg_on">System.Boolean</param>
--- <param name="arg_hasKeyboardFocus">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:Draw(arg_position,arg_text,arg_isHover,arg_isActive,arg_on,arg_hasKeyboardFocus)
end
--- <summary>
--- C#声明:Void Draw(UnityEngine.Rect, UnityEngine.Texture, Boolean, Boolean, Boolean, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_image">UnityEngine.Texture</param>
--- <param name="arg_isHover">System.Boolean</param>
--- <param name="arg_isActive">System.Boolean</param>
--- <param name="arg_on">System.Boolean</param>
--- <param name="arg_hasKeyboardFocus">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:Draw(arg_position,arg_image,arg_isHover,arg_isActive,arg_on,arg_hasKeyboardFocus)
end
--- <summary>
--- C#声明:Void Draw(UnityEngine.Rect, UnityEngine.GUIContent, Boolean, Boolean, Boolean, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_isHover">System.Boolean</param>
--- <param name="arg_isActive">System.Boolean</param>
--- <param name="arg_on">System.Boolean</param>
--- <param name="arg_hasKeyboardFocus">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:Draw(arg_position,arg_content,arg_isHover,arg_isActive,arg_on,arg_hasKeyboardFocus)
end
--- <summary>
--- C#声明:Void Draw(UnityEngine.Rect, UnityEngine.GUIContent, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_controlID">System.Int32</param>
--- <returns>System.Void</returns>
function GUIStyle:Draw(arg_position,arg_content,arg_controlID)
end
--- <summary>
--- C#声明:Void Draw(UnityEngine.Rect, UnityEngine.GUIContent, Int32, Boolean)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_controlID">System.Int32</param>
--- <param name="arg_on">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:Draw(arg_position,arg_content,arg_controlID,arg_on)
end
--- <summary>
--- C#声明:Void DrawCursor(UnityEngine.Rect, UnityEngine.GUIContent, Int32, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_controlID">System.Int32</param>
--- <param name="arg_Character">System.Int32</param>
--- <returns>System.Void</returns>
function GUIStyle:DrawCursor(arg_position,arg_content,arg_controlID,arg_Character)
end
--- <summary>
--- C#声明:Void DrawWithTextSelection(UnityEngine.Rect, UnityEngine.GUIContent, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_controlID">System.Int32</param>
--- <param name="arg_firstSelectedCharacter">System.Int32</param>
--- <param name="arg_lastSelectedCharacter">System.Int32</param>
--- <returns>System.Void</returns>
function GUIStyle:DrawWithTextSelection(arg_position,arg_content,arg_controlID,arg_firstSelectedCharacter,arg_lastSelectedCharacter)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyle get_none()
--- </summary>
--- <returns>UnityEngine.GUIStyle</returns>
function GUIStyle.get_none()
end
--- <summary>
--- C#声明:UnityEngine.Vector2 GetCursorPixelPosition(UnityEngine.Rect, UnityEngine.GUIContent, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_cursorStringIndex">System.Int32</param>
--- <returns>UnityEngine.Vector2</returns>
function GUIStyle:GetCursorPixelPosition(arg_position,arg_content,arg_cursorStringIndex)
end
--- <summary>
--- C#声明:Int32 GetCursorStringIndex(UnityEngine.Rect, UnityEngine.GUIContent, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_position">UnityEngine.Rect</param>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_cursorPixelPosition">UnityEngine.Vector2</param>
--- <returns>System.Int32</returns>
function GUIStyle:GetCursorStringIndex(arg_position,arg_content,arg_cursorPixelPosition)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 CalcSize(UnityEngine.GUIContent)
--- </summary>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <returns>UnityEngine.Vector2</returns>
function GUIStyle:CalcSize(arg_content)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 CalcScreenSize(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_contentSize">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Vector2</returns>
function GUIStyle:CalcScreenSize(arg_contentSize)
end
--- <summary>
--- C#声明:Single CalcHeight(UnityEngine.GUIContent, Single)
--- </summary>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_width">System.Single</param>
--- <returns>System.Single</returns>
function GUIStyle:CalcHeight(arg_content,arg_width)
end
--- <summary>
--- C#声明:Boolean get_isHeightDependantOnWidth()
--- </summary>
--- <returns>System.Boolean</returns>
function GUIStyle:get_isHeightDependantOnWidth()
end
--- <summary>
--- C#声明:Void CalcMinMaxWidth(UnityEngine.GUIContent, Single ByRef, Single ByRef)
--- </summary>
--- <param name="arg_content">UnityEngine.GUIContent</param>
--- <param name="arg_minWidth">System.Single&</param>
--- <param name="arg_maxWidth">System.Single&</param>
--- <returns>System.Void</returns>
function GUIStyle:CalcMinMaxWidth(arg_content,arg_minWidth,arg_maxWidth)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function GUIStyle:ToString()
end
--- <summary>
--- C#声明:UnityEngine.GUIStyle op_Implicit(System.String)
--- </summary>
--- <param name="arg_str">System.String</param>
--- <returns>UnityEngine.GUIStyle</returns>
function GUIStyle.op_Implicit(arg_str)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function GUIStyle:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function GUIStyle:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_normal()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_normal()
end
--- <summary>
--- C#声明:Void set_normal(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_normal(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_hover()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_hover()
end
--- <summary>
--- C#声明:Void set_hover(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_hover(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_active()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_active()
end
--- <summary>
--- C#声明:Void set_active(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_active(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_onNormal()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_onNormal()
end
--- <summary>
--- C#声明:Void set_onNormal(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_onNormal(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_onHover()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_onHover()
end
--- <summary>
--- C#声明:Void set_onHover(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_onHover(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_onActive()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_onActive()
end
--- <summary>
--- C#声明:Void set_onActive(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_onActive(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_focused()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_focused()
end
--- <summary>
--- C#声明:Void set_focused(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_focused(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.GUIStyleState get_onFocused()
--- </summary>
--- <returns>UnityEngine.GUIStyleState</returns>
function GUIStyle:get_onFocused()
end
--- <summary>
--- C#声明:Void set_onFocused(UnityEngine.GUIStyleState)
--- </summary>
--- <param name="arg_value">UnityEngine.GUIStyleState</param>
--- <returns>System.Void</returns>
function GUIStyle:set_onFocused(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RectOffset get_border()
--- </summary>
--- <returns>UnityEngine.RectOffset</returns>
function GUIStyle:get_border()
end
--- <summary>
--- C#声明:Void set_border(UnityEngine.RectOffset)
--- </summary>
--- <param name="arg_value">UnityEngine.RectOffset</param>
--- <returns>System.Void</returns>
function GUIStyle:set_border(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RectOffset get_margin()
--- </summary>
--- <returns>UnityEngine.RectOffset</returns>
function GUIStyle:get_margin()
end
--- <summary>
--- C#声明:Void set_margin(UnityEngine.RectOffset)
--- </summary>
--- <param name="arg_value">UnityEngine.RectOffset</param>
--- <returns>System.Void</returns>
function GUIStyle:set_margin(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RectOffset get_padding()
--- </summary>
--- <returns>UnityEngine.RectOffset</returns>
function GUIStyle:get_padding()
end
--- <summary>
--- C#声明:Void set_padding(UnityEngine.RectOffset)
--- </summary>
--- <param name="arg_value">UnityEngine.RectOffset</param>
--- <returns>System.Void</returns>
function GUIStyle:set_padding(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.RectOffset get_overflow()
--- </summary>
--- <returns>UnityEngine.RectOffset</returns>
function GUIStyle:get_overflow()
end
--- <summary>
--- C#声明:Void set_overflow(UnityEngine.RectOffset)
--- </summary>
--- <param name="arg_value">UnityEngine.RectOffset</param>
--- <returns>System.Void</returns>
function GUIStyle:set_overflow(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ImagePosition get_imagePosition()
--- </summary>
--- <returns>UnityEngine.ImagePosition</returns>
function GUIStyle:get_imagePosition()
end
--- <summary>
--- C#声明:Void set_imagePosition(UnityEngine.ImagePosition)
--- </summary>
--- <param name="arg_value">UnityEngine.ImagePosition</param>
--- <returns>System.Void</returns>
function GUIStyle:set_imagePosition(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextAnchor get_alignment()
--- </summary>
--- <returns>UnityEngine.TextAnchor</returns>
function GUIStyle:get_alignment()
end
--- <summary>
--- C#声明:Void set_alignment(UnityEngine.TextAnchor)
--- </summary>
--- <param name="arg_value">UnityEngine.TextAnchor</param>
--- <returns>System.Void</returns>
function GUIStyle:set_alignment(arg_value)
end
--- <summary>
--- C#声明:Boolean get_wordWrap()
--- </summary>
--- <returns>System.Boolean</returns>
function GUIStyle:get_wordWrap()
end
--- <summary>
--- C#声明:Void set_wordWrap(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:set_wordWrap(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TextClipping get_clipping()
--- </summary>
--- <returns>UnityEngine.TextClipping</returns>
function GUIStyle:get_clipping()
end
--- <summary>
--- C#声明:Void set_clipping(UnityEngine.TextClipping)
--- </summary>
--- <param name="arg_value">UnityEngine.TextClipping</param>
--- <returns>System.Void</returns>
function GUIStyle:set_clipping(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_contentOffset()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function GUIStyle:get_contentOffset()
end
--- <summary>
--- C#声明:Void set_contentOffset(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function GUIStyle:set_contentOffset(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_clipOffset()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function GUIStyle:get_clipOffset()
end
--- <summary>
--- C#声明:Void set_clipOffset(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function GUIStyle:set_clipOffset(arg_value)
end
--- <summary>
--- C#声明:Single get_fixedWidth()
--- </summary>
--- <returns>System.Single</returns>
function GUIStyle:get_fixedWidth()
end
--- <summary>
--- C#声明:Void set_fixedWidth(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function GUIStyle:set_fixedWidth(arg_value)
end
--- <summary>
--- C#声明:Single get_fixedHeight()
--- </summary>
--- <returns>System.Single</returns>
function GUIStyle:get_fixedHeight()
end
--- <summary>
--- C#声明:Void set_fixedHeight(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function GUIStyle:set_fixedHeight(arg_value)
end
--- <summary>
--- C#声明:Boolean get_stretchWidth()
--- </summary>
--- <returns>System.Boolean</returns>
function GUIStyle:get_stretchWidth()
end
--- <summary>
--- C#声明:Void set_stretchWidth(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:set_stretchWidth(arg_value)
end
--- <summary>
--- C#声明:Boolean get_stretchHeight()
--- </summary>
--- <returns>System.Boolean</returns>
function GUIStyle:get_stretchHeight()
end
--- <summary>
--- C#声明:Void set_stretchHeight(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function GUIStyle:set_stretchHeight(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Font get_font()
--- </summary>
--- <returns>UnityEngine.Font</returns>
function GUIStyle:get_font()
end
--- <summary>
--- C#声明:Void set_font(UnityEngine.Font)
--- </summary>
--- <param name="arg_value">UnityEngine.Font</param>
--- <returns>System.Void</returns>
function GUIStyle:set_font(arg_value)
end
--- <summary>
--- C#声明:Int32 get_fontSize()
--- </summary>
--- <returns>System.Int32</returns>
function GUIStyle:get_fontSize()
end
--- <summary>
--- C#声明:Void set_fontSize(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function GUIStyle:set_fontSize(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.FontStyle get_fontStyle()
--- </summary>
--- <returns>UnityEngine.FontStyle</returns>
function GUIStyle:get_fontStyle()
end
--- <summary>
--- C#声明:Void set_fontStyle(UnityEngine.FontStyle)
--- </summary>
--- <param name="arg_value">UnityEngine.FontStyle</param>
--- <returns>System.Void</returns>
function GUIStyle:set_fontStyle(arg_value)
end
--- <summary>
--- C#声明:Boolean get_richText()
--- </summary>
--- <returns>System.Boolean</returns>
function GUIStyle:get_richText()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function GUIStyle:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function GUIStyle:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function GUIStyle:GetType()
end

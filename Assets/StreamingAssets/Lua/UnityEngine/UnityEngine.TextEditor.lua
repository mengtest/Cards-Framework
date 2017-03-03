--create by yangxun
TextEditor={}

--- <summary>
--- 属性:Boolean
--- </summary>
TextEditor.hasSelection=nil
--- <summary>
--- 属性:String
--- </summary>
TextEditor.SelectedText=nil
--- <summary>
--- C#声明:Void OnFocus()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:OnFocus()
end
--- <summary>
--- C#声明:Void OnLostFocus()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:OnLostFocus()
end
--- <summary>
--- C#声明:Boolean HandleKeyEvent(UnityEngine.Event)
--- </summary>
--- <param name="arg_e">UnityEngine.Event</param>
--- <returns>System.Boolean</returns>
function TextEditor:HandleKeyEvent(arg_e)
end
--- <summary>
--- C#声明:Boolean DeleteLineBack()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:DeleteLineBack()
end
--- <summary>
--- C#声明:Boolean DeleteWordBack()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:DeleteWordBack()
end
--- <summary>
--- C#声明:Boolean DeleteWordForward()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:DeleteWordForward()
end
--- <summary>
--- C#声明:Boolean Delete()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:Delete()
end
--- <summary>
--- C#声明:Boolean CanPaste()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:CanPaste()
end
--- <summary>
--- C#声明:Boolean Backspace()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:Backspace()
end
--- <summary>
--- C#声明:Void SelectAll()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectAll()
end
--- <summary>
--- C#声明:Void SelectNone()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectNone()
end
--- <summary>
--- C#声明:Boolean get_hasSelection()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:get_hasSelection()
end
--- <summary>
--- C#声明:System.String get_SelectedText()
--- </summary>
--- <returns>System.String</returns>
function TextEditor:get_SelectedText()
end
--- <summary>
--- C#声明:Boolean DeleteSelection()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:DeleteSelection()
end
--- <summary>
--- C#声明:Void ReplaceSelection(System.String)
--- </summary>
--- <param name="arg_replace">System.String</param>
--- <returns>System.Void</returns>
function TextEditor:ReplaceSelection(arg_replace)
end
--- <summary>
--- C#声明:Void Insert(Char)
--- </summary>
--- <param name="arg_c">System.Char</param>
--- <returns>System.Void</returns>
function TextEditor:Insert(arg_c)
end
--- <summary>
--- C#声明:Void MoveSelectionToAltCursor()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveSelectionToAltCursor()
end
--- <summary>
--- C#声明:Void MoveRight()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveRight()
end
--- <summary>
--- C#声明:Void MoveLeft()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveLeft()
end
--- <summary>
--- C#声明:Void MoveUp()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveUp()
end
--- <summary>
--- C#声明:Void MoveDown()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveDown()
end
--- <summary>
--- C#声明:Void MoveLineStart()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveLineStart()
end
--- <summary>
--- C#声明:Void MoveLineEnd()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveLineEnd()
end
--- <summary>
--- C#声明:Void MoveGraphicalLineStart()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveGraphicalLineStart()
end
--- <summary>
--- C#声明:Void MoveGraphicalLineEnd()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveGraphicalLineEnd()
end
--- <summary>
--- C#声明:Void MoveTextStart()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveTextStart()
end
--- <summary>
--- C#声明:Void MoveTextEnd()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveTextEnd()
end
--- <summary>
--- C#声明:Void MoveParagraphForward()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveParagraphForward()
end
--- <summary>
--- C#声明:Void MoveParagraphBackward()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveParagraphBackward()
end
--- <summary>
--- C#声明:Void MoveCursorToPosition(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_cursorPosition">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function TextEditor:MoveCursorToPosition(arg_cursorPosition)
end
--- <summary>
--- C#声明:Void MoveAltCursorToPosition(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_cursorPosition">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function TextEditor:MoveAltCursorToPosition(arg_cursorPosition)
end
--- <summary>
--- C#声明:Boolean IsOverSelection(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_cursorPosition">UnityEngine.Vector2</param>
--- <returns>System.Boolean</returns>
function TextEditor:IsOverSelection(arg_cursorPosition)
end
--- <summary>
--- C#声明:Void SelectToPosition(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_cursorPosition">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function TextEditor:SelectToPosition(arg_cursorPosition)
end
--- <summary>
--- C#声明:Void SelectLeft()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectLeft()
end
--- <summary>
--- C#声明:Void SelectRight()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectRight()
end
--- <summary>
--- C#声明:Void SelectUp()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectUp()
end
--- <summary>
--- C#声明:Void SelectDown()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectDown()
end
--- <summary>
--- C#声明:Void SelectTextEnd()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectTextEnd()
end
--- <summary>
--- C#声明:Void SelectTextStart()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectTextStart()
end
--- <summary>
--- C#声明:Void MouseDragSelectsWholeWords(Boolean)
--- </summary>
--- <param name="arg_on">System.Boolean</param>
--- <returns>System.Void</returns>
function TextEditor:MouseDragSelectsWholeWords(arg_on)
end
--- <summary>
--- C#声明:Void DblClickSnap(DblClickSnapping)
--- </summary>
--- <param name="arg_snapping">UnityEngine.TextEditor+DblClickSnapping</param>
--- <returns>System.Void</returns>
function TextEditor:DblClickSnap(arg_snapping)
end
--- <summary>
--- C#声明:Void MoveWordRight()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveWordRight()
end
--- <summary>
--- C#声明:Void MoveToStartOfNextWord()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveToStartOfNextWord()
end
--- <summary>
--- C#声明:Void MoveToEndOfPreviousWord()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveToEndOfPreviousWord()
end
--- <summary>
--- C#声明:Void SelectToStartOfNextWord()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectToStartOfNextWord()
end
--- <summary>
--- C#声明:Void SelectToEndOfPreviousWord()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectToEndOfPreviousWord()
end
--- <summary>
--- C#声明:Int32 FindStartOfNextWord(Int32)
--- </summary>
--- <param name="arg_p">System.Int32</param>
--- <returns>System.Int32</returns>
function TextEditor:FindStartOfNextWord(arg_p)
end
--- <summary>
--- C#声明:Void MoveWordLeft()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:MoveWordLeft()
end
--- <summary>
--- C#声明:Void SelectWordRight()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectWordRight()
end
--- <summary>
--- C#声明:Void SelectWordLeft()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectWordLeft()
end
--- <summary>
--- C#声明:Void ExpandSelectGraphicalLineStart()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:ExpandSelectGraphicalLineStart()
end
--- <summary>
--- C#声明:Void ExpandSelectGraphicalLineEnd()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:ExpandSelectGraphicalLineEnd()
end
--- <summary>
--- C#声明:Void SelectGraphicalLineStart()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectGraphicalLineStart()
end
--- <summary>
--- C#声明:Void SelectGraphicalLineEnd()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectGraphicalLineEnd()
end
--- <summary>
--- C#声明:Void SelectParagraphForward()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectParagraphForward()
end
--- <summary>
--- C#声明:Void SelectParagraphBackward()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectParagraphBackward()
end
--- <summary>
--- C#声明:Void SelectCurrentWord()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectCurrentWord()
end
--- <summary>
--- C#声明:Void SelectCurrentParagraph()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SelectCurrentParagraph()
end
--- <summary>
--- C#声明:Void UpdateScrollOffsetIfNeeded()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:UpdateScrollOffsetIfNeeded()
end
--- <summary>
--- C#声明:Void DrawCursor(System.String)
--- </summary>
--- <param name="arg_text">System.String</param>
--- <returns>System.Void</returns>
function TextEditor:DrawCursor(arg_text)
end
--- <summary>
--- C#声明:Void SaveBackup()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:SaveBackup()
end
--- <summary>
--- C#声明:Void Undo()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:Undo()
end
--- <summary>
--- C#声明:Boolean Cut()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:Cut()
end
--- <summary>
--- C#声明:Void Copy()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:Copy()
end
--- <summary>
--- C#声明:Boolean Paste()
--- </summary>
--- <returns>System.Boolean</returns>
function TextEditor:Paste()
end
--- <summary>
--- C#声明:Void ClampPos()
--- </summary>
--- <returns>System.Void</returns>
function TextEditor:ClampPos()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function TextEditor:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function TextEditor:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function TextEditor:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function TextEditor:GetType()
end

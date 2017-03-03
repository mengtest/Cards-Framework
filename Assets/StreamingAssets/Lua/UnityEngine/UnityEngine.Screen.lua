--create by yangxun
Screen={}

--- <summary>
--- 属性:Resolution[]
--- </summary>
Screen.resolutions=nil
--- <summary>
--- 属性:Resolution[]
--- </summary>
Screen.GetResolution=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Screen.showCursor=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Screen.lockCursor=nil
--- <summary>
--- 属性:Resolution
--- </summary>
Screen.currentResolution=nil
--- <summary>
--- 属性:Int32
--- </summary>
Screen.width=nil
--- <summary>
--- 属性:Int32
--- </summary>
Screen.height=nil
--- <summary>
--- 属性:Single
--- </summary>
Screen.dpi=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Screen.fullScreen=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Screen.autorotateToPortrait=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Screen.autorotateToPortraitUpsideDown=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Screen.autorotateToLandscapeLeft=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Screen.autorotateToLandscapeRight=nil
--- <summary>
--- 属性:ScreenOrientation
--- </summary>
Screen.orientation=nil
--- <summary>
--- 属性:Int32
--- </summary>
Screen.sleepTimeout=nil
--- <summary>
--- C#声明:UnityEngine.Resolution[] get_resolutions()
--- </summary>
--- <returns>UnityEngine.Resolution[]</returns>
function Screen.get_resolutions()
end
--- <summary>
--- C#声明:UnityEngine.Resolution[] get_GetResolution()
--- </summary>
--- <returns>UnityEngine.Resolution[]</returns>
function Screen.get_GetResolution()
end
--- <summary>
--- C#声明:Boolean get_showCursor()
--- </summary>
--- <returns>System.Boolean</returns>
function Screen.get_showCursor()
end
--- <summary>
--- C#声明:Void set_showCursor(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.set_showCursor(arg_value)
end
--- <summary>
--- C#声明:Boolean get_lockCursor()
--- </summary>
--- <returns>System.Boolean</returns>
function Screen.get_lockCursor()
end
--- <summary>
--- C#声明:Void set_lockCursor(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.set_lockCursor(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Resolution get_currentResolution()
--- </summary>
--- <returns>UnityEngine.Resolution</returns>
function Screen.get_currentResolution()
end
--- <summary>
--- C#声明:Void SetResolution(Int32, Int32, Boolean, Int32)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_fullscreen">System.Boolean</param>
--- <param name="arg_preferredRefreshRate">System.Int32</param>
--- <returns>System.Void</returns>
function Screen.SetResolution(arg_width,arg_height,arg_fullscreen,arg_preferredRefreshRate)
end
--- <summary>
--- C#声明:Void SetResolution(Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_fullscreen">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.SetResolution(arg_width,arg_height,arg_fullscreen)
end
--- <summary>
--- C#声明:Int32 get_width()
--- </summary>
--- <returns>System.Int32</returns>
function Screen.get_width()
end
--- <summary>
--- C#声明:Int32 get_height()
--- </summary>
--- <returns>System.Int32</returns>
function Screen.get_height()
end
--- <summary>
--- C#声明:Single get_dpi()
--- </summary>
--- <returns>System.Single</returns>
function Screen.get_dpi()
end
--- <summary>
--- C#声明:Boolean get_fullScreen()
--- </summary>
--- <returns>System.Boolean</returns>
function Screen.get_fullScreen()
end
--- <summary>
--- C#声明:Void set_fullScreen(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.set_fullScreen(arg_value)
end
--- <summary>
--- C#声明:Boolean get_autorotateToPortrait()
--- </summary>
--- <returns>System.Boolean</returns>
function Screen.get_autorotateToPortrait()
end
--- <summary>
--- C#声明:Void set_autorotateToPortrait(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.set_autorotateToPortrait(arg_value)
end
--- <summary>
--- C#声明:Boolean get_autorotateToPortraitUpsideDown()
--- </summary>
--- <returns>System.Boolean</returns>
function Screen.get_autorotateToPortraitUpsideDown()
end
--- <summary>
--- C#声明:Void set_autorotateToPortraitUpsideDown(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.set_autorotateToPortraitUpsideDown(arg_value)
end
--- <summary>
--- C#声明:Boolean get_autorotateToLandscapeLeft()
--- </summary>
--- <returns>System.Boolean</returns>
function Screen.get_autorotateToLandscapeLeft()
end
--- <summary>
--- C#声明:Void set_autorotateToLandscapeLeft(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.set_autorotateToLandscapeLeft(arg_value)
end
--- <summary>
--- C#声明:Boolean get_autorotateToLandscapeRight()
--- </summary>
--- <returns>System.Boolean</returns>
function Screen.get_autorotateToLandscapeRight()
end
--- <summary>
--- C#声明:Void set_autorotateToLandscapeRight(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Screen.set_autorotateToLandscapeRight(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ScreenOrientation get_orientation()
--- </summary>
--- <returns>UnityEngine.ScreenOrientation</returns>
function Screen.get_orientation()
end
--- <summary>
--- C#声明:Void set_orientation(UnityEngine.ScreenOrientation)
--- </summary>
--- <param name="arg_value">UnityEngine.ScreenOrientation</param>
--- <returns>System.Void</returns>
function Screen.set_orientation(arg_value)
end
--- <summary>
--- C#声明:Int32 get_sleepTimeout()
--- </summary>
--- <returns>System.Int32</returns>
function Screen.get_sleepTimeout()
end
--- <summary>
--- C#声明:Void set_sleepTimeout(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Screen.set_sleepTimeout(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Screen:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Screen:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Screen:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Screen:GetType()
end

--create by yangxun
Display={}

--- <summary>
--- 属性:Int32
--- </summary>
Display.renderingWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
Display.renderingHeight=nil
--- <summary>
--- 属性:Int32
--- </summary>
Display.systemWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
Display.systemHeight=nil
--- <summary>
--- 属性:RenderBuffer
--- </summary>
Display.colorBuffer=nil
--- <summary>
--- 属性:RenderBuffer
--- </summary>
Display.depthBuffer=nil
--- <summary>
--- 属性:Display
--- </summary>
Display.main=nil
--- <summary>
--- C#声明:Void add_onDisplaysUpdated(DisplaysUpdatedDelegate)
--- </summary>
--- <param name="arg_value">UnityEngine.Display+DisplaysUpdatedDelegate</param>
--- <returns>System.Void</returns>
function Display.add_onDisplaysUpdated(arg_value)
end
--- <summary>
--- C#声明:Void remove_onDisplaysUpdated(DisplaysUpdatedDelegate)
--- </summary>
--- <param name="arg_value">UnityEngine.Display+DisplaysUpdatedDelegate</param>
--- <returns>System.Void</returns>
function Display.remove_onDisplaysUpdated(arg_value)
end
--- <summary>
--- C#声明:Int32 get_renderingWidth()
--- </summary>
--- <returns>System.Int32</returns>
function Display:get_renderingWidth()
end
--- <summary>
--- C#声明:Int32 get_renderingHeight()
--- </summary>
--- <returns>System.Int32</returns>
function Display:get_renderingHeight()
end
--- <summary>
--- C#声明:Int32 get_systemWidth()
--- </summary>
--- <returns>System.Int32</returns>
function Display:get_systemWidth()
end
--- <summary>
--- C#声明:Int32 get_systemHeight()
--- </summary>
--- <returns>System.Int32</returns>
function Display:get_systemHeight()
end
--- <summary>
--- C#声明:UnityEngine.RenderBuffer get_colorBuffer()
--- </summary>
--- <returns>UnityEngine.RenderBuffer</returns>
function Display:get_colorBuffer()
end
--- <summary>
--- C#声明:UnityEngine.RenderBuffer get_depthBuffer()
--- </summary>
--- <returns>UnityEngine.RenderBuffer</returns>
function Display:get_depthBuffer()
end
--- <summary>
--- C#声明:Void Activate()
--- </summary>
--- <returns>System.Void</returns>
function Display:Activate()
end
--- <summary>
--- C#声明:Void Activate(Int32, Int32, Int32)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_refreshRate">System.Int32</param>
--- <returns>System.Void</returns>
function Display:Activate(arg_width,arg_height,arg_refreshRate)
end
--- <summary>
--- C#声明:Void SetParams(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <returns>System.Void</returns>
function Display:SetParams(arg_width,arg_height,arg_x,arg_y)
end
--- <summary>
--- C#声明:Void SetRenderingResolution(Int32, Int32)
--- </summary>
--- <param name="arg_w">System.Int32</param>
--- <param name="arg_h">System.Int32</param>
--- <returns>System.Void</returns>
function Display:SetRenderingResolution(arg_w,arg_h)
end
--- <summary>
--- C#声明:Boolean MultiDisplayLicense()
--- </summary>
--- <returns>System.Boolean</returns>
function Display.MultiDisplayLicense()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 RelativeMouseAt(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_inputMouseCoordinates">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Display.RelativeMouseAt(arg_inputMouseCoordinates)
end
--- <summary>
--- C#声明:UnityEngine.Display get_main()
--- </summary>
--- <returns>UnityEngine.Display</returns>
function Display.get_main()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Display:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Display:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Display:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Display:GetType()
end

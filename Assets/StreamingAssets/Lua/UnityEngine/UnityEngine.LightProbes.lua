--create by yangxun
LightProbes={}

--- <summary>
--- 属性:Vector3[]
--- </summary>
LightProbes.positions=nil
--- <summary>
--- 属性:SphericalHarmonicsL2[]
--- </summary>
LightProbes.bakedProbes=nil
--- <summary>
--- 属性:Int32
--- </summary>
LightProbes.count=nil
--- <summary>
--- 属性:Int32
--- </summary>
LightProbes.cellCount=nil
--- <summary>
--- 属性:Single[]
--- </summary>
LightProbes.coefficients=nil
--- <summary>
--- 属性:String
--- </summary>
LightProbes.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
LightProbes.hideFlags=nil
--- <summary>
--- C#声明:Void GetInterpolatedProbe(UnityEngine.Vector3, UnityEngine.Renderer, UnityEngine.Rendering.SphericalHarmonicsL2 ByRef)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_renderer">UnityEngine.Renderer</param>
--- <param name="arg_probe">UnityEngine.Rendering.SphericalHarmonicsL2&</param>
--- <returns>System.Void</returns>
function LightProbes.GetInterpolatedProbe(arg_position,arg_renderer,arg_probe)
end
--- <summary>
--- C#声明:UnityEngine.Vector3[] get_positions()
--- </summary>
--- <returns>UnityEngine.Vector3[]</returns>
function LightProbes:get_positions()
end
--- <summary>
--- C#声明:UnityEngine.Rendering.SphericalHarmonicsL2[] get_bakedProbes()
--- </summary>
--- <returns>UnityEngine.Rendering.SphericalHarmonicsL2[]</returns>
function LightProbes:get_bakedProbes()
end
--- <summary>
--- C#声明:Void set_bakedProbes(UnityEngine.Rendering.SphericalHarmonicsL2[])
--- </summary>
--- <param name="arg_value">UnityEngine.Rendering.SphericalHarmonicsL2[]</param>
--- <returns>System.Void</returns>
function LightProbes:set_bakedProbes(arg_value)
end
--- <summary>
--- C#声明:Int32 get_count()
--- </summary>
--- <returns>System.Int32</returns>
function LightProbes:get_count()
end
--- <summary>
--- C#声明:Int32 get_cellCount()
--- </summary>
--- <returns>System.Int32</returns>
function LightProbes:get_cellCount()
end
--- <summary>
--- C#声明:Void GetInterpolatedLightProbe(UnityEngine.Vector3, UnityEngine.Renderer, Single[])
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_renderer">UnityEngine.Renderer</param>
--- <param name="arg_coefficients">System.Single[]</param>
--- <returns>System.Void</returns>
function LightProbes:GetInterpolatedLightProbe(arg_position,arg_renderer,arg_coefficients)
end
--- <summary>
--- C#声明:Single[] get_coefficients()
--- </summary>
--- <returns>System.Single[]</returns>
function LightProbes:get_coefficients()
end
--- <summary>
--- C#声明:Void set_coefficients(Single[])
--- </summary>
--- <param name="arg_value">System.Single[]</param>
--- <returns>System.Void</returns>
function LightProbes:set_coefficients(arg_value)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function LightProbes:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function LightProbes:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function LightProbes:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function LightProbes:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function LightProbes:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function LightProbes:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function LightProbes:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function LightProbes:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function LightProbes:GetType()
end

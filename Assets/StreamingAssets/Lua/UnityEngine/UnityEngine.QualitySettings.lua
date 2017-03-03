--create by yangxun
QualitySettings={}

--- <summary>
--- 属性:String[]
--- </summary>
QualitySettings.names=nil
--- <summary>
--- 属性:QualityLevel
--- </summary>
QualitySettings.currentLevel=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.pixelLightCount=nil
--- <summary>
--- 属性:ShadowProjection
--- </summary>
QualitySettings.shadowProjection=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.shadowCascades=nil
--- <summary>
--- 属性:Single
--- </summary>
QualitySettings.shadowDistance=nil
--- <summary>
--- 属性:Single
--- </summary>
QualitySettings.shadowCascade2Split=nil
--- <summary>
--- 属性:Vector3
--- </summary>
QualitySettings.shadowCascade4Split=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.masterTextureLimit=nil
--- <summary>
--- 属性:AnisotropicFiltering
--- </summary>
QualitySettings.anisotropicFiltering=nil
--- <summary>
--- 属性:Single
--- </summary>
QualitySettings.lodBias=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.maximumLODLevel=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.particleRaycastBudget=nil
--- <summary>
--- 属性:Boolean
--- </summary>
QualitySettings.softVegetation=nil
--- <summary>
--- 属性:Boolean
--- </summary>
QualitySettings.realtimeReflectionProbes=nil
--- <summary>
--- 属性:Boolean
--- </summary>
QualitySettings.billboardsFaceCameraPosition=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.maxQueuedFrames=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.vSyncCount=nil
--- <summary>
--- 属性:Int32
--- </summary>
QualitySettings.antiAliasing=nil
--- <summary>
--- 属性:ColorSpace
--- </summary>
QualitySettings.desiredColorSpace=nil
--- <summary>
--- 属性:ColorSpace
--- </summary>
QualitySettings.activeColorSpace=nil
--- <summary>
--- 属性:BlendWeights
--- </summary>
QualitySettings.blendWeights=nil
--- <summary>
--- 属性:String
--- </summary>
QualitySettings.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
QualitySettings.hideFlags=nil
--- <summary>
--- C#声明:System.String[] get_names()
--- </summary>
--- <returns>System.String[]</returns>
function QualitySettings.get_names()
end
--- <summary>
--- C#声明:Int32 GetQualityLevel()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.GetQualityLevel()
end
--- <summary>
--- C#声明:Void SetQualityLevel(Int32, Boolean)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_applyExpensiveChanges">System.Boolean</param>
--- <returns>System.Void</returns>
function QualitySettings.SetQualityLevel(arg_index,arg_applyExpensiveChanges)
end
--- <summary>
--- C#声明:Void SetQualityLevel(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.SetQualityLevel(arg_index)
end
--- <summary>
--- C#声明:UnityEngine.QualityLevel get_currentLevel()
--- </summary>
--- <returns>UnityEngine.QualityLevel</returns>
function QualitySettings.get_currentLevel()
end
--- <summary>
--- C#声明:Void set_currentLevel(UnityEngine.QualityLevel)
--- </summary>
--- <param name="arg_value">UnityEngine.QualityLevel</param>
--- <returns>System.Void</returns>
function QualitySettings.set_currentLevel(arg_value)
end
--- <summary>
--- C#声明:Void IncreaseLevel(Boolean)
--- </summary>
--- <param name="arg_applyExpensiveChanges">System.Boolean</param>
--- <returns>System.Void</returns>
function QualitySettings.IncreaseLevel(arg_applyExpensiveChanges)
end
--- <summary>
--- C#声明:Void IncreaseLevel()
--- </summary>
--- <returns>System.Void</returns>
function QualitySettings.IncreaseLevel()
end
--- <summary>
--- C#声明:Void DecreaseLevel(Boolean)
--- </summary>
--- <param name="arg_applyExpensiveChanges">System.Boolean</param>
--- <returns>System.Void</returns>
function QualitySettings.DecreaseLevel(arg_applyExpensiveChanges)
end
--- <summary>
--- C#声明:Void DecreaseLevel()
--- </summary>
--- <returns>System.Void</returns>
function QualitySettings.DecreaseLevel()
end
--- <summary>
--- C#声明:Int32 get_pixelLightCount()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_pixelLightCount()
end
--- <summary>
--- C#声明:Void set_pixelLightCount(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_pixelLightCount(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ShadowProjection get_shadowProjection()
--- </summary>
--- <returns>UnityEngine.ShadowProjection</returns>
function QualitySettings.get_shadowProjection()
end
--- <summary>
--- C#声明:Void set_shadowProjection(UnityEngine.ShadowProjection)
--- </summary>
--- <param name="arg_value">UnityEngine.ShadowProjection</param>
--- <returns>System.Void</returns>
function QualitySettings.set_shadowProjection(arg_value)
end
--- <summary>
--- C#声明:Int32 get_shadowCascades()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_shadowCascades()
end
--- <summary>
--- C#声明:Void set_shadowCascades(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_shadowCascades(arg_value)
end
--- <summary>
--- C#声明:Single get_shadowDistance()
--- </summary>
--- <returns>System.Single</returns>
function QualitySettings.get_shadowDistance()
end
--- <summary>
--- C#声明:Void set_shadowDistance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function QualitySettings.set_shadowDistance(arg_value)
end
--- <summary>
--- C#声明:Single get_shadowCascade2Split()
--- </summary>
--- <returns>System.Single</returns>
function QualitySettings.get_shadowCascade2Split()
end
--- <summary>
--- C#声明:Void set_shadowCascade2Split(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function QualitySettings.set_shadowCascade2Split(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_shadowCascade4Split()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function QualitySettings.get_shadowCascade4Split()
end
--- <summary>
--- C#声明:Void set_shadowCascade4Split(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function QualitySettings.set_shadowCascade4Split(arg_value)
end
--- <summary>
--- C#声明:Int32 get_masterTextureLimit()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_masterTextureLimit()
end
--- <summary>
--- C#声明:Void set_masterTextureLimit(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_masterTextureLimit(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AnisotropicFiltering get_anisotropicFiltering()
--- </summary>
--- <returns>UnityEngine.AnisotropicFiltering</returns>
function QualitySettings.get_anisotropicFiltering()
end
--- <summary>
--- C#声明:Void set_anisotropicFiltering(UnityEngine.AnisotropicFiltering)
--- </summary>
--- <param name="arg_value">UnityEngine.AnisotropicFiltering</param>
--- <returns>System.Void</returns>
function QualitySettings.set_anisotropicFiltering(arg_value)
end
--- <summary>
--- C#声明:Single get_lodBias()
--- </summary>
--- <returns>System.Single</returns>
function QualitySettings.get_lodBias()
end
--- <summary>
--- C#声明:Void set_lodBias(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function QualitySettings.set_lodBias(arg_value)
end
--- <summary>
--- C#声明:Int32 get_maximumLODLevel()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_maximumLODLevel()
end
--- <summary>
--- C#声明:Void set_maximumLODLevel(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_maximumLODLevel(arg_value)
end
--- <summary>
--- C#声明:Int32 get_particleRaycastBudget()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_particleRaycastBudget()
end
--- <summary>
--- C#声明:Void set_particleRaycastBudget(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_particleRaycastBudget(arg_value)
end
--- <summary>
--- C#声明:Boolean get_softVegetation()
--- </summary>
--- <returns>System.Boolean</returns>
function QualitySettings.get_softVegetation()
end
--- <summary>
--- C#声明:Void set_softVegetation(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function QualitySettings.set_softVegetation(arg_value)
end
--- <summary>
--- C#声明:Boolean get_realtimeReflectionProbes()
--- </summary>
--- <returns>System.Boolean</returns>
function QualitySettings.get_realtimeReflectionProbes()
end
--- <summary>
--- C#声明:Void set_realtimeReflectionProbes(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function QualitySettings.set_realtimeReflectionProbes(arg_value)
end
--- <summary>
--- C#声明:Boolean get_billboardsFaceCameraPosition()
--- </summary>
--- <returns>System.Boolean</returns>
function QualitySettings.get_billboardsFaceCameraPosition()
end
--- <summary>
--- C#声明:Void set_billboardsFaceCameraPosition(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function QualitySettings.set_billboardsFaceCameraPosition(arg_value)
end
--- <summary>
--- C#声明:Int32 get_maxQueuedFrames()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_maxQueuedFrames()
end
--- <summary>
--- C#声明:Void set_maxQueuedFrames(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_maxQueuedFrames(arg_value)
end
--- <summary>
--- C#声明:Int32 get_vSyncCount()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_vSyncCount()
end
--- <summary>
--- C#声明:Void set_vSyncCount(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_vSyncCount(arg_value)
end
--- <summary>
--- C#声明:Int32 get_antiAliasing()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings.get_antiAliasing()
end
--- <summary>
--- C#声明:Void set_antiAliasing(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function QualitySettings.set_antiAliasing(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ColorSpace get_desiredColorSpace()
--- </summary>
--- <returns>UnityEngine.ColorSpace</returns>
function QualitySettings.get_desiredColorSpace()
end
--- <summary>
--- C#声明:UnityEngine.ColorSpace get_activeColorSpace()
--- </summary>
--- <returns>UnityEngine.ColorSpace</returns>
function QualitySettings.get_activeColorSpace()
end
--- <summary>
--- C#声明:UnityEngine.BlendWeights get_blendWeights()
--- </summary>
--- <returns>UnityEngine.BlendWeights</returns>
function QualitySettings.get_blendWeights()
end
--- <summary>
--- C#声明:Void set_blendWeights(UnityEngine.BlendWeights)
--- </summary>
--- <param name="arg_value">UnityEngine.BlendWeights</param>
--- <returns>System.Void</returns>
function QualitySettings.set_blendWeights(arg_value)
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function QualitySettings:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function QualitySettings:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function QualitySettings:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function QualitySettings:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function QualitySettings:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function QualitySettings:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function QualitySettings:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function QualitySettings:GetType()
end

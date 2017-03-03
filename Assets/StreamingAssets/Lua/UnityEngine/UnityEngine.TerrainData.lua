--create by yangxun
TerrainData={}

--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.heightmapWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.heightmapHeight=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.heightmapResolution=nil
--- <summary>
--- 属性:Vector3
--- </summary>
TerrainData.heightmapScale=nil
--- <summary>
--- 属性:Vector3
--- </summary>
TerrainData.size=nil
--- <summary>
--- 属性:Single
--- </summary>
TerrainData.thickness=nil
--- <summary>
--- 属性:Single
--- </summary>
TerrainData.wavingGrassStrength=nil
--- <summary>
--- 属性:Single
--- </summary>
TerrainData.wavingGrassAmount=nil
--- <summary>
--- 属性:Single
--- </summary>
TerrainData.wavingGrassSpeed=nil
--- <summary>
--- 属性:Color
--- </summary>
TerrainData.wavingGrassTint=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.detailWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.detailHeight=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.detailResolution=nil
--- <summary>
--- 属性:DetailPrototype[]
--- </summary>
TerrainData.detailPrototypes=nil
--- <summary>
--- 属性:TreeInstance[]
--- </summary>
TerrainData.treeInstances=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.treeInstanceCount=nil
--- <summary>
--- 属性:TreePrototype[]
--- </summary>
TerrainData.treePrototypes=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.alphamapLayers=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.alphamapResolution=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.alphamapWidth=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.alphamapHeight=nil
--- <summary>
--- 属性:Int32
--- </summary>
TerrainData.baseMapResolution=nil
--- <summary>
--- 属性:Texture2D[]
--- </summary>
TerrainData.alphamapTextures=nil
--- <summary>
--- 属性:SplatPrototype[]
--- </summary>
TerrainData.splatPrototypes=nil
--- <summary>
--- 属性:String
--- </summary>
TerrainData.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
TerrainData.hideFlags=nil
--- <summary>
--- C#声明:Int32 get_alphamapHeight()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_alphamapHeight()
end
--- <summary>
--- C#声明:Int32 get_baseMapResolution()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_baseMapResolution()
end
--- <summary>
--- C#声明:Void set_baseMapResolution(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function TerrainData:set_baseMapResolution(arg_value)
end
--- <summary>
--- C#声明:Void SetAlphamaps(Int32, Int32, Single[,,])
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_map">System.Single[,,]</param>
--- <returns>System.Void</returns>
function TerrainData:SetAlphamaps(arg_x,arg_y,arg_map)
end
--- <summary>
--- C#声明:UnityEngine.Texture2D[] get_alphamapTextures()
--- </summary>
--- <returns>UnityEngine.Texture2D[]</returns>
function TerrainData:get_alphamapTextures()
end
--- <summary>
--- C#声明:UnityEngine.SplatPrototype[] get_splatPrototypes()
--- </summary>
--- <returns>UnityEngine.SplatPrototype[]</returns>
function TerrainData:get_splatPrototypes()
end
--- <summary>
--- C#声明:Void set_splatPrototypes(UnityEngine.SplatPrototype[])
--- </summary>
--- <param name="arg_value">UnityEngine.SplatPrototype[]</param>
--- <returns>System.Void</returns>
function TerrainData:set_splatPrototypes(arg_value)
end
--- <summary>
--- C#声明:Int32 get_heightmapWidth()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_heightmapWidth()
end
--- <summary>
--- C#声明:Int32 get_heightmapHeight()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_heightmapHeight()
end
--- <summary>
--- C#声明:Int32 get_heightmapResolution()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_heightmapResolution()
end
--- <summary>
--- C#声明:Void set_heightmapResolution(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function TerrainData:set_heightmapResolution(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_heightmapScale()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function TerrainData:get_heightmapScale()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_size()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function TerrainData:get_size()
end
--- <summary>
--- C#声明:Void set_size(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function TerrainData:set_size(arg_value)
end
--- <summary>
--- C#声明:Single get_thickness()
--- </summary>
--- <returns>System.Single</returns>
function TerrainData:get_thickness()
end
--- <summary>
--- C#声明:Void set_thickness(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function TerrainData:set_thickness(arg_value)
end
--- <summary>
--- C#声明:Single GetHeight(Int32, Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <returns>System.Single</returns>
function TerrainData:GetHeight(arg_x,arg_y)
end
--- <summary>
--- C#声明:Single GetInterpolatedHeight(Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <returns>System.Single</returns>
function TerrainData:GetInterpolatedHeight(arg_x,arg_y)
end
--- <summary>
--- C#声明:Single[,] GetHeights(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_xBase">System.Int32</param>
--- <param name="arg_yBase">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <returns>System.Single[,]</returns>
function TerrainData:GetHeights(arg_xBase,arg_yBase,arg_width,arg_height)
end
--- <summary>
--- C#声明:Void SetHeights(Int32, Int32, Single[,])
--- </summary>
--- <param name="arg_xBase">System.Int32</param>
--- <param name="arg_yBase">System.Int32</param>
--- <param name="arg_heights">System.Single[,]</param>
--- <returns>System.Void</returns>
function TerrainData:SetHeights(arg_xBase,arg_yBase,arg_heights)
end
--- <summary>
--- C#声明:Void SetHeightsDelayLOD(Int32, Int32, Single[,])
--- </summary>
--- <param name="arg_xBase">System.Int32</param>
--- <param name="arg_yBase">System.Int32</param>
--- <param name="arg_heights">System.Single[,]</param>
--- <returns>System.Void</returns>
function TerrainData:SetHeightsDelayLOD(arg_xBase,arg_yBase,arg_heights)
end
--- <summary>
--- C#声明:Single GetSteepness(Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <returns>System.Single</returns>
function TerrainData:GetSteepness(arg_x,arg_y)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 GetInterpolatedNormal(Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function TerrainData:GetInterpolatedNormal(arg_x,arg_y)
end
--- <summary>
--- C#声明:Single get_wavingGrassStrength()
--- </summary>
--- <returns>System.Single</returns>
function TerrainData:get_wavingGrassStrength()
end
--- <summary>
--- C#声明:Void set_wavingGrassStrength(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function TerrainData:set_wavingGrassStrength(arg_value)
end
--- <summary>
--- C#声明:Single get_wavingGrassAmount()
--- </summary>
--- <returns>System.Single</returns>
function TerrainData:get_wavingGrassAmount()
end
--- <summary>
--- C#声明:Void set_wavingGrassAmount(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function TerrainData:set_wavingGrassAmount(arg_value)
end
--- <summary>
--- C#声明:Single get_wavingGrassSpeed()
--- </summary>
--- <returns>System.Single</returns>
function TerrainData:get_wavingGrassSpeed()
end
--- <summary>
--- C#声明:Void set_wavingGrassSpeed(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function TerrainData:set_wavingGrassSpeed(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Color get_wavingGrassTint()
--- </summary>
--- <returns>UnityEngine.Color</returns>
function TerrainData:get_wavingGrassTint()
end
--- <summary>
--- C#声明:Void set_wavingGrassTint(UnityEngine.Color)
--- </summary>
--- <param name="arg_value">UnityEngine.Color</param>
--- <returns>System.Void</returns>
function TerrainData:set_wavingGrassTint(arg_value)
end
--- <summary>
--- C#声明:Int32 get_detailWidth()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_detailWidth()
end
--- <summary>
--- C#声明:Int32 get_detailHeight()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_detailHeight()
end
--- <summary>
--- C#声明:Void SetDetailResolution(Int32, Int32)
--- </summary>
--- <param name="arg_detailResolution">System.Int32</param>
--- <param name="arg_resolutionPerPatch">System.Int32</param>
--- <returns>System.Void</returns>
function TerrainData:SetDetailResolution(arg_detailResolution,arg_resolutionPerPatch)
end
--- <summary>
--- C#声明:Int32 get_detailResolution()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_detailResolution()
end
--- <summary>
--- C#声明:Void RefreshPrototypes()
--- </summary>
--- <returns>System.Void</returns>
function TerrainData:RefreshPrototypes()
end
--- <summary>
--- C#声明:UnityEngine.DetailPrototype[] get_detailPrototypes()
--- </summary>
--- <returns>UnityEngine.DetailPrototype[]</returns>
function TerrainData:get_detailPrototypes()
end
--- <summary>
--- C#声明:Void set_detailPrototypes(UnityEngine.DetailPrototype[])
--- </summary>
--- <param name="arg_value">UnityEngine.DetailPrototype[]</param>
--- <returns>System.Void</returns>
function TerrainData:set_detailPrototypes(arg_value)
end
--- <summary>
--- C#声明:Int32[] GetSupportedLayers(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_xBase">System.Int32</param>
--- <param name="arg_yBase">System.Int32</param>
--- <param name="arg_totalWidth">System.Int32</param>
--- <param name="arg_totalHeight">System.Int32</param>
--- <returns>System.Int32[]</returns>
function TerrainData:GetSupportedLayers(arg_xBase,arg_yBase,arg_totalWidth,arg_totalHeight)
end
--- <summary>
--- C#声明:Int32[,] GetDetailLayer(Int32, Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_xBase">System.Int32</param>
--- <param name="arg_yBase">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Int32[,]</returns>
function TerrainData:GetDetailLayer(arg_xBase,arg_yBase,arg_width,arg_height,arg_layer)
end
--- <summary>
--- C#声明:Void SetDetailLayer(Int32, Int32, Int32, Int32[,])
--- </summary>
--- <param name="arg_xBase">System.Int32</param>
--- <param name="arg_yBase">System.Int32</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_details">System.Int32[,]</param>
--- <returns>System.Void</returns>
function TerrainData:SetDetailLayer(arg_xBase,arg_yBase,arg_layer,arg_details)
end
--- <summary>
--- C#声明:UnityEngine.TreeInstance[] get_treeInstances()
--- </summary>
--- <returns>UnityEngine.TreeInstance[]</returns>
function TerrainData:get_treeInstances()
end
--- <summary>
--- C#声明:Void set_treeInstances(UnityEngine.TreeInstance[])
--- </summary>
--- <param name="arg_value">UnityEngine.TreeInstance[]</param>
--- <returns>System.Void</returns>
function TerrainData:set_treeInstances(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.TreeInstance GetTreeInstance(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.TreeInstance</returns>
function TerrainData:GetTreeInstance(arg_index)
end
--- <summary>
--- C#声明:Void SetTreeInstance(Int32, UnityEngine.TreeInstance)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_instance">UnityEngine.TreeInstance</param>
--- <returns>System.Void</returns>
function TerrainData:SetTreeInstance(arg_index,arg_instance)
end
--- <summary>
--- C#声明:Int32 get_treeInstanceCount()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_treeInstanceCount()
end
--- <summary>
--- C#声明:UnityEngine.TreePrototype[] get_treePrototypes()
--- </summary>
--- <returns>UnityEngine.TreePrototype[]</returns>
function TerrainData:get_treePrototypes()
end
--- <summary>
--- C#声明:Void set_treePrototypes(UnityEngine.TreePrototype[])
--- </summary>
--- <param name="arg_value">UnityEngine.TreePrototype[]</param>
--- <returns>System.Void</returns>
function TerrainData:set_treePrototypes(arg_value)
end
--- <summary>
--- C#声明:Int32 get_alphamapLayers()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_alphamapLayers()
end
--- <summary>
--- C#声明:Single[,,] GetAlphamaps(Int32, Int32, Int32, Int32)
--- </summary>
--- <param name="arg_x">System.Int32</param>
--- <param name="arg_y">System.Int32</param>
--- <param name="arg_width">System.Int32</param>
--- <param name="arg_height">System.Int32</param>
--- <returns>System.Single[,,]</returns>
function TerrainData:GetAlphamaps(arg_x,arg_y,arg_width,arg_height)
end
--- <summary>
--- C#声明:Int32 get_alphamapResolution()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_alphamapResolution()
end
--- <summary>
--- C#声明:Void set_alphamapResolution(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function TerrainData:set_alphamapResolution(arg_value)
end
--- <summary>
--- C#声明:Int32 get_alphamapWidth()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:get_alphamapWidth()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function TerrainData:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function TerrainData:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function TerrainData:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function TerrainData:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function TerrainData:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function TerrainData:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function TerrainData:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function TerrainData:GetType()
end

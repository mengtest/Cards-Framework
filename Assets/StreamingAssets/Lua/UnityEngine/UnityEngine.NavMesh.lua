--create by yangxun
NavMesh={}

--- <summary>
--- 属性:Single
--- </summary>
NavMesh.avoidancePredictionTime=nil
--- <summary>
--- 属性:Int32
--- </summary>
NavMesh.pathfindingIterationsPerFrame=nil
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.NavMeshHit ByRef, Int32)
--- </summary>
--- <param name="arg_sourcePosition">UnityEngine.Vector3</param>
--- <param name="arg_targetPosition">UnityEngine.Vector3</param>
--- <param name="arg_hit">UnityEngine.NavMeshHit&</param>
--- <param name="arg_areaMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function NavMesh.Raycast(arg_sourcePosition,arg_targetPosition,arg_hit,arg_areaMask)
end
--- <summary>
--- C#声明:Boolean CalculatePath(UnityEngine.Vector3, UnityEngine.Vector3, Int32, UnityEngine.NavMeshPath)
--- </summary>
--- <param name="arg_sourcePosition">UnityEngine.Vector3</param>
--- <param name="arg_targetPosition">UnityEngine.Vector3</param>
--- <param name="arg_areaMask">System.Int32</param>
--- <param name="arg_path">UnityEngine.NavMeshPath</param>
--- <returns>System.Boolean</returns>
function NavMesh.CalculatePath(arg_sourcePosition,arg_targetPosition,arg_areaMask,arg_path)
end
--- <summary>
--- C#声明:Boolean FindClosestEdge(UnityEngine.Vector3, UnityEngine.NavMeshHit ByRef, Int32)
--- </summary>
--- <param name="arg_sourcePosition">UnityEngine.Vector3</param>
--- <param name="arg_hit">UnityEngine.NavMeshHit&</param>
--- <param name="arg_areaMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function NavMesh.FindClosestEdge(arg_sourcePosition,arg_hit,arg_areaMask)
end
--- <summary>
--- C#声明:Boolean SamplePosition(UnityEngine.Vector3, UnityEngine.NavMeshHit ByRef, Single, Int32)
--- </summary>
--- <param name="arg_sourcePosition">UnityEngine.Vector3</param>
--- <param name="arg_hit">UnityEngine.NavMeshHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_areaMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function NavMesh.SamplePosition(arg_sourcePosition,arg_hit,arg_maxDistance,arg_areaMask)
end
--- <summary>
--- C#声明:Void SetLayerCost(Int32, Single)
--- </summary>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_cost">System.Single</param>
--- <returns>System.Void</returns>
function NavMesh.SetLayerCost(arg_layer,arg_cost)
end
--- <summary>
--- C#声明:Single GetLayerCost(Int32)
--- </summary>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Single</returns>
function NavMesh.GetLayerCost(arg_layer)
end
--- <summary>
--- C#声明:Int32 GetNavMeshLayerFromName(System.String)
--- </summary>
--- <param name="arg_layerName">System.String</param>
--- <returns>System.Int32</returns>
function NavMesh.GetNavMeshLayerFromName(arg_layerName)
end
--- <summary>
--- C#声明:Void SetAreaCost(Int32, Single)
--- </summary>
--- <param name="arg_areaIndex">System.Int32</param>
--- <param name="arg_cost">System.Single</param>
--- <returns>System.Void</returns>
function NavMesh.SetAreaCost(arg_areaIndex,arg_cost)
end
--- <summary>
--- C#声明:Single GetAreaCost(Int32)
--- </summary>
--- <param name="arg_areaIndex">System.Int32</param>
--- <returns>System.Single</returns>
function NavMesh.GetAreaCost(arg_areaIndex)
end
--- <summary>
--- C#声明:Int32 GetAreaFromName(System.String)
--- </summary>
--- <param name="arg_areaName">System.String</param>
--- <returns>System.Int32</returns>
function NavMesh.GetAreaFromName(arg_areaName)
end
--- <summary>
--- C#声明:UnityEngine.NavMeshTriangulation CalculateTriangulation()
--- </summary>
--- <returns>UnityEngine.NavMeshTriangulation</returns>
function NavMesh.CalculateTriangulation()
end
--- <summary>
--- C#声明:Void Triangulate(UnityEngine.Vector3[] ByRef, Int32[] ByRef)
--- </summary>
--- <param name="arg_vertices">UnityEngine.Vector3[]&</param>
--- <param name="arg_indices">System.Int32[]&</param>
--- <returns>System.Void</returns>
function NavMesh.Triangulate(arg_vertices,arg_indices)
end
--- <summary>
--- C#声明:Void AddOffMeshLinks()
--- </summary>
--- <returns>System.Void</returns>
function NavMesh.AddOffMeshLinks()
end
--- <summary>
--- C#声明:Void RestoreNavMesh()
--- </summary>
--- <returns>System.Void</returns>
function NavMesh.RestoreNavMesh()
end
--- <summary>
--- C#声明:Single get_avoidancePredictionTime()
--- </summary>
--- <returns>System.Single</returns>
function NavMesh.get_avoidancePredictionTime()
end
--- <summary>
--- C#声明:Void set_avoidancePredictionTime(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMesh.set_avoidancePredictionTime(arg_value)
end
--- <summary>
--- C#声明:Int32 get_pathfindingIterationsPerFrame()
--- </summary>
--- <returns>System.Int32</returns>
function NavMesh.get_pathfindingIterationsPerFrame()
end
--- <summary>
--- C#声明:Void set_pathfindingIterationsPerFrame(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function NavMesh.set_pathfindingIterationsPerFrame(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function NavMesh:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function NavMesh:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function NavMesh:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function NavMesh:GetType()
end

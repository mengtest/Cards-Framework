--create by yangxun
Physics2D={}

--- <summary>
--- 属性:Int32
--- </summary>
Physics2D.velocityIterations=nil
--- <summary>
--- 属性:Int32
--- </summary>
Physics2D.positionIterations=nil
--- <summary>
--- 属性:Vector2
--- </summary>
Physics2D.gravity=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Physics2D.raycastsHitTriggers=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Physics2D.raycastsStartInColliders=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Physics2D.deleteStopsCallbacks=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Physics2D.changeStopsCallbacks=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.velocityThreshold=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.maxLinearCorrection=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.maxAngularCorrection=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.maxTranslationSpeed=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.maxRotationSpeed=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.minPenetrationForPenalty=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.baumgarteScale=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.baumgarteTOIScale=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.timeToSleep=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.linearSleepTolerance=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics2D.angularSleepTolerance=nil
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapCircle(arg_point,arg_radius,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapCircle(arg_point,arg_radius,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapCircle(arg_point,arg_radius,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapCircle(arg_point,arg_radius)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapCircleAll(arg_point,arg_radius,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapCircleAll(arg_point,arg_radius,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapCircleAll(arg_point,arg_radius,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapCircleAll(arg_point,arg_radius)
end
--- <summary>
--- C#声明:Int32 OverlapCircleNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Collider2D[], Int32, Single, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapCircleNonAlloc(arg_point,arg_radius,arg_results,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:Int32 OverlapCircleNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Collider2D[], Int32, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapCircleNonAlloc(arg_point,arg_radius,arg_results,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:Int32 OverlapCircleNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Collider2D[], Int32)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapCircleNonAlloc(arg_point,arg_radius,arg_results,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 OverlapCircleNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Collider2D[])
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapCircleNonAlloc(arg_point,arg_radius,arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single, Single)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapArea(arg_pointA,arg_pointB,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapArea(arg_pointA,arg_pointB,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2, UnityEngine.Vector2, Int32)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapArea(arg_pointA,arg_pointB,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapArea(arg_pointA,arg_pointB)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single, Single)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapAreaAll(arg_pointA,arg_pointB,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapAreaAll(arg_pointA,arg_pointB,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2, UnityEngine.Vector2, Int32)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapAreaAll(arg_pointA,arg_pointB,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapAreaAll(arg_pointA,arg_pointB)
end
--- <summary>
--- C#声明:Int32 OverlapAreaNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Collider2D[], Int32, Single, Single)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapAreaNonAlloc(arg_pointA,arg_pointB,arg_results,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:Int32 OverlapAreaNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Collider2D[], Int32, Single)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapAreaNonAlloc(arg_pointA,arg_pointB,arg_results,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:Int32 OverlapAreaNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Collider2D[], Int32)
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapAreaNonAlloc(arg_pointA,arg_pointB,arg_results,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 OverlapAreaNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Collider2D[])
--- </summary>
--- <param name="arg_pointA">UnityEngine.Vector2</param>
--- <param name="arg_pointB">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapAreaNonAlloc(arg_pointA,arg_pointB,arg_results)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Raycast(arg_origin,arg_direction,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Raycast(arg_origin,arg_direction)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2, UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Raycast(arg_origin,arg_direction,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.RaycastAll(arg_origin,arg_direction,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.RaycastAll(arg_origin,arg_direction,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.RaycastAll(arg_origin,arg_direction,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.RaycastAll(arg_origin,arg_direction,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.RaycastAll(arg_origin,arg_direction)
end
--- <summary>
--- C#声明:Int32 RaycastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.RaycastNonAlloc(arg_origin,arg_direction,arg_results,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:Int32 RaycastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.RaycastNonAlloc(arg_origin,arg_direction,arg_results,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:Int32 RaycastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.RaycastNonAlloc(arg_origin,arg_direction,arg_results,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 RaycastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.RaycastNonAlloc(arg_origin,arg_direction,arg_results,arg_distance)
end
--- <summary>
--- C#声明:Int32 RaycastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[])
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.RaycastNonAlloc(arg_origin,arg_direction,arg_results)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.CircleCast(arg_origin,arg_radius,arg_direction,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.CircleCast(arg_origin,arg_radius,arg_direction,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.CircleCast(arg_origin,arg_radius,arg_direction,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2, Single, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.CircleCast(arg_origin,arg_radius,arg_direction)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.CircleCast(arg_origin,arg_radius,arg_direction,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.CircleCastAll(arg_origin,arg_radius,arg_direction,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.CircleCastAll(arg_origin,arg_radius,arg_direction,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.CircleCastAll(arg_origin,arg_radius,arg_direction,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2, Single, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.CircleCastAll(arg_origin,arg_radius,arg_direction,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2, Single, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.CircleCastAll(arg_origin,arg_radius,arg_direction)
end
--- <summary>
--- C#声明:Int32 CircleCastNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.CircleCastNonAlloc(arg_origin,arg_radius,arg_direction,arg_results,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:Int32 CircleCastNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.CircleCastNonAlloc(arg_origin,arg_radius,arg_direction,arg_results,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:Int32 CircleCastNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.CircleCastNonAlloc(arg_origin,arg_radius,arg_direction,arg_results,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 CircleCastNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.CircleCastNonAlloc(arg_origin,arg_radius,arg_direction,arg_results,arg_distance)
end
--- <summary>
--- C#声明:Int32 CircleCastNonAlloc(UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[])
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.CircleCastNonAlloc(arg_origin,arg_radius,arg_direction,arg_results)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.BoxCast(arg_origin,arg_size,arg_angle,arg_direction,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.BoxCast(arg_origin,arg_size,arg_angle,arg_direction,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.BoxCast(arg_origin,arg_size,arg_angle,arg_direction,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.BoxCast(arg_origin,arg_size,arg_angle,arg_direction)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.BoxCast(arg_origin,arg_size,arg_angle,arg_direction,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.BoxCastAll(arg_origin,arg_size,arg_angle,arg_direction,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.BoxCastAll(arg_origin,arg_size,arg_angle,arg_direction,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.BoxCastAll(arg_origin,arg_size,arg_angle,arg_direction,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.BoxCastAll(arg_origin,arg_size,arg_angle,arg_direction,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.BoxCastAll(arg_origin,arg_size,arg_angle,arg_direction)
end
--- <summary>
--- C#声明:Int32 BoxCastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32, Single, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.BoxCastNonAlloc(arg_origin,arg_size,arg_angle,arg_direction,arg_results,arg_distance,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:Int32 BoxCastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.BoxCastNonAlloc(arg_origin,arg_size,arg_angle,arg_direction,arg_results,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:Int32 BoxCastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.BoxCastNonAlloc(arg_origin,arg_size,arg_angle,arg_direction,arg_results,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 BoxCastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.BoxCastNonAlloc(arg_origin,arg_size,arg_angle,arg_direction,arg_results,arg_distance)
end
--- <summary>
--- C#声明:Int32 BoxCastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, Single, UnityEngine.Vector2, UnityEngine.RaycastHit2D[])
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_size">UnityEngine.Vector2</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.BoxCastNonAlloc(arg_origin,arg_size,arg_angle,arg_direction,arg_results)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D GetRayIntersection(UnityEngine.Ray, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.GetRayIntersection(arg_ray,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D GetRayIntersection(UnityEngine.Ray)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.GetRayIntersection(arg_ray)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D GetRayIntersection(UnityEngine.Ray, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.GetRayIntersection(arg_ray,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.GetRayIntersectionAll(arg_ray,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.GetRayIntersectionAll(arg_ray,arg_distance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.GetRayIntersectionAll(arg_ray)
end
--- <summary>
--- C#声明:Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray, UnityEngine.RaycastHit2D[], Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.GetRayIntersectionNonAlloc(arg_ray,arg_results,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray, UnityEngine.RaycastHit2D[], Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_distance">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.GetRayIntersectionNonAlloc(arg_ray,arg_results,arg_distance)
end
--- <summary>
--- C#声明:Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray, UnityEngine.RaycastHit2D[])
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.GetRayIntersectionNonAlloc(arg_ray,arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2, Int32, Single, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapPoint(arg_point,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2, Int32, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapPoint(arg_point,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2, Int32)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapPoint(arg_point,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Collider2D</returns>
function Physics2D.OverlapPoint(arg_point)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2, Int32, Single, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapPointAll(arg_point,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2, Int32, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapPointAll(arg_point,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2, Int32)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapPointAll(arg_point,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <returns>UnityEngine.Collider2D[]</returns>
function Physics2D.OverlapPointAll(arg_point)
end
--- <summary>
--- C#声明:Int32 OverlapPointNonAlloc(UnityEngine.Vector2, UnityEngine.Collider2D[], Int32, Single, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapPointNonAlloc(arg_point,arg_results,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:Int32 OverlapPointNonAlloc(UnityEngine.Vector2, UnityEngine.Collider2D[], Int32, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapPointNonAlloc(arg_point,arg_results,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:Int32 OverlapPointNonAlloc(UnityEngine.Vector2, UnityEngine.Collider2D[], Int32)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapPointNonAlloc(arg_point,arg_results,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 OverlapPointNonAlloc(UnityEngine.Vector2, UnityEngine.Collider2D[])
--- </summary>
--- <param name="arg_point">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.Collider2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.OverlapPointNonAlloc(arg_point,arg_results)
end
--- <summary>
--- C#声明:Int32 get_velocityIterations()
--- </summary>
--- <returns>System.Int32</returns>
function Physics2D.get_velocityIterations()
end
--- <summary>
--- C#声明:Void set_velocityIterations(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Physics2D.set_velocityIterations(arg_value)
end
--- <summary>
--- C#声明:Int32 get_positionIterations()
--- </summary>
--- <returns>System.Int32</returns>
function Physics2D.get_positionIterations()
end
--- <summary>
--- C#声明:Void set_positionIterations(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Physics2D.set_positionIterations(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector2 get_gravity()
--- </summary>
--- <returns>UnityEngine.Vector2</returns>
function Physics2D.get_gravity()
end
--- <summary>
--- C#声明:Void set_gravity(UnityEngine.Vector2)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector2</param>
--- <returns>System.Void</returns>
function Physics2D.set_gravity(arg_value)
end
--- <summary>
--- C#声明:Boolean get_raycastsHitTriggers()
--- </summary>
--- <returns>System.Boolean</returns>
function Physics2D.get_raycastsHitTriggers()
end
--- <summary>
--- C#声明:Void set_raycastsHitTriggers(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics2D.set_raycastsHitTriggers(arg_value)
end
--- <summary>
--- C#声明:Boolean get_raycastsStartInColliders()
--- </summary>
--- <returns>System.Boolean</returns>
function Physics2D.get_raycastsStartInColliders()
end
--- <summary>
--- C#声明:Void set_raycastsStartInColliders(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics2D.set_raycastsStartInColliders(arg_value)
end
--- <summary>
--- C#声明:Boolean get_deleteStopsCallbacks()
--- </summary>
--- <returns>System.Boolean</returns>
function Physics2D.get_deleteStopsCallbacks()
end
--- <summary>
--- C#声明:Void set_deleteStopsCallbacks(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics2D.set_deleteStopsCallbacks(arg_value)
end
--- <summary>
--- C#声明:Boolean get_changeStopsCallbacks()
--- </summary>
--- <returns>System.Boolean</returns>
function Physics2D.get_changeStopsCallbacks()
end
--- <summary>
--- C#声明:Void set_changeStopsCallbacks(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics2D.set_changeStopsCallbacks(arg_value)
end
--- <summary>
--- C#声明:Single get_velocityThreshold()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_velocityThreshold()
end
--- <summary>
--- C#声明:Void set_velocityThreshold(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_velocityThreshold(arg_value)
end
--- <summary>
--- C#声明:Single get_maxLinearCorrection()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_maxLinearCorrection()
end
--- <summary>
--- C#声明:Void set_maxLinearCorrection(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_maxLinearCorrection(arg_value)
end
--- <summary>
--- C#声明:Single get_maxAngularCorrection()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_maxAngularCorrection()
end
--- <summary>
--- C#声明:Void set_maxAngularCorrection(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_maxAngularCorrection(arg_value)
end
--- <summary>
--- C#声明:Single get_maxTranslationSpeed()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_maxTranslationSpeed()
end
--- <summary>
--- C#声明:Void set_maxTranslationSpeed(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_maxTranslationSpeed(arg_value)
end
--- <summary>
--- C#声明:Single get_maxRotationSpeed()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_maxRotationSpeed()
end
--- <summary>
--- C#声明:Void set_maxRotationSpeed(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_maxRotationSpeed(arg_value)
end
--- <summary>
--- C#声明:Single get_minPenetrationForPenalty()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_minPenetrationForPenalty()
end
--- <summary>
--- C#声明:Void set_minPenetrationForPenalty(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_minPenetrationForPenalty(arg_value)
end
--- <summary>
--- C#声明:Single get_baumgarteScale()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_baumgarteScale()
end
--- <summary>
--- C#声明:Void set_baumgarteScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_baumgarteScale(arg_value)
end
--- <summary>
--- C#声明:Single get_baumgarteTOIScale()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_baumgarteTOIScale()
end
--- <summary>
--- C#声明:Void set_baumgarteTOIScale(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_baumgarteTOIScale(arg_value)
end
--- <summary>
--- C#声明:Single get_timeToSleep()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_timeToSleep()
end
--- <summary>
--- C#声明:Void set_timeToSleep(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_timeToSleep(arg_value)
end
--- <summary>
--- C#声明:Single get_linearSleepTolerance()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_linearSleepTolerance()
end
--- <summary>
--- C#声明:Void set_linearSleepTolerance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_linearSleepTolerance(arg_value)
end
--- <summary>
--- C#声明:Single get_angularSleepTolerance()
--- </summary>
--- <returns>System.Single</returns>
function Physics2D.get_angularSleepTolerance()
end
--- <summary>
--- C#声明:Void set_angularSleepTolerance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics2D.set_angularSleepTolerance(arg_value)
end
--- <summary>
--- C#声明:Void IgnoreCollision(UnityEngine.Collider2D, UnityEngine.Collider2D, Boolean)
--- </summary>
--- <param name="arg_collider1">UnityEngine.Collider2D</param>
--- <param name="arg_collider2">UnityEngine.Collider2D</param>
--- <param name="arg_ignore">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics2D.IgnoreCollision(arg_collider1,arg_collider2,arg_ignore)
end
--- <summary>
--- C#声明:Void IgnoreCollision(UnityEngine.Collider2D, UnityEngine.Collider2D)
--- </summary>
--- <param name="arg_collider1">UnityEngine.Collider2D</param>
--- <param name="arg_collider2">UnityEngine.Collider2D</param>
--- <returns>System.Void</returns>
function Physics2D.IgnoreCollision(arg_collider1,arg_collider2)
end
--- <summary>
--- C#声明:Boolean GetIgnoreCollision(UnityEngine.Collider2D, UnityEngine.Collider2D)
--- </summary>
--- <param name="arg_collider1">UnityEngine.Collider2D</param>
--- <param name="arg_collider2">UnityEngine.Collider2D</param>
--- <returns>System.Boolean</returns>
function Physics2D.GetIgnoreCollision(arg_collider1,arg_collider2)
end
--- <summary>
--- C#声明:Void IgnoreLayerCollision(Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_layer1">System.Int32</param>
--- <param name="arg_layer2">System.Int32</param>
--- <param name="arg_ignore">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics2D.IgnoreLayerCollision(arg_layer1,arg_layer2,arg_ignore)
end
--- <summary>
--- C#声明:Void IgnoreLayerCollision(Int32, Int32)
--- </summary>
--- <param name="arg_layer1">System.Int32</param>
--- <param name="arg_layer2">System.Int32</param>
--- <returns>System.Void</returns>
function Physics2D.IgnoreLayerCollision(arg_layer1,arg_layer2)
end
--- <summary>
--- C#声明:Boolean GetIgnoreLayerCollision(Int32, Int32)
--- </summary>
--- <param name="arg_layer1">System.Int32</param>
--- <param name="arg_layer2">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics2D.GetIgnoreLayerCollision(arg_layer1,arg_layer2)
end
--- <summary>
--- C#声明:Boolean IsTouching(UnityEngine.Collider2D, UnityEngine.Collider2D)
--- </summary>
--- <param name="arg_collider1">UnityEngine.Collider2D</param>
--- <param name="arg_collider2">UnityEngine.Collider2D</param>
--- <returns>System.Boolean</returns>
function Physics2D.IsTouching(arg_collider1,arg_collider2)
end
--- <summary>
--- C#声明:Boolean IsTouchingLayers(UnityEngine.Collider2D, Int32)
--- </summary>
--- <param name="arg_collider">UnityEngine.Collider2D</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics2D.IsTouchingLayers(arg_collider,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean IsTouchingLayers(UnityEngine.Collider2D)
--- </summary>
--- <param name="arg_collider">UnityEngine.Collider2D</param>
--- <returns>System.Boolean</returns>
function Physics2D.IsTouchingLayers(arg_collider)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Linecast(arg_start,arg_end,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2, UnityEngine.Vector2, Int32)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Linecast(arg_start,arg_end,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Linecast(arg_start,arg_end)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Linecast(arg_start,arg_end,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.LinecastAll(arg_start,arg_end,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2, UnityEngine.Vector2, Int32, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.LinecastAll(arg_start,arg_end,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2, UnityEngine.Vector2, Int32)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.LinecastAll(arg_start,arg_end,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2, UnityEngine.Vector2)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <returns>UnityEngine.RaycastHit2D[]</returns>
function Physics2D.LinecastAll(arg_start,arg_end)
end
--- <summary>
--- C#声明:Int32 LinecastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Int32, Single, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <param name="arg_maxDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.LinecastNonAlloc(arg_start,arg_end,arg_results,arg_layerMask,arg_minDepth,arg_maxDepth)
end
--- <summary>
--- C#声明:Int32 LinecastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Int32, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>System.Int32</returns>
function Physics2D.LinecastNonAlloc(arg_start,arg_end,arg_results,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:Int32 LinecastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[], Int32)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Int32</returns>
function Physics2D.LinecastNonAlloc(arg_start,arg_end,arg_results,arg_layerMask)
end
--- <summary>
--- C#声明:Int32 LinecastNonAlloc(UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.RaycastHit2D[])
--- </summary>
--- <param name="arg_start">UnityEngine.Vector2</param>
--- <param name="arg_end">UnityEngine.Vector2</param>
--- <param name="arg_results">UnityEngine.RaycastHit2D[]</param>
--- <returns>System.Int32</returns>
function Physics2D.LinecastNonAlloc(arg_start,arg_end,arg_results)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2, UnityEngine.Vector2, Single, Int32, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <param name="arg_minDepth">System.Single</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Raycast(arg_origin,arg_direction,arg_distance,arg_layerMask,arg_minDepth)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2, UnityEngine.Vector2, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector2</param>
--- <param name="arg_direction">UnityEngine.Vector2</param>
--- <param name="arg_distance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit2D</returns>
function Physics2D.Raycast(arg_origin,arg_direction,arg_distance,arg_layerMask)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Physics2D:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Physics2D:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Physics2D:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Physics2D:GetType()
end

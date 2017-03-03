--create by yangxun
Physics={}

--- <summary>
--- 属性:Vector3
--- </summary>
Physics.gravity=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.minPenetrationForPenalty=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.defaultContactOffset=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.bounceThreshold=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.bounceTreshold=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.sleepVelocity=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.sleepAngularVelocity=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.maxAngularVelocity=nil
--- <summary>
--- 属性:Int32
--- </summary>
Physics.solverIterationCount=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.sleepThreshold=nil
--- <summary>
--- 属性:Single
--- </summary>
Physics.penetrationPenaltyForce=nil
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Ray, Single, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.SphereCastAll(arg_ray,arg_radius,arg_maxDistance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Ray, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.SphereCastAll(arg_ray,arg_radius)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Ray, Single, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.SphereCastAll(arg_ray,arg_radius,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean CheckSphere(UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.CheckSphere(arg_position,arg_radius,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean CheckSphere(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.CheckSphere(arg_position,arg_radius)
end
--- <summary>
--- C#声明:Boolean CheckCapsule(UnityEngine.Vector3, UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layermask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.CheckCapsule(arg_start,arg_end,arg_radius,arg_layermask)
end
--- <summary>
--- C#声明:Boolean CheckCapsule(UnityEngine.Vector3, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.CheckCapsule(arg_start,arg_end,arg_radius)
end
--- <summary>
--- C#声明:Single get_penetrationPenaltyForce()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_penetrationPenaltyForce()
end
--- <summary>
--- C#声明:Void set_penetrationPenaltyForce(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_penetrationPenaltyForce(arg_value)
end
--- <summary>
--- C#声明:Void IgnoreCollision(UnityEngine.Collider, UnityEngine.Collider, Boolean)
--- </summary>
--- <param name="arg_collider1">UnityEngine.Collider</param>
--- <param name="arg_collider2">UnityEngine.Collider</param>
--- <param name="arg_ignore">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics.IgnoreCollision(arg_collider1,arg_collider2,arg_ignore)
end
--- <summary>
--- C#声明:Void IgnoreCollision(UnityEngine.Collider, UnityEngine.Collider)
--- </summary>
--- <param name="arg_collider1">UnityEngine.Collider</param>
--- <param name="arg_collider2">UnityEngine.Collider</param>
--- <returns>System.Void</returns>
function Physics.IgnoreCollision(arg_collider1,arg_collider2)
end
--- <summary>
--- C#声明:Void IgnoreLayerCollision(Int32, Int32, Boolean)
--- </summary>
--- <param name="arg_layer1">System.Int32</param>
--- <param name="arg_layer2">System.Int32</param>
--- <param name="arg_ignore">System.Boolean</param>
--- <returns>System.Void</returns>
function Physics.IgnoreLayerCollision(arg_layer1,arg_layer2,arg_ignore)
end
--- <summary>
--- C#声明:Void IgnoreLayerCollision(Int32, Int32)
--- </summary>
--- <param name="arg_layer1">System.Int32</param>
--- <param name="arg_layer2">System.Int32</param>
--- <returns>System.Void</returns>
function Physics.IgnoreLayerCollision(arg_layer1,arg_layer2)
end
--- <summary>
--- C#声明:Boolean GetIgnoreLayerCollision(Int32, Int32)
--- </summary>
--- <param name="arg_layer1">System.Int32</param>
--- <param name="arg_layer2">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.GetIgnoreLayerCollision(arg_layer1,arg_layer2)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_gravity()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Physics.get_gravity()
end
--- <summary>
--- C#声明:Void set_gravity(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Physics.set_gravity(arg_value)
end
--- <summary>
--- C#声明:Single get_minPenetrationForPenalty()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_minPenetrationForPenalty()
end
--- <summary>
--- C#声明:Void set_minPenetrationForPenalty(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_minPenetrationForPenalty(arg_value)
end
--- <summary>
--- C#声明:Single get_defaultContactOffset()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_defaultContactOffset()
end
--- <summary>
--- C#声明:Void set_defaultContactOffset(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_defaultContactOffset(arg_value)
end
--- <summary>
--- C#声明:Single get_bounceThreshold()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_bounceThreshold()
end
--- <summary>
--- C#声明:Void set_bounceThreshold(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_bounceThreshold(arg_value)
end
--- <summary>
--- C#声明:Single get_bounceTreshold()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_bounceTreshold()
end
--- <summary>
--- C#声明:Void set_bounceTreshold(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_bounceTreshold(arg_value)
end
--- <summary>
--- C#声明:Single get_sleepVelocity()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_sleepVelocity()
end
--- <summary>
--- C#声明:Void set_sleepVelocity(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_sleepVelocity(arg_value)
end
--- <summary>
--- C#声明:Single get_sleepAngularVelocity()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_sleepAngularVelocity()
end
--- <summary>
--- C#声明:Void set_sleepAngularVelocity(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_sleepAngularVelocity(arg_value)
end
--- <summary>
--- C#声明:Single get_maxAngularVelocity()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_maxAngularVelocity()
end
--- <summary>
--- C#声明:Void set_maxAngularVelocity(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_maxAngularVelocity(arg_value)
end
--- <summary>
--- C#声明:Int32 get_solverIterationCount()
--- </summary>
--- <returns>System.Int32</returns>
function Physics.get_solverIterationCount()
end
--- <summary>
--- C#声明:Void set_solverIterationCount(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Physics.set_solverIterationCount(arg_value)
end
--- <summary>
--- C#声明:Single get_sleepThreshold()
--- </summary>
--- <returns>System.Single</returns>
function Physics.get_sleepThreshold()
end
--- <summary>
--- C#声明:Void set_sleepThreshold(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Physics.set_sleepThreshold(arg_value)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_origin,arg_direction,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_origin,arg_direction)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_origin,arg_direction,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_origin,arg_direction,arg_hitInfo,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_origin,arg_direction,arg_hitInfo)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_origin,arg_direction,arg_hitInfo,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_ray,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_ray)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_ray,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, UnityEngine.RaycastHit ByRef, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_ray,arg_hitInfo,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, UnityEngine.RaycastHit ByRef)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_ray,arg_hitInfo)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Ray, UnityEngine.RaycastHit ByRef, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.Raycast(arg_ray,arg_hitInfo,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Ray, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.RaycastAll(arg_ray,arg_maxDistance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Ray)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.RaycastAll(arg_ray)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Ray, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.RaycastAll(arg_ray,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Vector3, UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layermask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.RaycastAll(arg_origin,arg_direction,arg_maxDistance,arg_layermask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Vector3, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.RaycastAll(arg_origin,arg_direction,arg_maxDistance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.RaycastAll(arg_origin,arg_direction)
end
--- <summary>
--- C#声明:Boolean Linecast(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Physics.Linecast(arg_start,arg_end)
end
--- <summary>
--- C#声明:Boolean Linecast(UnityEngine.Vector3, UnityEngine.Vector3, Int32)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.Linecast(arg_start,arg_end,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean Linecast(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <returns>System.Boolean</returns>
function Physics.Linecast(arg_start,arg_end,arg_hitInfo)
end
--- <summary>
--- C#声明:Boolean Linecast(UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef, Int32)
--- </summary>
--- <param name="arg_start">UnityEngine.Vector3</param>
--- <param name="arg_end">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.Linecast(arg_start,arg_end,arg_hitInfo,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider[] OverlapSphere(UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.Collider[]</returns>
function Physics.OverlapSphere(arg_position,arg_radius,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.Collider[] OverlapSphere(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>UnityEngine.Collider[]</returns>
function Physics.OverlapSphere(arg_position,arg_radius)
end
--- <summary>
--- C#声明:Boolean CapsuleCast(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.CapsuleCast(arg_point1,arg_point2,arg_radius,arg_direction,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean CapsuleCast(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function Physics.CapsuleCast(arg_point1,arg_point2,arg_radius,arg_direction)
end
--- <summary>
--- C#声明:Boolean CapsuleCast(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.CapsuleCast(arg_point1,arg_point2,arg_radius,arg_direction,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean CapsuleCast(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef, Single)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.CapsuleCast(arg_point1,arg_point2,arg_radius,arg_direction,arg_hitInfo,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean CapsuleCast(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <returns>System.Boolean</returns>
function Physics.CapsuleCast(arg_point1,arg_point2,arg_radius,arg_direction,arg_hitInfo)
end
--- <summary>
--- C#声明:Boolean CapsuleCast(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef, Single, Int32)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.CapsuleCast(arg_point1,arg_point2,arg_radius,arg_direction,arg_hitInfo,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Vector3, Single, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_origin,arg_radius,arg_direction,arg_hitInfo,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Vector3, Single, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_origin,arg_radius,arg_direction,arg_hitInfo)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Vector3, Single, UnityEngine.Vector3, UnityEngine.RaycastHit ByRef, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_origin,arg_radius,arg_direction,arg_hitInfo,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Ray, Single, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_ray,arg_radius,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Ray, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_ray,arg_radius)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Ray, Single, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_ray,arg_radius,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Ray, Single, UnityEngine.RaycastHit ByRef, Single)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_ray,arg_radius,arg_hitInfo,arg_maxDistance)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Ray, Single, UnityEngine.RaycastHit ByRef)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_ray,arg_radius,arg_hitInfo)
end
--- <summary>
--- C#声明:Boolean SphereCast(UnityEngine.Ray, Single, UnityEngine.RaycastHit ByRef, Single, Int32)
--- </summary>
--- <param name="arg_ray">UnityEngine.Ray</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_hitInfo">UnityEngine.RaycastHit&</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>System.Boolean</returns>
function Physics.SphereCast(arg_ray,arg_radius,arg_hitInfo,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] CapsuleCastAll(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layermask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.CapsuleCastAll(arg_point1,arg_point2,arg_radius,arg_direction,arg_maxDistance,arg_layermask)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] CapsuleCastAll(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.CapsuleCastAll(arg_point1,arg_point2,arg_radius,arg_direction,arg_maxDistance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] CapsuleCastAll(UnityEngine.Vector3, UnityEngine.Vector3, Single, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_point1">UnityEngine.Vector3</param>
--- <param name="arg_point2">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.CapsuleCastAll(arg_point1,arg_point2,arg_radius,arg_direction)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Vector3, Single, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.SphereCastAll(arg_origin,arg_radius,arg_direction,arg_maxDistance)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Vector3, Single, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.SphereCastAll(arg_origin,arg_radius,arg_direction)
end
--- <summary>
--- C#声明:UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Vector3, Single, UnityEngine.Vector3, Single, Int32)
--- </summary>
--- <param name="arg_origin">UnityEngine.Vector3</param>
--- <param name="arg_radius">System.Single</param>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_layerMask">System.Int32</param>
--- <returns>UnityEngine.RaycastHit[]</returns>
function Physics.SphereCastAll(arg_origin,arg_radius,arg_direction,arg_maxDistance,arg_layerMask)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Physics:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Physics:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Physics:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Physics:GetType()
end

--create by yangxun
NavMeshAgent={}

--- <summary>
--- 属性:Vector3
--- </summary>
NavMeshAgent.destination=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.stoppingDistance=nil
--- <summary>
--- 属性:Vector3
--- </summary>
NavMeshAgent.velocity=nil
--- <summary>
--- 属性:Vector3
--- </summary>
NavMeshAgent.nextPosition=nil
--- <summary>
--- 属性:Vector3
--- </summary>
NavMeshAgent.steeringTarget=nil
--- <summary>
--- 属性:Vector3
--- </summary>
NavMeshAgent.desiredVelocity=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.remainingDistance=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.baseOffset=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.isOnOffMeshLink=nil
--- <summary>
--- 属性:OffMeshLinkData
--- </summary>
NavMeshAgent.currentOffMeshLinkData=nil
--- <summary>
--- 属性:OffMeshLinkData
--- </summary>
NavMeshAgent.nextOffMeshLinkData=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.autoTraverseOffMeshLink=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.autoBraking=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.autoRepath=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.hasPath=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.pathPending=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.isPathStale=nil
--- <summary>
--- 属性:NavMeshPathStatus
--- </summary>
NavMeshAgent.pathStatus=nil
--- <summary>
--- 属性:Vector3
--- </summary>
NavMeshAgent.pathEndPosition=nil
--- <summary>
--- 属性:NavMeshPath
--- </summary>
NavMeshAgent.path=nil
--- <summary>
--- 属性:Int32
--- </summary>
NavMeshAgent.walkableMask=nil
--- <summary>
--- 属性:Int32
--- </summary>
NavMeshAgent.areaMask=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.speed=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.angularSpeed=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.acceleration=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.updatePosition=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.updateRotation=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.radius=nil
--- <summary>
--- 属性:Single
--- </summary>
NavMeshAgent.height=nil
--- <summary>
--- 属性:ObstacleAvoidanceType
--- </summary>
NavMeshAgent.obstacleAvoidanceType=nil
--- <summary>
--- 属性:Int32
--- </summary>
NavMeshAgent.avoidancePriority=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.isOnNavMesh=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
NavMeshAgent.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
NavMeshAgent.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
NavMeshAgent.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
NavMeshAgent.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.light=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
NavMeshAgent.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
NavMeshAgent.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
NavMeshAgent.hideFlags=nil
--- <summary>
--- C#声明:Int32 get_areaMask()
--- </summary>
--- <returns>System.Int32</returns>
function NavMeshAgent:get_areaMask()
end
--- <summary>
--- C#声明:Void set_areaMask(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_areaMask(arg_value)
end
--- <summary>
--- C#声明:Single get_speed()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_speed()
end
--- <summary>
--- C#声明:Void set_speed(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_speed(arg_value)
end
--- <summary>
--- C#声明:Single get_angularSpeed()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_angularSpeed()
end
--- <summary>
--- C#声明:Void set_angularSpeed(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_angularSpeed(arg_value)
end
--- <summary>
--- C#声明:Single get_acceleration()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_acceleration()
end
--- <summary>
--- C#声明:Void set_acceleration(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_acceleration(arg_value)
end
--- <summary>
--- C#声明:Boolean get_updatePosition()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_updatePosition()
end
--- <summary>
--- C#声明:Void set_updatePosition(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_updatePosition(arg_value)
end
--- <summary>
--- C#声明:Boolean get_updateRotation()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_updateRotation()
end
--- <summary>
--- C#声明:Void set_updateRotation(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_updateRotation(arg_value)
end
--- <summary>
--- C#声明:Single get_radius()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_radius()
end
--- <summary>
--- C#声明:Void set_radius(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_radius(arg_value)
end
--- <summary>
--- C#声明:Single get_height()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_height()
end
--- <summary>
--- C#声明:Void set_height(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_height(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.ObstacleAvoidanceType get_obstacleAvoidanceType()
--- </summary>
--- <returns>UnityEngine.ObstacleAvoidanceType</returns>
function NavMeshAgent:get_obstacleAvoidanceType()
end
--- <summary>
--- C#声明:Void set_obstacleAvoidanceType(UnityEngine.ObstacleAvoidanceType)
--- </summary>
--- <param name="arg_value">UnityEngine.ObstacleAvoidanceType</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_obstacleAvoidanceType(arg_value)
end
--- <summary>
--- C#声明:Int32 get_avoidancePriority()
--- </summary>
--- <returns>System.Int32</returns>
function NavMeshAgent:get_avoidancePriority()
end
--- <summary>
--- C#声明:Void set_avoidancePriority(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_avoidancePriority(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isOnNavMesh()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_isOnNavMesh()
end
--- <summary>
--- C#声明:Boolean SetDestination(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_target">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:SetDestination(arg_target)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_destination()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function NavMeshAgent:get_destination()
end
--- <summary>
--- C#声明:Void set_destination(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_destination(arg_value)
end
--- <summary>
--- C#声明:Single get_stoppingDistance()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_stoppingDistance()
end
--- <summary>
--- C#声明:Void set_stoppingDistance(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_stoppingDistance(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_velocity()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function NavMeshAgent:get_velocity()
end
--- <summary>
--- C#声明:Void set_velocity(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_velocity(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_nextPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function NavMeshAgent:get_nextPosition()
end
--- <summary>
--- C#声明:Void set_nextPosition(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_nextPosition(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_steeringTarget()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function NavMeshAgent:get_steeringTarget()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_desiredVelocity()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function NavMeshAgent:get_desiredVelocity()
end
--- <summary>
--- C#声明:Single get_remainingDistance()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_remainingDistance()
end
--- <summary>
--- C#声明:Single get_baseOffset()
--- </summary>
--- <returns>System.Single</returns>
function NavMeshAgent:get_baseOffset()
end
--- <summary>
--- C#声明:Void set_baseOffset(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_baseOffset(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isOnOffMeshLink()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_isOnOffMeshLink()
end
--- <summary>
--- C#声明:Void ActivateCurrentOffMeshLink(Boolean)
--- </summary>
--- <param name="arg_activated">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:ActivateCurrentOffMeshLink(arg_activated)
end
--- <summary>
--- C#声明:UnityEngine.OffMeshLinkData get_currentOffMeshLinkData()
--- </summary>
--- <returns>UnityEngine.OffMeshLinkData</returns>
function NavMeshAgent:get_currentOffMeshLinkData()
end
--- <summary>
--- C#声明:UnityEngine.OffMeshLinkData get_nextOffMeshLinkData()
--- </summary>
--- <returns>UnityEngine.OffMeshLinkData</returns>
function NavMeshAgent:get_nextOffMeshLinkData()
end
--- <summary>
--- C#声明:Void CompleteOffMeshLink()
--- </summary>
--- <returns>System.Void</returns>
function NavMeshAgent:CompleteOffMeshLink()
end
--- <summary>
--- C#声明:Boolean get_autoTraverseOffMeshLink()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_autoTraverseOffMeshLink()
end
--- <summary>
--- C#声明:Void set_autoTraverseOffMeshLink(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_autoTraverseOffMeshLink(arg_value)
end
--- <summary>
--- C#声明:Boolean get_autoBraking()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_autoBraking()
end
--- <summary>
--- C#声明:Void set_autoBraking(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_autoBraking(arg_value)
end
--- <summary>
--- C#声明:Boolean get_autoRepath()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_autoRepath()
end
--- <summary>
--- C#声明:Void set_autoRepath(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_autoRepath(arg_value)
end
--- <summary>
--- C#声明:Boolean get_hasPath()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_hasPath()
end
--- <summary>
--- C#声明:Boolean get_pathPending()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_pathPending()
end
--- <summary>
--- C#声明:Boolean get_isPathStale()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_isPathStale()
end
--- <summary>
--- C#声明:UnityEngine.NavMeshPathStatus get_pathStatus()
--- </summary>
--- <returns>UnityEngine.NavMeshPathStatus</returns>
function NavMeshAgent:get_pathStatus()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_pathEndPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function NavMeshAgent:get_pathEndPosition()
end
--- <summary>
--- C#声明:Boolean Warp(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_newPosition">UnityEngine.Vector3</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:Warp(arg_newPosition)
end
--- <summary>
--- C#声明:Void Move(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_offset">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function NavMeshAgent:Move(arg_offset)
end
--- <summary>
--- C#声明:Void Stop()
--- </summary>
--- <returns>System.Void</returns>
function NavMeshAgent:Stop()
end
--- <summary>
--- C#声明:Void Stop(Boolean)
--- </summary>
--- <param name="arg_stopUpdates">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:Stop(arg_stopUpdates)
end
--- <summary>
--- C#声明:Void Resume()
--- </summary>
--- <returns>System.Void</returns>
function NavMeshAgent:Resume()
end
--- <summary>
--- C#声明:Void ResetPath()
--- </summary>
--- <returns>System.Void</returns>
function NavMeshAgent:ResetPath()
end
--- <summary>
--- C#声明:Boolean SetPath(UnityEngine.NavMeshPath)
--- </summary>
--- <param name="arg_path">UnityEngine.NavMeshPath</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:SetPath(arg_path)
end
--- <summary>
--- C#声明:UnityEngine.NavMeshPath get_path()
--- </summary>
--- <returns>UnityEngine.NavMeshPath</returns>
function NavMeshAgent:get_path()
end
--- <summary>
--- C#声明:Void set_path(UnityEngine.NavMeshPath)
--- </summary>
--- <param name="arg_value">UnityEngine.NavMeshPath</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_path(arg_value)
end
--- <summary>
--- C#声明:Boolean FindClosestEdge(UnityEngine.NavMeshHit ByRef)
--- </summary>
--- <param name="arg_hit">UnityEngine.NavMeshHit&</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:FindClosestEdge(arg_hit)
end
--- <summary>
--- C#声明:Boolean Raycast(UnityEngine.Vector3, UnityEngine.NavMeshHit ByRef)
--- </summary>
--- <param name="arg_targetPosition">UnityEngine.Vector3</param>
--- <param name="arg_hit">UnityEngine.NavMeshHit&</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:Raycast(arg_targetPosition,arg_hit)
end
--- <summary>
--- C#声明:Boolean CalculatePath(UnityEngine.Vector3, UnityEngine.NavMeshPath)
--- </summary>
--- <param name="arg_targetPosition">UnityEngine.Vector3</param>
--- <param name="arg_path">UnityEngine.NavMeshPath</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:CalculatePath(arg_targetPosition,arg_path)
end
--- <summary>
--- C#声明:Boolean SamplePathPosition(Int32, Single, UnityEngine.NavMeshHit ByRef)
--- </summary>
--- <param name="arg_areaMask">System.Int32</param>
--- <param name="arg_maxDistance">System.Single</param>
--- <param name="arg_hit">UnityEngine.NavMeshHit&</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:SamplePathPosition(arg_areaMask,arg_maxDistance,arg_hit)
end
--- <summary>
--- C#声明:Void SetLayerCost(Int32, Single)
--- </summary>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_cost">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SetLayerCost(arg_layer,arg_cost)
end
--- <summary>
--- C#声明:Single GetLayerCost(Int32)
--- </summary>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Single</returns>
function NavMeshAgent:GetLayerCost(arg_layer)
end
--- <summary>
--- C#声明:Void SetAreaCost(Int32, Single)
--- </summary>
--- <param name="arg_areaIndex">System.Int32</param>
--- <param name="arg_areaCost">System.Single</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SetAreaCost(arg_areaIndex,arg_areaCost)
end
--- <summary>
--- C#声明:Single GetAreaCost(Int32)
--- </summary>
--- <param name="arg_areaIndex">System.Int32</param>
--- <returns>System.Single</returns>
function NavMeshAgent:GetAreaCost(arg_areaIndex)
end
--- <summary>
--- C#声明:Int32 get_walkableMask()
--- </summary>
--- <returns>System.Int32</returns>
function NavMeshAgent:get_walkableMask()
end
--- <summary>
--- C#声明:Void set_walkableMask(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_walkableMask(arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function NavMeshAgent:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function NavMeshAgent:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function NavMeshAgent:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function NavMeshAgent:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function NavMeshAgent:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NavMeshAgent:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function NavMeshAgent:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function NavMeshAgent:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NavMeshAgent:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function NavMeshAgent:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NavMeshAgent:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function NavMeshAgent:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NavMeshAgent:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function NavMeshAgent:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function NavMeshAgent:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NavMeshAgent:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function NavMeshAgent:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function NavMeshAgent:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function NavMeshAgent:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function NavMeshAgent:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function NavMeshAgent:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function NavMeshAgent:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NavMeshAgent:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NavMeshAgent:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function NavMeshAgent:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function NavMeshAgent:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function NavMeshAgent:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function NavMeshAgent:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function NavMeshAgent:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function NavMeshAgent:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function NavMeshAgent:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function NavMeshAgent:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function NavMeshAgent:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function NavMeshAgent:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function NavMeshAgent:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function NavMeshAgent:GetType()
end

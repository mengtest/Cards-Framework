--create by yangxun
Animator={}

--- <summary>
--- 属性:Boolean
--- </summary>
Animator.isOptimizable=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.isHuman=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.hasRootMotion=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.humanScale=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Animator.deltaPosition=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Animator.deltaRotation=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Animator.velocity=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Animator.angularVelocity=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Animator.rootPosition=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Animator.rootRotation=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.applyRootMotion=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.linearVelocityBlending=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.animatePhysics=nil
--- <summary>
--- 属性:AnimatorUpdateMode
--- </summary>
Animator.updateMode=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.hasTransformHierarchy=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.gravityWeight=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Animator.bodyPosition=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Animator.bodyRotation=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.stabilizeFeet=nil
--- <summary>
--- 属性:Int32
--- </summary>
Animator.layerCount=nil
--- <summary>
--- 属性:AnimatorControllerParameter[]
--- </summary>
Animator.parameters=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.feetPivotActive=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.pivotWeight=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Animator.pivotPosition=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.isMatchingTarget=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.speed=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Animator.targetPosition=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Animator.targetRotation=nil
--- <summary>
--- 属性:AnimatorCullingMode
--- </summary>
Animator.cullingMode=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.playbackTime=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.recorderStartTime=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.recorderStopTime=nil
--- <summary>
--- 属性:AnimatorRecorderMode
--- </summary>
Animator.recorderMode=nil
--- <summary>
--- 属性:RuntimeAnimatorController
--- </summary>
Animator.runtimeAnimatorController=nil
--- <summary>
--- 属性:Avatar
--- </summary>
Animator.avatar=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.layersAffectMassCenter=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.leftFeetBottomHeight=nil
--- <summary>
--- 属性:Single
--- </summary>
Animator.rightFeetBottomHeight=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.logWarnings=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.fireEvents=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.enabled=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Animator.isActiveAndEnabled=nil
--- <summary>
--- 属性:Transform
--- </summary>
Animator.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
Animator.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
Animator.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.light=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
Animator.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
Animator.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Animator.hideFlags=nil
--- <summary>
--- C#声明:Void set_layersAffectMassCenter(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_layersAffectMassCenter(arg_value)
end
--- <summary>
--- C#声明:Single get_leftFeetBottomHeight()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_leftFeetBottomHeight()
end
--- <summary>
--- C#声明:Single get_rightFeetBottomHeight()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_rightFeetBottomHeight()
end
--- <summary>
--- C#声明:Void Update(Single)
--- </summary>
--- <param name="arg_deltaTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:Update(arg_deltaTime)
end
--- <summary>
--- C#声明:Void Rebind()
--- </summary>
--- <returns>System.Void</returns>
function Animator:Rebind()
end
--- <summary>
--- C#声明:Void ApplyBuiltinRootMotion()
--- </summary>
--- <returns>System.Void</returns>
function Animator:ApplyBuiltinRootMotion()
end
--- <summary>
--- C#声明:Boolean get_logWarnings()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_logWarnings()
end
--- <summary>
--- C#声明:Void set_logWarnings(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_logWarnings(arg_value)
end
--- <summary>
--- C#声明:Boolean get_fireEvents()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_fireEvents()
end
--- <summary>
--- C#声明:Void set_fireEvents(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_fireEvents(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 GetVector(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Vector3</returns>
function Animator:GetVector(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 GetVector(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>UnityEngine.Vector3</returns>
function Animator:GetVector(arg_id)
end
--- <summary>
--- C#声明:Void SetVector(System.String, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Animator:SetVector(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetVector(Int32, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Animator:SetVector(arg_id,arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion GetQuaternion(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Quaternion</returns>
function Animator:GetQuaternion(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion GetQuaternion(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>UnityEngine.Quaternion</returns>
function Animator:GetQuaternion(arg_id)
end
--- <summary>
--- C#声明:Void SetQuaternion(System.String, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Animator:SetQuaternion(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetQuaternion(Int32, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_value">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Animator:SetQuaternion(arg_id,arg_value)
end
--- <summary>
--- C#声明:Void CrossFade(Int32, Single, Int32, Single)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_normalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFade(arg_stateNameHash,arg_transitionDuration,arg_layer,arg_normalizedTime)
end
--- <summary>
--- C#声明:Void CrossFade(Int32, Single, Int32)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:CrossFade(arg_stateNameHash,arg_transitionDuration,arg_layer)
end
--- <summary>
--- C#声明:Void CrossFade(Int32, Single)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFade(arg_stateNameHash,arg_transitionDuration)
end
--- <summary>
--- C#声明:Void PlayInFixedTime(System.String, Int32)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:PlayInFixedTime(arg_stateName,arg_layer)
end
--- <summary>
--- C#声明:Void PlayInFixedTime(System.String)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <returns>System.Void</returns>
function Animator:PlayInFixedTime(arg_stateName)
end
--- <summary>
--- C#声明:Void PlayInFixedTime(System.String, Int32, Single)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_fixedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:PlayInFixedTime(arg_stateName,arg_layer,arg_fixedTime)
end
--- <summary>
--- C#声明:Void PlayInFixedTime(Int32, Int32, Single)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_fixedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:PlayInFixedTime(arg_stateNameHash,arg_layer,arg_fixedTime)
end
--- <summary>
--- C#声明:Void PlayInFixedTime(Int32, Int32)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:PlayInFixedTime(arg_stateNameHash,arg_layer)
end
--- <summary>
--- C#声明:Void PlayInFixedTime(Int32)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:PlayInFixedTime(arg_stateNameHash)
end
--- <summary>
--- C#声明:Void Play(System.String, Int32)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:Play(arg_stateName,arg_layer)
end
--- <summary>
--- C#声明:Void Play(System.String)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <returns>System.Void</returns>
function Animator:Play(arg_stateName)
end
--- <summary>
--- C#声明:Void Play(System.String, Int32, Single)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_normalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:Play(arg_stateName,arg_layer,arg_normalizedTime)
end
--- <summary>
--- C#声明:Void Play(Int32, Int32, Single)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_normalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:Play(arg_stateNameHash,arg_layer,arg_normalizedTime)
end
--- <summary>
--- C#声明:Void Play(Int32, Int32)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:Play(arg_stateNameHash,arg_layer)
end
--- <summary>
--- C#声明:Void Play(Int32)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:Play(arg_stateNameHash)
end
--- <summary>
--- C#声明:Void SetTarget(UnityEngine.AvatarTarget, Single)
--- </summary>
--- <param name="arg_targetIndex">UnityEngine.AvatarTarget</param>
--- <param name="arg_targetNormalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetTarget(arg_targetIndex,arg_targetNormalizedTime)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_targetPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Animator:get_targetPosition()
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_targetRotation()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Animator:get_targetRotation()
end
--- <summary>
--- C#声明:Boolean IsControlled(UnityEngine.Transform)
--- </summary>
--- <param name="arg_transform">UnityEngine.Transform</param>
--- <returns>System.Boolean</returns>
function Animator:IsControlled(arg_transform)
end
--- <summary>
--- C#声明:UnityEngine.Transform GetBoneTransform(UnityEngine.HumanBodyBones)
--- </summary>
--- <param name="arg_humanBoneId">UnityEngine.HumanBodyBones</param>
--- <returns>UnityEngine.Transform</returns>
function Animator:GetBoneTransform(arg_humanBoneId)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorCullingMode get_cullingMode()
--- </summary>
--- <returns>UnityEngine.AnimatorCullingMode</returns>
function Animator:get_cullingMode()
end
--- <summary>
--- C#声明:Void set_cullingMode(UnityEngine.AnimatorCullingMode)
--- </summary>
--- <param name="arg_value">UnityEngine.AnimatorCullingMode</param>
--- <returns>System.Void</returns>
function Animator:set_cullingMode(arg_value)
end
--- <summary>
--- C#声明:Void StartPlayback()
--- </summary>
--- <returns>System.Void</returns>
function Animator:StartPlayback()
end
--- <summary>
--- C#声明:Void StopPlayback()
--- </summary>
--- <returns>System.Void</returns>
function Animator:StopPlayback()
end
--- <summary>
--- C#声明:Single get_playbackTime()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_playbackTime()
end
--- <summary>
--- C#声明:Void set_playbackTime(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:set_playbackTime(arg_value)
end
--- <summary>
--- C#声明:Void StartRecording(Int32)
--- </summary>
--- <param name="arg_frameCount">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:StartRecording(arg_frameCount)
end
--- <summary>
--- C#声明:Void StopRecording()
--- </summary>
--- <returns>System.Void</returns>
function Animator:StopRecording()
end
--- <summary>
--- C#声明:Single get_recorderStartTime()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_recorderStartTime()
end
--- <summary>
--- C#声明:Void set_recorderStartTime(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:set_recorderStartTime(arg_value)
end
--- <summary>
--- C#声明:Single get_recorderStopTime()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_recorderStopTime()
end
--- <summary>
--- C#声明:Void set_recorderStopTime(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:set_recorderStopTime(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorRecorderMode get_recorderMode()
--- </summary>
--- <returns>UnityEngine.AnimatorRecorderMode</returns>
function Animator:get_recorderMode()
end
--- <summary>
--- C#声明:UnityEngine.RuntimeAnimatorController get_runtimeAnimatorController()
--- </summary>
--- <returns>UnityEngine.RuntimeAnimatorController</returns>
function Animator:get_runtimeAnimatorController()
end
--- <summary>
--- C#声明:Void set_runtimeAnimatorController(UnityEngine.RuntimeAnimatorController)
--- </summary>
--- <param name="arg_value">UnityEngine.RuntimeAnimatorController</param>
--- <returns>System.Void</returns>
function Animator:set_runtimeAnimatorController(arg_value)
end
--- <summary>
--- C#声明:Boolean HasState(Int32, Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <param name="arg_stateID">System.Int32</param>
--- <returns>System.Boolean</returns>
function Animator:HasState(arg_layerIndex,arg_stateID)
end
--- <summary>
--- C#声明:Int32 StringToHash(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Int32</returns>
function Animator.StringToHash(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Avatar get_avatar()
--- </summary>
--- <returns>UnityEngine.Avatar</returns>
function Animator:get_avatar()
end
--- <summary>
--- C#声明:Void set_avatar(UnityEngine.Avatar)
--- </summary>
--- <param name="arg_value">UnityEngine.Avatar</param>
--- <returns>System.Void</returns>
function Animator:set_avatar(arg_value)
end
--- <summary>
--- C#声明:Boolean get_layersAffectMassCenter()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_layersAffectMassCenter()
end
--- <summary>
--- C#声明:Single GetIKRotationWeight(UnityEngine.AvatarIKGoal)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <returns>System.Single</returns>
function Animator:GetIKRotationWeight(arg_goal)
end
--- <summary>
--- C#声明:Void SetIKRotationWeight(UnityEngine.AvatarIKGoal, Single)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetIKRotationWeight(arg_goal,arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 GetIKHintPosition(UnityEngine.AvatarIKHint)
--- </summary>
--- <param name="arg_hint">UnityEngine.AvatarIKHint</param>
--- <returns>UnityEngine.Vector3</returns>
function Animator:GetIKHintPosition(arg_hint)
end
--- <summary>
--- C#声明:Void SetIKHintPosition(UnityEngine.AvatarIKHint, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_hint">UnityEngine.AvatarIKHint</param>
--- <param name="arg_hintPosition">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Animator:SetIKHintPosition(arg_hint,arg_hintPosition)
end
--- <summary>
--- C#声明:Single GetIKHintPositionWeight(UnityEngine.AvatarIKHint)
--- </summary>
--- <param name="arg_hint">UnityEngine.AvatarIKHint</param>
--- <returns>System.Single</returns>
function Animator:GetIKHintPositionWeight(arg_hint)
end
--- <summary>
--- C#声明:Void SetIKHintPositionWeight(UnityEngine.AvatarIKHint, Single)
--- </summary>
--- <param name="arg_hint">UnityEngine.AvatarIKHint</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetIKHintPositionWeight(arg_hint,arg_value)
end
--- <summary>
--- C#声明:Void SetLookAtPosition(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_lookAtPosition">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Animator:SetLookAtPosition(arg_lookAtPosition)
end
--- <summary>
--- C#声明:Void SetLookAtWeight(Single, Single, Single, Single)
--- </summary>
--- <param name="arg_weight">System.Single</param>
--- <param name="arg_bodyWeight">System.Single</param>
--- <param name="arg_headWeight">System.Single</param>
--- <param name="arg_eyesWeight">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetLookAtWeight(arg_weight,arg_bodyWeight,arg_headWeight,arg_eyesWeight)
end
--- <summary>
--- C#声明:Void SetLookAtWeight(Single, Single, Single)
--- </summary>
--- <param name="arg_weight">System.Single</param>
--- <param name="arg_bodyWeight">System.Single</param>
--- <param name="arg_headWeight">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetLookAtWeight(arg_weight,arg_bodyWeight,arg_headWeight)
end
--- <summary>
--- C#声明:Void SetLookAtWeight(Single, Single)
--- </summary>
--- <param name="arg_weight">System.Single</param>
--- <param name="arg_bodyWeight">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetLookAtWeight(arg_weight,arg_bodyWeight)
end
--- <summary>
--- C#声明:Void SetLookAtWeight(Single)
--- </summary>
--- <param name="arg_weight">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetLookAtWeight(arg_weight)
end
--- <summary>
--- C#声明:Void SetLookAtWeight(Single, Single, Single, Single, Single)
--- </summary>
--- <param name="arg_weight">System.Single</param>
--- <param name="arg_bodyWeight">System.Single</param>
--- <param name="arg_headWeight">System.Single</param>
--- <param name="arg_eyesWeight">System.Single</param>
--- <param name="arg_clampWeight">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetLookAtWeight(arg_weight,arg_bodyWeight,arg_headWeight,arg_eyesWeight,arg_clampWeight)
end
--- <summary>
--- C#声明:T GetBehaviour[T]()
--- </summary>
--- <returns>T</returns>
function Animator:GetBehaviour()
end
--- <summary>
--- C#声明:T[] GetBehaviours[T]()
--- </summary>
--- <returns>T[]</returns>
function Animator:GetBehaviours()
end
--- <summary>
--- C#声明:Boolean get_stabilizeFeet()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_stabilizeFeet()
end
--- <summary>
--- C#声明:Void set_stabilizeFeet(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_stabilizeFeet(arg_value)
end
--- <summary>
--- C#声明:Int32 get_layerCount()
--- </summary>
--- <returns>System.Int32</returns>
function Animator:get_layerCount()
end
--- <summary>
--- C#声明:System.String GetLayerName(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>System.String</returns>
function Animator:GetLayerName(arg_layerIndex)
end
--- <summary>
--- C#声明:Int32 GetLayerIndex(System.String)
--- </summary>
--- <param name="arg_layerName">System.String</param>
--- <returns>System.Int32</returns>
function Animator:GetLayerIndex(arg_layerName)
end
--- <summary>
--- C#声明:Single GetLayerWeight(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>System.Single</returns>
function Animator:GetLayerWeight(arg_layerIndex)
end
--- <summary>
--- C#声明:Void SetLayerWeight(Int32, Single)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <param name="arg_weight">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetLayerWeight(arg_layerIndex,arg_weight)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorStateInfo GetCurrentAnimatorStateInfo(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>UnityEngine.AnimatorStateInfo</returns>
function Animator:GetCurrentAnimatorStateInfo(arg_layerIndex)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorStateInfo GetNextAnimatorStateInfo(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>UnityEngine.AnimatorStateInfo</returns>
function Animator:GetNextAnimatorStateInfo(arg_layerIndex)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorTransitionInfo GetAnimatorTransitionInfo(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>UnityEngine.AnimatorTransitionInfo</returns>
function Animator:GetAnimatorTransitionInfo(arg_layerIndex)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorClipInfo[] GetCurrentAnimationClipState(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>UnityEngine.AnimatorClipInfo[]</returns>
function Animator:GetCurrentAnimationClipState(arg_layerIndex)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorClipInfo[] GetNextAnimationClipState(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>UnityEngine.AnimatorClipInfo[]</returns>
function Animator:GetNextAnimationClipState(arg_layerIndex)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorClipInfo[] GetCurrentAnimatorClipInfo(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>UnityEngine.AnimatorClipInfo[]</returns>
function Animator:GetCurrentAnimatorClipInfo(arg_layerIndex)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorClipInfo[] GetNextAnimatorClipInfo(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>UnityEngine.AnimatorClipInfo[]</returns>
function Animator:GetNextAnimatorClipInfo(arg_layerIndex)
end
--- <summary>
--- C#声明:Boolean IsInTransition(Int32)
--- </summary>
--- <param name="arg_layerIndex">System.Int32</param>
--- <returns>System.Boolean</returns>
function Animator:IsInTransition(arg_layerIndex)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorControllerParameter[] get_parameters()
--- </summary>
--- <returns>UnityEngine.AnimatorControllerParameter[]</returns>
function Animator:get_parameters()
end
--- <summary>
--- C#声明:Single get_feetPivotActive()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_feetPivotActive()
end
--- <summary>
--- C#声明:Void set_feetPivotActive(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:set_feetPivotActive(arg_value)
end
--- <summary>
--- C#声明:Single get_pivotWeight()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_pivotWeight()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_pivotPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Animator:get_pivotPosition()
end
--- <summary>
--- C#声明:Void MatchTarget(UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.AvatarTarget, UnityEngine.MatchTargetWeightMask, Single, Single)
--- </summary>
--- <param name="arg_matchPosition">UnityEngine.Vector3</param>
--- <param name="arg_matchRotation">UnityEngine.Quaternion</param>
--- <param name="arg_targetBodyPart">UnityEngine.AvatarTarget</param>
--- <param name="arg_weightMask">UnityEngine.MatchTargetWeightMask</param>
--- <param name="arg_startNormalizedTime">System.Single</param>
--- <param name="arg_targetNormalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:MatchTarget(arg_matchPosition,arg_matchRotation,arg_targetBodyPart,arg_weightMask,arg_startNormalizedTime,arg_targetNormalizedTime)
end
--- <summary>
--- C#声明:Void MatchTarget(UnityEngine.Vector3, UnityEngine.Quaternion, UnityEngine.AvatarTarget, UnityEngine.MatchTargetWeightMask, Single)
--- </summary>
--- <param name="arg_matchPosition">UnityEngine.Vector3</param>
--- <param name="arg_matchRotation">UnityEngine.Quaternion</param>
--- <param name="arg_targetBodyPart">UnityEngine.AvatarTarget</param>
--- <param name="arg_weightMask">UnityEngine.MatchTargetWeightMask</param>
--- <param name="arg_startNormalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:MatchTarget(arg_matchPosition,arg_matchRotation,arg_targetBodyPart,arg_weightMask,arg_startNormalizedTime)
end
--- <summary>
--- C#声明:Void InterruptMatchTarget(Boolean)
--- </summary>
--- <param name="arg_completeMatch">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:InterruptMatchTarget(arg_completeMatch)
end
--- <summary>
--- C#声明:Void InterruptMatchTarget()
--- </summary>
--- <returns>System.Void</returns>
function Animator:InterruptMatchTarget()
end
--- <summary>
--- C#声明:Boolean get_isMatchingTarget()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_isMatchingTarget()
end
--- <summary>
--- C#声明:Single get_speed()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_speed()
end
--- <summary>
--- C#声明:Void set_speed(Single)
--- </summary>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:set_speed(arg_value)
end
--- <summary>
--- C#声明:Void ForceStateNormalizedTime(Single)
--- </summary>
--- <param name="arg_normalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:ForceStateNormalizedTime(arg_normalizedTime)
end
--- <summary>
--- C#声明:Void CrossFadeInFixedTime(System.String, Single, Int32)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:CrossFadeInFixedTime(arg_stateName,arg_transitionDuration,arg_layer)
end
--- <summary>
--- C#声明:Void CrossFadeInFixedTime(System.String, Single)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFadeInFixedTime(arg_stateName,arg_transitionDuration)
end
--- <summary>
--- C#声明:Void CrossFadeInFixedTime(System.String, Single, Int32, Single)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_fixedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFadeInFixedTime(arg_stateName,arg_transitionDuration,arg_layer,arg_fixedTime)
end
--- <summary>
--- C#声明:Void CrossFadeInFixedTime(Int32, Single, Int32, Single)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_fixedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFadeInFixedTime(arg_stateNameHash,arg_transitionDuration,arg_layer,arg_fixedTime)
end
--- <summary>
--- C#声明:Void CrossFadeInFixedTime(Int32, Single, Int32)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:CrossFadeInFixedTime(arg_stateNameHash,arg_transitionDuration,arg_layer)
end
--- <summary>
--- C#声明:Void CrossFadeInFixedTime(Int32, Single)
--- </summary>
--- <param name="arg_stateNameHash">System.Int32</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFadeInFixedTime(arg_stateNameHash,arg_transitionDuration)
end
--- <summary>
--- C#声明:Void CrossFade(System.String, Single, Int32)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:CrossFade(arg_stateName,arg_transitionDuration,arg_layer)
end
--- <summary>
--- C#声明:Void CrossFade(System.String, Single)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFade(arg_stateName,arg_transitionDuration)
end
--- <summary>
--- C#声明:Void CrossFade(System.String, Single, Int32, Single)
--- </summary>
--- <param name="arg_stateName">System.String</param>
--- <param name="arg_transitionDuration">System.Single</param>
--- <param name="arg_layer">System.Int32</param>
--- <param name="arg_normalizedTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:CrossFade(arg_stateName,arg_transitionDuration,arg_layer,arg_normalizedTime)
end
--- <summary>
--- C#声明:Boolean get_isOptimizable()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_isOptimizable()
end
--- <summary>
--- C#声明:Boolean get_isHuman()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_isHuman()
end
--- <summary>
--- C#声明:Boolean get_hasRootMotion()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_hasRootMotion()
end
--- <summary>
--- C#声明:Single get_humanScale()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_humanScale()
end
--- <summary>
--- C#声明:Single GetFloat(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Single</returns>
function Animator:GetFloat(arg_name)
end
--- <summary>
--- C#声明:Single GetFloat(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Single</returns>
function Animator:GetFloat(arg_id)
end
--- <summary>
--- C#声明:Void SetFloat(System.String, Single)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetFloat(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetFloat(System.String, Single, Single, Single)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_dampTime">System.Single</param>
--- <param name="arg_deltaTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetFloat(arg_name,arg_value,arg_dampTime,arg_deltaTime)
end
--- <summary>
--- C#声明:Void SetFloat(Int32, Single)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetFloat(arg_id,arg_value)
end
--- <summary>
--- C#声明:Void SetFloat(Int32, Single, Single, Single)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_value">System.Single</param>
--- <param name="arg_dampTime">System.Single</param>
--- <param name="arg_deltaTime">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetFloat(arg_id,arg_value,arg_dampTime,arg_deltaTime)
end
--- <summary>
--- C#声明:Boolean GetBool(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function Animator:GetBool(arg_name)
end
--- <summary>
--- C#声明:Boolean GetBool(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Boolean</returns>
function Animator:GetBool(arg_id)
end
--- <summary>
--- C#声明:Void SetBool(System.String, Boolean)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:SetBool(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetBool(Int32, Boolean)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:SetBool(arg_id,arg_value)
end
--- <summary>
--- C#声明:Int32 GetInteger(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Int32</returns>
function Animator:GetInteger(arg_name)
end
--- <summary>
--- C#声明:Int32 GetInteger(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Int32</returns>
function Animator:GetInteger(arg_id)
end
--- <summary>
--- C#声明:Void SetInteger(System.String, Int32)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:SetInteger(arg_name,arg_value)
end
--- <summary>
--- C#声明:Void SetInteger(Int32, Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:SetInteger(arg_id,arg_value)
end
--- <summary>
--- C#声明:Void SetTrigger(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Animator:SetTrigger(arg_name)
end
--- <summary>
--- C#声明:Void SetTrigger(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:SetTrigger(arg_id)
end
--- <summary>
--- C#声明:Void ResetTrigger(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Animator:ResetTrigger(arg_name)
end
--- <summary>
--- C#声明:Void ResetTrigger(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Void</returns>
function Animator:ResetTrigger(arg_id)
end
--- <summary>
--- C#声明:Boolean IsParameterControlledByCurve(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function Animator:IsParameterControlledByCurve(arg_name)
end
--- <summary>
--- C#声明:Boolean IsParameterControlledByCurve(Int32)
--- </summary>
--- <param name="arg_id">System.Int32</param>
--- <returns>System.Boolean</returns>
function Animator:IsParameterControlledByCurve(arg_id)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_deltaPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Animator:get_deltaPosition()
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_deltaRotation()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Animator:get_deltaRotation()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_velocity()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Animator:get_velocity()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_angularVelocity()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Animator:get_angularVelocity()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_rootPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Animator:get_rootPosition()
end
--- <summary>
--- C#声明:Void set_rootPosition(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Animator:set_rootPosition(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_rootRotation()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Animator:get_rootRotation()
end
--- <summary>
--- C#声明:Void set_rootRotation(UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_value">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Animator:set_rootRotation(arg_value)
end
--- <summary>
--- C#声明:Boolean get_applyRootMotion()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_applyRootMotion()
end
--- <summary>
--- C#声明:Void set_applyRootMotion(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_applyRootMotion(arg_value)
end
--- <summary>
--- C#声明:Boolean get_linearVelocityBlending()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_linearVelocityBlending()
end
--- <summary>
--- C#声明:Void set_linearVelocityBlending(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_linearVelocityBlending(arg_value)
end
--- <summary>
--- C#声明:Boolean get_animatePhysics()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_animatePhysics()
end
--- <summary>
--- C#声明:Void set_animatePhysics(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_animatePhysics(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.AnimatorUpdateMode get_updateMode()
--- </summary>
--- <returns>UnityEngine.AnimatorUpdateMode</returns>
function Animator:get_updateMode()
end
--- <summary>
--- C#声明:Void set_updateMode(UnityEngine.AnimatorUpdateMode)
--- </summary>
--- <param name="arg_value">UnityEngine.AnimatorUpdateMode</param>
--- <returns>System.Void</returns>
function Animator:set_updateMode(arg_value)
end
--- <summary>
--- C#声明:Boolean get_hasTransformHierarchy()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_hasTransformHierarchy()
end
--- <summary>
--- C#声明:Single get_gravityWeight()
--- </summary>
--- <returns>System.Single</returns>
function Animator:get_gravityWeight()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_bodyPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Animator:get_bodyPosition()
end
--- <summary>
--- C#声明:Void set_bodyPosition(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Animator:set_bodyPosition(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_bodyRotation()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Animator:get_bodyRotation()
end
--- <summary>
--- C#声明:Void set_bodyRotation(UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_value">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Animator:set_bodyRotation(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 GetIKPosition(UnityEngine.AvatarIKGoal)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <returns>UnityEngine.Vector3</returns>
function Animator:GetIKPosition(arg_goal)
end
--- <summary>
--- C#声明:Void SetIKPosition(UnityEngine.AvatarIKGoal, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <param name="arg_goalPosition">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Animator:SetIKPosition(arg_goal,arg_goalPosition)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion GetIKRotation(UnityEngine.AvatarIKGoal)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <returns>UnityEngine.Quaternion</returns>
function Animator:GetIKRotation(arg_goal)
end
--- <summary>
--- C#声明:Void SetIKRotation(UnityEngine.AvatarIKGoal, UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <param name="arg_goalRotation">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Animator:SetIKRotation(arg_goal,arg_goalRotation)
end
--- <summary>
--- C#声明:Single GetIKPositionWeight(UnityEngine.AvatarIKGoal)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <returns>System.Single</returns>
function Animator:GetIKPositionWeight(arg_goal)
end
--- <summary>
--- C#声明:Void SetIKPositionWeight(UnityEngine.AvatarIKGoal, Single)
--- </summary>
--- <param name="arg_goal">UnityEngine.AvatarIKGoal</param>
--- <param name="arg_value">System.Single</param>
--- <returns>System.Void</returns>
function Animator:SetIKPositionWeight(arg_goal,arg_value)
end
--- <summary>
--- C#声明:Boolean get_enabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_enabled()
end
--- <summary>
--- C#声明:Void set_enabled(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Animator:set_enabled(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isActiveAndEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Animator:get_isActiveAndEnabled()
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Animator:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function Animator:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Animator:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function Animator:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function Animator:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Animator:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function Animator:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Animator:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Animator:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Animator:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animator:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function Animator:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animator:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Animator:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function Animator:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Animator:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Animator:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Animator:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animator:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function Animator:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Animator:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function Animator:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Animator:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function Animator:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Animator:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function Animator:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function Animator:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animator:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Animator:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Animator:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animator:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animator:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Animator:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Animator:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animator:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animator:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function Animator:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Animator:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Animator:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Animator:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Animator:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Animator:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Animator:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Animator:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Animator:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Animator:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Animator:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Animator:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Animator:GetType()
end

--create by yangxun
Transform={}

--- <summary>
--- 属性:Vector3
--- </summary>
Transform.position=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.localPosition=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.eulerAngles=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.localEulerAngles=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.right=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.up=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.forward=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Transform.rotation=nil
--- <summary>
--- 属性:Quaternion
--- </summary>
Transform.localRotation=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.localScale=nil
--- <summary>
--- 属性:Transform
--- </summary>
Transform.parent=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Transform.worldToLocalMatrix=nil
--- <summary>
--- 属性:Matrix4x4
--- </summary>
Transform.localToWorldMatrix=nil
--- <summary>
--- 属性:Transform
--- </summary>
Transform.root=nil
--- <summary>
--- 属性:Int32
--- </summary>
Transform.childCount=nil
--- <summary>
--- 属性:Vector3
--- </summary>
Transform.lossyScale=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Transform.hasChanged=nil
--- <summary>
--- 属性:Transform
--- </summary>
Transform.transform=nil
--- <summary>
--- 属性:GameObject
--- </summary>
Transform.gameObject=nil
--- <summary>
--- 属性:String
--- </summary>
Transform.tag=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.rigidbody=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.rigidbody2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.camera=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.light=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.animation=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.constantForce=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.renderer=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.audio=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.guiText=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.networkView=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.guiElement=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.guiTexture=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.collider=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.collider2D=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.hingeJoint=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.particleEmitter=nil
--- <summary>
--- 属性:Component
--- </summary>
Transform.particleSystem=nil
--- <summary>
--- 属性:String
--- </summary>
Transform.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
Transform.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.Vector3 TransformPoint(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:TransformPoint(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 InverseTransformPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:InverseTransformPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 InverseTransformPoint(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:InverseTransformPoint(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_root()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Transform:get_root()
end
--- <summary>
--- C#声明:Int32 get_childCount()
--- </summary>
--- <returns>System.Int32</returns>
function Transform:get_childCount()
end
--- <summary>
--- C#声明:Void DetachChildren()
--- </summary>
--- <returns>System.Void</returns>
function Transform:DetachChildren()
end
--- <summary>
--- C#声明:Void SetAsFirstSibling()
--- </summary>
--- <returns>System.Void</returns>
function Transform:SetAsFirstSibling()
end
--- <summary>
--- C#声明:Void SetAsLastSibling()
--- </summary>
--- <returns>System.Void</returns>
function Transform:SetAsLastSibling()
end
--- <summary>
--- C#声明:Void SetSiblingIndex(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Void</returns>
function Transform:SetSiblingIndex(arg_index)
end
--- <summary>
--- C#声明:Int32 GetSiblingIndex()
--- </summary>
--- <returns>System.Int32</returns>
function Transform:GetSiblingIndex()
end
--- <summary>
--- C#声明:UnityEngine.Transform Find(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Transform</returns>
function Transform:Find(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_lossyScale()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_lossyScale()
end
--- <summary>
--- C#声明:Boolean IsChildOf(UnityEngine.Transform)
--- </summary>
--- <param name="arg_parent">UnityEngine.Transform</param>
--- <returns>System.Boolean</returns>
function Transform:IsChildOf(arg_parent)
end
--- <summary>
--- C#声明:Boolean get_hasChanged()
--- </summary>
--- <returns>System.Boolean</returns>
function Transform:get_hasChanged()
end
--- <summary>
--- C#声明:Void set_hasChanged(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Transform:set_hasChanged(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform FindChild(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Transform</returns>
function Transform:FindChild(arg_name)
end
--- <summary>
--- C#声明:System.Collections.IEnumerator GetEnumerator()
--- </summary>
--- <returns>System.Collections.IEnumerator</returns>
function Transform:GetEnumerator()
end
--- <summary>
--- C#声明:Void RotateAround(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <param name="arg_angle">System.Single</param>
--- <returns>System.Void</returns>
function Transform:RotateAround(arg_axis,arg_angle)
end
--- <summary>
--- C#声明:Void RotateAroundLocal(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <param name="arg_angle">System.Single</param>
--- <returns>System.Void</returns>
function Transform:RotateAroundLocal(arg_axis,arg_angle)
end
--- <summary>
--- C#声明:UnityEngine.Transform GetChild(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.Transform</returns>
function Transform:GetChild(arg_index)
end
--- <summary>
--- C#声明:Int32 GetChildCount()
--- </summary>
--- <returns>System.Int32</returns>
function Transform:GetChildCount()
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_position()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_position()
end
--- <summary>
--- C#声明:Void set_position(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_position(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_localPosition()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_localPosition()
end
--- <summary>
--- C#声明:Void set_localPosition(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_localPosition(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_eulerAngles()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_eulerAngles()
end
--- <summary>
--- C#声明:Void set_eulerAngles(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_eulerAngles(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_localEulerAngles()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_localEulerAngles()
end
--- <summary>
--- C#声明:Void set_localEulerAngles(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_localEulerAngles(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_right()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_right()
end
--- <summary>
--- C#声明:Void set_right(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_right(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_up()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_up()
end
--- <summary>
--- C#声明:Void set_up(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_up(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_forward()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_forward()
end
--- <summary>
--- C#声明:Void set_forward(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_forward(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_rotation()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Transform:get_rotation()
end
--- <summary>
--- C#声明:Void set_rotation(UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_value">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Transform:set_rotation(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Quaternion get_localRotation()
--- </summary>
--- <returns>UnityEngine.Quaternion</returns>
function Transform:get_localRotation()
end
--- <summary>
--- C#声明:Void set_localRotation(UnityEngine.Quaternion)
--- </summary>
--- <param name="arg_value">UnityEngine.Quaternion</param>
--- <returns>System.Void</returns>
function Transform:set_localRotation(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 get_localScale()
--- </summary>
--- <returns>UnityEngine.Vector3</returns>
function Transform:get_localScale()
end
--- <summary>
--- C#声明:Void set_localScale(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_value">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:set_localScale(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_parent()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Transform:get_parent()
end
--- <summary>
--- C#声明:Void set_parent(UnityEngine.Transform)
--- </summary>
--- <param name="arg_value">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Transform:set_parent(arg_value)
end
--- <summary>
--- C#声明:Void SetParent(UnityEngine.Transform)
--- </summary>
--- <param name="arg_parent">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Transform:SetParent(arg_parent)
end
--- <summary>
--- C#声明:Void SetParent(UnityEngine.Transform, Boolean)
--- </summary>
--- <param name="arg_parent">UnityEngine.Transform</param>
--- <param name="arg_worldPositionStays">System.Boolean</param>
--- <returns>System.Void</returns>
function Transform:SetParent(arg_parent,arg_worldPositionStays)
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_worldToLocalMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Transform:get_worldToLocalMatrix()
end
--- <summary>
--- C#声明:UnityEngine.Matrix4x4 get_localToWorldMatrix()
--- </summary>
--- <returns>UnityEngine.Matrix4x4</returns>
function Transform:get_localToWorldMatrix()
end
--- <summary>
--- C#声明:Void Translate(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_translation">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:Translate(arg_translation)
end
--- <summary>
--- C#声明:Void Translate(UnityEngine.Vector3, UnityEngine.Space)
--- </summary>
--- <param name="arg_translation">UnityEngine.Vector3</param>
--- <param name="arg_relativeTo">UnityEngine.Space</param>
--- <returns>System.Void</returns>
function Transform:Translate(arg_translation,arg_relativeTo)
end
--- <summary>
--- C#声明:Void Translate(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>System.Void</returns>
function Transform:Translate(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:Void Translate(Single, Single, Single, UnityEngine.Space)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <param name="arg_relativeTo">UnityEngine.Space</param>
--- <returns>System.Void</returns>
function Transform:Translate(arg_x,arg_y,arg_z,arg_relativeTo)
end
--- <summary>
--- C#声明:Void Translate(UnityEngine.Vector3, UnityEngine.Transform)
--- </summary>
--- <param name="arg_translation">UnityEngine.Vector3</param>
--- <param name="arg_relativeTo">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Transform:Translate(arg_translation,arg_relativeTo)
end
--- <summary>
--- C#声明:Void Translate(Single, Single, Single, UnityEngine.Transform)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <param name="arg_relativeTo">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Transform:Translate(arg_x,arg_y,arg_z,arg_relativeTo)
end
--- <summary>
--- C#声明:Void Rotate(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_eulerAngles">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:Rotate(arg_eulerAngles)
end
--- <summary>
--- C#声明:Void Rotate(UnityEngine.Vector3, UnityEngine.Space)
--- </summary>
--- <param name="arg_eulerAngles">UnityEngine.Vector3</param>
--- <param name="arg_relativeTo">UnityEngine.Space</param>
--- <returns>System.Void</returns>
function Transform:Rotate(arg_eulerAngles,arg_relativeTo)
end
--- <summary>
--- C#声明:Void Rotate(Single, Single, Single)
--- </summary>
--- <param name="arg_xAngle">System.Single</param>
--- <param name="arg_yAngle">System.Single</param>
--- <param name="arg_zAngle">System.Single</param>
--- <returns>System.Void</returns>
function Transform:Rotate(arg_xAngle,arg_yAngle,arg_zAngle)
end
--- <summary>
--- C#声明:Void Rotate(Single, Single, Single, UnityEngine.Space)
--- </summary>
--- <param name="arg_xAngle">System.Single</param>
--- <param name="arg_yAngle">System.Single</param>
--- <param name="arg_zAngle">System.Single</param>
--- <param name="arg_relativeTo">UnityEngine.Space</param>
--- <returns>System.Void</returns>
function Transform:Rotate(arg_xAngle,arg_yAngle,arg_zAngle,arg_relativeTo)
end
--- <summary>
--- C#声明:Void Rotate(UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <param name="arg_angle">System.Single</param>
--- <returns>System.Void</returns>
function Transform:Rotate(arg_axis,arg_angle)
end
--- <summary>
--- C#声明:Void Rotate(UnityEngine.Vector3, Single, UnityEngine.Space)
--- </summary>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <param name="arg_angle">System.Single</param>
--- <param name="arg_relativeTo">UnityEngine.Space</param>
--- <returns>System.Void</returns>
function Transform:Rotate(arg_axis,arg_angle,arg_relativeTo)
end
--- <summary>
--- C#声明:Void RotateAround(UnityEngine.Vector3, UnityEngine.Vector3, Single)
--- </summary>
--- <param name="arg_point">UnityEngine.Vector3</param>
--- <param name="arg_axis">UnityEngine.Vector3</param>
--- <param name="arg_angle">System.Single</param>
--- <returns>System.Void</returns>
function Transform:RotateAround(arg_point,arg_axis,arg_angle)
end
--- <summary>
--- C#声明:Void LookAt(UnityEngine.Transform)
--- </summary>
--- <param name="arg_target">UnityEngine.Transform</param>
--- <returns>System.Void</returns>
function Transform:LookAt(arg_target)
end
--- <summary>
--- C#声明:Void LookAt(UnityEngine.Transform, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_target">UnityEngine.Transform</param>
--- <param name="arg_worldUp">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:LookAt(arg_target,arg_worldUp)
end
--- <summary>
--- C#声明:Void LookAt(UnityEngine.Vector3, UnityEngine.Vector3)
--- </summary>
--- <param name="arg_worldPosition">UnityEngine.Vector3</param>
--- <param name="arg_worldUp">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:LookAt(arg_worldPosition,arg_worldUp)
end
--- <summary>
--- C#声明:Void LookAt(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_worldPosition">UnityEngine.Vector3</param>
--- <returns>System.Void</returns>
function Transform:LookAt(arg_worldPosition)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 TransformDirection(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:TransformDirection(arg_direction)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 TransformDirection(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:TransformDirection(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 InverseTransformDirection(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_direction">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:InverseTransformDirection(arg_direction)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 InverseTransformDirection(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:InverseTransformDirection(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 TransformVector(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_vector">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:TransformVector(arg_vector)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 TransformVector(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:TransformVector(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 InverseTransformVector(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_vector">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:InverseTransformVector(arg_vector)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 InverseTransformVector(Single, Single, Single)
--- </summary>
--- <param name="arg_x">System.Single</param>
--- <param name="arg_y">System.Single</param>
--- <param name="arg_z">System.Single</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:InverseTransformVector(arg_x,arg_y,arg_z)
end
--- <summary>
--- C#声明:UnityEngine.Vector3 TransformPoint(UnityEngine.Vector3)
--- </summary>
--- <param name="arg_position">UnityEngine.Vector3</param>
--- <returns>UnityEngine.Vector3</returns>
function Transform:TransformPoint(arg_position)
end
--- <summary>
--- C#声明:UnityEngine.Transform get_transform()
--- </summary>
--- <returns>UnityEngine.Transform</returns>
function Transform:get_transform()
end
--- <summary>
--- C#声明:UnityEngine.GameObject get_gameObject()
--- </summary>
--- <returns>UnityEngine.GameObject</returns>
function Transform:get_gameObject()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Transform:GetComponent(arg_type)
end
--- <summary>
--- C#声明:T GetComponent[T]()
--- </summary>
--- <returns>T</returns>
function Transform:GetComponent()
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponent(System.String)
--- </summary>
--- <param name="arg_type">System.String</param>
--- <returns>UnityEngine.Component</returns>
function Transform:GetComponent(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Transform:GetComponentInChildren(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInChildren[T]()
--- </summary>
--- <returns>T</returns>
function Transform:GetComponentInChildren()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Transform:GetComponentsInChildren(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInChildren(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Transform:GetComponentsInChildren(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Transform:GetComponentsInChildren(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_result">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Transform:GetComponentsInChildren(arg_includeInactive,arg_result)
end
--- <summary>
--- C#声明:T[] GetComponentsInChildren[T]()
--- </summary>
--- <returns>T[]</returns>
function Transform:GetComponentsInChildren()
end
--- <summary>
--- C#声明:Void GetComponentsInChildren[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Transform:GetComponentsInChildren(arg_results)
end
--- <summary>
--- C#声明:UnityEngine.Component GetComponentInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component</returns>
function Transform:GetComponentInParent(arg_t)
end
--- <summary>
--- C#声明:T GetComponentInParent[T]()
--- </summary>
--- <returns>T</returns>
function Transform:GetComponentInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Transform:GetComponentsInParent(arg_t)
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponentsInParent(System.Type, Boolean)
--- </summary>
--- <param name="arg_t">System.Type</param>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>UnityEngine.Component[]</returns>
function Transform:GetComponentsInParent(arg_t,arg_includeInactive)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T](Boolean)
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <returns>T[]</returns>
function Transform:GetComponentsInParent(arg_includeInactive)
end
--- <summary>
--- C#声明:Void GetComponentsInParent[T](Boolean, System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_includeInactive">System.Boolean</param>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Transform:GetComponentsInParent(arg_includeInactive,arg_results)
end
--- <summary>
--- C#声明:T[] GetComponentsInParent[T]()
--- </summary>
--- <returns>T[]</returns>
function Transform:GetComponentsInParent()
end
--- <summary>
--- C#声明:UnityEngine.Component[] GetComponents(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Component[]</returns>
function Transform:GetComponents(arg_type)
end
--- <summary>
--- C#声明:Void GetComponents(System.Type, System.Collections.Generic.List`1[UnityEngine.Component])
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <param name="arg_results">System.Collections.Generic.List`1[UnityEngine.Component]</param>
--- <returns>System.Void</returns>
function Transform:GetComponents(arg_type,arg_results)
end
--- <summary>
--- C#声明:Void GetComponents[T](System.Collections.Generic.List`1[T])
--- </summary>
--- <param name="arg_results">System.Collections.Generic.List`1[T]</param>
--- <returns>System.Void</returns>
function Transform:GetComponents(arg_results)
end
--- <summary>
--- C#声明:System.String get_tag()
--- </summary>
--- <returns>System.String</returns>
function Transform:get_tag()
end
--- <summary>
--- C#声明:Void set_tag(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Transform:set_tag(arg_value)
end
--- <summary>
--- C#声明:T[] GetComponents[T]()
--- </summary>
--- <returns>T[]</returns>
function Transform:GetComponents()
end
--- <summary>
--- C#声明:Boolean CompareTag(System.String)
--- </summary>
--- <param name="arg_tag">System.String</param>
--- <returns>System.Boolean</returns>
function Transform:CompareTag(arg_tag)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Transform:SendMessageUpwards(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Transform:SendMessageUpwards(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Transform:SendMessageUpwards(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessageUpwards(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Transform:SendMessageUpwards(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Transform:SendMessage(arg_methodName,arg_value,arg_options)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_value">System.Object</param>
--- <returns>System.Void</returns>
function Transform:SendMessage(arg_methodName,arg_value)
end
--- <summary>
--- C#声明:Void SendMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Transform:SendMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void SendMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Transform:SendMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Transform:BroadcastMessage(arg_methodName,arg_parameter,arg_options)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, System.Object)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_parameter">System.Object</param>
--- <returns>System.Void</returns>
function Transform:BroadcastMessage(arg_methodName,arg_parameter)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <returns>System.Void</returns>
function Transform:BroadcastMessage(arg_methodName)
end
--- <summary>
--- C#声明:Void BroadcastMessage(System.String, UnityEngine.SendMessageOptions)
--- </summary>
--- <param name="arg_methodName">System.String</param>
--- <param name="arg_options">UnityEngine.SendMessageOptions</param>
--- <returns>System.Void</returns>
function Transform:BroadcastMessage(arg_methodName,arg_options)
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_rigidbody()
end
--- <summary>
--- C#声明:UnityEngine.Component get_rigidbody2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_rigidbody2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_camera()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_camera()
end
--- <summary>
--- C#声明:UnityEngine.Component get_light()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_light()
end
--- <summary>
--- C#声明:UnityEngine.Component get_animation()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_animation()
end
--- <summary>
--- C#声明:UnityEngine.Component get_constantForce()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_constantForce()
end
--- <summary>
--- C#声明:UnityEngine.Component get_renderer()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_renderer()
end
--- <summary>
--- C#声明:UnityEngine.Component get_audio()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_audio()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiText()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_guiText()
end
--- <summary>
--- C#声明:UnityEngine.Component get_networkView()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_networkView()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiElement()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_guiElement()
end
--- <summary>
--- C#声明:UnityEngine.Component get_guiTexture()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_guiTexture()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_collider()
end
--- <summary>
--- C#声明:UnityEngine.Component get_collider2D()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_collider2D()
end
--- <summary>
--- C#声明:UnityEngine.Component get_hingeJoint()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_hingeJoint()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleEmitter()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_particleEmitter()
end
--- <summary>
--- C#声明:UnityEngine.Component get_particleSystem()
--- </summary>
--- <returns>UnityEngine.Component</returns>
function Transform:get_particleSystem()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function Transform:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Transform:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function Transform:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function Transform:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Transform:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function Transform:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Transform:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function Transform:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Transform:GetType()
end

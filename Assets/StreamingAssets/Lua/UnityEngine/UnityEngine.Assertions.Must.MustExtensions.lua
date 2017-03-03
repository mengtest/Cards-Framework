--create by yangxun
MustExtensions={}

--- <summary>
--- C#声明:Void MustBeTrue(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeTrue(arg_value)
end
--- <summary>
--- C#声明:Void MustBeTrue(Boolean, System.String)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeTrue(arg_value,arg_message)
end
--- <summary>
--- C#声明:Void MustBeFalse(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeFalse(arg_value)
end
--- <summary>
--- C#声明:Void MustBeFalse(Boolean, System.String)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeFalse(arg_value,arg_message)
end
--- <summary>
--- C#声明:Void MustBeApproximatelyEqual(Single, Single)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeApproximatelyEqual(arg_actual,arg_expected)
end
--- <summary>
--- C#声明:Void MustBeApproximatelyEqual(Single, Single, System.String)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeApproximatelyEqual(arg_actual,arg_expected,arg_message)
end
--- <summary>
--- C#声明:Void MustBeApproximatelyEqual(Single, Single, Single)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeApproximatelyEqual(arg_actual,arg_expected,arg_tolerance)
end
--- <summary>
--- C#声明:Void MustBeApproximatelyEqual(Single, Single, Single, System.String)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeApproximatelyEqual(arg_actual,arg_expected,arg_tolerance,arg_message)
end
--- <summary>
--- C#声明:Void MustNotBeApproximatelyEqual(Single, Single)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeApproximatelyEqual(arg_actual,arg_expected)
end
--- <summary>
--- C#声明:Void MustNotBeApproximatelyEqual(Single, Single, System.String)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeApproximatelyEqual(arg_actual,arg_expected,arg_message)
end
--- <summary>
--- C#声明:Void MustNotBeApproximatelyEqual(Single, Single, Single)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeApproximatelyEqual(arg_actual,arg_expected,arg_tolerance)
end
--- <summary>
--- C#声明:Void MustNotBeApproximatelyEqual(Single, Single, Single, System.String)
--- </summary>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeApproximatelyEqual(arg_actual,arg_expected,arg_tolerance,arg_message)
end
--- <summary>
--- C#声明:Void MustBeEqual[T](T, T)
--- </summary>
--- <param name="arg_actual">T</param>
--- <param name="arg_expected">T</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeEqual(arg_actual,arg_expected)
end
--- <summary>
--- C#声明:Void MustBeEqual[T](T, T, System.String)
--- </summary>
--- <param name="arg_actual">T</param>
--- <param name="arg_expected">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeEqual(arg_actual,arg_expected,arg_message)
end
--- <summary>
--- C#声明:Void MustNotBeEqual[T](T, T)
--- </summary>
--- <param name="arg_actual">T</param>
--- <param name="arg_expected">T</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeEqual(arg_actual,arg_expected)
end
--- <summary>
--- C#声明:Void MustNotBeEqual[T](T, T, System.String)
--- </summary>
--- <param name="arg_actual">T</param>
--- <param name="arg_expected">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeEqual(arg_actual,arg_expected,arg_message)
end
--- <summary>
--- C#声明:Void MustBeNull[T](T)
--- </summary>
--- <param name="arg_expected">T</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeNull(arg_expected)
end
--- <summary>
--- C#声明:Void MustBeNull[T](T, System.String)
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustBeNull(arg_expected,arg_message)
end
--- <summary>
--- C#声明:Void MustNotBeNull[T](T)
--- </summary>
--- <param name="arg_expected">T</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeNull(arg_expected)
end
--- <summary>
--- C#声明:Void MustNotBeNull[T](T, System.String)
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function MustExtensions.MustNotBeNull(arg_expected,arg_message)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function MustExtensions:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function MustExtensions:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function MustExtensions:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function MustExtensions:GetType()
end

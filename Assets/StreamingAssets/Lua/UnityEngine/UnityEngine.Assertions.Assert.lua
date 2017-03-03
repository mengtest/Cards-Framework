--create by yangxun
Assert={}

--- <summary>
--- C#声明:Void IsTrue(Boolean)
--- </summary>
--- <param name="arg_condition">System.Boolean</param>
--- <returns>System.Void</returns>
function Assert.IsTrue(arg_condition)
end
--- <summary>
--- C#声明:Void IsTrue(Boolean, System.String)
--- </summary>
--- <param name="arg_condition">System.Boolean</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.IsTrue(arg_condition,arg_message)
end
--- <summary>
--- C#声明:Void IsFalse(Boolean)
--- </summary>
--- <param name="arg_condition">System.Boolean</param>
--- <returns>System.Void</returns>
function Assert.IsFalse(arg_condition)
end
--- <summary>
--- C#声明:Void IsFalse(Boolean, System.String)
--- </summary>
--- <param name="arg_condition">System.Boolean</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.IsFalse(arg_condition,arg_message)
end
--- <summary>
--- C#声明:Void AreApproximatelyEqual(Single, Single)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <returns>System.Void</returns>
function Assert.AreApproximatelyEqual(arg_expected,arg_actual)
end
--- <summary>
--- C#声明:Void AreApproximatelyEqual(Single, Single, System.String)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.AreApproximatelyEqual(arg_expected,arg_actual,arg_message)
end
--- <summary>
--- C#声明:Void AreApproximatelyEqual(Single, Single, Single)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <returns>System.Void</returns>
function Assert.AreApproximatelyEqual(arg_expected,arg_actual,arg_tolerance)
end
--- <summary>
--- C#声明:Void AreApproximatelyEqual(Single, Single, Single, System.String)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.AreApproximatelyEqual(arg_expected,arg_actual,arg_tolerance,arg_message)
end
--- <summary>
--- C#声明:Void AreNotApproximatelyEqual(Single, Single)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <returns>System.Void</returns>
function Assert.AreNotApproximatelyEqual(arg_expected,arg_actual)
end
--- <summary>
--- C#声明:Void AreNotApproximatelyEqual(Single, Single, System.String)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.AreNotApproximatelyEqual(arg_expected,arg_actual,arg_message)
end
--- <summary>
--- C#声明:Void AreNotApproximatelyEqual(Single, Single, Single)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <returns>System.Void</returns>
function Assert.AreNotApproximatelyEqual(arg_expected,arg_actual,arg_tolerance)
end
--- <summary>
--- C#声明:Void AreNotApproximatelyEqual(Single, Single, Single, System.String)
--- </summary>
--- <param name="arg_expected">System.Single</param>
--- <param name="arg_actual">System.Single</param>
--- <param name="arg_tolerance">System.Single</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.AreNotApproximatelyEqual(arg_expected,arg_actual,arg_tolerance,arg_message)
end
--- <summary>
--- C#声明:Void AreEqual[T](T, T)
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_actual">T</param>
--- <returns>System.Void</returns>
function Assert.AreEqual(arg_expected,arg_actual)
end
--- <summary>
--- C#声明:Void AreEqual[T](T, T, System.String)
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_actual">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.AreEqual(arg_expected,arg_actual,arg_message)
end
--- <summary>
--- C#声明:Void AreEqual[T](T, T, System.String, System.Collections.Generic.IEqualityComparer`1[T])
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_actual">T</param>
--- <param name="arg_message">System.String</param>
--- <param name="arg_comparer">System.Collections.Generic.IEqualityComparer`1[T]</param>
--- <returns>System.Void</returns>
function Assert.AreEqual(arg_expected,arg_actual,arg_message,arg_comparer)
end
--- <summary>
--- C#声明:Void AreNotEqual[T](T, T)
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_actual">T</param>
--- <returns>System.Void</returns>
function Assert.AreNotEqual(arg_expected,arg_actual)
end
--- <summary>
--- C#声明:Void AreNotEqual[T](T, T, System.String)
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_actual">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.AreNotEqual(arg_expected,arg_actual,arg_message)
end
--- <summary>
--- C#声明:Void AreNotEqual[T](T, T, System.String, System.Collections.Generic.IEqualityComparer`1[T])
--- </summary>
--- <param name="arg_expected">T</param>
--- <param name="arg_actual">T</param>
--- <param name="arg_message">System.String</param>
--- <param name="arg_comparer">System.Collections.Generic.IEqualityComparer`1[T]</param>
--- <returns>System.Void</returns>
function Assert.AreNotEqual(arg_expected,arg_actual,arg_message,arg_comparer)
end
--- <summary>
--- C#声明:Void IsNull[T](T)
--- </summary>
--- <param name="arg_value">T</param>
--- <returns>System.Void</returns>
function Assert.IsNull(arg_value)
end
--- <summary>
--- C#声明:Void IsNull[T](T, System.String)
--- </summary>
--- <param name="arg_value">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.IsNull(arg_value,arg_message)
end
--- <summary>
--- C#声明:Void IsNotNull[T](T)
--- </summary>
--- <param name="arg_value">T</param>
--- <returns>System.Void</returns>
function Assert.IsNotNull(arg_value)
end
--- <summary>
--- C#声明:Void IsNotNull[T](T, System.String)
--- </summary>
--- <param name="arg_value">T</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function Assert.IsNotNull(arg_value,arg_message)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Assert:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Assert:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Assert:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Assert:GetType()
end

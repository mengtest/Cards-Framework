--create by yangxun
AndroidJNI={}

--- <summary>
--- C#声明:Byte GetByteArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Byte</returns>
function AndroidJNI.GetByteArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Char GetCharArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Char</returns>
function AndroidJNI.GetCharArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Int16 GetShortArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Int16</returns>
function AndroidJNI.GetShortArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Int32 GetIntArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Int32</returns>
function AndroidJNI.GetIntArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Int64 GetLongArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Int64</returns>
function AndroidJNI.GetLongArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Single GetFloatArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Single</returns>
function AndroidJNI.GetFloatArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Double GetDoubleArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Double</returns>
function AndroidJNI.GetDoubleArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:IntPtr GetObjectArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetObjectArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Void SetBooleanArrayElement(IntPtr, Int32, Byte)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.Byte</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetBooleanArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetByteArrayElement(IntPtr, Int32, SByte)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.SByte</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetByteArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetCharArrayElement(IntPtr, Int32, Char)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.Char</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetCharArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetShortArrayElement(IntPtr, Int32, Int16)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.Int16</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetShortArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetIntArrayElement(IntPtr, Int32, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.Int32</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetIntArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetLongArrayElement(IntPtr, Int32, Int64)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.Int64</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetLongArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetFloatArrayElement(IntPtr, Int32, Single)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.Single</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetFloatArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetDoubleArrayElement(IntPtr, Int32, Double)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_val">System.Double</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetDoubleArrayElement(arg_array,arg_index,arg_val)
end
--- <summary>
--- C#声明:Void SetObjectArrayElement(IntPtr, Int32, IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetObjectArrayElement(arg_array,arg_index,arg_obj)
end
--- <summary>
--- C#声明:Void SetLongField(IntPtr, IntPtr, Int64)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Int64</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetLongField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetFloatField(IntPtr, IntPtr, Single)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Single</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetFloatField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetDoubleField(IntPtr, IntPtr, Double)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Double</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetDoubleField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:System.String CallStaticStringMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.String</returns>
function AndroidJNI.CallStaticStringMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:IntPtr CallStaticObjectMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.CallStaticObjectMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Int32 CallStaticIntMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Int32</returns>
function AndroidJNI.CallStaticIntMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Boolean CallStaticBooleanMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.CallStaticBooleanMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Int16 CallStaticShortMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Int16</returns>
function AndroidJNI.CallStaticShortMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Byte CallStaticByteMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Byte</returns>
function AndroidJNI.CallStaticByteMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Char CallStaticCharMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Char</returns>
function AndroidJNI.CallStaticCharMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Single CallStaticFloatMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Single</returns>
function AndroidJNI.CallStaticFloatMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Double CallStaticDoubleMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Double</returns>
function AndroidJNI.CallStaticDoubleMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Int64 CallStaticLongMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Int64</returns>
function AndroidJNI.CallStaticLongMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Void CallStaticVoidMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Void</returns>
function AndroidJNI.CallStaticVoidMethod(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:System.String GetStaticStringField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.String</returns>
function AndroidJNI.GetStaticStringField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:IntPtr GetStaticObjectField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetStaticObjectField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Boolean GetStaticBooleanField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.GetStaticBooleanField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Byte GetStaticByteField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Byte</returns>
function AndroidJNI.GetStaticByteField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Char GetStaticCharField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Char</returns>
function AndroidJNI.GetStaticCharField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Int16 GetStaticShortField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Int16</returns>
function AndroidJNI.GetStaticShortField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Int32 GetStaticIntField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Int32</returns>
function AndroidJNI.GetStaticIntField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Int64 GetStaticLongField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Int64</returns>
function AndroidJNI.GetStaticLongField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Single GetStaticFloatField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Single</returns>
function AndroidJNI.GetStaticFloatField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Double GetStaticDoubleField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Double</returns>
function AndroidJNI.GetStaticDoubleField(arg_clazz,arg_fieldID)
end
--- <summary>
--- C#声明:Void SetStaticStringField(IntPtr, IntPtr, System.String)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.String</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticStringField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticObjectField(IntPtr, IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.IntPtr</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticObjectField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticBooleanField(IntPtr, IntPtr, Boolean)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Boolean</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticBooleanField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticByteField(IntPtr, IntPtr, Byte)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Byte</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticByteField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticCharField(IntPtr, IntPtr, Char)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Char</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticCharField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticShortField(IntPtr, IntPtr, Int16)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Int16</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticShortField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticIntField(IntPtr, IntPtr, Int32)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Int32</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticIntField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticLongField(IntPtr, IntPtr, Int64)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Int64</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticLongField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticFloatField(IntPtr, IntPtr, Single)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Single</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticFloatField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetStaticDoubleField(IntPtr, IntPtr, Double)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Double</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStaticDoubleField(arg_clazz,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:IntPtr ToBooleanArray(Boolean[])
--- </summary>
--- <param name="arg_array">System.Boolean[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToBooleanArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToByteArray(Byte[])
--- </summary>
--- <param name="arg_array">System.Byte[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToByteArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToCharArray(Char[])
--- </summary>
--- <param name="arg_array">System.Char[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToCharArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToShortArray(Int16[])
--- </summary>
--- <param name="arg_array">System.Int16[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToShortArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToIntArray(Int32[])
--- </summary>
--- <param name="arg_array">System.Int32[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToIntArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToLongArray(Int64[])
--- </summary>
--- <param name="arg_array">System.Int64[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToLongArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToFloatArray(Single[])
--- </summary>
--- <param name="arg_array">System.Single[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToFloatArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToDoubleArray(Double[])
--- </summary>
--- <param name="arg_array">System.Double[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToDoubleArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr ToObjectArray(IntPtr[], IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr[]</param>
--- <param name="arg_arrayClass">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToObjectArray(arg_array,arg_arrayClass)
end
--- <summary>
--- C#声明:IntPtr ToObjectArray(IntPtr[])
--- </summary>
--- <param name="arg_array">System.IntPtr[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToObjectArray(arg_array)
end
--- <summary>
--- C#声明:Boolean[] FromBooleanArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Boolean[]</returns>
function AndroidJNI.FromBooleanArray(arg_array)
end
--- <summary>
--- C#声明:Byte[] FromByteArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Byte[]</returns>
function AndroidJNI.FromByteArray(arg_array)
end
--- <summary>
--- C#声明:Char[] FromCharArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Char[]</returns>
function AndroidJNI.FromCharArray(arg_array)
end
--- <summary>
--- C#声明:Int16[] FromShortArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Int16[]</returns>
function AndroidJNI.FromShortArray(arg_array)
end
--- <summary>
--- C#声明:Int32[] FromIntArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Int32[]</returns>
function AndroidJNI.FromIntArray(arg_array)
end
--- <summary>
--- C#声明:Int64[] FromLongArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Int64[]</returns>
function AndroidJNI.FromLongArray(arg_array)
end
--- <summary>
--- C#声明:Single[] FromFloatArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Single[]</returns>
function AndroidJNI.FromFloatArray(arg_array)
end
--- <summary>
--- C#声明:Double[] FromDoubleArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Double[]</returns>
function AndroidJNI.FromDoubleArray(arg_array)
end
--- <summary>
--- C#声明:IntPtr[] FromObjectArray(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.IntPtr[]</returns>
function AndroidJNI.FromObjectArray(arg_array)
end
--- <summary>
--- C#声明:Int32 GetArrayLength(IntPtr)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <returns>System.Int32</returns>
function AndroidJNI.GetArrayLength(arg_array)
end
--- <summary>
--- C#声明:IntPtr NewBooleanArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewBooleanArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewByteArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewByteArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewCharArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewCharArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewShortArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewShortArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewIntArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewIntArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewLongArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewLongArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewFloatArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewFloatArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewDoubleArray(Int32)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewDoubleArray(arg_size)
end
--- <summary>
--- C#声明:IntPtr NewObjectArray(Int32, IntPtr, IntPtr)
--- </summary>
--- <param name="arg_size">System.Int32</param>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewObjectArray(arg_size,arg_clazz,arg_obj)
end
--- <summary>
--- C#声明:Boolean GetBooleanArrayElement(IntPtr, Int32)
--- </summary>
--- <param name="arg_array">System.IntPtr</param>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.GetBooleanArrayElement(arg_array,arg_index)
end
--- <summary>
--- C#声明:Int32 AttachCurrentThread()
--- </summary>
--- <returns>System.Int32</returns>
function AndroidJNI.AttachCurrentThread()
end
--- <summary>
--- C#声明:Int32 DetachCurrentThread()
--- </summary>
--- <returns>System.Int32</returns>
function AndroidJNI.DetachCurrentThread()
end
--- <summary>
--- C#声明:Int32 GetVersion()
--- </summary>
--- <returns>System.Int32</returns>
function AndroidJNI.GetVersion()
end
--- <summary>
--- C#声明:IntPtr FindClass(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.FindClass(arg_name)
end
--- <summary>
--- C#声明:IntPtr FromReflectedMethod(IntPtr)
--- </summary>
--- <param name="arg_refMethod">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.FromReflectedMethod(arg_refMethod)
end
--- <summary>
--- C#声明:IntPtr FromReflectedField(IntPtr)
--- </summary>
--- <param name="arg_refField">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.FromReflectedField(arg_refField)
end
--- <summary>
--- C#声明:IntPtr ToReflectedMethod(IntPtr, IntPtr, Boolean)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_isStatic">System.Boolean</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToReflectedMethod(arg_clazz,arg_methodID,arg_isStatic)
end
--- <summary>
--- C#声明:IntPtr ToReflectedField(IntPtr, IntPtr, Boolean)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_isStatic">System.Boolean</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ToReflectedField(arg_clazz,arg_fieldID,arg_isStatic)
end
--- <summary>
--- C#声明:IntPtr GetSuperclass(IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetSuperclass(arg_clazz)
end
--- <summary>
--- C#声明:Boolean IsAssignableFrom(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_clazz1">System.IntPtr</param>
--- <param name="arg_clazz2">System.IntPtr</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.IsAssignableFrom(arg_clazz1,arg_clazz2)
end
--- <summary>
--- C#声明:Int32 Throw(IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.Int32</returns>
function AndroidJNI.Throw(arg_obj)
end
--- <summary>
--- C#声明:Int32 ThrowNew(IntPtr, System.String)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_message">System.String</param>
--- <returns>System.Int32</returns>
function AndroidJNI.ThrowNew(arg_clazz,arg_message)
end
--- <summary>
--- C#声明:IntPtr ExceptionOccurred()
--- </summary>
--- <returns>System.IntPtr</returns>
function AndroidJNI.ExceptionOccurred()
end
--- <summary>
--- C#声明:Void ExceptionDescribe()
--- </summary>
--- <returns>System.Void</returns>
function AndroidJNI.ExceptionDescribe()
end
--- <summary>
--- C#声明:Void ExceptionClear()
--- </summary>
--- <returns>System.Void</returns>
function AndroidJNI.ExceptionClear()
end
--- <summary>
--- C#声明:Void FatalError(System.String)
--- </summary>
--- <param name="arg_message">System.String</param>
--- <returns>System.Void</returns>
function AndroidJNI.FatalError(arg_message)
end
--- <summary>
--- C#声明:Int32 PushLocalFrame(Int32)
--- </summary>
--- <param name="arg_capacity">System.Int32</param>
--- <returns>System.Int32</returns>
function AndroidJNI.PushLocalFrame(arg_capacity)
end
--- <summary>
--- C#声明:IntPtr PopLocalFrame(IntPtr)
--- </summary>
--- <param name="arg_result">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.PopLocalFrame(arg_result)
end
--- <summary>
--- C#声明:IntPtr NewGlobalRef(IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewGlobalRef(arg_obj)
end
--- <summary>
--- C#声明:Void DeleteGlobalRef(IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.Void</returns>
function AndroidJNI.DeleteGlobalRef(arg_obj)
end
--- <summary>
--- C#声明:IntPtr NewLocalRef(IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewLocalRef(arg_obj)
end
--- <summary>
--- C#声明:Void DeleteLocalRef(IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.Void</returns>
function AndroidJNI.DeleteLocalRef(arg_obj)
end
--- <summary>
--- C#声明:Boolean IsSameObject(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj1">System.IntPtr</param>
--- <param name="arg_obj2">System.IntPtr</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.IsSameObject(arg_obj1,arg_obj2)
end
--- <summary>
--- C#声明:Int32 EnsureLocalCapacity(Int32)
--- </summary>
--- <param name="arg_capacity">System.Int32</param>
--- <returns>System.Int32</returns>
function AndroidJNI.EnsureLocalCapacity(arg_capacity)
end
--- <summary>
--- C#声明:IntPtr AllocObject(IntPtr)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.AllocObject(arg_clazz)
end
--- <summary>
--- C#声明:IntPtr NewObject(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewObject(arg_clazz,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:IntPtr GetObjectClass(IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetObjectClass(arg_obj)
end
--- <summary>
--- C#声明:Boolean IsInstanceOf(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_clazz">System.IntPtr</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.IsInstanceOf(arg_obj,arg_clazz)
end
--- <summary>
--- C#声明:IntPtr GetMethodID(IntPtr, System.String, System.String)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_name">System.String</param>
--- <param name="arg_sig">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetMethodID(arg_clazz,arg_name,arg_sig)
end
--- <summary>
--- C#声明:IntPtr GetFieldID(IntPtr, System.String, System.String)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_name">System.String</param>
--- <param name="arg_sig">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetFieldID(arg_clazz,arg_name,arg_sig)
end
--- <summary>
--- C#声明:IntPtr GetStaticMethodID(IntPtr, System.String, System.String)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_name">System.String</param>
--- <param name="arg_sig">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetStaticMethodID(arg_clazz,arg_name,arg_sig)
end
--- <summary>
--- C#声明:IntPtr GetStaticFieldID(IntPtr, System.String, System.String)
--- </summary>
--- <param name="arg_clazz">System.IntPtr</param>
--- <param name="arg_name">System.String</param>
--- <param name="arg_sig">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetStaticFieldID(arg_clazz,arg_name,arg_sig)
end
--- <summary>
--- C#声明:IntPtr NewStringUTF(System.String)
--- </summary>
--- <param name="arg_bytes">System.String</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.NewStringUTF(arg_bytes)
end
--- <summary>
--- C#声明:Int32 GetStringUTFLength(IntPtr)
--- </summary>
--- <param name="arg_str">System.IntPtr</param>
--- <returns>System.Int32</returns>
function AndroidJNI.GetStringUTFLength(arg_str)
end
--- <summary>
--- C#声明:System.String GetStringUTFChars(IntPtr)
--- </summary>
--- <param name="arg_str">System.IntPtr</param>
--- <returns>System.String</returns>
function AndroidJNI.GetStringUTFChars(arg_str)
end
--- <summary>
--- C#声明:System.String CallStringMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.String</returns>
function AndroidJNI.CallStringMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:IntPtr CallObjectMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.CallObjectMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Int32 CallIntMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Int32</returns>
function AndroidJNI.CallIntMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Boolean CallBooleanMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.CallBooleanMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Int16 CallShortMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Int16</returns>
function AndroidJNI.CallShortMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Byte CallByteMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Byte</returns>
function AndroidJNI.CallByteMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Char CallCharMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Char</returns>
function AndroidJNI.CallCharMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Single CallFloatMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Single</returns>
function AndroidJNI.CallFloatMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Double CallDoubleMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Double</returns>
function AndroidJNI.CallDoubleMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Int64 CallLongMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Int64</returns>
function AndroidJNI.CallLongMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:Void CallVoidMethod(IntPtr, IntPtr, UnityEngine.jvalue[])
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_methodID">System.IntPtr</param>
--- <param name="arg_args">UnityEngine.jvalue[]</param>
--- <returns>System.Void</returns>
function AndroidJNI.CallVoidMethod(arg_obj,arg_methodID,arg_args)
end
--- <summary>
--- C#声明:System.String GetStringField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.String</returns>
function AndroidJNI.GetStringField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:IntPtr GetObjectField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.IntPtr</returns>
function AndroidJNI.GetObjectField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Boolean GetBooleanField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Boolean</returns>
function AndroidJNI.GetBooleanField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Byte GetByteField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Byte</returns>
function AndroidJNI.GetByteField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Char GetCharField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Char</returns>
function AndroidJNI.GetCharField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Int16 GetShortField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Int16</returns>
function AndroidJNI.GetShortField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Int32 GetIntField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Int32</returns>
function AndroidJNI.GetIntField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Int64 GetLongField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Int64</returns>
function AndroidJNI.GetLongField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Single GetFloatField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Single</returns>
function AndroidJNI.GetFloatField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Double GetDoubleField(IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <returns>System.Double</returns>
function AndroidJNI.GetDoubleField(arg_obj,arg_fieldID)
end
--- <summary>
--- C#声明:Void SetStringField(IntPtr, IntPtr, System.String)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.String</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetStringField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetObjectField(IntPtr, IntPtr, IntPtr)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.IntPtr</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetObjectField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetBooleanField(IntPtr, IntPtr, Boolean)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Boolean</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetBooleanField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetByteField(IntPtr, IntPtr, Byte)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Byte</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetByteField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetCharField(IntPtr, IntPtr, Char)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Char</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetCharField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetShortField(IntPtr, IntPtr, Int16)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Int16</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetShortField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:Void SetIntField(IntPtr, IntPtr, Int32)
--- </summary>
--- <param name="arg_obj">System.IntPtr</param>
--- <param name="arg_fieldID">System.IntPtr</param>
--- <param name="arg_val">System.Int32</param>
--- <returns>System.Void</returns>
function AndroidJNI.SetIntField(arg_obj,arg_fieldID,arg_val)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function AndroidJNI:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function AndroidJNI:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function AndroidJNI:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function AndroidJNI:GetType()
end

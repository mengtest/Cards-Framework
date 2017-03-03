--create by yangxun
AssetBundle={}

--- <summary>
--- 属性:Object
--- </summary>
AssetBundle.mainAsset=nil
--- <summary>
--- 属性:String
--- </summary>
AssetBundle.name=nil
--- <summary>
--- 属性:HideFlags
--- </summary>
AssetBundle.hideFlags=nil
--- <summary>
--- C#声明:UnityEngine.AssetBundleCreateRequest CreateFromMemory(Byte[])
--- </summary>
--- <param name="arg_binary">System.Byte[]</param>
--- <returns>UnityEngine.AssetBundleCreateRequest</returns>
function AssetBundle.CreateFromMemory(arg_binary)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundle CreateFromMemoryImmediate(Byte[])
--- </summary>
--- <param name="arg_binary">System.Byte[]</param>
--- <returns>UnityEngine.AssetBundle</returns>
function AssetBundle.CreateFromMemoryImmediate(arg_binary)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundle CreateFromFile(System.String)
--- </summary>
--- <param name="arg_path">System.String</param>
--- <returns>UnityEngine.AssetBundle</returns>
function AssetBundle.CreateFromFile(arg_path)
end
--- <summary>
--- C#声明:UnityEngine.Object get_mainAsset()
--- </summary>
--- <returns>UnityEngine.Object</returns>
function AssetBundle:get_mainAsset()
end
--- <summary>
--- C#声明:Boolean Contains(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Boolean</returns>
function AssetBundle:Contains(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Object Load(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Object</returns>
function AssetBundle:Load(arg_name)
end
--- <summary>
--- C#声明:T Load[T](System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>T</returns>
function AssetBundle:Load(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Object Load(System.String, System.Type)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Object</returns>
function AssetBundle:Load(arg_name,arg_type)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAsync(System.String, System.Type)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAsync(arg_name,arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Object[] LoadAll(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Object[]</returns>
function AssetBundle:LoadAll(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Object[] LoadAll()
--- </summary>
--- <returns>UnityEngine.Object[]</returns>
function AssetBundle:LoadAll()
end
--- <summary>
--- C#声明:T[] LoadAll[T]()
--- </summary>
--- <returns>T[]</returns>
function AssetBundle:LoadAll()
end
--- <summary>
--- C#声明:UnityEngine.Object LoadAsset(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Object</returns>
function AssetBundle:LoadAsset(arg_name)
end
--- <summary>
--- C#声明:T LoadAsset[T](System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>T</returns>
function AssetBundle:LoadAsset(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Object LoadAsset(System.String, System.Type)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Object</returns>
function AssetBundle:LoadAsset(arg_name,arg_type)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAssetAsync(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAssetAsync(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAssetAsync[T](System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAssetAsync(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAssetAsync(System.String, System.Type)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAssetAsync(arg_name,arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Object[] LoadAssetWithSubAssets(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.Object[]</returns>
function AssetBundle:LoadAssetWithSubAssets(arg_name)
end
--- <summary>
--- C#声明:T[] LoadAssetWithSubAssets[T](System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>T[]</returns>
function AssetBundle:LoadAssetWithSubAssets(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.Object[] LoadAssetWithSubAssets(System.String, System.Type)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Object[]</returns>
function AssetBundle:LoadAssetWithSubAssets(arg_name,arg_type)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAssetWithSubAssetsAsync(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAssetWithSubAssetsAsync(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAssetWithSubAssetsAsync[T](System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAssetWithSubAssetsAsync(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAssetWithSubAssetsAsync(System.String, System.Type)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAssetWithSubAssetsAsync(arg_name,arg_type)
end
--- <summary>
--- C#声明:UnityEngine.Object[] LoadAllAssets()
--- </summary>
--- <returns>UnityEngine.Object[]</returns>
function AssetBundle:LoadAllAssets()
end
--- <summary>
--- C#声明:T[] LoadAllAssets[T]()
--- </summary>
--- <returns>T[]</returns>
function AssetBundle:LoadAllAssets()
end
--- <summary>
--- C#声明:UnityEngine.Object[] LoadAllAssets(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.Object[]</returns>
function AssetBundle:LoadAllAssets(arg_type)
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAllAssetsAsync()
--- </summary>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAllAssetsAsync()
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAllAssetsAsync[T]()
--- </summary>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAllAssetsAsync()
end
--- <summary>
--- C#声明:UnityEngine.AssetBundleRequest LoadAllAssetsAsync(System.Type)
--- </summary>
--- <param name="arg_type">System.Type</param>
--- <returns>UnityEngine.AssetBundleRequest</returns>
function AssetBundle:LoadAllAssetsAsync(arg_type)
end
--- <summary>
--- C#声明:Void Unload(Boolean)
--- </summary>
--- <param name="arg_unloadAllLoadedObjects">System.Boolean</param>
--- <returns>System.Void</returns>
function AssetBundle:Unload(arg_unloadAllLoadedObjects)
end
--- <summary>
--- C#声明:System.String[] AllAssetNames()
--- </summary>
--- <returns>System.String[]</returns>
function AssetBundle:AllAssetNames()
end
--- <summary>
--- C#声明:System.String[] GetAllAssetNames()
--- </summary>
--- <returns>System.String[]</returns>
function AssetBundle:GetAllAssetNames()
end
--- <summary>
--- C#声明:System.String[] GetAllScenePaths()
--- </summary>
--- <returns>System.String[]</returns>
function AssetBundle:GetAllScenePaths()
end
--- <summary>
--- C#声明:System.String get_name()
--- </summary>
--- <returns>System.String</returns>
function AssetBundle:get_name()
end
--- <summary>
--- C#声明:Void set_name(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function AssetBundle:set_name(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.HideFlags get_hideFlags()
--- </summary>
--- <returns>UnityEngine.HideFlags</returns>
function AssetBundle:get_hideFlags()
end
--- <summary>
--- C#声明:Void set_hideFlags(UnityEngine.HideFlags)
--- </summary>
--- <param name="arg_value">UnityEngine.HideFlags</param>
--- <returns>System.Void</returns>
function AssetBundle:set_hideFlags(arg_value)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function AssetBundle:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_o">System.Object</param>
--- <returns>System.Boolean</returns>
function AssetBundle:Equals(arg_o)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function AssetBundle:GetHashCode()
end
--- <summary>
--- C#声明:Int32 GetInstanceID()
--- </summary>
--- <returns>System.Int32</returns>
function AssetBundle:GetInstanceID()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function AssetBundle:GetType()
end

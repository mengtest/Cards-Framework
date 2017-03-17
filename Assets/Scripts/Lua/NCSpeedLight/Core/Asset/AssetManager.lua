BundleInfo = {
	Bundle = nil,
	RefCount = 0,
}

AssetManager =
{
	Manifest = nil,
	Instance = nil,
};

function AssetManager:Initialize()
	if self.Instance == nil then
		AssetManager:New();
		if SharedVariable.ASSETBUNDLE_MODE then
			AssetManager.LoadAssetbundleManifest();
		end
	end
end

function AssetManager:New()
	o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
	self.Instance.LoadedBundles = {};
end

function AssetManager.LoadAssetbundleManifest()
	local path = NCSpeedLight.SharedVariable.ASSET_BUNDLE_PATH .. NCSpeedLight.SharedVariable.PLATFORM_NAME;
	local bundle = UnityEngine.AssetBundle.LoadFromFile(path);
	if bundle ~= nil then
		AssetManager.Instance.Manifest = NCSpeedLight.Helper.LoadAssetFromBundle("AssetBundleManifest", typeof(UnityEngine.AssetBundleManifest), bundle);
	else
		Log.Error("Init assetbundle manifest error.");
	end
end

function AssetManager.LoadAsset(assetPath, type)
	if SharedVariable.ASSETBUNDLE_MODE then
		local index = string.find(assetPath, "/[^/]*$")
		local assetName = string.sub(assetPath, index + 1, string.len(assetPath));
		local bundleName = string.sub(assetPath, 1, index - 1);
		bundleName = string.gsub(bundleName, "/", "_");
		local bundle = AssetManager.LoadAssetBundle(bundleName);
		if bundle ~= nil then
			return NCSpeedLight.Helper.LoadAssetFromBundle(assetName, type, bundle);
		else
			return nil;
		end
	else
		return UnityEngine.Resources.Load(assetPath, type);
	end
end

function AssetManager.LoadScene(sceneName)
end

function AssetManager.LoadAssetBundle(bundleName)
	return AssetManager.LoadDependency(bundleName);
end

function AssetManager.LoadDependency(bundleName)
	local dependencies = AssetManager.Instance.Manifest:GetAllDependencies(bundleName);
	if dependencies ~= nil and dependencies.Length > 0 then
		for i = 0, dependencies.Length - 1 do
			AssetManager.LoadDependency(dependencies[i]);
		end
	end
	local bundleInfo = AssetManager.Instance.LoadedBundles[bundleName];
	if bundleInfo == nil or bundleInfo.Bundle == nil then
		local path = NCSpeedLight.SharedVariable.ASSET_BUNDLE_PATH .. bundleName;
		local bundle = UnityEngine.AssetBundle.LoadFromFile(path);
		bundleInfo = {RefCount = 1, Bundle = bundle};
		AssetManager.Instance.LoadedBundles[bundleName] = bundleInfo;
	else
		bundleInfo.RefCount = bundleInfo.RefCount + 1;
	end
	return bundleInfo.Bundle;
end

function AssetManager.UnloadAssetBundle(assetPath)
	local index = string.find(assetPath, "/[^/]*$")
	local bundleName = string.sub(assetPath, 1, index - 1);
	bundleName = string.gsub(bundleName, "/", "_");
	local bundleInfo = AssetManager.Instance.LoadedBundles[bundleName];
	if bundleInfo ~= nil and bundleInfo.Bundle ~= nil then
		return AssetManager.UnloadDependency(bundleName);
	end
end

function AssetManager.UnloadDependency(bundleName)
	local dependencies = AssetManager.Instance.Manifest:GetAllDependencies(bundleName);
	if dependencies ~= nil and dependencies.Length > 0 then
		for i = 0, dependencies.Length - 1 do
			AssetManager.UnloadDependency(dependencies[i]);
		end
	end
	local bundleInfo = AssetManager.Instance.LoadedBundles[bundleName];
	if bundleInfo ~= nil then
		bundleInfo.RefCount = bundleInfo.RefCount - 1;
		if bundleInfo.RefCount <= 0 then
			if bundleInfo.Bundle ~= nil then
				bundleInfo.Bundle:Unload(true);
				AssetManager.Instance.LoadedBundles[bundleName] = nil;
			end
		end
	end
end
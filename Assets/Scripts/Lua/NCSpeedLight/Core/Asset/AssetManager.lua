-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: AssetManager.lua
-- Describle:  资源管理器
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
AssetManager =
{
	IsInitialited = false,
	Manifest = nil,
	Instance = nil,
	LoadedBundles = {},
	currentLoad = 0,
};

local this = AssetManager;

function AssetManager.Initialize()
	if AssetManager.IsInitialited == false then
		if SharedVariable.ASSETBUNDLE_MODE then
			Log.Info("AssetManager.Initialize");
			AssetManager.LoadAssetbundleManifest();
		end
	else
		Log.Error("AssetManager.Initialize: assetmanager has already been initialized.");
	end
end

function AssetManager.LoadAssetbundleManifest()
	local path = Constants.ASSET_BUNDLE_PATH .. Constants.ASSET_BUNDLE_MANIFEST_FILE;
	local bundle = UnityEngine.AssetBundle.LoadFromFile(path);
	if bundle ~= nil then
		AssetManager.Manifest = NCSpeedLight.Helper.LoadAssetFromBundle("AssetBundleManifest", typeof(UnityEngine.AssetBundleManifest), bundle);
		Log.Info("AssetManager.LoadAssetbundleManifest: load sccuss.");
	else
		Log.Error("AssetManager.LoadAssetbundleManifest: load error.");
	end
end

function AssetManager.LoadAsset(assetPath, type)
	if SharedVariable.ASSETBUNDLE_MODE then
		local index = string.find(assetPath, "/[^/]*$")
		local assetName = string.sub(assetPath, index + 1, string.len(assetPath));
		local bundleName = string.sub(assetPath, 1, index - 1);
		bundleName = string.gsub(bundleName, "/", "_");
		bundleName = string.lower(bundleName);
		bundleName = bundleName .. ".asset";
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
	if SharedVariable.ASSETBUNDLE_MODE then
		local bundleName = "bundle_scenes.asset";
		local bundle = AssetManager.LoadAssetBundle(bundleName);
		if bundle == nil then
			Log.Error("AssetManager.LoadScene: can not load scene caused by nil scene bundle file.");
		else
			return UnityEngine.SceneManagement.SceneManager.LoadScene(sceneName);
		end
	else
	end
end

function AssetManager.UnloadScene(sceneName)
end

function AssetManager.LoadAssetBundle(bundleName)
	local loadedDependencies = {};
	return AssetManager.LoadDependency(bundleName, loadedDependencies);
end

function AssetManager.LoadDependency(bundleName, loadedDependencies)
	local dependencies = AssetManager.Manifest:GetAllDependencies(bundleName);
	-- 存在引用且没有循环引用
	if dependencies ~= nil and dependencies.Length > 0 and loadedDependencies[bundleName] == nil then
		for i = 0, dependencies.Length - 1 do
			AssetManager.LoadDependency(dependencies[i], loadedDependencies);
		end
	end
	if AssetManager.currentLoad > 200 then
		return;
	end
	AssetManager.currentLoad = AssetManager.currentLoad + 1;
	Log.Info("AssetManager.LoadDependency: " .. bundleName);
	local bundleInfo = AssetManager.LoadedBundles[bundleName];
	if bundleInfo == nil or bundleInfo.Bundle == nil then
		local path = Constants.ASSET_BUNDLE_PATH .. bundleName;
		local bundle = UnityEngine.AssetBundle.LoadFromFile(path);
		bundleInfo = {RefCount = 1, Bundle = bundle};
		AssetManager.LoadedBundles[bundleName] = bundleInfo;
	else
		bundleInfo.RefCount = bundleInfo.RefCount + 1;
	end
	loadedDependencies[bundleName] = 1;
	return bundleInfo.Bundle;
end

function AssetManager.UnloadAssetBundle(assetPath)
	local index = string.find(assetPath, "/[^/]*$")
	local bundleName = string.sub(assetPath, 1, index - 1);
	bundleName = string.gsub(bundleName, "/", "_");
	local bundleInfo = AssetManager.LoadedBundles[bundleName];
	if bundleInfo ~= nil and bundleInfo.Bundle ~= nil then
		return AssetManager.UnloadDependency(bundleName);
	end
end

function AssetManager.UnloadDependency(bundleName)
	local dependencies = AssetManager.Manifest:GetAllDependencies(bundleName);
	if dependencies ~= nil and dependencies.Length > 0 then
		for i = 0, dependencies.Length - 1 do
			AssetManager.UnloadDependency(dependencies[i]);
		end
	end
	local bundleInfo = AssetManager.LoadedBundles[bundleName];
	if bundleInfo ~= nil then
		bundleInfo.RefCount = bundleInfo.RefCount - 1;
		if bundleInfo.RefCount <= 0 then
			if bundleInfo.Bundle ~= nil then
				bundleInfo.Bundle:Unload(true);
				AssetManager.LoadedBundles[bundleName] = nil;
			end
		end
	end
end

return this; 
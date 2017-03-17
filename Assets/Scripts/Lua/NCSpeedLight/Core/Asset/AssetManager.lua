BundleInfo = {
	Bundle = nil,
	RefCount = 0,
}

AssetManager =
{
	loadedBundles = {},
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
end

function AssetManager.LoadAssetbundleManifest()
	local path = NCSpeedLight.SharedVariable.ASSET_BUNDLE_PATH .. NCSpeedLight.SharedVariable.PLATFORM_NAME;
	local bundle = UnityEngine.AssetBundle.LoadFromFile(path);
	if bundle ~= nil then
		AssetManager.Instance.Manifest = bundle.LoadAsset("AssetBundleManifest", "UnityEngine.AssetBundleManifest");
	else
		Log.Error("Init assetbundle manifest error.");
	end
end

function AssetManager.LoadAsset(assetPath, type)
	if SharedVariable.ASSETBUNDLE_MODE then
	else
		return UnityEngine.Resources.Load(assetPath, type);
	end
end

function AssetManager.LoadScene(sceneName)
end

BundleInfo = {
	Bundle = nil,
	RefCount = 0,
}

AssetManager =
{
	loadedBundles = {}
};

local this = AssetManager;

function AssetManager:Initialize()
	this:Instance();
	if ASSETBUNDLE_MODE then
		AssetManager:LoadAssetbundleManifest();
	end
end

function AssetManager:LoadAssetbundleManifest()
end

function AssetManager:Instance()
	if self == nil then
		o = {}
		setmetatable(o, self)
		self.__index = self
	end
	return self;
end

function AssetManager.LoadAsset(assetPath, type)
	if ASSETBUNDLE_MODE then
	else
		return UnityEngine.Resources.Load(assetPath, type);
	end
end

function AssetManager.LoadScene(sceneName)
end
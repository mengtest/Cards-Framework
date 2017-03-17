BundleInfo = {
	Bundle = nil,
	RefCount = 0,
}

AssetManager =
{
	loadedBundles = {},
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
	if SharedVariable.ASSETBUNDLE_MODE then
	else
		return UnityEngine.Resources.Load(assetPath, type);
	end
end

function AssetManager.LoadScene(sceneName)
end
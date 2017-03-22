SharedVariable =
{
	CompanyName = "hongzhong",
	Version = "1.0.0",
	Channel = "hongzhong",
	Platform = "Android",
	TargetFramerate = 30,
	ProtobufProcessor = require 'protobuf',
	JsonProcessor = require 'cjson',
	ASSETBUNDLE_MODE = false,
	
	SelfInfo =
	{
		ID = - 1,
		Token = '',
		AccountID = '',
		AreaID = - 1,
		FullInfo = nil,
	},
	
	FBInfo = nil,
	
	FBEntryInfo = nil,
	
	DeskOffset = 0,
}

SharedVariable.JsonUrl = "http://papamajiangcdn.damaigame.com/json/" .. SharedVariable.CompanyName .. "/" .. SharedVariable.Platform .. "/" .. SharedVariable.Channel .. "/v" .. SharedVariable.Version .. "/qiumo.db?v=" .. tostring(System.DateTime.Now.Ticks);

function SharedVariable.ASSET_BUNDLE_PATH()
-- if UnityEngine.Application.isMobilePlatform or UnityEngine.Application.platform == UnityEngine.RuntimePlatform.WindowsPlayer or UnityEngine.Application.platform == UnityEngine.RuntimePlatform.OSXPlayer then
-- 	return UnityEngine.Application.persistentDataPath .. "/";
-- elseif UnityEngine.Application.isEditor then
-- 	local str = UnityEngine.Application.dataPath;
-- 	string.sub()
-- 	return UnityEngine.Application.dataPath.Substring(0, Application.dataPath.IndexOf("/Assets")) + "/AssetBundles/" + PLATFORM_NAME + "/";
-- else
-- 	return "";
-- end
end


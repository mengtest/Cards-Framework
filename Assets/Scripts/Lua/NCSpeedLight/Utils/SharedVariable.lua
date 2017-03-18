SharedVariable =
{
	CompanyName = "papa",
	Version = "1.7.2",
	Channel = "papa",
	Platform = "Android",
	TargetFramerate = 30,
	ProtobufProcessor = require 'protobuf',
	JsonProcessor = require 'cjson',
	ASSETBUNDLE_MODE = false,
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

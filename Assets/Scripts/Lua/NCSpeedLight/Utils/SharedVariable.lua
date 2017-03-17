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

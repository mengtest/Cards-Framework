-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Define.lua
-- Describle:  定义一些全局变量等
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------

require 'NCSpeedLight.Utils.UrlKeeper'
require 'NCSpeedLight.3rd.pbc.protobuf'
require 'NCSpeedLight.Core.Event.EvtProcessor'
require 'NCSpeedLight.Core.Scene.SceneManager'
require 'NCSpeedLight.Scenes.SceneType'
require 'NCSpeedLight.Utils.Log'

require 'NCSpeedLight.Core.Network.NetManager'
require 'NCSpeedLight.Core.View.UIManager'

require('NCSpeedLight.Utils.LuaDebug')('localhost', 7003);

require 'NCSpeedLight.Utils.Utility'

require 'NCSpeedLight.Protocol.GameMessage'

require 'NCSpeedLight.Core.Asset.AssetManager'


protobufProcessor = require 'protobuf'
jsonProcessor = require 'cjson'

ASSETBUNDLE_MODE = false;

SelfInfo =
{
	ID = - 1,
	Token = '',
	AccountID = '',
	AreaID = - 1,
	FullInfo = nil,
}
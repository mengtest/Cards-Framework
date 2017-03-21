-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Include.lua
-- Describle:  引用文件
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------

require "NCSpeedLight.3rd.pbc.protobuf"

require 'NCSpeedLight.Core.Event.EvtQueue'
require "NCSpeedLight.Core.Event.EvtProcessor"

require "NCSpeedLight.Core.Scene.SceneManager"
-- require "NCSpeedLight.Scenes.SceneType"
require "NCSpeedLight.Utils.Log"

require "NCSpeedLight.Core.Network.NetManager"
require "NCSpeedLight.Core.View.UIManager"

require("NCSpeedLight.Utils.LuaDebug")("localhost", 7003);

require "NCSpeedLight.Utils.Utility"

require "NCSpeedLight.Protocol.GameMessage"
require "NCSpeedLight.Protocol.PBMessage"

require "NCSpeedLight.Core.Asset.AssetManager"

require "NCSpeedLight.Utils.SharedVariable"

require "NCSpeedLight.Modules.UIType"

require "NCSpeedLight.Core.Player.Player"

require "NCSpeedLight.Core.Player.PlayerManager"

require "NCSpeedLight.Utils.Define"
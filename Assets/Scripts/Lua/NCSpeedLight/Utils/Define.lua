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

protobuf = require 'protobuf'

function InitPBMessage()
    local path = SharedVariable.SCRIPT_BUNDLE_PATH .. "PBMessage.pb";
    local addr = io.open(path, "rb")
    local buffer = addr:read "*a"
    addr:close()
    protobuf.register(buffer)
end

InitPBMessage()

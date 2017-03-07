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

-- require 'NCSpeedLight/Interface/IUIManager'
-- require 'NCSpeedLight/Interface/IResManager'
-- require 'NCSpeedLight/Interface/IGlobalEventManager'
-- require 'NCSpeedLight/Interface/INetManager'
-- require 'NCSpeedLight/Interface/IAudioManager'
-- require 'NCSpeedLight/Interface/IDBManager'
-- require 'NCSpeedLight/Interface/INetEventManager'

-- require 'NCSpeedLight/3rd/pblua/person_pb'
-- require 'NCSpeedLight/Protocol/account_pb'

-- UIManager = IUIManager.Instance()
-- ResManager = IResManager.Instance()
-- GlobalEventManager = IGlobalEventManager.Instance()
-- NetManager = INetManager.Instance()
-- AudioManager = IAudioManager.Instance()
-- DBManager = IDBManager.Instance()
-- NetEventManager = INetEventManager.Instance()

require 'NCSpeedLight/Utils/UrlKeeper'
require 'NCSpeedLight/3rd/pbc/protobuf'

protobuf = require 'protobuf'

function InitPBMessage()
--    local path = "D:/account.pb";
--    local addr = io.open(path, "rb")
--    local buffer = addr:read "*a"
--    addr:close()
--    protobuf.register(buffer)
end

InitPBMessage()

-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Main.lua
-- Describle:  主入口函数。从这里开始lua逻辑
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

require 'NCSpeedLight/Utils/Define'
require 'NCSpeedLight/Protocol/account_pb'

parser = require 'NCSpeedLight/3rd/pbc/parser'

function Main()
    OpenLogin()
    --    TestEvent()
    --    TestLoadAsset()
    --    TestLuaBehaviour()
    TestProtobuf1()
    TestProtobuf2()
end

function TestEvent()
    GlobalEventManager.Register(2,
    function(eventObj)
        print("has received a message,id is " .. eventObj.ID)
        --        eventObj.Param:UnregisterAll()
    end
    )
    GlobalEventManager.Notify(2, GlobalEventManager, nil)
end

function OpenLogin()
    UIManager.OpenWindow("Login/ui_loginBk")
    UIManager.OpenWindow("Login/ui_normalLogin")
end

function TestLoadAsset()
    local ui = ResManager.LoadAssetSync("UI/Login/ui_loginBk", "UnityEngine.GameObject")
    if ui then
        ui = UnityEngine.GameObject.Instantiate(ui);
    end
end

function TestLuaBehaviour()
    local go = UnityEngine.GameObject("TestLuaBehaviour")
    LuaUtils.AddComponent('LuaView', go);
end

function TestProtobuf1()
    local path = "D:/addressbook.pb";
    local addr = io.open(path, "rb")
    local buffer = addr:read "*a"
    addr:close()
    protobuf.register(buffer)

    local addressbook = {
        name = "Alice",
        id = 12345,
        phone =
        {
            { number = "1301234567" },
            { number = "87654321", type = "WORK" },
        }
    }
    local code = protobuf.encode("tutorial.Person", addressbook)
end

function TestProtobuf2()
    local path = "D:/account.pb";
    local addr = io.open(path, "rb")
    local buffer = addr:read "*a"
    addr:close()
    protobuf.register(buffer)

    local createAccountMsg =
    {
        m_AccountName = "hsu1994",
        m_Password = "123455436",
        m_activatekey = "5",
        accountLogInfo =
        {
            platformID = 14546765,
            ditchID = "2",
            version = "1.0.1",
            accountID = 99988254,
            macAddress = "4D6MDJJ",
            deviceUUID = "547SFHBSDFHESYHTRY",
        }
    }

    local code = protobuf.encode("GM_AccountCreate", createAccountMsg)

    NetManager.Register(3,
    function(eventObj)
        local obj = protobuf.decode("GM_AccountCreate", eventObj.LuaParam)
        print("======= Parse Start =======")

        print("m_AccountName=" .. obj.m_AccountName)
        print("m_Password=" .. obj.m_Password)
        print("m_activatekey=" .. obj.m_activatekey)

        print("accountLogInfo.platformID=" .. obj.accountLogInfo.platformID)
        print("accountLogInfo.ditchID=" .. obj.accountLogInfo.ditchID)
        print("accountLogInfo.version=" .. obj.accountLogInfo.version)
        print("accountLogInfo.accountID=" .. obj.accountLogInfo.accountID)
        print("accountLogInfo.macAddress=" .. obj.accountLogInfo.macAddress)
        print("accountLogInfo.deviceUUID=" .. obj.accountLogInfo.deviceUUID)

        print("======= Parse End =======")

    end
    )
    local evt = Evt()
    evt.ID = 3
    evt.LuaParam = code
    NetManager.Notify(evt)
end

Main()
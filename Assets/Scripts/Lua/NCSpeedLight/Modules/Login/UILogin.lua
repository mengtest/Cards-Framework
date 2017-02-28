-- region *.lua
-- Date
-- 此文件由[BabeLua]插件自动生成
local person_pb = require 'person_pb'
require 'NCSpeedLight/Utils/Define'

UILogin = { }

function UILogin.Awake()
    print("UILogin.Awake");
    NetEventManager.Register(1, OnRecvMsg)
    SendNetPacket()
    --    Decoder()
end

function UILogin.Start()
    print("UILogin.Start");
end

function UILogin.OnEnable()
    print("UILogin.OnEnable");
end

function UILogin.OnDisable()
    print("UILogin.OnDisable")
end

function UILogin.Update()
    GlobalEventManager.Notify(2, nil, nil)
end

function UILogin.LateUpdate()
end

function UILogin.OnDestroy()
    print("UILogin.OnDestroy");
end

function OnRecvMsg(eventObj)
    local msg = person_pb.Person()
    msg:ParseFromString(eventObj.Buffer)
    print('OnRecvMsg: ' .. msg.id .. ',name=' .. msg.name .. ',email=' .. msg.email)
end

function SendNetPacket()
    local msg = person_pb.Person()
    msg.id = 1234
    msg.name = 'hsu'
    msg.email = 'wellshsu1004@gmail.com'
    local buffer = msg:SerializeToString()
    NetEventManager.Notify(1, buffer)
end

-- endregion

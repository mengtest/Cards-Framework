-----------------------------------------------
-- Copyright ? 2014-2017 NCSpeedLight
--
-- FileName: INetManager.lua
-- Describle:  ������Դ�ļ��ص��߼�
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
----------------------------------------------- 

INetManager = { }
local this = INetManager

function INetManager.Instance()
    return this
end

function  INetManager.SendNetPacket(buffer)
    NCSpeedLight.NetManager.SendNetPacket(buffer)
end
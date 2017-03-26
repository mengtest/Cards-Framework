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

require "NCSpeedLight.Utils.Log"
require "NCSpeedLight.Utils.Utility"
require("NCSpeedLight.Utils.LuaDebug")("localhost", 7003)
require "NCSpeedLight.Utils.Protocol.GameMessage"
require "NCSpeedLight.Utils.Protocol.PBMessage"
require "NCSpeedLight.Utils.SharedVariable"
require "NCSpeedLight.Utils.Define"
require "NCSpeedLight.Utils.APIDefine"

require "NCSpeedLight.Core.Event.EvtQueue"
require "NCSpeedLight.Core.Event.EvtProcessor"
require "NCSpeedLight.Core.Network.NetManager"
require "NCSpeedLight.Core.View.UIManager"
require "NCSpeedLight.Core.Scene.SceneManager"
require "NCSpeedLight.Core.Asset.AssetManager"

require "NCSpeedLight.Modules.Download.DownloadScene"
require "NCSpeedLight.Modules.Login.LoginScene"
require "NCSpeedLight.Modules.Login.Player"
require "NCSpeedLight.Modules.Hall.HallScene"
require "NCSpeedLight.Modules.MaJiang.MJScene"
require "NCSpeedLight.Modules.MaJiang.MJPlayer"
require "NCSpeedLight.Modules.MaJiang.MJSceneController"

-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: Log.lua
-- Describle:  Log printer.
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------

Log = {}
function Log.Error(str)
	print('[Error] ' .. tostring(str));
end

function Log.Info(str)
	print('[Info] ' .. tostring(str));
end

function Log.Warning(str)
	print('[Warning] ' .. tostring(str));
end
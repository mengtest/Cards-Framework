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

Log =
{
	Buffer = {},
	FilePath = nil,
}

function Log.Initialize()
	local fileName = os.date("%Y-%m-%d_%H:%M:%S");
	fileName = string.gsub(fileName, "/", "-");
	fileName = string.gsub(fileName, " ", "_");
	fileName = string.gsub(fileName, ":", "_");
	fileName = fileName .. ".log";
	Log.FilePath = NCSpeedLight.SharedVariable.DATA_PATH .. "Log/" .. fileName;
	Log.Info("Log.Initialize: log file path is " .. Log.FilePath);
end
function Log.Error(obj)
	local str = "[Log.Error] " .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

function Log.Info(obj)
	local str = "[Log.Info] " .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

function Log.Warning(obj)
	local str = "[Log.Warning] " .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

function Log.Format(...)
	local args = {...};
	local str = "";
	for i = 1, # args do
		if args[i] ~= nil then
			str = str + tostring(args[i]);
		end
	end
	if string.len(str) > 0 then
		local newStr = "[Log.Format] " .. tostring(str);
		print(newStr);
		table.insert(Log.Buffer, newStr);
	end
end

function Log.ToFile()
	if CSFile.Exists(Log.FilePath) then
		CSFile.Delete(Log.FilePath);
	end
	
	local file = CSFile.Open(Log.FilePath, CSFileMode.Create);
	local sw = CSStreamWriter.New(file);
	for i = 1, # Log.Buffer do
		sw:WriteLine(Log.Buffer[i]);
	end
	sw:Close();
	file:Close();
end
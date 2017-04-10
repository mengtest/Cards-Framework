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

-- 初始化
function Log.Initialize()
	local fileName = os.date("%Y-%m-%d_%H:%M:%S");
	fileName = string.gsub(fileName, "/", "-");
	fileName = string.gsub(fileName, " ", "_");
	fileName = string.gsub(fileName, ":", "_");
	fileName = fileName .. ".log";
	local logDirectory = Constants.DATA_PATH .. "Log/";
	if CSDirectory.Exists(logDirectory) == false then
		CSDirectory.CreateDirectory(logDirectory);
	end
	Log.FilePath = Constants.DATA_PATH .. "Log/" .. fileName;
	Log.Info("Log.Initialize: log file path is " .. Log.FilePath);
end

-- 记录错误信息
function Log.Error(obj)
	local time = os.date("%H:%M:%S");
	local str = "[Log.Error][" .. time .. "-" .. Time.frameCount .. "] " .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

-- 记录日志
function Log.Info(obj)
	local time = os.date("%H:%M:%S");
	local str = "[Log.Info][" .. time .. "-" .. Time.frameCount .. "] " .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

-- 记录警告信息
function Log.Warning(obj)
	local time = os.date("%H:%M:%S");
	local str = "[Log.Warning][" .. time .. "-" .. Time.frameCount .. "] " .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

-- 日志格式化
function Log.Format(...)
	local args = {...};
	local str = "";
	for i = 1, # args do
		if args[i] ~= nil then
			str = str .. tostring(args[i]);
		else
			str = str .. "nil"
		end
	end
	if string.len(str) > 0 then
		local time = os.date("%H:%M:%S");
		local newStr = "[Log.Format][" .. time .. "-" .. Time.frameCount .. "] " .. tostring(str);
		print(newStr);
		table.insert(Log.Buffer, newStr);
	end
end

-- 将buffer中的log写入文件
function Log.Close()
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
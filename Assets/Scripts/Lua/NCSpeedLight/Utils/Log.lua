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
	Log.Info("Initialize: log file path is " .. Log.FilePath);
end

-- 记录错误信息
function Log.Error(obj)
	-- return;
	local time = os.date("%H:%M:%S");
	local str = "[Log.Error][" .. time .. "-" .. Time.frameCount .. "]" .. Log.GetCallStack() .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

-- 记录日志
function Log.Info(obj)
	-- return;
	local time = os.date("%H:%M:%S");
	local str = "[Log.Info][" .. time .. "-" .. Time.frameCount .. "]" .. Log.GetCallStack() .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

-- 记录警告信息
function Log.Warning(obj)
	local time = os.date("%H:%M:%S");
	local str = "[Log.Warning][" .. time .. "-" .. Time.frameCount .. "]" .. Log.GetCallStack() .. tostring(obj);
	print(str);
	table.insert(Log.Buffer, str);
end

-- 日志格式化
function Log.Format(...)
	local args = {...};
	local str = "";
	for i = 1, #args do
		if args[i] ~= nil then
			str = str .. tostring(args[i]);
		else
			str = str .. "nil"
		end
	end
	if string.len(str) > 0 then
		local time = os.date("%H:%M:%S");
		local newStr = "[Log.Format][" .. time .. "-" .. Time.frameCount .. "]" .. Log.GetCallStack() .. tostring(str);
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
	for i = 1, #Log.Buffer do
		sw:WriteLine(Log.Buffer[i]);
	end
	sw:Close();
	file:Close();
end

-- 获取调用堆栈
function Log.GetCallStack()
	local level = 3; --0表示getinfo本身,1表示调用getinfo的函数(GetCallStack),2表示调用GetCallStack的函数,3表示调用Log.Info/ErrorWarning/Format
	local info = debug.getinfo(level, "nSl")
	local callStack = "";
	if info ~= nil then
		callStack = "[" .. info.source .. ".lua:" .. info.currentline .. "] ";
	end
	return callStack;
end

-- 输出调用堆栈
function Log.PrintCallStack()
	local startLevel = 2 --0表示getinfo本身,1表示调用getinfo的函数(printCallStack),2表示调用printCallStack的函数,可以想象一个getinfo(0级)在顶的栈.
	local maxLevel = 10 --最大递归10层
	
	for level = startLevel, maxLevel do
		-- 打印堆栈每一层
		local info = debug.getinfo(level, "nSl")
		if info == nil then break end
		print(string.format("[ line : %-4d]  %-20s :: %s", info.currentline, info.name or "", info.source or ""))
		
		-- 打印该层的参数与局部变量
		local index = 1 --1表示第一个参数或局部变量, 依次类推
		while true do
			local name, value = debug.getlocal(level, index)
			if name == nil then break end
			
			local valueType = type(value)
			local valueStr
			if valueType == 'string' then
				valueStr = value
			elseif valueType == "number" then
				valueStr = string.format("%.2f", value)
			end
			if valueStr ~= nil then
				print(string.format("\t%s = %s\n", name, value))
			end
			index = index + 1
		end
	end
end 
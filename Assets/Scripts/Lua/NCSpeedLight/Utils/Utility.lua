Utility = {}

function Utility.FileExist(path)
	local file = io.open(path, "rb")
	if file ~= nil then
		file:close();
		return true;
	else
		return false;
	end
end

function Utility.OpenFile(path)
	local file = io.open(path, "rb")
	if file ~= nil then
		local buffer = file:read "*a"
		file:close()
		return buffer;
	else
		return nil;
	end
end

function Utility.SaveFile(path, buffer)
	return NCSpeedLight.Helper.SaveFile(path, buffer);
end

-- 字符串分割
function Utility.SplitString(str, delimiter)
	if str == nil or string.len(str) == 0 or delimiter == nil then
		return nil;
	end
	local result = {};
	for match in(str .. delimiter):gmatch("(.-)" .. delimiter) do
		if string.len(match) > 0 then
			table.insert(result, match);
		end
	end
	return result;
end

-- 字符串替换
function Utility.ReplaceString(str, from, to)
	return string.gsub(str, from, to);
end

function Utility.FormatTimeStamp(format, timestamp)
	return os.date(format, timestamp);
end

function Utility.RemoveFromTableByKey(tb, obj)
	if tb == nil or obj == nil then return end;
	local index = 0;
	local needRemove = false;
	for key, value in pairs(tb) do
		index = index + 1;
		if key == obj then
			needRemove = true;
			break;
		end
	end
	if needRemove then
		table.remove(tb, index);
	end
end

function Utility.RemoveFromTableByValue(tb, obj)
	if tb == nil or obj == nil then return end;
	local index = 0;
	local needRemove = false;
	for key, value in pairs(tb) do
		index = index + 1;
		if value == obj then
			needRemove = true;
			break;
		end
	end
	if needRemove then
		table.remove(tb, index);
	end
end 
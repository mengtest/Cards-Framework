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

function Utility.DeleteFile(path)
	return NCSpeedLight.Helper.DeleteFile(path);
end

-- 字符串分割
function Utility.SplitString(oriStr, delimiter)
	if oriStr == nil or string.len(oriStr) == 0 or delimiter == nil then
		return nil;
	end
	local result = {};
	local lastPos = 1;
	for i in utf8.byte_indices(oriStr) do			
		local next = utf8.next(oriStr, i)
		local right = next and next - 1;
		local str = string.sub(oriStr, i, right);
		if str == delimiter then
			if i ~= lastPos and i ~= utf8.len(oriStr) then
				str = string.sub(oriStr, lastPos, i - 1);
				table.insert(result, str);
			end
			lastPos = i + 1;
		elseif right == nil then
			str = string.sub(oriStr, lastPos, right);
			table.insert(result, str);
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
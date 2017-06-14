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

-- 去掉字符串两侧的空格
function Utility.TrimString(str)
	return(string.gsub(str, "^%s*(.-)%s*$", "%1"))
end

-- 字符串字节长度
function Utility.LenByteString(str)
	if str == nil or type(str) ~= "string" then return 0 end;
	local totalCount = 0;
	local strLen = #str;
	local index = 1;
	while index <= strLen do
		local byte = string.byte(str, index)
		local byteCount = 1;
		if byte > 0 and byte <= 127 then
			byteCount = 1
		elseif byte >= 192 and byte < 223 then
			byteCount = 2
		elseif byte >= 224 and byte < 239 then
			byteCount = 3
		elseif byte >= 240 and byte <= 247 then
			byteCount = 4
		end
		index = index + byteCount;
		if byteCount == 1 then
			totalCount = totalCount + 1;
		else
			totalCount = totalCount + 2;
		end
	end
	return totalCount;
end

-- 
function Utility.SubString(str)
end

-- 裁剪昵称
function Utility.TrimNickName(str)
	if Utility.LenByteString(str) <= 8 then return str; end
	local finalStr = "";
	local strLen = #str;
	local totalCount = 0;
	local index = 1;
	while index <= strLen do
		local byte = string.byte(str, index)
		local byteCount = 1;
		if byte > 0 and byte <= 127 then
			byteCount = 1
		elseif byte >= 192 and byte < 223 then
			byteCount = 2
		elseif byte >= 224 and byte < 239 then
			byteCount = 3
		elseif byte >= 240 and byte <= 247 then
			byteCount = 4
		end
		local char = string.sub(str, index, index + byteCount - 1)
		index = index + byteCount;
		if byteCount == 1 then
			totalCount = totalCount + 1;
		else
			totalCount = totalCount + 2;
		end
		if totalCount < 8 then
			finalStr = finalStr .. char;
		else
			finalStr = finalStr .. char;
			finalStr = finalStr .. "...";
			break;
		end
	end
	return finalStr;
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
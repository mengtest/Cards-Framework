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
	if str == nil or str == '' or delimiter == nil then
		return nil
	end
	
	local result = {}
	for match in(str .. delimiter):gmatch("(.-)" .. delimiter) do
		table.insert(result, match)
	end
	return result
end


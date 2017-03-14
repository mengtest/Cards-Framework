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


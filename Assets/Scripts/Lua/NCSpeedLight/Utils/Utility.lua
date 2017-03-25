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

function Utility.StartTimer(name, time, func)
	local one = CreateCoroutine(function(this, name, func)
		if not WaitForSeconds(this, delayTime, name) then return end
		if func ~= nil then func() end
	end)
	StartCoroutine(one, name, func)
end

function Utility.StopTimer(name)
	StopCoroutine(name);
end


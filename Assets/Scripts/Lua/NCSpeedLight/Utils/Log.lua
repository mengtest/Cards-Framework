Log = { }
function Log:Error(str)
	print('[Error] ' .. str);
end

function Log:Info(str)
	print('[Info] ' .. str);
end

function Log:Warning(str)
	print('[Warning] ' .. str);
end
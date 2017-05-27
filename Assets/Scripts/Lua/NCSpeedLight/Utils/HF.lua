-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: HF.lua
-- Describle:  热修复，用于开发阶段使用
-- Created By:  Wells Hsu
-- DateTime:  2017/05/26 10:32:11
-- Modify History:
--
-----------------------------------------------
HF = {};

function HF.ReloadChunk(chunk, chunkName)
	chunkName = chunkName or "HF";
	local env = {};
	setmetatable(env, {__index = _G});
	local _ENV = env;
	local f, err = load(chunk, chunkName, "t", env);
	assert(f, error);
	local ok, err = pcall(f);
	assert(ok, err);
	local protection =
	{
		setmetatable = true,
		pairs = true,
		ipairs = true,
		next = true,
		require = true,
		_ENV = true,
	};
	
	local visitedSig = {};
	
	function UpdateTable(newTable, oldTable, context, deep)
		if newTable == oldTable then return end;
		if protection[newTable] or protection[oldTable] then return end;
		local signature = tostring(newTable) .. tostring(oldTable);
		if visitedSig[signature] then return end;
		visitedSig[signature] = true;
		for name, newValue in pairs(newTable) do
			local oldValue = oldTable[name];
			if type(newValue) == type(oldValue) then
				if type(newValue) == "function" then
					UpdateFunction(newValue, oldValue, name, deep .. "  " .. name .. "  ");
					oldTable[name] = newValue;
				elseif type(newValue) == "table" then
					UpdateTable(newValue, oldValue, name, deep .. "  " .. name .. "  ");
				end
			else
				oldTable[name] = newValue;
			end
		end
	end
	
	function UpdateFunction(newFunction, oldFunction, context, deep)
		local signature = tostring(newFunction) .. tostring(oldFunction);
		if visitedSig[signature] then return end;
		visitedSig[signature] = true;
		local oldUpvalueMap = {};
		for i = 1, math.huge do
			local name, oldValue = debug.getupvalue(oldFunction, i);
			if not name then break end;
			oldUpvalueMap[name] = oldValue;
		end
		for i = 1, math.huge do
			local name, newValue = debug.getupvalue(newFunction, i);
			if not name then break end;
			local oldValue = oldUpvalueMap[name];
			if oldValue then
				if type(oldValue) ~= type(newValue) then
					debug.setupvalue(newFunction, i, oldValue);
				elseif type(oldValue) == "function" then
					UpdateFunction(newValue, oldValue, name, deep .. "  " .. name .. "  ");
				elseif type(oldValue) == "table" then
					UpdateTable(newValue, oldValue, name, deep .. "  " .. name .. "  ")
					debug.setupvalue(newFunction, i, oldValue);
				else
					debug.setupvalue(newFunction, i, oldValue);
				end
			end
		end
	end
	
	for name, newValue in pairs(env) do
		local oldValue = _G[name];
		if type(oldValue) ~= type(newValue) then
			_G[name] = newValue;
		elseif type(newValue) == "function" then
			UpdateFunction(newValue, oldValue, name, "G" .. "  ");
			_G[name] = newValue;
		elseif type(newValue) == "table" then
			if oldValue["__index"] ~= nil and oldValue["New"] ~= nil and oldValue["instances"] ~= nil then
				-- notify prereload event.
				local preReloadFunction = oldValue["OnPreReload"];
				if preReloadFunction ~= nil and type(preReloadFunction) == "function" then
					for key, instance in pairs(oldValue.instances) do
						preReloadFunction(instance);
					end
				end
				-- update metatable.
				UpdateTable(newValue, oldValue, name, "G" .. "  ");
				-- notify postreload event.
				local postReloadFunction = oldValue["OnPostReload"];
				if postReloadFunction ~= nil and type(postReloadFunction) == "function" then
					for key, instance in pairs(oldValue.instances) do
						postReloadFunction(instance);
					end
				end
			else
				-- update metatable.
				local preReloadFunction = oldValue["OnPreReload"];
				local postReloadFunction = oldValue["OnPostReload"];
				-- notify prereload event.
				if preReloadFunction ~= nil and type(preReloadFunction) == "function" then
					preReloadFunction();
				end
				UpdateTable(newValue, oldValue, name, "G" .. "  ");
				-- notify postreload event.
				if postReloadFunction ~= nil and type(postReloadFunction) == "function" then
					postReloadFunction();
				end
			end
		end
	end
end

function HF.ReloadFile(file)
	local fileContent;
	local fp = io.open(file);
	if fp then
		fileContent = fp:read("*all");
		io.close(fp);
	end
	if not fileContent then
		return false;
	end
	return HF.ReloadChunk(fileContent, file);
end 
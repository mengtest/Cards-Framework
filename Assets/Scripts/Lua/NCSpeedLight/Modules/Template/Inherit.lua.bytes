BaseClass =
{
	Value = 1,
};
local baseMeta = {};
baseMeta.__index = BaseClass;

function BaseClass.New()
	local obj = {};
	setmetatable(obj, baseMeta);
	return obj;
end

function BaseClass:Func()
	print("BaseClass value is " .. self.Value);
end

SubClass = {};
local meta = {};
meta.__index = SubClass;
setmetatable(meta, baseMeta);

function SubClass.New()
	local obj = {};
	setmetatable(obj, meta);
	return obj;
end

function SubClass:Func()
	print("SubClass value is " .. self.Value);
end

function Test()
	local a = SubClass.New();
	a:Func();
end

Test();
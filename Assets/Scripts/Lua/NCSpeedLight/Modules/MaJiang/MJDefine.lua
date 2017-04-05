MJResultText = {
	{0, "一"},
	{1, "二"},
	{2, "三"},
	{3, "四"},
	{4, "五"},
	{5, "六"},
	{6, "七"},
	{7, "八"},
	{8, "九"},
	{9, "十"},
	ToString = function(index)
		for key, value in pairs(MJResultText) do
			if value[1] == index then
				return value[2];
			end
		end
	end,
	ToInt = function(name)
		for key, value in pairs(MJResultText) do
			if value[2] == name then
				return value[1];
			end
		end
	end
} 
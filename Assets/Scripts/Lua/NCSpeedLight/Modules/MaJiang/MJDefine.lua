MJDefine = {
	TOTAL_CARD_COUNT = 112, -- 牌的总数
	BANKER_INITIAL_CARD_COUNT = 14, -- 庄家牌的初始数量
	XIAN_INITIAL_CARD_COUNT = 13,-- 闲家牌的初始数量
	MAX_CAST_DICE_NUMBER = 1,-- 最多的掷骰子的次数
}
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

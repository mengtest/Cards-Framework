MJDefine = {
	TOTAL_CARD_COUNT = 112, -- 牌的总数
	BANKER_INITIAL_CARD_COUNT = 14, -- 庄家牌的初始数量
	XIAN_INITIAL_CARD_COUNT = 13,-- 闲家牌的初始数量
	MAX_CAST_DICE_NUMBER = 1,-- 最多的掷骰子的次数
	TableCardX = 0.9635041, -- 场景内牌的宽度
	TableCardY = 1.24706018,-- 场景内牌的高度
	TableCardZ = 0.636123836,-- 场景内牌的厚度
	HandCardX = 0.8029202,-- 手牌的宽度
	HandCardY = 1.03921676,-- 手牌的高度
	HandCardZ = 0.5301034,-- 手牌的厚度
	OpenTest = true,-- 是否开启偷天换日
}

-- 计算字符对应
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

MJRoomType =
{
	R_1 = 10002,
	R_2 = 10003,
	R_3 = 10004,
}

-- 麻将牌类型
MaJiangType =
{
	MJ_1_WAN = 0,
	MJ_2_WAN = 1,
	MJ_3_WAN = 2,
	MJ_4_WAN = 3,
	MJ_5_WAN = 4,
	MJ_6_WAN = 5,
	MJ_7_WAN = 6,
	MJ_8_WAN = 7,
	MJ_9_WAN = 8,
	MJ_1_TIAO = 9,
	MJ_2_TIAO = 10,
	MJ_3_TIAO = 11,
	MJ_4_TIAO = 12,
	MJ_5_TIAO = 13,
	MJ_6_TIAO = 14,
	MJ_7_TIAO = 15,
	MJ_8_TIAO = 16,
	MJ_9_TIAO = 17,
	MJ_1_TONG = 18,
	MJ_2_TONG = 19,
	MJ_3_TONG = 20,
	MJ_4_TONG = 21,
	MJ_5_TONG = 22,
	MJ_6_TONG = 23,
	MJ_7_TONG = 24,
	MJ_8_TONG = 25,
	MJ_9_TONG = 26,
	MJ_DONG = 27,
	MJ_NAN = 28,
	MJ_XI = 29,
	MJ_BEI = 30,
	MJ_ZHONG = 31,
	MJ_FA = 32,
	MJ_BAI = 33,
	MJ_NUM = 34,
	ToInt = function(name)
		for key, value in pairs(MaJiangType) do
			if key == name then
				return value;
			end
		end
	end,
	ToString = function(index)
		for key, value in pairs(MaJiangType) do
			if value == index then
				return tostring(key);
			end
		end
	end
};

-- 麻将操作类型
MaJiangOperatorType =
{
	--开始
	MJOT_BEGIN = 0,
	--抓牌
	MJOT_GetCard = 1,
	--补牌
	MJOT_BuCard = 2,
	--出牌
	MJOT_SendCard = 3,
	--摊
	MJOT_Tan = 4,
	--吃  
	MJOT_CHI = 5,
	--勺
	MJOT_SAO = 6,
	--碰
	MJOT_PENG = 7,
	--杠
	MJOT_GANG = 8,
	--暗杠
	MJOT_AN_GANG = 9,
	--补杠
	MJOT_BuGang = 10,
	--过
	MJOT_GUO = 11,
	--胡
	MJOT_HU = 12,
	--定胡
	MJOT_DingHU = 13,
	GetString = function(index)
		for key, value in pairs(MaJiangOperatorType) do
			if value == index then
				return tostring(key);
			end
		end
	end
};

-- 麻将内玩法
MJPlayWay =
{
	PW_Begin = 0,
	-- 红中麻将
	PW_7DUI = 1,        -- 可胡7对
	PW_1MA = 2,         -- 一码全中
	PW_2MA = 3,         -- 扎2码
	PW_4MA = 4,         -- 扎4码
	PW_6MA = 5,         -- 扎6码
	
	-- 新余麻将
	PW_LONG = 6,        -- 一条龙
	PW_16BEI = 7,       -- 16倍
	PW_32BEI = 8,       -- 32倍
	PW_64BEI = 9,       -- 64倍
	PW_NOBEI = 10,       -- 不封顶
	
	-- 南昌麻将
	PW_WXJ = 11,         -- 无下精;
	PW_HTSXJ = 12,       -- 上下精;
	PW_MDL = 13,         -- 埋地雷;
	
	PW_TYSG = 14,        -- 同一首歌;
	PW_HTYX = 15,        -- 回头一笑;
	
	PW_End = 16,
	
	ToInt = function(name)
		for key, value in pairs(MJPlayWay) do
			if key == name then
				return value;
			end
		end
	end,
	ToString = function(index)
		for key, value in pairs(MJPlayWay) do
			if value == index then
				return tostring(key);
			end
		end
	end
};

MJPlayWayStr = {
	-- 红中麻将
	PW_7DUI = "可胡7对",
	PW_1MA = "一码全中",
	PW_2MA = "扎2码",
	PW_4MA = "扎4码",
	PW_6MA = "扎6码",
	
	-- 新余麻将
	PW_LONG = "一条龙",
	PW_16BEI = "16倍",
	PW_32BEI = "32倍",
	PW_64BEI = "64倍",
	PW_NOBEI = "不封顶",
	
	-- 南昌麻将
	PW_WXJ = "无下精",
	PW_HTSXJ = "上下精",
	PW_MDL = "埋地雷",
	
	PW_TYSG = "同一首歌",
	PW_HTYX = "回头一笑",
}

MJChatType = {
	Face = 1,
	Interaction = 2,
	DefaultText = 3,
	CustomText = 4,
	Voice = 5,
}

MJPlayerSeatEnum = {
	-- 东
	EAST = 0,
	-- 南
	SOUTH = 1,
	-- 西
	WEST = 2,
	-- 北
	NORTH = 3,
	ToString = function(index)
		for key, value in pairs(MJPlayerSeatEnum) do
			if value == index then
				return tostring(key);
			end
		end
	end
} 
MJRoomType =
{
	R_1 = 10002,
	R_2 = 10003,
	R_3 = 10004,
}
MJPlayerType =
{
	Hero = 0,
	Player = 1,
	Robot = 2,
}
SceneType =
{
	DownloadScene = "DownloadScene",
	LoginScene = "LoginScene",
	HallScene = "HallScene",
	MJScene = "MJScene",
}
UIType = {
	UI_MaJiang = "MaJiang/UI_MaJiang",
	UI_Share = "Hall/UI_Share",
	UI_Record = "Hall/UI_Record",
	UI_CreateRoom = "Hall/UI_CreateRoom",
	UI_JoinRoom = "Hall/UI_JoinRoom",
	UI_Load = "Dialog/UI_Load",
	UI_DissolveRoom = "MaJiang/UI_DissolveRoom",
	UI_MJTest = "MaJiang/UI_MJTest",
	UI_MJResult = "MaJiang/UI_MJResult",
	UI_MJTotalResult = "MaJiang/UI_MJTotalResult",
	UI_MJDraw = "MaJiang/UI_MJDraw",
}
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

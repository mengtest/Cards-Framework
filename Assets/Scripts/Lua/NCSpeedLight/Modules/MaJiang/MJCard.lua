MJCardStatus = {
	MJCS_Begin = 0,  -- 背面朝上的状态，不属于任何玩家;
	MJCS_Hand = 1,  -- 在某个玩家手里的牌;
	MJCS_Table = 2,  -- 在桌子上的牌(没有被吃，碰，杠，胡过)， 属于某个玩家;
	MJCS_Eat = 3,  -- 被玩家吃过的牌;
	MJCS_Bump = 4,  -- 被玩家碰过的牌;
	MJCS_Gang = 5,  -- 被玩家杠过的牌;
	MJCS_AnGang = 6,  -- 被玩家暗杠过的牌;
	MJCS_Hu = 7,  -- 被玩家胡过的牌;
}
MJCard =
{
	GO = nil, -- 牌的正面
	BackGO = nil, -- 牌的反面
	RoleID = 0, -- 属于哪个玩家
	Status = MJCardStatus.MJCS_Begin, -- 牌的状态
	Type = MaJiangType.MJ_1_TIAO, -- 牌的类型
	ID = 0, -- 牌的ID
};
MJCard.__index = MJCard;
function MJCard.New()
	local obj = {};
	setmetatable(obj, MJCard);
	return obj;
end

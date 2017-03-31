MJTableCardStatus = {
	MJCS_Begin = 0,  -- 背面朝上的状态，不属于任何玩家;
	MJCS_Hand = 1,  -- 在某个玩家手里的牌;
	MJCS_Table = 2,  -- 在桌子上的牌(没有被吃，碰，杠，胡过)， 属于某个玩家;
	MJCS_Eat = 3,  -- 被玩家吃过的牌;
	MJCS_Bump = 4,  -- 被玩家碰过的牌;
	MJCS_Gang = 5,  -- 被玩家杠过的牌;
	MJCS_AnGang = 6,  -- 被玩家暗杠过的牌;
	MJCS_Hu = 7,  -- 被玩家胡过的牌;
}
MJTableCard =
{
	GO = nil, -- 牌的正面
	BackGO = nil, -- 牌的反面
	RoleID = 0, -- 属于哪个玩家
	LastRoleID = 0, -- 上一次属于的玩家
	Status = MJTableCardStatus.MJCS_Begin, -- 牌的状态
	Type = MaJiangType.MJ_1_TIAO, -- 牌的类型
	ID = - 1, -- 牌的ID
};
MJTableCard.__index = MJTableCard;
function MJTableCard.New()
	local obj = {};
	setmetatable(obj, MJTableCard);
	obj.ID = - 1;
	obj.RoleID = 0;
	return obj;
end
function MJTableCard:Reset()
	self.ID = - 1;
	self.RoleID = 0;
	self.Status = MJTableCardStatus.MJCS_Begin;
end
function MJTableCard:Show(position, eulerAngles)
	if position ~= nil then
		self.GO.transform.position = position;
	end
	if eulerAngles ~= nil then
		self.GO.transform.rotation = UnityEngine.Quaternion.Euler(eulerAngles);
	end
	self.GO:SetActive(true);
end
function MJTableCard:Hide()
	self.GO:SetActive(false);
end
function MJTableCard:SetStatus(status)
	self.Status = status;
end
function MJTableCard:SetID(id)
	self.ID = id;
end
function MJTableCard:SetRoleID(roleID)
	self.LastRoleID = self.RoleID;
	self.RoleID = roleID;
end 
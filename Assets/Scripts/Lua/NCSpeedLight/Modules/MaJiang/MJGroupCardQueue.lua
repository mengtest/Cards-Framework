MJGroupCardEnum =
{
	group14 = 0,
	group15 = 1,
	group16 = 2,
	group17 = 3,
	ToInt = function(name)
		for key, value in pairs(MJGroupCardEnum) do
			if key == name then
				return value;
			end
		end
	end,
	ToString = function(index)
		for key, value in pairs(MJGroupCardEnum) do
			if value == index then
				return tostring(key);
			end
		end
	end
}
MJGroupCardQueue = {
	Cards = {},
	PopedRearCount,
};
function MJGroupCardQueue.PushAll(groupNum, index)
	MJGroupCardQueue.Cards = {};
	MJGroupCardQueue.PopedRearCount = 0;
	local tempCards = {};
	for i = 0, 3 do
		local tempName = MJGroupCardEnum.ToString(i);
		local trans = MJSceneController.transform:Find("majiangzhuo/" .. tempName);
		for j = 0, trans.childCount - 1 do
			table.insert(tempCards, trans:GetChild(j));
		end
		local c = 1;
	end
	local startIndex = groupNum * 28 +(index * 2 - 1);
	for i = startIndex, 112 do
		table.insert(MJGroupCardQueue.Cards, tempCards[i]);
	end
	for i = 1, startIndex - 1 do
		table.insert(MJGroupCardQueue.Cards, tempCards[i]);
	end
	UI_MaJiang.SetupRemainCardCount(MJGroupCardQueue.Count());
end
function MJGroupCardQueue.Pop(index)
	local card = MJGroupCardQueue.Cards[index];
	card.gameObject:SetActive(false);
	table.remove(MJGroupCardQueue.Cards, index);
	UI_MaJiang.SetupRemainCardCount(MJGroupCardQueue.Count());
end
function MJGroupCardQueue.PopFront(count)
	if # MJGroupCardQueue.Cards == 0 then
		Log.Error("MJGroupCardQueue.PopFront: can not pop a card caused by nil cards queue.");
		return;
	end
	if count == nil then
		MJGroupCardQueue.Pop(1);
	else
		for i = 1, count do
			MJGroupCardQueue.Pop(1);
		end
	end
end
function MJGroupCardQueue.PopRear(count)
	if # MJGroupCardQueue.Cards == 0 then
		Log.Error("MJGroupCardQueue.PopRear: can not pop a card caused by nil cards queue.");
		return;
	end
	if count == nil then
		if MJGroupCardQueue.PopedRearCount % 2 == 0 and # MJGroupCardQueue.Cards > 1 then
			MJGroupCardQueue.Pop(# MJGroupCardQueue.Cards - 1);
		else
			MJGroupCardQueue.Pop(# MJGroupCardQueue.Cards);
		end
		MJGroupCardQueue.PopedRearCount = MJGroupCardQueue.PopedRearCount + 1;
	else
		for i = 1, count do
			if MJGroupCardQueue.PopedRearCount % 2 == 0 and # MJGroupCardQueue.Cards > 1 then
				MJGroupCardQueue.Pop(# MJGroupCardQueue.Cards - 1);
			else
				MJGroupCardQueue.Pop(# MJGroupCardQueue.Cards);
			end
			MJGroupCardQueue.PopedRearCount = MJGroupCardQueue.PopedRearCount + 1;
		end
	end
end
function MJGroupCardQueue.Count()
	return # MJGroupCardQueue.Cards;
end 
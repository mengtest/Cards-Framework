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
MJGroupCard = {
	Cards = {},
	PopedRearCount,
};
function MJGroupCard.Initialize(groupNum, index)
	MJGroupCard.Cards = {};
	MJGroupCard.PopedRearCount = 0;
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
		table.insert(MJGroupCard.Cards, tempCards[i]);
	end
	for i = 1, startIndex - 1 do
		table.insert(MJGroupCard.Cards, tempCards[i]);
	end
end
function MJGroupCard.Pop(index)
	local card = MJGroupCard.Cards[index];
	card.gameObject:SetActive(false);
	table.remove(MJGroupCard.Cards, index);
end
function MJGroupCard.PopFront(count)
	if # MJGroupCard.Cards == 0 then
		Log.Error("MJGroupCard.PopFront: can not pop a card caused by nil cards queue.");
		return;
	end
	if count == nil then
		MJGroupCard.Pop(1);
	else
		for i = 1, count do
			MJGroupCard.Pop(1);
		end
	end
end
function MJGroupCard.PopRear(count)
	if # MJGroupCard.Cards == 0 then
		Log.Error("MJGroupCard.PopRear: can not pop a card caused by nil cards queue.");
		return;
	end
	if count == nil then
		if MJGroupCard.PopedRearCount % 2 == 0 and # MJGroupCard.Cards > 1 then
			MJGroupCard.Pop(# MJGroupCard.Cards - 1);
		else
			MJGroupCard.Pop(# MJGroupCard.Cards);
		end
		MJGroupCard.PopedRearCount = MJGroupCard.PopedRearCount + 1;
	else
		for i = 1, count do
			if MJGroupCard.PopedRearCount % 2 == 0 and # MJGroupCard.Cards > 1 then
				MJGroupCard.Pop(# MJGroupCard.Cards - 1);
			else
				MJGroupCard.Pop(# MJGroupCard.Cards);
			end
			MJGroupCard.PopedRearCount = MJGroupCard.PopedRearCount + 1;
		end
	end
end 
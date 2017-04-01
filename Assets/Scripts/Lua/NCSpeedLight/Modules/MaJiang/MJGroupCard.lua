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
MJGroupCard = {Cards = {}};
function MJGroupCard.Initialize(groupNum, index)
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
	local tempTableLength = # tempCards;
	local tempCardsLength = # MJGroupCard.Cards;
	local a = 1;
end
function MJGroupCard.PopFront(count)
	if count == nil then
	else
	end
end
function MJGroupCard.PopRear(count)
	if count == nil then
	else
	end
end 
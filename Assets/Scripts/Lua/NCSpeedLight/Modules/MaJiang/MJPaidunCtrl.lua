MJPaidunNameEnum =
{
	group14 = 0,
	group15 = 1,
	group16 = 2,
	group17 = 3,
	ToInt = function(name)
		for key, value in pairs(MJPaidunNameEnum) do
			if key == name then
				return value;
			end
		end
	end,
	ToString = function(index)
		for key, value in pairs(MJPaidunNameEnum) do
			if value == index then
				return tostring(key);
			end
		end
	end
}

MJPaidunCtrl = {
	Cards = {},
	PopedRearCount,
};

-- 初始化，将牌放进队列中
function MJPaidunCtrl.Initialize(groupNum, index)
	MJPaidunCtrl.Cards = {};
	MJPaidunCtrl.PopedRearCount = 0;
	local tempCards = {};
	for i = 0, 3 do
		local tempName = MJPaidunNameEnum.ToString(i);
		local trans = MJDeskCtrl.transform:Find(tempName);
		for j = 0, trans.childCount - 1 do
			local trans = trans:GetChild(j);
			trans.gameObject:SetActive(true);
			table.insert(tempCards, trans);
		end
		local c = 1;
	end
	local startIndex = groupNum * 28 +(index * 2 - 1);
	for i = startIndex, 112 do
		table.insert(MJPaidunCtrl.Cards, tempCards[i]);
	end
	for i = 1, startIndex - 1 do
		table.insert(MJPaidunCtrl.Cards, tempCards[i]);
	end
	UI_MJBase.SetupRemainCardCount(MJPaidunCtrl.ActiveCount());
end

-- 隐藏指定位置的牌
function MJPaidunCtrl.Inactive(index)
	local card = MJPaidunCtrl.Cards[index];
	if card ~= nil then
		card.gameObject:SetActive(false);
		table.remove(MJPaidunCtrl.Cards, index);
		UI_MJBase.SetupRemainCardCount(MJPaidunCtrl.ActiveCount());	
	end
end

-- 隐藏队列前部的牌
function MJPaidunCtrl.InactiveFront(count)
	if #MJPaidunCtrl.Cards == 0 then
		Log.Error("InactiveFront: can not pop a card caused by nil cards queue.");
		return;
	end
	if count == nil then
		MJPaidunCtrl.Inactive(1);
	else
		for i = 1, count do
			MJPaidunCtrl.Inactive(1);
		end
	end
end

-- 隐藏队列后部的牌
function MJPaidunCtrl.InactiveRear(count)
	if #MJPaidunCtrl.Cards == 0 then
		Log.Error("InactiveRear: can not pop a card caused by nil cards queue.");
		return;
	end
	if count == nil then
		if MJPaidunCtrl.PopedRearCount % 2 == 0 and #MJPaidunCtrl.Cards > 1 then
			MJPaidunCtrl.Inactive(#MJPaidunCtrl.Cards - 1);
		else
			MJPaidunCtrl.Inactive(#MJPaidunCtrl.Cards);
		end
		MJPaidunCtrl.PopedRearCount = MJPaidunCtrl.PopedRearCount + 1;
	else
		for i = 1, count do
			if MJPaidunCtrl.PopedRearCount % 2 == 0 and #MJPaidunCtrl.Cards > 1 then
				MJPaidunCtrl.Inactive(#MJPaidunCtrl.Cards - 1);
			else
				MJPaidunCtrl.Inactive(#MJPaidunCtrl.Cards);
			end
			MJPaidunCtrl.PopedRearCount = MJPaidunCtrl.PopedRearCount + 1;
		end
	end
end

-- 显示的牌的个数
function MJPaidunCtrl.ActiveCount()
	return #MJPaidunCtrl.Cards;
end 
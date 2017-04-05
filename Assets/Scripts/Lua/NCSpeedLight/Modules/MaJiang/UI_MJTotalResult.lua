-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJTotalResult.lua
-- Describle:   总结算界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_MJTotalResult = {
	transform = nil,
	gameObject = nil,
}
local this = UI_MJTotalResult;
function UI_MJTotalResult.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end
function UI_MJTotalResult.Start()
	UI_MJTotalResult.InitBtnEvent();
	UI_MJTotalResult.InitView();
end
function UI_MJTotalResult.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
function UI_MJTotalResult.InitBtnEvent()
	UIHelper.SetButtonEvent(this.transform, "Buttom/OnceAgain", function(obj)
	end);
	UIHelper.SetButtonEvent(this.transform, "Buttom/LookTotalResult", function(obj)
	end);
	UIHelper.SetButtonEvent(this.transform, "Buttom/ReturnDeskBtn", function(obj)
	end);
end
function UI_MJTotalResult.InitView()
	UI_MJTotalResult.SetupPlaywayAndRound();
	if MJScene.TotalResultInfo == nil or MJScene.TotalResultInfo.m_count == 0 then
		-- 一局也没打
		UI_MJTotalResult.SetupAllPlayersInfo();
	else
		local parent = UIHelper.GetComponent(this.transform, "Grid", typeof(UnityEngine.Transform));
		for i = 1, # MJScene.TotalResultInfo.m_OneData do
			local tempResultInfo = MJScene.TotalResultInfo.m_OneData[i].m_ResultInfo;
			for j = 1, # tempResultInfo do
				local tempPlayer = MJScene.GetPlayerByID(tempResultInfo[j].m_roleid);
				local tempTrans = parent:FindChild(tempPlayer.UIPosition);
				tempTrans.gameObject:SetActive(true);
				if tempPlayer:IsBanker() then
					UIHelper.SetActiveState(tempTrans, "Role/Banker", true);
				end
				if tempPlayer:IsRoomMaster() then
					UIHelper.SetActiveState(tempTrans, "Role/Master", true);
				end
				local tempItem = tempTrans:FindChild("ScrollView/UIGrid/Item");
				local tempClone = UnityEngine.Object.Instantiate(tempItem);
				tempClone:SetParent(tempItem.parent);
				tempClone.localScale = Vector3.New(1, 1, 1);
				local tempStr = "";
				-- if i <= 9 then
				-- 	tempStr = "第" .. tostring(i) .. "局";
				-- 	tempStr = string.Format("{0}{1}{2}:", Localization.Get("MaJiang Result A"), Localization.Get("MaJiang Result " + i), Localization.Get("MaJiang Result B"));
				-- else
				-- tempStr = "第"
				-- 	tempStr = string.Format("{0}{1}{2}{3}:", Localization.Get("MaJiang Result A"), Localization.Get("MaJiang Result " + 9), Localization.Get("MaJiang Result " +(i - 10)), Localization.Get("MaJiang Result B"));
				-- end
				UIHelper.SetLabelText(tempClone, "Label", tempStr);
			end
		end
	end
end
-- 设置所有玩家的信息显示
function UI_MJTotalResult.SetupAllPlayersInfo()
	local parent = UIHelper.GetComponent(this.transform, "Grid", typeof(UnityEngine.Transform));
	for i = 1, # MJScene.Players do
		local tempPlayer = MJScene.Players[i];
		local tempTrans = parent:FindChild(tostring(tempPlayer.UIPosition + 1));
		tempTrans.gameObject:SetActive(true);
		if tempPlayer:IsBanker() then
			UIHelper.SetActiveState(tempTrans, "Role/Banker", true);
		end
		if tempPlayer:IsRoomMaster() then
			UIHelper.SetActiveState(tempTrans, "Role/Master", true);
		end
		UIHelper.SetLabelText(tempTrans, "Role/Label (Name)", tempPlayer:GetShowName());
		UIHelper.SetLabelText(tempTrans, "Role/Label (ID)", "ID:" .. tempPlayer.ID);
		-- 设置头像
		-- Transform tempHead = tempTrans.Find("Role/Sprite (Photo)");
		-- 	if (tempHead != null)
		-- 	{
		-- 		UIWidget tempWidget = UIHelper.CreateHeadPhoto (tempHead.gameObject, varHead);
		-- 		if (tempWidget != null) 
		-- 		{
		-- 			tempWidget.depth = 10;
		-- 			tempWidget.width = 66;
		-- 			tempWidget.height = 66;
		-- 		}
		-- 	}
	end
	local tempGrid = UIHelper.GetComponent(this.transform, "Grid", typeof(UIGrid));
	tempGrid:Reposition();
	tempGrid.enabled = true;
end
-- 设置玩法和局数
function UI_MJTotalResult.SetupPlaywayAndRound(roundCount)
	local tempRounds = "已打局数: " .. roundCount;
	UIHelper.SetLabelText(this.transform, "LeftTop/Rounds", tempRounds);
	-- string tempWay = string.Empty;
	-- List<MJPlayWay> tempPlayWay=MaJiangPlayWay.GetSingleton ().GetCurrentPlayWay();
	-- if(tempPlayWay==null)
	-- {
	-- 	return;
	-- }
	-- for (int i = 0; i < tempPlayWay.Count; i++) 
	-- {
	-- 	tempWay += Localization.Get ("MaJiang PlayWay "+(int)tempPlayWay[i])+"·";
	-- }
	-- if (string.IsNullOrEmpty(tempWay) == false && tempWay.Length > 1)
	-- {
	-- 	Helper.SetLabelText (transform,"LeftTop/Way",tempWay.Substring(0,tempWay.Length-1));
	-- }
end 
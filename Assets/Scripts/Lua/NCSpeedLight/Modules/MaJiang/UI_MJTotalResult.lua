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
	UI_MJTotalResult.DisplayPlaywayAndRound();
	UI_MJTotalResult.DisplayPlayerInfo();
end
function UI_MJTotalResult.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
function UI_MJTotalResult.InitBtnEvent()
	-- 返回
	UIHelper.SetButtonEvent(this.transform, "Button/Back", function(obj)
		SceneManager.GotoScene(SceneType.HallScene);
	end);
	-- 分享
	UIHelper.SetButtonEvent(this.transform, "Button/Share", function(obj)
	end);
end
function UI_MJTotalResult.DisplayPlayerInfo()
	local parent = UIHelper.GetComponent(this.transform, "Grid", typeof(UnityEngine.Transform));
	if MJScene.TotalResultInfo == nil or MJScene.TotalResultInfo.m_count == 0 then
		-- 一局也没打
		for i = 1, # MJScene.Players do
			local tempPlayer = MJScene.Players[i];
			local tempTrans = parent:FindChild(tostring(tempPlayer.UIPosition));
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
	else
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
				UIHelper.SetLabelText(tempTrans, "Role/Label (Name)", tempPlayer:GetShowName());
				UIHelper.SetLabelText(tempTrans, "Role/Label (ID)", "ID:" .. tempPlayer.ID);
				local tempItem = tempTrans:FindChild("ScrollView/UIGrid/Item");
				local tempClone = UnityEngine.Object.Instantiate(tempItem);
				tempClone:SetParent(tempItem.parent);
				tempClone.localScale = Vector3.New(1, 1, 1);
				local tempStr = "";
				if i <= 9 then
					tempStr = "第" .. MJResultText.ToString(i) .. "局";
				else
					tempStr = "第" .. MJResultText.ToString(9) .. MJResultText.ToString(i - 10) .. "局";
				end
				-- 局数
				UIHelper.SetLabelText(tempClone, "Label", tempStr);
				--  当前局数输赢积分
				local tempScore = MJScene.TotalResultInfo.m_OneData[i].m_ResultInfo[j].m_score;
				local tempTotalScore = mTotalScore[j] + tempScore;
				mTotalScore[j] = tempTotalScore;
				SetLabelPos(tempClone, tempScore);
				-- 	if (i == 0) 
				-- 	{
				-- 		-- 设置名字头像
				-- 		string tempName=mData.m_OneData[i].m_ResultInfo[j].m_name;
				-- 		Helper.SetLabelText(tempTrans,"Role/Label (Name)",UIHelper.GetPlayerName(tempName));
				-- 		string tempID=mData.m_OneData [i].m_ResultInfo [j].m_id;
				-- 		Helper.SetLabelText(tempTrans,"Role/Label (ID)","ID:"+tempID);
				-- 		string tempHeadName=mData.m_OneData[i].m_ResultInfo[j].m_headUrl;
				-- 		Transform tempHead = tempTrans.Find("Role/Sprite (Photo)");
				-- 		if (tempHead != null)
				-- 		{
				-- 			UIWidget tempWidget = UIHelper.CreateHeadPhoto (tempHead.gameObject, tempHeadName);
				-- 			if (tempWidget != null) 
				-- 			{
				-- 				tempWidget.depth = 10;
				-- 				tempWidget.width = 66;
				-- 				tempWidget.height = 66;
				-- 			}
				-- 		}
				-- 	}
				-- 	UIGridReposition (tempItem.parent);
				-- 	tempClone.gameObject.SetActive (true);
				-- 	Helper.SetLabelText (tempTrans, "Label (Total)",mTotalScore [j].ToString());
			end
		end
	end
	local tempGrid = UIHelper.GetComponent(this.transform, "Grid", typeof(UIGrid));
	tempGrid:Reposition();
	tempGrid.enabled = true;
end
-- 显示玩法和局数
function UI_MJTotalResult.DisplayPlaywayAndRound()
	local tempRounds = "已打局数: " .. tostring(MJScene.CurrentRound);
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
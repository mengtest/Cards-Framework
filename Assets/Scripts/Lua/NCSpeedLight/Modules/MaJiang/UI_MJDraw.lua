-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UI_MJDraw.lua
-- Describle:   流局界面
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
UI_MJDraw = {
	transform = nil,
	gameObject = nil,
}
local this = UI_MJDraw;
function UI_MJDraw.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end
function UI_MJDraw.Start()
	UI_MJDraw.InitView();
	UI_MJDraw.InitPlaywayAndRound();
end
function UI_MJDraw.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
function UI_MJDraw.InitView()
	local allRoleHandCards = MJScene.HuInfo.m_Data;
	for i = 1, # allRoleHandCards do
		local card = allRoleHandCards[i];
		local tempPlayer = MJScene.GetPlayerByID(card.m_roleid);
		local tempTran = this.transform:Find("Center/" .. tempPlayer.UIPosition);
		tempTran.gameObject:SetActive(true);
		if tempPlayer:IsBanker() then
			UIHelper.SetActiveState(tempTran, "Role/Banker", true);
		end
		if tempPlayer:IsRoomMaster() then
			UIHelper.SetActiveState(tempTran, "Role/Master", true);
		end
		UIHelper.SetLabelText(tempTran, "Label (Name)", tempPlayer:GetShowName());
		UIHelper.SetLabelText(tempTran, "Label (ID)", "ID:" .. tostring(tempPlayer.ID));
		local tempScore = tempTran:FindChild("Score");
		UIHelper.SetLabelText(tempScore, "Label (Gang)/Label", tostring(card.m_anGang + card.m_Gang));
		UIHelper.SetLabelText(tempScore, "Label (Hu)/Label", tostring(card.m_Hufeng));
		UIHelper.SetLabelText(tempScore, "Label (Jiang)/Label", tostring(card.m_reward));
		UIHelper.SetLabelText(tempScore, "Label (Score)/Label", tostring(card.m_score));
		UIHelper.SetLabelText(tempTran, "Label (Total)/Label", tostring(tempPlayer:GetTotalScore()));
		local tempGrid = tempScore:GetComponent(typeof(UIGrid));
		tempGrid.enabled = true;
		tempGrid:Reposition();
		--  /// 设置头像;
		--         if (tempPlayer.pRoleInfo != null)
		--         {
		-- 			Transform tempPhotoTrans = tempTran.Find("Role/Sprite (Photo)");
		--             if (tempPhotoTrans != null)
		--             {
		--                 UIWidget tempWidget = UIHelper.CreateHeadPhoto(tempPhotoTrans.gameObject, tempPlayer.pShowImage);
		--                 if (tempWidget != null)
		--                 {
		--                     tempWidget.depth = 10;
		--                     tempWidget.width = 60;
		--                     tempWidget.height = 60;
		--                 }
		--             }
		--         }
	end
	local tempParentGrid = UIHelper.GetComponent(this.transform, "Center", typeof(UIGrid));
	tempParentGrid.enabled = true;
	tempParentGrid:Reposition();
end
-- 设置玩法和局数
function UI_MJDraw.InitPlaywayAndRound()
	local tempRounds = "当前局数: " .. MJScene.CurrentRound .. "/" .. MJScene.TotalRound;
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
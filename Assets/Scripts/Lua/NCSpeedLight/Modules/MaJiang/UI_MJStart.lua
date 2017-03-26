UI_MJStart = {
	transform = nil,
	gameObject = nil,
}

local this = UI_MJStart;

function UI_MJStart.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJStart.Start()
	local tempWidget = UIHelper:GetComponent(this.transform, "Widget", typeof(UIWidget));
	if tempWidget ~= nil then
		local tempScreenPos = UIManager.ScreenResolution();  --  UIRoot.GetPixelSizeAdjustment(gameObject) * NGUITools.screenSize;
		local tempXRate = tempScreenPos.x / tempWidget.width;
		local tempYRate = tempScreenPos.y / tempWidget.height;
		if tempXRate < tempYRate then
			tempWidget.cachedTransform.localScale = UnityEngine.Vector3(tempYRate, tempYRate, 0);
		else
			tempWidget.cachedTransform.localScale = UnityEngine.Vector3(tempXRate, tempXRate, 0);
		end
	end
	-- AdapterForAudioToolKit.Instance.Play("MJ_start");
	local tempTrans = transform:Find("kaiju");
	if tempTrans ~= nil then
		tempTrans.gameObject.SetActive(true);
	end
end

-- 初始化玩家信息
function UI_MJStart.InitPlayerInfo()
--  Player tempPlayer = PlayerManager.GetSingleton().pCurPlayer;
--         if (tempPlayer == null)
--         {
--             return;
--         }

--         bool tempOnlyTwo = PlayerManager.GetSingleton().pPlayerNum == (int)RoomPlayerNum.RPN_Two;

--         // 自己;
--         string tempName = UIHelper.GetPlayerName(tempPlayer.pShowName);
--         string tempHeadIcon = tempPlayer.pShowImage;

--         InitHead("Widget/bk/down/Widget/Photo", tempHeadIcon, tempPlayer.pHeadFrame.ToString());
--         Helper.SetLabelText(transform, "Widget/bk/down/Widget/Label (Name)", tempName);
-- 		Helper.SetActiveState(transform, "Widget/bk/down/Widget/Photo/Kuang", true);

--         MaJiangPlayer tempMp = null;

--         if (tempOnlyTwo == false)
--         {
--             // 下家;
--             tempMp = varPlayer.pDownPlayer;
--             tempName = UIHelper.GetPlayerName(tempMp.pShowName);
--             tempHeadIcon = tempMp.pShowImage;
--             InitHead("Widget/bk/right/Widget/Photo", tempHeadIcon, tempMp.pRoleInfo.m_HeadFrame.ToString());
--             Helper.SetLabelText(transform, "Widget/bk/right/Widget/Label (Name)", tempName);
-- 			Helper.SetActiveState(transform, "Widget/bk/right/Widget/Photo/Kuang", true);
--         }

--         // 对家;
--         tempMp = varPlayer.pFacePlayer;
--         tempName = UIHelper.GetPlayerName(tempMp.pShowName);
--         tempHeadIcon = tempMp.pShowImage;

--         InitHead("Widget/bk/up/Widget/Photo", tempHeadIcon, tempMp.pRoleInfo.m_HeadFrame.ToString());
--         Helper.SetLabelText(transform, "Widget/bk/up/Widget/Label (Name)", tempName);
-- 		Helper.SetActiveState(transform, "Widget/bk/up/Widget/Photo/Kuang", true);

--         if (tempOnlyTwo == false)
--         {
--             // 上家;
--             tempMp = varPlayer.pUpPlayer;
--             tempName = UIHelper.GetPlayerName(tempMp.pShowName);
--             tempHeadIcon = tempMp.pShowImage;
--             InitHead("Widget/bk/left/Widget/Photo", tempHeadIcon, tempMp.pRoleInfo.m_HeadFrame.ToString());
--             Helper.SetLabelText(transform, "Widget/bk/left/Widget/Label (Name)", tempName);
-- 			Helper.SetActiveState(transform, "Widget/bk/left/Widget/Photo/Kuang", true);
--         } 
end

function UI_MJStart.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
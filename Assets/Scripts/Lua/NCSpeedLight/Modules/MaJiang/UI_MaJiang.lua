UI_MaJiang = {
	transform,
	gameObject,
}

local this = UI_MaJiang

function UI_MaJiang.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MaJiang.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "bottom/right/DissolveRoom", UI_MaJiang.DissolveRoom);
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "center/Ready/Yes", UI_MaJiang.OnClickYes);
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "center/Ready/No", UI_MaJiang.OnClickNo);
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "center/Ready/Invite", UI_MaJiang.OnClickInvite);
	NCSpeedLight.UIHelper.SetButtonEvent(this.transform, "center/CastDice/Button", UI_MaJiang.OnClickCastDice);
	UI_MaJiang.SetupPlayerUIVisiable();
	UI_MaJiang.SetupReadyAndInvite(true, false, true);
end

-- 设置player ui显示
function UI_MaJiang.SetupPlayerUIVisiable()
	if SharedVariable.FBInfo.m_FBTypeID == RoomType.R_1 then
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "Player1", false);
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "Player3", false);
	end
end

-- 设置准备和邀请按钮的显示状态 , Yes/No/Invite
function UI_MaJiang.SetupReadyAndInvite(...)
	local states = {...};
	NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/Ready/Yes", states[1]);
	NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/Ready/No", states[2]);
	NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/Ready/Invite", states[3]);
end

-- 设置掷骰子
function UI_MaJiang.SetupCastDice(status)
	Log.Info("UI_MaJiang.SetupCastDice: hero position is " .. Player.Hero.MJData.m_RoleData.m_Postion .. ",Banker position is " .. Player.Hero.HandCardInfo.m_bankerPos .. ",target status is " .. tostring(status));
	if status then
		if Player.Hero.MJData.m_RoleData.m_Postion == Player.Hero.HandCardInfo.m_bankerPos then
			NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/CastDice/Button", true);
		else
			NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/CastDice/Button", false);
		end
	else
		NCSpeedLight.UIHelper.SetActiveState(this.transform, "center/CastDice/Button", false);
	end
end

function UI_MaJiang.DissolveRoom(go)
	local option = StandardDialogOption:New();
	option.OnClickOK =
	function()
		MaJiangScene.RequestCloseRoom();
	end;
	option.DoubleButton = true;
	option.Content = "解散房间不扣除房卡，是否确定解散？";
	option.Title = "解散房间";
	UIManager.OpenStandardDialog(option);
end

function UI_MaJiang.OnClickYes(go)
	MaJiangScene.RequestReady(true);
end

function UI_MaJiang.OnClickNo(go)
	MaJiangScene.RequestReady(false);
end

function UI_MaJiang.OnClickInvite(go)
end

function UI_MaJiang.OnClickCastDice(go)
	MaJiangScene.RequestCastDice();
end

function UI_MaJiang.ShowOperateView(operations)
	local tempDic = {};
	table.insert(tempDic, {"ChooseOperate/Peng1", false});
	table.insert(tempDic, {"ChooseOperate/Eat1", false});
	table.insert(tempDic, {"ChooseOperate/Eat2", false});
	table.insert(tempDic, {"ChooseOperate/Eat3", false});
	table.insert(tempDic, {"ChooseOperate/Gang1", false});
	table.insert(tempDic, {"ChooseOperate/Gang2", false});
	table.insert(tempDic, {"ChooseOperate/Gang3", false});
	table.insert(tempDic, {"Hu", false});
	table.insert(tempDic, {"DingHu", false});
	
	local EatNum = 0;
	local GangNum = 0;
	for i = 1, # operations do
		local tempOperate = operations[i];
		if tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_CHI then
			EatNum = EatNum + 1;
			tempDic["ChooseOperate/Eat" .. tostring(EatNum)] = true;
			ClickEat();
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_PENG then
			tempDic["ChooseOperate/Peng1"] = true;
			ClickPeng();
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_GANG or tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_BuGang or tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_AN_GANG then
			GangNum = GangNum + 1;
			tempDic["ChooseOperate/Gang" .. tostring(GangNum)] = true;
			ClickGang();
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_HU then
			tempDic["Hu"] = true;
		elseif tempOperate.m_OperatorType == MaJiangOperatorType.MJOT_DingHU then
			tempDic["DingHu"] = true;
		end
	end
	
-- 	Transform tempTrans = transform.Find("bottom/right/Operate");
-- 	Transform tempBg = transform.Find("bottom/right/Bg");
-- 	Transform tempChoose=tempTrans.FindChild("ChooseOperate");
-- 	if (tempTrans == null)
-- 	{
-- 		return;
-- 	}

-- 	Dictionary<string, bool>.Enumerator tempEnumerator = tempDic.GetEnumerator();
-- 	for (int i = 0; i < tempDic.Count; i++)
-- 	{
-- 		tempEnumerator.MoveNext();
-- 		KeyValuePair<string, bool> tempKvp = tempEnumerator.Current;
-- 		Helper.SetActiveState(tempTrans, tempKvp.Key, tempKvp.Value);
-- 	}
-- 	tempBg.gameObject.SetActive(true);
-- 	tempTrans.gameObject.SetActive(true);
-- 	UIGrid tempGrid = tempTrans.GetComponent<UIGrid>();
-- 	if (tempGrid != null)
-- 	{
-- 		tempGrid.Reposition();
-- 	}
-- 	UIGrid ChooseOpGrid = tempChoose.GetComponent<UIGrid>();
-- 	if (ChooseOpGrid != null) 
-- 	{
-- 		ChooseOpGrid.Reposition();
-- 	}
-- 	if (tempDic.ContainsKey("ChooseOperate/Gang2") || tempDic.ContainsKey("ChooseOperate/Gang3"))
-- 	{
-- 		Transform tempGang2Trans = tempTrans.FindChild("ChooseOperate/Gang2");
-- 		tempGang2Trans.localPosition = new Vector3(tempGang2Trans.localPosition.x - 56, 0, 0);
-- 		Transform tempGang3Trans = tempTrans.FindChild("ChooseOperate/Gang3");
-- 		tempGang3Trans.localPosition = new Vector3(tempGang3Trans.localPosition.x - 112, 0, 0);
-- 	}
-- }
end
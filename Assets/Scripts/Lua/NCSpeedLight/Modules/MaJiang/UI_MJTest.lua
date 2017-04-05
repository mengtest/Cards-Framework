UI_MJTest = {
	transform = nil,
	gameObject = nil,
	CloneObj = nil,
}
local this = UI_MJTest;
function UI_MJTest.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.CloneObj = this.transform:Find("Btn/Table/Label").gameObject;
end
function UI_MJTest.Start()
	UIHelper.SetButtonEvent(this.transform, "Button", function(obj)
		UIManager.CloseWindow(UIType.UI_MJTest);
	end);
	UI_MJTest.CloneCard(MaJiangType.MJ_1_WAN, "一万");
	UI_MJTest.CloneCard(MaJiangType.MJ_2_WAN, "二万");
	UI_MJTest.CloneCard(MaJiangType.MJ_3_WAN, "三万");
	UI_MJTest.CloneCard(MaJiangType.MJ_4_WAN, "四万");
	UI_MJTest.CloneCard(MaJiangType.MJ_5_WAN, "五万");
	UI_MJTest.CloneCard(MaJiangType.MJ_6_WAN, "六万");
	UI_MJTest.CloneCard(MaJiangType.MJ_7_WAN, "七万");
	UI_MJTest.CloneCard(MaJiangType.MJ_8_WAN, "八万");
	UI_MJTest.CloneCard(MaJiangType.MJ_9_WAN, "九万");
	UI_MJTest.CloneCard(MaJiangType.MJ_1_TIAO, "一条");
	UI_MJTest.CloneCard(MaJiangType.MJ_2_TIAO, "二条");
	UI_MJTest.CloneCard(MaJiangType.MJ_3_TIAO, "三条");
	UI_MJTest.CloneCard(MaJiangType.MJ_4_TIAO, "四条");
	UI_MJTest.CloneCard(MaJiangType.MJ_5_TIAO, "五条");
	UI_MJTest.CloneCard(MaJiangType.MJ_6_TIAO, "六条");
	UI_MJTest.CloneCard(MaJiangType.MJ_7_TIAO, "七条");
	UI_MJTest.CloneCard(MaJiangType.MJ_8_TIAO, "八条");
	UI_MJTest.CloneCard(MaJiangType.MJ_9_TIAO, "九条");
	UI_MJTest.CloneCard(MaJiangType.MJ_1_TONG, "一筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_2_TONG, "二筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_3_TONG, "三筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_4_TONG, "四筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_5_TONG, "五筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_6_TONG, "六筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_7_TONG, "七筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_8_TONG, "八筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_9_TONG, "九筒");
	UI_MJTest.CloneCard(MaJiangType.MJ_DONG, "东");
	UI_MJTest.CloneCard(MaJiangType.MJ_NAN, "南");
	UI_MJTest.CloneCard(MaJiangType.MJ_XI, "西");
	UI_MJTest.CloneCard(MaJiangType.MJ_BEI, "北");
	UI_MJTest.CloneCard(MaJiangType.MJ_ZHONG, "中");
	UI_MJTest.CloneCard(MaJiangType.MJ_FA, "发");
	UI_MJTest.CloneCard(MaJiangType.MJ_BAI, "白");
	local tempTable = UIHelper.GetComponent(this.transform, "Btn/Table", typeof(UITable));
	if tempTable ~= nil then
		tempTable:Reposition();
	end
end
function UI_MJTest.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end
function UI_MJTest.CloneCard(type, text)
	local tempNewObj = NGUITools.AddChild(this.CloneObj.transform.parent.gameObject, this.CloneObj);
	tempNewObj.name = MaJiangType.GetString(type);
	local tempLable = tempNewObj:GetComponent(typeof(UILabel));
	if tempLable ~= nil then
		tempLable.text = text;
	end
	UIHelper.SetButtonEvent(tempNewObj.transform, ClickCard);
	tempNewObj:SetActive(true);
end
function ClickCard(varObj)
	if varObj == nil then return end;
	local tempType = tonumber(varObj.name);
	local msg = {
		m_Index = Player.ID,
		m_Type = tempType
	};
	NetManager.SendEventToLogicServer(GameMessage.GM_PlayerNeedCardRequest, PBMessage.GM_PlayerHandCard, msg);
end 
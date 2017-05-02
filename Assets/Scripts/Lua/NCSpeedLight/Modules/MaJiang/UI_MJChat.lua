UI_MJChat = {
	transform = nil,
	gameObject = nil,
	DefaultChat = {},
	MAX_TEXT = 25,
	History = nil,
}

local this = UI_MJChat;

function UI_MJChat.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.History = {};
end

function UI_MJChat.Start()
	UI_MJChat.InitBtnEvent();
	UI_MJChat.InitDefaultChat();
	UI_MJChat.InitFaceChat();
end

function UI_MJChat.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_MJChat.InitBtnEvent()
	UIHelper.SetButtonEvent(this.transform, "Text/SendBtn", UI_MJChat.OnClickSendText);
end

function UI_MJChat.InitDefaultChat()
	UI_MJChat.DefaultChat = {};
	table.insert(UI_MJChat.DefaultChat, "快点出牌，时间不等人！");
	table.insert(UI_MJChat.DefaultChat, "一路屁胡，走向胜利~");
	table.insert(UI_MJChat.DefaultChat, "上碰下自摸，大家小心咯~");
	table.insert(UI_MJChat.DefaultChat, "好汉不胡头三把！");
	table.insert(UI_MJChat.DefaultChat, "天胡不算胡，后胡金满赚！");
	table.insert(UI_MJChat.DefaultChat, "呀，打错了~");
	table.insert(UI_MJChat.DefaultChat, "卡卡卡，卡的人火大哦！");
	table.insert(UI_MJChat.DefaultChat, "很高兴可以和大家一起搓麻将啊~");
	table.insert(UI_MJChat.DefaultChat, "我这里顺风顺水，想不胡都可以！");
	table.insert(UI_MJChat.DefaultChat, "要什么来什么！");
	
	local tempClone = this.transform:Find("Text/Clone");
	if tempClone == nil then return end;
	local tempCloneObj = tempClone.gameObject;
	local tempParentTrans = this.transform:Find("Text/Panel/UIGrid");
	
	for i = 1, #UI_MJChat.DefaultChat do
		local msg = UI_MJChat.DefaultChat[i];
		local tempNewObj = NGUITools.AddChild(tempParentTrans.gameObject, tempCloneObj);
		tempNewObj.name = tostring(i);
		
		local strLen = utf8.len(msg);
		if utf8.len(msg) > 11 then
			msg = utf8.sub(msg, 1, 12);
			msg = msg .. "...";
		end
		
		UIHelper.SetLabelText(tempNewObj.transform, "Label", msg);
		tempNewObj:SetActive(true);
		UIHelper.SetButtonEvent(tempNewObj.transform, UI_MJChat.OnClickDefaultChat);
	end
	
	local tempGrid = tempParentTrans:GetComponent(typeof(UIGrid));
	if tempGrid ~= nil then
		tempGrid:Reposition();
	end
end

function UI_MJChat.OnClickDefaultChat(go)
	UI_MaJiang.SetChatActive(false);
	local content = UI_MJChat.DefaultChat[tonumber(go.name)];
	if content == nil then return end;
	local msg = {};
	msg.faceid = MJChatType.DefaultText;
	msg.roleid = MJPlayer.Hero.ID;
	msg.faceName = content;
	NetManager.SendEventToLogicServer(GameMessage.GM_ANSWER_FACE_REQUEST, PBMessage.GM_AnswerFaceReturn, msg);
end

function UI_MJChat.InitFaceChat()
	local facePanel = this.transform:Find("Face/Panel/UIGrid");
	for i = 0, facePanel.childCount - 1 do
		local face = facePanel:GetChild(i);
		UIHelper.SetButtonEvent(face, UI_MJChat.OnClickFace);
	end
end

function UI_MJChat.OnClickFace(go)
	UI_MaJiang.SetChatActive(false);
	if go == nil then return end;
	local sprite = UIHelper.GetComponent(go.transform, typeof(UISprite));
	if sprite == nil or sprite.spriteName == nil then return end;
	local msg = {};
	msg.faceid = MJChatType.Face;
	msg.roleid = MJPlayer.Hero.ID;
	msg.faceName = sprite.spriteName;
	NetManager.SendEventToLogicServer(GameMessage.GM_ANSWER_FACE_REQUEST, PBMessage.GM_AnswerFaceReturn, msg);
end

function UI_MJChat.OnClickSendText(go)
	local label = UIHelper.GetComponent(this.transform, "Text/Shuru/Text", typeof(UILabel));
	if label == nil then return end;
	if utf8.len(label.text) > UI_MJChat.MAX_TEXT then
		UIManager.OpenTipsDialog("消息不能超过" .. UI_MJChat.MAX_TEXT .. "个字");
		return;
	end
	UI_MaJiang.SetChatActive(false);
	local msg = {};
	msg.faceid = MJChatType.CustomText;
	msg.roleid = MJPlayer.Hero.ID;
	msg.faceName = label.text;
	NetManager.SendEventToLogicServer(GameMessage.GM_ANSWER_FACE_REQUEST, PBMessage.GM_AnswerFaceReturn, msg);
end

function UI_MJChat.AddHistory(roleid, type, content, duration)
	local panel = this.transform:Find("History/Panel/UIGrid");
	local player = MJScene.GetPlayerByID(tonumber(roleid));
	if player == nil then return end;
	local item = nil;
	if type == MJChatType.CustomText then
		if player:IsHero() then
			item = panel:Find("RightT");
		else
			item = panel:Find("LeftT");
		end
	elseif type == MJChatType.Voice then
		if player:IsHero() then
			item = panel:Find("RightV");
		else
			item = panel:Find("LeftV");
		end
	end
	if item == nil then return end;
	local itemObj = NGUITools.AddChild(panel.gameObject, item.gameObject);
	itemObj:SetActive(true);
	local curIndex = #UI_MJChat;
	curIndex = curIndex + 1;
	itemObj.name = tostring(curIndex);
	local uitex = UIHelper.GetComponent(itemObj.transform, "Head/Sprite (Photo)", typeof(UITexture));
	uitex.mainTexture = player:GetHeadTexture();
	if type == MJChatType.CustomText then
		UIHelper.SetLabelText(itemObj.transform, "Label (Time)", content);
	end
	local uiGrid = UIHelper.GetComponent(panel, typeof(UIGrid));
	uiGrid:Reposition();
	
	local record = {};
	record.roleid = roleid;
	record.type = type;
	record.content = content;
	record.duration = duration;
	
	table.insert(UI_MJChat.History, record);
	
end 
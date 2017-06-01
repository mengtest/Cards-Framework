UI_MJChat = {
	transform = nil,
	gameObject = nil,
	MAX_TEXT = 24,
	History = nil,
	DefaultChat =
	{
		"快点出牌，时间不等人！",
		"一路屁胡，走向胜利~",
		"上碰下自摸，大家小心咯~",
		"好汉不胡头三把！",
		"天胡不算胡，后胡金满赚！",
		"呀，打错了~",
		"卡卡卡，卡的人火大哦！",
		"很高兴可以和大家一起搓麻将啊~"
	},
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

function UI_MJChat.OnEnable()
	UI_MJChat.RefreshHistory();
	UI_MJChat.InitView();
end

function UI_MJChat.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
end

function UI_MJChat.GetDefaultTextSound(index, player)
	if player == nil then
		Log.Error("GetDefaultTextSound: error caused by nil player instance.");
		return nil;
	else
		local sound = "MaJiangSound";
		-- if LoginScene.SoundMode == 0 then
		-- 	if player.Sex == 1 then
		-- 		sound = sound .. "_PTNv_" .. index;
		-- 	else
		-- 		sound = sound .. "_PTNan_" .. index;
		-- 	end
		-- else
		if player.Sex == 1 then
			sound = sound .. "_FYNv_" .. index;
		else
			sound = sound .. "_FYNan_" .. index;
		end
		-- end
		Log.Info("GetDefaultTextSound:  sound name is " .. sound);
		return sound;
	end
end

function UI_MJChat.InitView()
	UIHelper.SetLabelText(this.transform, "Text/Shuru/Text", "");
end

function UI_MJChat.InitBtnEvent()
	UIHelper.SetButtonEvent(this.transform, "Text/SendBtn", UI_MJChat.OnClickSendText);
end

function UI_MJChat.InitDefaultChat()
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
	UI_MJBase.SetChatActive(false);
	local content = UI_MJChat.DefaultChat[tonumber(go.name)];
	if content == nil then return end;
	local msg = {};
	msg.faceid = MJChatType.DefaultText;
	msg.roleid = MJPlayer.Hero.ID;
	msg.faceName = go.name .. "." .. content;
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
	UI_MJBase.SetChatActive(false);
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
	if utf8.len(label.text) == 0 then UIManager.OpenTipsDialog("消息不可为空"); return end;
	if utf8.len(label.text) > UI_MJChat.MAX_TEXT then
		UIManager.OpenTipsDialog("消息不能超过" .. UI_MJChat.MAX_TEXT .. "个字");
		return;
	end
	UI_MJBase.SetChatActive(false);
	local msg = {};
	msg.roleId = MJPlayer.Hero.ID;
	msg.channel = 4;-- 组队频道
	msg.name = MJPlayer.Hero.Name;
	msg.word = label.text;
	msg.profession = HallScene.CurrentFBID;
	NetManager.SendEventToLogicServer(GameMessage.GM_SEND_CHAT_WORD, PBMessage.GM_GetChatInfo, msg);
end

-- 更新聊天历史列表显示
function UI_MJChat.RefreshHistory()
	if this.transform == nil then return end;
	if MJScene.ChatHistory == nil then return end;
	local panel = this.transform:Find("History/Panel/UIGrid");
	if panel == nil then return end;
	for i = 1, #MJScene.ChatHistory do
		local historyItem = MJScene.ChatHistory[i];
		if historyItem.GO == nil then
			local player = MJScene.GetPlayerByID(tonumber(historyItem.RoleID));
			if player ~= nil then
				-- 获取显示模板
				local item = nil;
				if historyItem.Type == MJChatType.CustomText then
					if player:IsHero() then
						item = panel:Find("RightT");
					else
						item = panel:Find("LeftT");
					end
				elseif historyItem.Type == MJChatType.Voice then
					if player:IsHero() then
						item = panel:Find("RightV");
					else
						item = panel:Find("LeftV");
					end
				end
				local itemObj = NGUITools.AddChild(panel.gameObject, item.gameObject);
				itemObj:SetActive(true);
				itemObj.name = tostring(i);
				local uitex = UIHelper.GetComponent(itemObj.transform, "Head/Sprite (Photo)", typeof(UITexture));
				uitex.mainTexture = player:GetHeadTexture();
				if historyItem.Type == MJChatType.CustomText then
					local label = UIHelper.GetComponent(itemObj.transform, "Label (Time)", typeof(UILabel));
					label.text = historyItem.Content;
					local bgSprite = UIHelper.GetComponent(itemObj.transform, "Sprite (bk)", typeof(UISprite));
					bgSprite.width = label.width + 38;
					bgSprite.height = 60;
				elseif historyItem.Type == MJChatType.Voice then
					UIHelper.SetActiveState(itemObj.transform, "Sprite (RedPoint)", false);
					if historyItem.Duration ~= nil then
						UIHelper.SetLabelText(itemObj.transform, "Duration", tostring(historyItem.Duration) .. "''");
					else
						UIHelper.SetLabelText(itemObj.transform, "Duration", "0''");
					end
					UIHelper.SetButtonEvent(itemObj.transform, UI_MJChat.OnClickHistoryItem);
				end
				historyItem.GO = itemObj;
			end
		end
	end
	local uiGrid = UIHelper.GetComponent(panel, typeof(UIGrid));
	uiGrid:Reposition();
end

function UI_MJChat.OnClickHistoryItem(go)
	if go ~= nil and MJScene.ChatHistory ~= nil then
		local itemHistory = MJScene.ChatHistory[tonumber(go.name)];
		if itemHistory ~= nil then
			itemHistory.IsRead = true;
			UI_MJBase.HandleVoice(itemHistory.RoleID, itemHistory.Content, itemHistory.Duration);
			-- UI_MJChat.RefreshHistory();
		end
	end
end 
UI_Record = {
	transform = nil,
	gameObject = nil,
	FullData = nil,
	CurrentData = nil,
	IsOpenDetailView = false,
}

local this = UI_Record;

function UI_Record.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
	this.IsOpenDetailView = false;
	this.FullData = nil;
	this.CurrentData = nil;
	UI_Record.RequestData(1);
	NetManager.RegisterEvent(GameMessage.GM_ROOM_RECORD_RETURN, UI_Record.OnRecvData);
end

function UI_Record.Start()
	UIHelper.SetButtonEvent(this.transform, "Close", UI_Record.OnClickClose);
end

function UI_Record.OnClickClose(go)
	if this.IsOpenDetailView then
		UI_Record.SetDetailViewState(false);
	else
		UIManager.CloseWindow(UIName.UI_Record);
	end
end

function UI_Record.SetDetailViewState(status)
	this.IsOpenDetailView = status;
	UIHelper.SetActiveState(this.transform, "DetailView", status);
	UIHelper.SetActiveState(this.transform, "ListView", not status);
end

-- 请求数据
function UI_Record.RequestData(page)
	local msg = {};
	msg.battletype = 101;
	msg.page = page;
	NetManager.SendEventToLogicServer(GameMessage.GM_ROOM_RECORD_REQUEST, PBMessage.GM_Room_record_request, msg);
end

-- 收到数据
function UI_Record.OnRecvData(evt)
	local msg = NetManager.DecodeMsg(PBMessage.GM_Room_record_return, evt);
	if msg == false then
		Log.Error("UI_Record.OnRecvData: parse msg error,struct is " .. PBMessage.GM_Room_record_return);
		return;
	end
	Log.Info("UI_Record.OnRecvData");
	this.FullData = msg;
	UI_Record.DisplayListView();
end

function UI_Record.OnClickItem(go)
	if go == nil then return end;
	this.CurrentData = this.FullData.data[tonumber(go.name)];
	UI_Record.SetDetailViewState(true);
	UIHelper.SetActiveState(this.transform, "DetailView", true);
	UI_Record.DisplayDetailView();
end

function UI_Record.OnClickView(go)
	local data = UI_Record.CurrentData.playercount[tonumber(go.name)];
	local id = data.increid;
	local msg = {};
	msg.request = id;
	NetManager.SendEventToLogicServer(GameMessage.GM_PLAYER_PLAYBACK_REQUEST, PBMessage.GM_Request, msg);
end

function UI_Record.DisplayListView()
	if #this.FullData.data == 0 then
		UIHelper.SetActiveState(this.transform, "BG/back_5", true);
	else
		local panel = this.transform:Find("ListView/Grid");
		local oriItem = panel:Find("Item");
		local uiGrid = panel:GetComponent(typeof(UIGrid));
		for i = 1, #this.FullData.data do
			local itemData = this.FullData.data[i];
			local begintime = itemData.begintime;
			local endtime = itemData.endtime;
			local rate = itemData.rate;
			local roleid = itemData.roleid;
			local name = itemData.name;
			local itemObj = NGUITools.AddChild(panel.gameObject, oriItem.gameObject);
			itemObj:SetActive(true);
			itemObj.name = tostring(i);
			itemObj.transform.localScale = Vector3(0.781, 0.781, 0.781);
			
			local item = itemObj.transform;
			UIHelper.SetButtonEvent(item, UI_Record.OnClickItem);
			UIHelper.SetLabelText(item, "LB_Index", tostring(i));
			UIHelper.SetLabelText(item, "LB_RoomNumber", "[AD2630FF]" .. roleid .. "[-][1C1110FF]号房间[-]");
			UIHelper.SetLabelText(item, "LB_Time", Utility.FormatTimeStamp("%Y-%m-%d %H:%M:%S", begintime));
			
			-- 设置名称	
			local totalScoreInfo = {};
			for j = 1, #itemData.playercount do
				local playData = itemData.playercount[j]; -- 当前局的数据
				for k = 1, #playData.role do
					local roleData = playData.role[k]; -- 玩家数据
					local rolename = roleData.rolename;
					local score = roleData.wingolde;
					if totalScoreInfo[rolename] == nil then
						totalScoreInfo[rolename] = score;
					else
						totalScoreInfo[rolename] = totalScoreInfo[rolename] + score;
					end
				end
			end
			
			local playerCount = 1;
			for key, value in pairs(totalScoreInfo) do
				local scorePanel = item:Find("GRP_Name" .. playerCount);
				UIHelper.SetLabelText(scorePanel, key);
				UIHelper.SetLabelText(scorePanel, "LB_Score", value);	
				playerCount = playerCount + 1;
			end
			
			for j = playerCount, 4 do
				UIHelper.SetActiveState(item, "GRP_Name" .. j, false);
			end
		end
		uiGrid:Reposition();
	end
end

function UI_Record.DisplayDetailView()
	local detailViewTransform = this.transform:Find("DetailView");
	-- 设置标题
	local playerCount = #this.CurrentData.playercount[1].role;
	for i = 1, playerCount do
		local playerData = this.CurrentData.playercount[1].role[i];
		UIHelper.SetLabelText(detailViewTransform, "LB_Name" .. i, playerData.rolename);	
	end
	for i = playerCount + 1, 4 do
		UIHelper.SetActiveState(detailViewTransform, "LB_Name" .. i, false);
	end
	
	-- 设置分数
	local panel = detailViewTransform:Find("Scroll View/Grid");
	local childCount = panel.childCount;
	for i = 0, childCount - 1 do
		local tempObj = panel:GetChild(i);
		if tempObj.name ~= "Item" then
			UnityEngine.GameObject.DestroyImmediate(tempObj.gameObject);
			childCount = childCount - 1;
		end
	end
	local oriItem = panel:Find("Item");
	local uiGrid = panel:GetComponent(typeof(UIGrid));
	for i = 1, #this.CurrentData.playercount do
		local playData = this.CurrentData.playercount[i];
		local itemObj = NGUITools.AddChild(panel.gameObject, oriItem.gameObject);
		itemObj:SetActive(true);
		itemObj.name = tostring(i);
		local item = itemObj.transform;
		local btnTran = item:Find("BTN_View");
		btnTran.name = tostring(i);
		UIHelper.SetButtonEvent(btnTran, UI_Record.OnClickView);
		
		UIHelper.SetLabelText(item, "LB_Time", Utility.FormatTimeStamp("%m-%d %H:%M", playData.begintime));
		
		for j = 1, #playData.role do
			local roleData = playData.role[j];
			UIHelper.SetLabelText(item, "LB_Score" .. j, roleData.wingolde);
		end
		for j = playerCount + 1, 4 do
			UIHelper.SetActiveState(item, "LB_Score" .. j, false);
		end
	end	
	uiGrid:Reposition();
end 
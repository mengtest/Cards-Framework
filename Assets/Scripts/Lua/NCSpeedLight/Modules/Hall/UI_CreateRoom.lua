UI_CreateRoom =
{
	Round = nil,
	PlayerNum = nil,
	Playway = nil,
}

local transform;
local gameObject;

function UI_CreateRoom.Awake(go)
	gameObject = go;
	transform = go.transform;
end

function UI_CreateRoom.Start()
	UIHelper.SetButtonEvent(transform, "top/topLeft/BackButton", UI_CreateRoom.OnClickClose);
	UIHelper.SetButtonEvent(transform, "Center/Button", UI_CreateRoom.OnClickConfirm);
	HallScene.RequestPlayerInFb();
end

function UI_CreateRoom.OnDestroy()
end

function UI_CreateRoom.OnClickClose(go)
	UIManager.CloseWindow(UIName.UI_CreateRoom);
end

function UI_CreateRoom.OnClickConfirm(go)
	local roundBtn = UIToggle.GetActiveToggle(1);
	local playerBtn = UIToggle.GetActiveToggle(2);
	local playway1Btn = UIToggle.GetActiveToggle(3);
	local playway2Btn = UIToggle.GetActiveToggle(0); -- 单选
	UI_CreateRoom.Round = tonumber(roundBtn.name);
	UI_CreateRoom.PlayerNum = tonumber(playerBtn.name);
	if playway2Btn == nil then
		UI_CreateRoom.Playway = MJPlayWay.ToInt(playway1Btn.name);
	else
		UI_CreateRoom.Playway = MJPlayWay.ToInt(playway1Btn.name) .. "," .. MJPlayWay.ToInt(playway2Btn.name);
	end
	HallScene.RequestCreateRoom();
end 
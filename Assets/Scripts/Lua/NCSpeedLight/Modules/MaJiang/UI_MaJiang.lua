UI_MaJiang = {
}

local transform;
local gameObject;

function UI_MaJiang.Awake(go)
	gameObject = go;
	transform = go.transform;
	isRecordPanelOpen = false;
end

function UI_MaJiang.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/right/DissolveRoom', UI_MaJiang.DissolveRoom);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Record', UI_Main.OnClickRecord);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Message', UI_Main.OnClickMessage);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/More', UI_Main.OnClickMore);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'right/rightButton/CreateRoom', UI_Main.OnClickCreateRoom);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'right/rightButton/JoinRoom', UI_Main.OnClickJoinRoom);
end

function UI_MaJiang.DissolveRoom(go)
	SceneManager:GotoScene(SceneType.HallScene);
end
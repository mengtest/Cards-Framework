UI_Main = {
}

local this = UI_Main;

local transform;
local gameObject;

function this.Awake(go)
	gameObject = go;
	transform = go.transform;
	isRecordPanelOpen = false;
end

function this.Start()
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Share', OnClickShare);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Record', OnClickRecord);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/Message', OnClickMessage);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'bottom/function/More', OnClickMore);
end

function OnClickShare(go)
	UIManager.OpenWindow('Hall/UI_Share');
end

function OnClickRecord(go)
	UIManager.OpenWindow('Hall/UI_Record');
end

function OnClickMessage(go)
	UIManager.OpenWindow('Hall/UI_Share');
end

function OnClickMore(go)
	UIManager.OpenWindow('Hall/UI_Share');
end
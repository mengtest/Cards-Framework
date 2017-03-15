UI_Main = {
}

local this = UI_Main;

local transform;
local gameObject;

function UI_Main.Awake(go)
	gameObject = go;
	transform = go.transform;
	isRecordPanelOpen = false;
end

function UI_Main.Start()
end
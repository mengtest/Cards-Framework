UI_MJPlayback = {
	transform = nil,
	gameObject = nil,
	LastSpeed = 1,
	Speed = 1,
	IsPlaying = true,
	CoFunc = nil,
}

local this = UI_MJPlayback;

function UI_MJPlayback.Awake(go)
	this.gameObject = go;
	this.transform = go.transform;
end

function UI_MJPlayback.Start()
	UIHelper.SetButtonEvent(this.transform, "Toggle (P1)", UI_MJPlayback.OnClickSpeed1);
	UIHelper.SetButtonEvent(this.transform, "Toggle (P2)", UI_MJPlayback.OnClickSpeed2);
	UIHelper.SetButtonEvent(this.transform, "Toggle (P4)", UI_MJPlayback.OnClickSpeed4);
	UIHelper.SetButtonEvent(this.transform, "Toggle (Play)", UI_MJPlayback.OnClickPlay);
	UIHelper.SetButtonEvent(this.transform, "Toggle (Pause)", UI_MJPlayback.OnClickPause);
	UIHelper.SetButtonEvent(this.transform, "Toggle (RePlay)", UI_MJPlayback.OnClickReplay);
	UIHelper.SetButtonEvent(this.transform, "Back", UI_MJPlayback.OnClickBack);
end

function UI_MJPlayback.OnDestroy()
	this.transform = nil;
	this.gameObject = nil;
	coroutine.stop(UI_MJPlayback.CoFunc);
	UI_MJPlayback.ChangePlaySpeed(1);
end

function UI_MJPlayback.OnClickSpeed1(go)
	UIHelper.SetActiveState(this.transform, "Toggle (P1)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (P2)", true);
	UIHelper.SetActiveState(this.transform, "Toggle (P4)", false);
	UI_MJPlayback.ChangePlaySpeed(2);
end

function UI_MJPlayback.OnClickSpeed2(go)
	UIHelper.SetActiveState(this.transform, "Toggle (P1)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (P2)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (P4)", true);
	UI_MJPlayback.ChangePlaySpeed(4);
end

function UI_MJPlayback.OnClickSpeed4(go)
	UIHelper.SetActiveState(this.transform, "Toggle (P1)", true);
	UIHelper.SetActiveState(this.transform, "Toggle (P2)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (P4)", false);
	UI_MJPlayback.ChangePlaySpeed(1);
end

function UI_MJPlayback.OnClickPlay(go)
	UIHelper.SetActiveState(this.transform, "Toggle (Play)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (Pause)", true);
	UI_MJPlayback.ChangePlaySpeed(this.LastSpeed);
end

function UI_MJPlayback.OnClickPause(go)
	UIHelper.SetActiveState(this.transform, "Toggle (Play)", true);
	UIHelper.SetActiveState(this.transform, "Toggle (Pause)", false);
	UI_MJPlayback.ChangePlaySpeed(0);
end

function UI_MJPlayback.OnClickReplay(go)
	UIHelper.SetActiveState(this.transform, "Toggle (Play)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (Pause)", true);
	UIHelper.SetActiveState(this.transform, "Toggle (RePlay)", false);
	UI_MJPlayback.Replay();
end

function UI_MJPlayback.OnClickBack(go)
	SceneManager.GotoScene(SceneType.HallScene);
end

function UI_MJPlayback.ChangePlaySpeed(speed)
	this.LastSpeed = this.Speed;
	this.Speed = speed;
	Time:SetTimeScale(this.Speed);
end

function UI_MJPlayback.Play()
	UIHelper.SetActiveState(this.transform, "Toggle (P1)", true);
	UIHelper.SetActiveState(this.transform, "Toggle (P2)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (P4)", false);
	UI_MJPlayback.ChangePlaySpeed(1);
	UI_MJPlayback.CoFunc = coroutine.start(UI_MJPlayback.DispatchMsg);
end

function UI_MJPlayback.WaitReplay()
	UIHelper.SetActiveState(this.transform, "Toggle (Play)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (Pause)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (RePlay)", true);
end

function UI_MJPlayback.Replay()
	MJScene.Reset();
	UIHelper.SetActiveState(this.transform, "Toggle (P1)", true);
	UIHelper.SetActiveState(this.transform, "Toggle (P2)", false);
	UIHelper.SetActiveState(this.transform, "Toggle (P4)", false);
	UI_MJPlayback.ChangePlaySpeed(1);
	UI_MJPlayback.CoFunc = coroutine.start(UI_MJPlayback.DispatchMsg);
end

function UI_MJPlayback.DispatchMsg()
	coroutine.wait(1);
	local evt = Evt.New();
	for i = 1, #HallScene.PlaybackData.m_MessageID do
		local msgID = HallScene.PlaybackData.m_MessageID[i];
		local msgBuffer = HallScene.PlaybackData.m_ByteData[i];
		evt.ID = msgID;
		evt.LuaParam = msgBuffer;
		NetManager.NotifyEvent(evt);
		if i > 2 then
			coroutine.wait(1);
		end
	end
	UI_MJPlayback.ChangePlaySpeed(1);
end 
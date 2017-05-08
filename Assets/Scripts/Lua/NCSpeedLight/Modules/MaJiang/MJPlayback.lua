MJPlayback = {};

function MJPlayback.Start()
	coroutine.start(MJPlayback.DispatchMsg);
end

function MJPlayback.DispatchMsg()
	coroutine.wait(1);
	for i = 1, #HallScene.PlaybackData.m_MessageID do
		local msgID = HallScene.PlaybackData.m_MessageID[i];
		local msgBuffer = HallScene.PlaybackData.m_ByteData[i];
		local evt = Evt.New();
		evt.ID = msgID;
		evt.LuaParam = msgBuffer;
		NetManager.NotifyEvent(evt);
		coroutine.wait(0.2);
	end
end 
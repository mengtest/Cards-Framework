UI_DissolveRoom = {
	DissolveID = nil,
	transform = nil,
	gameObject = nil,
}

local this = UI_DissolveRoom;

function UI_DissolveRoom.Awake(go)
	this = go;
	this.transform = go.transform;
end

function UI_DissolveRoom.Start()
	local dissolver = MaJiangScene.GetPlayer(this.DissolveID);
	if dissolver ~= nil then
	end
end
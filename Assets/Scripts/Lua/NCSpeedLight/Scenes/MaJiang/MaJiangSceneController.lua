MaJiangSceneController = {
	transform = nil,
	gameObject = nil,
	MJDeskObj = nil,
	MJDeskAnimation = nil,
}

function MaJiangSceneController.Awake(go)
	if go ~= nil then
		MaJiangSceneController.gameObject = go;
		MaJiangSceneController.transform = go.transform;
		MaJiangSceneController.MJDeskObj = go.transform:Find("majiangzhuo").gameObject;
		MaJiangSceneController.MJDeskAnimation = MaJiangSceneController.MJDeskObj:GetComponent(typeof(UnityEngine.Animation));
	end
end

function MaJiangSceneController.Start()
end

function MaJiangSceneController.PlayDeskAnimation()
	if MaJiangSceneController.MJDeskAnimation ~= nil then
		MaJiangSceneController.MJDeskAnimation:Play();
	end
end
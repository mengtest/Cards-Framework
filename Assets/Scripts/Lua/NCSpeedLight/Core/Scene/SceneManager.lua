----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: SceneManager.lua
-- 	        // Describle:
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------
SceneManager =
{
	IsInitialized = false,
	Scenes = {},
	LastScene = nil,
	CurrentScene = nil,
	NextScene = nil,
};

function SceneManager.Initialize()
	if SceneManager.IsInitialized == false then
		SceneManager.IsInitialized = true;
		SceneManager.RegisterScene(LoginScene);
		SceneManager.RegisterScene(HallScene);
		SceneManager.RegisterScene(MJScene);
		Log.Info("SceneManager.Initialize：success.");
	else
		Log.Warning("SceneManager.Initialize：SceneManager has already been initialized.")
	end
end

function SceneManager.Update()
	if SceneManager.CurrentScene ~= nil then
		SceneManager.CurrentScene.Update();
	end
	
	if SceneManager.NextScene ~= nil then
		if SceneManager.CurrentScene ~= nil then
			SceneManager.CurrentScene.End();
		end
		SceneManager.CurrentScene = SceneManager.NextScene;
		SceneManager.NextScene = nil;
		SceneManager.CurrentScene.Begin();
	end
end

function SceneManager.RegisterScene(scene)
	if scene == nil then
		Log.Error("SceneManager.RegisterScene: can not register scene caused by nil scene.")
		return;
	end
	if scene.Name == nil then
		Log.Error("SceneManager.RegisterScene: can not register scene caused by nil scene.name.")
		return;
	end
	if SceneManager.Scenes[scene.Name] ~= nil then
		Log.Error("SceneManager.RegisterScene: can not register scene caused by same scene exists named " .. tostring(scene.Name));
		return;
	end
	SceneManager.Scenes[scene.Name] = scene;
	scene.Initialize();
end

function SceneManager.Goto(name)
	local scene = SceneManager.Scenes[name];
	if scene == nil then
		Log.Error("SceneManager.Goto: can not go to scene caused by nil scene,name is " .. name);
		return;
	end
	if scene == SceneManager.NextScene then
		return
	end
	if SceneManager.CurrentScene == nil then
		SceneManager.LastScene = SceneManager.CurrentScene;
		SceneManager.NextScene = scene;
	elseif SceneManager.CurrentScene.Name ~= name then
		SceneManager.LastScene = SceneManager.CurrentScene;
		SceneManager.NextScene = scene;
	else
		Log.Error("SceneManager.Goto: can not go to same scene,name is " .. name);
	end
end

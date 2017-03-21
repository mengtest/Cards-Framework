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

require 'NCSpeedLight.Scenes.DownloadScene'
require 'NCSpeedLight.Scenes.LoginScene'
require 'NCSpeedLight.Scenes.HallScene'
require 'NCSpeedLight.Scenes.MaJiangScene'

SceneManager =
{
	Instance = nil,
};

function SceneManager:Initialize()
	if self.Instance == nil then
		SceneManager:New();
		SceneManager.RegisterScene(DownloadScene:Initialize());
		SceneManager.RegisterScene(LoginScene:Initialize());
		SceneManager.RegisterScene(HallScene:Initialize());
		SceneManager.RegisterScene(MaJiangScene:Initialize());
	else
		Log.Warning('SceneManager has already been initialized.')
	end
end

function SceneManager:New()
	local o = {};
	setmetatable(o, self);
	self.__index = self;
	self.Instance = o;
	self.Instance.Scenes = {};
	self.Instance.LastScene = nil;
	self.Instance.CurrentScene = nil;
	self.Instance.NextScene = nil;
	return o;
end

function SceneManager.Update()
	if SceneManager.Instance == nil then
		return
	end
	
	if SceneManager.Instance.CurrentScene ~= nil then
		SceneManager.Instance.CurrentScene.Update();
	end
	
	if SceneManager.Instance.NextScene ~= nil then
		if SceneManager.Instance.CurrentScene ~= nil then
			SceneManager.Instance.CurrentScene.End();
		end
		SceneManager.Instance.CurrentScene = SceneManager.Instance.NextScene;
		SceneManager.Instance.NextScene = nil;
		SceneManager.Instance.CurrentScene.Begin();
	end
end

function SceneManager.RegisterScene(scene)
	if scene == nil then
		Log.Error('SceneManager: can not register scene caused by nil scene.')
		return;
	end
	SceneManager.Instance.Scenes[scene.Name] = scene;
end

function SceneManager.GotoScene(name)
	local scene = SceneManager.Instance.Scenes[name];
	if scene == nil then
		Log.Error('SceneManager: can not GotoScene caused by nil scene,name is ' .. name)
		return;
	end
	if scene == SceneManager.Instance.NextScene then
		return
	end
	if SceneManager.Instance.CurrentScene == nil then
		SceneManager.Instance.LastScene = SceneManager.Instance.CurrentScene;
		SceneManager.Instance.NextScene = scene;
	elseif SceneManager.Instance.CurrentScene.Name ~= name then
		SceneManager.Instance.LastScene = SceneManager.Instance.CurrentScene;
		SceneManager.Instance.NextScene = scene;
	else
		Log.Error("SceneManager: can not go to same scene,name is " .. name);
	end
end

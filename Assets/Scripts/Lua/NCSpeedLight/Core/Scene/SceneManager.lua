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
require 'NCSpeedLight.Scenes.GameScene'

SceneManager = { };

local this = SceneManager;

function this:Instance()
	if self == nil then
		this:New();
	end
	return self;
end

function this:Initialize()
	if self == nil then
		this:New();
		this:RegisterScene(DownloadScene:New());
		this:RegisterScene(LoginScene:New());
		this:RegisterScene(HallScene:New());
		this:RegisterScene(GameScene:New());
	else
		Log:Warning('SceneManager has already been initialized.')
	end
end

function this:New()
	Log:Info('SceneManager:New() -- constructor.')
	o = { };
	setmetatable(o, self);
	self.__index = self;
	self.Scenes = { };
	self.LastScene = nil;
	self.CurrentScene = nil;
	self.NextScene = nil;
	return o;
end

function this:Update()
	if self.CurrentScene ~= nil then
		self.CurrentScene:Update();
	end

	if self.NextScene ~= nil then
		if self.CurrentScene ~= nil then
			self.CurrentScene:End();
		end
		self.CurrentScene = self.NextScene;
		self.NextScene = nil;
		self.CurrentScene:Begin();
	end
end

function this:RegisterScene(scene)
	if scene == nil then
		Log:Error('SceneManager: can not register scene caused by nil scene.')
		return;
	end
	self.Scenes[scene.Name] = scene;
end

function this:GotoScene(name)
	scene = self.Scenes[name];
	if scene == nil then
		Log:Error('SceneManager: can not GotoScene caused by nil scene,name is ' .. name)
		return;
	end
	if scene == self.NextScene then
		return
	end
	if self.LastScene == nil then
		self.LastScene = self.CurrentScene;
		self.NextScene = scene;
	elseif Instance.m_LastState.Name ~= name then
		self.LastScene = self.CurrentScene;
		self.NextScene = scene;
	else
		Log:Error("SceneManager: can not go to same scene,name is " .. name);
	end
end

function this:GetLastScene()
	return Instance().LastScene;
end

function this:GetCurrentScene()
	return Instance().CurrentScene;
end

function this:GetNextScene()
	return Instance().NextScene;
end
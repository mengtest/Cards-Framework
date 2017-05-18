-----------------------------------------------
-- Copyright © 2014-2017 NCSpeedLight
--
-- FileName: UIManager.lua
-- Describle:  窗口管理
-- Created By:  Wells Hsu
-- Date&Time:  2017/2/28 19:11:09
-- Modify History:
--
-----------------------------------------------
ConfirmDialogOption =
{
	Title = "提示",
	TitleFontSize = 35,
	TitleSprite,
	ShowTitleSprite = false,
	Content = "您确定吗",
	ContentFontSize = 30,
	DoubleButton = false,
	OnClickOK = nil,
	OnClickCancel = nil,
}
ConfirmDialogOption.__index = ConfirmDialogOption;
function ConfirmDialogOption.New(title, content, doubleButton, onClickOK, onClickCancel)
	local obj = {};
	setmetatable(obj, ConfirmDialogOption);
	obj.Title = title;
	obj.Content = content;
	obj.DoubleButton = doubleButton;
	obj.OnClickOK = onClickOK;
	obj.OnClickCancel = onClickCancel;
	obj.TitleFontSize = 35;
	obj.ContentFontSize = 30;
	return obj;
end

ProgressDialogOption =
{
	AutoClose = false,
	Cancelable = true,
	Timeout = 10,
	Content,
	ContentFontSize = 26,
	OnClose,
	OnAutoClose,
	OnCancel,
}
ProgressDialogOption.__index = ProgressDialogOption;
function ProgressDialogOption.New()
	local obj = {};
	setmetatable(obj, ProgressDialogOption);
	obj.AutoClose = false;
	obj.Cancelable = false;
	obj.Timeout = 10;
	obj.ContentFontSize = 26;
	return obj;
end

UIManager =
{
	IsInitialized = false,
	UIRoot = nil,
	UIPanel = nil,
	Camera = nil,
	UICamera = nil,
	WindowRoot = nil,
	DialogRoot = nil,
	Windows = {};
};

function UIManager.Initialize()
	if UIManager.IsInitialized == false then
		UIManager.IsInitialized = true;
		-- local go = UnityEngine.GameObject("UIManager");
		-- go.transform:SetParent(Game.transform);
		-- UIManager.UIRoot = go:AddComponent(typeof(UIRoot));
		-- UIManager.UIRoot.scalingStyle = UIRoot.Scaling.ConstrainedOnMobiles;
		-- UIManager.UIRoot.manualHeight = 720;
		-- UIManager.UIRoot.manualWidth = 1224;
		-- UIManager.UIRoot.maximumHeight = 720;
		-- UIManager.UIRoot.minimumHeight = 640;
		-- UIManager.UIPanel = go:AddComponent(typeof(UIPanel));
		-- local cameraGO = UnityEngine.GameObject("UICamera");
		-- cameraGO.transform:SetParent(go.transform);
		-- cameraGO.transform.localPosition = UnityEngine.Vector3.back;
		-- UIManager.Camera = cameraGO:AddComponent(typeof(UnityEngine.Camera));
		-- UIManager.Camera.orthographic = true;
		-- UIManager.Camera.orthographicSize = 1;
		-- UIManager.Camera.nearClipPlane = - 10;
		-- UIManager.Camera.depth = 1;
		-- UIManager.Camera.clearFlags = UnityEngine.CameraClearFlags.Depth; --CameraClearFlags.Nothing;
		-- -- UIManager.Camera.cullingMask = NCSpeedLight.Helper.OnlyIncluding("UI");
		-- UIManager.UICamera = cameraGO:AddComponent(typeof(UICamera));
		-- -- UIManager.UICamera.eventReceiverMask = Helper.EverythingBut(mUILayer);
		-- -- Window root.
		-- UIManager.WindowRoot = UnityEngine.GameObject("Window");
		-- UIManager.WindowRoot.transform:SetParent(go.transform);
		-- -- Dialog root.
		-- UIManager.DialogRoot = UnityEngine.GameObject("Dialog");
		-- UIManager.DialogRoot.transform:SetParent(go.transform);
		-- 使用预置的配置
		local go = UnityEngine.GameObject.Find("Game/UIManager");
		UIManager.UIRoot = go:GetComponent(typeof(UIRoot));
		UIManager.UIPanel = go:GetComponent(typeof(UIPanel));
		local cameraGO = UnityEngine.GameObject.Find("Game/UIManager/UICamera");
		UIManager.Camera = cameraGO:GetComponent(typeof(UnityEngine.Camera));
		UIManager.WindowRoot = UnityEngine.GameObject.Find("Game/UIManager/Window");
		UIManager.DialogRoot = UnityEngine.GameObject.Find("Game/UIManager/Dialog");
		Log.Info("Initialize: success.");
	else
		Log.Warning("Initialize: UIManager has already been initialized.");
	end
end

-- 屏幕分辨率
function UIManager.ScreenResolution()
	return NGUITools.screenSize * UIManager.UIRoot.pixelSizeAdjustment;
end

-- 打开窗口
function UIManager.OpenWindow(windowName)
	Log.Info("OpenWindow: " .. windowName);
	local window = UIManager.Windows[windowName];
	if window ~= nil then
		return window;
	end
	local assetPath = "Bundle/Prefab/UI/" .. windowName;
	local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
	go = UIManager.SetupWindow(go);
	if go ~= nil then
		UIManager.Windows[windowName] = go;
	end
	return go;
end

function UIManager.CloseWindow(windowName)
	Log.Info("UIManager.CloseWindow: " .. windowName);
	local window = UIManager.Windows[windowName];
	if window ~= nil then
		UnityEngine.GameObject.Destroy(window);
		UIManager.Windows[windowName] = nil;
	end
	if SharedVariable.ASSETBUNDLE_MODE then
		AssetManager.UnloadAsset("UI/" .. windowName);
	end
end

function UIManager.CloseAllWindows()
	for key, value in pairs(UIManager.Windows) do
		UIManager.CloseWindow(key);
		UIManager.Windows[key] = nil;
	end
end

function UIManager.CloseAllWindowsExcept(...)
	local arg = {...};
	for key, value in pairs(UIManager.Windows) do
		local delete = true;
		for key2, value2 in ipairs(arg) do
			if key == value2 then
				delete = false;
			end
		end
		if delete then
			UIManager.CloseWindow(key);
			UIManager.Windows[key] = nil;
		end
	end
end

function UIManager.OpenConfirmDialog(option)
	if option == nil then
		Log.Error('Can not open ConfirmDialog,please input option.');
		return;
	end
	if UIManager.ConfirmDialog == nil then
		local assetPath = "Bundle/Prefab/UI/Dialog/UI_Confirm";
		local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
		go = UIManager.SetupDialog(go);
		UIManager.ConfirmDialog = go;
	end
	local dialog = UIManager.ConfirmDialog;
	if dialog ~= nil then
		local titleSprite = dialog.transform:Find("BG/Title"):GetComponent(typeof(UISprite));
		local contentLabel = dialog.transform:Find("Label_Content"):GetComponent(typeof(UILabel));
		local titleLabel = dialog.transform:Find("Label_Title"):GetComponent(typeof(UILabel));
		if titleSprite ~= nil then
			titleSprite.enabled = option.ShowTitleSprite;
			if option.ShowTitleSprite == true then
				titleSprite.spriteName = option.TitleSprite;
			end
		end
		if titleLabel ~= nil then
			titleLabel.enabled = not option.ShowTitleSprite;
			titleLabel.text = option.Title;
			titleLabel.fontSize = option.TitleFontSize;
		end
		if contentLabel ~= nil then
			contentLabel.text = option.Content;
			contentLabel.fontSize = option.ContentFontSize;
		end
		if option.DoubleButton == true then
			NCSpeedLight.UIHelper.SetActiveState(dialog.transform, "DoubleBtn", true);
			NCSpeedLight.UIHelper.SetActiveState(dialog.transform, "SingleBtn", false);
			NCSpeedLight.UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/OK",
			function(go)
				UIManager.CloseConfirmDialog();
				if option.OnClickOK ~= nil then
					option.OnClickOK(nil);
				end
			end);
			NCSpeedLight.UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/Cancel",
			function(go)
				UIManager.CloseConfirmDialog();
				if option.OnClickCancel ~= nil then
					option.OnClickCancel(nil);
				end
			end);
		else
			NCSpeedLight.UIHelper.SetActiveState(dialog.transform, "DoubleBtn", false);
			NCSpeedLight.UIHelper.SetActiveState(dialog.transform, "SingleBtn", true);
			NCSpeedLight.UIHelper.SetButtonEvent(dialog.transform, "SingleBtn/OK",
			function(go)
				UIManager.CloseConfirmDialog();
				if option.OnClickOK ~= nil then
					option.OnClickOK(nil);
				end
			end);
		end
		dialog:SetActive(true);
	end
end

function UIManager.CloseConfirmDialog()
	if UIManager.ConfirmDialog ~= nil then
		UIManager.ConfirmDialog:SetActive(false);
	end
end

function UIManager.OpenProgressDialog(option)
	if option == nil then
		Log:Error('Can not open progressdialog,please input option.');
		return;
	end
	if UIManager.ProgressDialog == nil then
		local assetPath = "Bundle/Prefab/UI/Dialog/UI_Progress";
		local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
		go = UIManager.SetupDialog(go);
		UIManager.ProgressDialog = go;
	end
	local dialog = UIManager.ProgressDialog;
	if dialog ~= nil then
		local contentLabel = dialog.transform:Find("Content/Label"):GetComponent(typeof(UILabel));
		if contentLabel ~= nil then
			contentLabel.text = option.Content;
			contentLabel.fontSize = option.ContentFontSize;
		end
		if UIManager.ProgressDialogTimer ~= nil then
			UIManager.ProgressDialogTimer:Stop();
		end
		if option.AutoClose == true then
			Timer.New(
			function()
				if option.OnAutoClose ~= nil then
					option.OnAutoClose();
				end
				UIManager.CloseProgressDialog();
			end,
			option.Timeout,
			false,
			false);
		end
		if option.Cancelable == true then
			NCSpeedLight.UIHelper.SetButtonEvent(dialog.transform, "BlackBG",
			function(go)
				if UIManager.ProgressDialogTimer ~= nil then
					UIManager.ProgressDialogTimer:Stop();
				end
				if option.OnCancel ~= nil then
					option.OnCancel();
				end
				UIManager.CloseProgressDialog();
			end);
		end
		dialog:SetActive(true);
	end
end

function UIManager.CloseProgressDialog()
	if UIManager.ProgressDialog ~= nil then
		UIManager.ProgressDialog:SetActive(false);
	end
	if UIManager.ProgressDialogTimer ~= nil then
		UIManager.ProgressDialogTimer:Stop();
	end
end

function UIManager.OpenTipsDialog(content)
	local assetPath = "Bundle/Prefab/UI/Dialog/UI_Tips";
	local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
	go = UIManager.SetupDialog(go);
	if go ~= nil then
		local td = go:GetComponent(typeof(NCSpeedLight.TipsDialog));
		if td ~= nil then
			td:SetParam(content, 1);
		end
	end
	return go;
end

function UIManager.SetupWindow(go)
	if go == nil then
		Log.Error("SetupWindow fail caused by null ui prefab.");
	end
	go = UnityEngine.GameObject.Instantiate(go);
	local tran = go.transform;
	if tran.childCount <= 1 then
		-- not a valid ui.
		UnityEngine.GameObject.Destroy(go);
		return nil;
	end
	local root = tran:GetChild(0);
	local camera = root:GetComponent(typeof(UnityEngine.Camera));
	if camera ~= nil then
		root = tran:GetChild(1);
	end
	if root == nil then
		Log.Error("SetupWindow fail caused by null ui panel.");
		return nil;
	end
	local window = root.gameObject;
	root:SetParent(UIManager.WindowRoot.transform);
	root.localScale = UnityEngine.Vector3.one;
	UnityEngine.GameObject.Destroy(go);
	NCSpeedLight.Helper.SetLayer(window, "UI");
	return window;
end

function UIManager.SetupDialog(go)
	if go == nil then
		Log.Error("SetupDialog fail caused by null ui prefab.");
	end
	go = UnityEngine.GameObject.Instantiate(go);
	local tran = go.transform;
	if tran.childCount <= 1 then
		-- not a valid ui.
		UnityEngine.GameObject.Destroy(go);
		return nil;
	end
	local root = tran:GetChild(0);
	local camera = root:GetComponent(typeof(UnityEngine.Camera));
	if camera ~= nil then
		root = tran:GetChild(1);
	end
	if root == nil then
		Log.Error("SetupDialog fail caused by null ui panel.");
		return nil;
	end
	local dialog = root.gameObject;
	root:SetParent(UIManager.DialogRoot.transform);
	root.localScale = UnityEngine.Vector3.one;
	UnityEngine.GameObject.Destroy(go);
	NCSpeedLight.Helper.SetLayer(dialog, "UI");
	return dialog;
end

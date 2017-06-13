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
	Windows = {},
	LastWindowName = nil,
	CurrentWindowName = nil,
};

function UIManager.Initialize()
	if UIManager.IsInitialized == false then
		UIManager.IsInitialized = true;
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
	local windowInfo = UIManager.GetWindowInfo(windowName);
	if windowInfo ~= nil then
		return windowInfo.GO;
	end
	local assetPath = "Bundle/Prefab/UI/" .. windowName;
	local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
	go = UIManager.SetupWindow(go);
	if go ~= nil then
		UIManager.AddWindowInfo(windowName, go);
		UIManager.LastWindowName = UIManager.CurrentWindowName;
		UIManager.CurrentWindowName = windowName;
	end
	return go;
end

-- 重新打开当前窗口
function UIManager.ReopenCurrentWindow()
	local info = UIManager.Windows[#UIManager.Windows];
	if info ~= nil then
		UIManager.CloseWindow(info.Name);
		UIManager.OpenWindow(info.Name);
	end	
end

function UIManager.CloseWindow(windowName)
	local windowInfo = UIManager.GetWindowInfo(windowName);
	if windowInfo ~= nil then
		if windowInfo.GO ~= nil then
			UnityEngine.GameObject.DestroyImmediate(windowInfo.GO);
		end
		UIManager.RemoveWindowInfo(windowName);
	end
	if Constants.ASSET_BUNDLE_MODE then
		AssetManager.UnloadAsset("UI/" .. windowName);
	end
end

function UIManager.CloseAllWindows()
	for i = 1, #UIManager.Windows do
		local info = UIManager.Windows[i];
		if info ~= nil and info.GO ~= nil then
			UnityEngine.GameObject.DestroyImmediate(info.GO);
		end
	end
	UIManager.Windows = {};
end

function UIManager.CloseAllWindowsExcept(...)
	local except = {...};
	local deletes = {};
	
	for i = 1, #UIManager.Windows do
		local info = UIManager.Windows[i];
		local delete = true;
		
		for j = 1, #except do
			if info.Name == except[j] then
				delete = false;
			end
		end
		
		if delete then
			if info ~= nil and info.GO ~= nil then
				UnityEngine.GameObject.Destroy(info.GO);
				table.insert(deletes, info.Name);
			end
		end
	end
	
	for i = 1, #deletes do
		UIManager.RemoveWindowInfo(deletes[i]);
	end
end

function UIManager.GetWindowInfo(windowName)
	for i = 1, #UIManager.Windows do
		local info = UIManager.Windows[i];
		if info.Name == windowName then	
			return info;
		end
	end
	return nil;
end

function UIManager.RemoveWindowInfo(windowName)
	for i = 1, #UIManager.Windows do
		local info = UIManager.Windows[i];
		if info == nil or info.Name == windowName then	
			table.remove(UIManager.Windows, i);
		end
	end
end

function UIManager.AddWindowInfo(windowName, GO)	
	local info = {};
	info.Name = windowName;
	info.GO = GO;
	table.insert(UIManager.Windows, info);
end

function UIManager.IsWindowOpening(windowName)
	return UIManager.Windows[windowName] ~= nil;
end

function UIManager.OpenConfirmDialog(title, titleSprite, content, doubleBtn, onClickOK, onClickCancel)
	if UIManager.ConfirmDialog == nil then
		local assetPath = "Bundle/Prefab/UI/Dialog/UI_Confirm";
		local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
		go = UIManager.SetupDialog(go);
		UIManager.ConfirmDialog = go;
	end
	local dialog = UIManager.ConfirmDialog;
	if dialog ~= nil then
		if title ~= nil then
			UIHelper.SetLabelText(dialog.transform, "LB_Title", title);
			UIHelper.SetActiveState(dialog.transform, "LB_Title", true);
			UIHelper.SetActiveState(dialog.transform, "SP_Title", false);
		elseif titleSprite ~= nil then
			UIHelper.SetSpriteName(dialog.transform, "SP_Title", titleSprite);
			UIHelper.SetActiveState(dialog.transform, "LB_Title", false);
			UIHelper.SetActiveState(dialog.transform, "SP_Title", true);
		else
			UIHelper.SetSpriteName(dialog.transform, "SP_Title", "TC-3");
			UIHelper.SetActiveState(dialog.transform, "LB_Title", false);
			UIHelper.SetActiveState(dialog.transform, "SP_Title", true);
		end
		UIHelper.SetLabelText(dialog.transform, "LB_Content", content);
		if doubleBtn == true then
			UIHelper.SetActiveState(dialog.transform, "DoubleBtn", true);
			UIHelper.SetActiveState(dialog.transform, "SingleBtn", false);
			UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/OK",
			function(go)
				UIManager.CloseConfirmDialog();
				if onClickOK ~= nil then
					onClickOK();
				end
			end);
			UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/Cancel",
			function(go)
				UIManager.CloseConfirmDialog();
				if onClickCancel ~= nil then
					onClickCancel(nil);
				end
			end);
		else
			UIHelper.SetActiveState(dialog.transform, "DoubleBtn", false);
			UIHelper.SetActiveState(dialog.transform, "SingleBtn", true);
			UIHelper.SetButtonEvent(dialog.transform, "SingleBtn/OK",
			function(go)
				UIManager.CloseConfirmDialog();
				if onClickOK ~= nil then
					onClickOK();
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

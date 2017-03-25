----------------------------------------------------------------
--          // Copyright © 2014-2017 NCSpeedLight
--          //
--          // FileName: UIManager.lua
-- 	        // Describle:
-- 	        // Created By:  Wells Hsu
-- 		    // Date&Time:  2016/1/19 10:03:15
--          // Modify History:
--          //
----------------------------------------------------------------

StandardDialogOption =
{
	Title,
	TitleFontSize = 35,
	TitleSprite,
	ShowTitleSprite = false,
	
	Content,
	ContentFontSize = 30,
	
	DoubleButton = false,
	
	OnClickOK,
	OnClickCancel,
}

function StandardDialogOption:New()
	o = {};
	setmetatable(o, self);
	self.__index = self;
	o.TitleFontSize = 35;
	o.ShowTitleSprite = false;
	o.ContentFontSize = 30;
	o.DoubleButton = false;
	return o;
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

function ProgressDialogOption:New()
	o = {};
	setmetatable(o, self);
	self.__index = self;
	o.AutoClose = false;
	o.Cancelable = false;
	o.Timeout = 10;
	o.ContentFontSize = 26;
	return o;
end

UIManager =
{
	Instance = nil,
};

function UIManager:Initialize()
	if self.Instance == nil then
		
		UIManager:New();
		
		local go = UnityEngine.GameObject("UIManager");
		if NCSpeedLight.SharedVariable.GameHolder ~= nil then
			go.transform:SetParent(NCSpeedLight.SharedVariable.GameHolder.transform);
		else
			UnityEngine.GameObject.DontDestroyOnLoad(go)
		end
		
		self.Instance.UIRoot = go:AddComponent(typeof(UIRoot));
		self.Instance.UIRoot.scalingStyle = UIRoot.Scaling.ConstrainedOnMobiles;
		self.Instance.UIRoot.manualHeight = 720;
		self.Instance.UIRoot.manualWidth = 1224;
		self.Instance.UIRoot.maximumHeight = 720;
		self.Instance.UIRoot.minimumHeight = 640;
		
		self.Instance.UIPanel = go:AddComponent(typeof(UIPanel));
		
		local cameraGO = UnityEngine.GameObject("UICamera");
		cameraGO.transform:SetParent(go.transform);
		cameraGO.transform.localPosition = UnityEngine.Vector3.back;
		self.Instance.Camera = cameraGO:AddComponent(typeof(UnityEngine.Camera));
		self.Instance.Camera.orthographic = true;
		self.Instance.Camera.orthographicSize = 1;
		self.Instance.Camera.nearClipPlane = - 10;
		self.Instance.Camera.depth = 1;
		self.Instance.Camera.clearFlags = UnityEngine.CameraClearFlags.Depth; --CameraClearFlags.Nothing;
		-- self.Instance.Camera.cullingMask = NCSpeedLight.Helper.OnlyIncluding("UI");
		self.Instance.UICamera = cameraGO:AddComponent(typeof(UICamera));
		-- self.Instance.UICamera.eventReceiverMask = Helper.EverythingBut(mUILayer);

		-- Window root.
		self.Instance.WindowRoot = UnityEngine.GameObject("Window");
		self.Instance.WindowRoot.transform:SetParent(go.transform);
		
		-- Dialog root.
		self.Instance.DialogRoot = UnityEngine.GameObject("Dialog");
		self.Instance.DialogRoot.transform:SetParent(go.transform);
		
		self.Instance.Windows = {};
	else
		Log.Warning("UIManager has already been initialized.");
	end
end

function UIManager:New()
	o = {}
	setmetatable(o, self)
	self.__index = self
	self.Instance = o;
end

-- 屏幕分辨率
function UIManager.ScreenResolution()
	return UIManager.Instance.UIRoot.pixelSizeAdjustment * NGUITools.screenSize;
end

-- 打开窗口
function UIManager.OpenWindow(windowName)
	local window = UIManager.Instance.Windows[windowName];
	if window ~= nil then
		return window;
	else
		local assetPath;
		if SharedVariable.ASSETBUNDLE_MODE then
			assetPath = "UI/" .. windowName;
		else
			assetPath = "Bundle/UI/" .. windowName;
		end
		local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
		go = UIManager.SetupWindow(go);
		if go ~= nil then
			UIManager.Instance.Windows[windowName] = go;
		end
	end
	return go;
end

function UIManager.CloseWindow(windowName)
	local window = UIManager.Instance.Windows[windowName];
	if window ~= nil then
		UnityEngine.GameObject.Destroy(window);
		UIManager.Instance.Windows[windowName] = nil;
	end
	if SharedVariable.ASSETBUNDLE_MODE then
		AssetManager.UnloadAssetBundle("UI/" .. windowName);
	end
end

function UIManager.CloseAllWindows()
	for key, value in pairs(UIManager.Instance.Windows) do
		UIManager.CloseWindow(key);
		UIManager.Instance.Windows[key] = nil;
	end
end

function UIManager.CloseAllWindowsExcept(...)
	local arg = {...}
	for key, value in pairs(UIManager.Instance.Windows) do
		local delete = true;
		for key2, value2 in ipairs(arg) do
			if key == value2 then
				delete = false;
			end
		end
		
		if delete then
			UIManager.CloseWindow(key);
			UIManager.Instance.Windows[key] = nil;
		end
	end
end

function UIManager.OpenStandardDialog(option)
	if option == nil then
		Log.Error('Can not open standardDialog,please input option.');
		return;
	end
	if UIManager.Instance.StandardDialog == nil then
		local assetPath;
		if SharedVariable.ASSETBUNDLE_MODE then
			assetPath = "UI/Dialog/StandardDialog";
		else
			assetPath = "Bundle/UI/Dialog/StandardDialog";
		end
		local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
		go = UIManager.SetupDialog(go);
		UIManager.Instance.StandardDialog = go;
	end
	
	local dialog = UIManager.Instance.StandardDialog;
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
				UIManager.CloseStandardDialog();
				if option.OnClickOK ~= nil then
					option.OnClickOK(nil);
				end
			end);
			
			NCSpeedLight.UIHelper.SetButtonEvent(dialog.transform, "DoubleBtn/Cancel",
			function(go)
				UIManager.CloseStandardDialog();
				if option.OnClickCancel ~= nil then
					option.OnClickCancel(nil);
				end
			end);
		else
			
			NCSpeedLight.UIHelper.SetActiveState(dialog.transform, "DoubleBtn", false);
			NCSpeedLight.UIHelper.SetActiveState(dialog.transform, "SingleBtn", true);
			
			NCSpeedLight.UIHelper.SetButtonEvent(dialog.transform, "SingleBtn/OK",
			function(go)
				UIManager.CloseStandardDialog();
				if option.OnClickOK ~= nil then
					option.OnClickOK(nil);
				end
			end);
		end
		dialog:SetActive(true);
	end
end

function UIManager.CloseStandardDialog()
	if UIManager.Instance.StandardDialog ~= nil then
		UIManager.Instance.StandardDialog:SetActive(false);
	end
end

function UIManager.OpenProgressDialog(option)
	if option == nil then
		Log:Error('Can not open progressdialog,please input option.');
		return;
	end
	if UIManager.Instance.ProgressDialog == nil then
		local assetPath;
		if SharedVariable.ASSETBUNDLE_MODE then
			assetPath = "UI/Dialog/ProgressDialog";
		else
			assetPath = "Bundle/UI/Dialog/ProgressDialog";
		end
		local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
		go = UIManager.SetupDialog(go);
		UIManager.Instance.ProgressDialog = go;
	end
	
	local dialog = UIManager.Instance.ProgressDialog;
	if dialog ~= nil then
		local contentLabel = dialog.transform:Find("Content/Label"):GetComponent(typeof(UILabel));
		if contentLabel ~= nil then
			contentLabel.text = option.Content;
			contentLabel.fontSize = option.ContentFontSize;
		end
		
		if UIManager.Instance.ProgressDialogTimer ~= nil then
			UIManager.Instance.ProgressDialogTimer:Stop();
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
				if UIManager.Instance.ProgressDialogTimer ~= nil then
					UIManager.Instance.ProgressDialogTimer:Stop();
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
	if UIManager.Instance.ProgressDialog ~= nil then
		UIManager.Instance.ProgressDialog:SetActive(false);
	end
	if UIManager.Instance.ProgressDialogTimer ~= nil then
		UIManager.Instance.ProgressDialogTimer:Stop();
	end
end

function UIManager.OpenTipsDialog(content)
	local assetPath;
	if SharedVariable.ASSETBUNDLE_MODE then
		assetPath = "UI/Dialog/TipsDialog";
	else
		assetPath = "Bundle/UI/Dialog/TipsDialog";
	end
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
	root:SetParent(UIManager.Instance.WindowRoot.transform);
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
	root:SetParent(UIManager.Instance.DialogRoot.transform);
	root.localScale = UnityEngine.Vector3.one;
	UnityEngine.GameObject.Destroy(go);
	NCSpeedLight.Helper.SetLayer(dialog, "UI");
	return dialog;
end

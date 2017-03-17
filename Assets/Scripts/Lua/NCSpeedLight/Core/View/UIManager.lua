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
		
		self.Instance.UIPanel = go:AddComponent(typeof(UIRoot));
		
		local cameraGO = UnityEngine.GameObject("UICamera");
		cameraGO.transform:SetParent(go.transform);
		cameraGO.transform.localPosition = UnityEngine.Vector3.back;
		self.Instance.Camera = cameraGO:AddComponent(typeof(UnityEngine.Camera));
		self.Instance.Camera.orthographic = true;
		self.Instance.Camera.orthographicSize = 1;
		-- self. Camera.cullingMask = Helper.OnlyIncluding(mCustomUILayer, mUILayer, mDialogLayer);
		self.Instance.Camera.nearClipPlane = - 10;
		self.Instance.Camera.depth = 1;
		self.Instance.Camera.clearFlags = UnityEngine.CameraClearFlags.Depth; --CameraClearFlags.Nothing;
		
		self.Instance.UICamera = cameraGO:AddComponent(typeof(UICamera));
		-- self.  UICamera.eventReceiverMask = Helper.EverythingBut(mUILayer);

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

-- 打开窗口
function UIManager.OpenWindow(windowName)
	local window = UIManager.Instance.Windows[windowName];
	if window ~= nil then
		return window;
	else
		local assetPath;
		if ASSETBUNDLE_MODE then
			assetPath = "UI/" .. windowName;
		else
			assetPath = "Bundle/UI/" .. windowName;
		end
		local go = AssetManager.LoadAsset(assetPath, typeof(UnityEngine.GameObject));
		go = UIManager.SetupWindow(go);
		if go ~= nil then
			table.insert(UIManager.Instance.Windows, go);
		end
	end
	return go;
end

function UIManager.CloseWindow(windowName)
	return NCSpeedLight.UIManager.CloseWindow(windowName);
end

function UIManager.CloseAllWindows()
	return NCSpeedLight.UIManager.CloseAllWindows();
end

function UIManager.OpenStandardDialog(option)
	if option == nil then
		Log:Error('Can not open standardDialog,please input option.');
		return;
	end
-- local csOption = NCSpeedLight.UIManager.StandardDialogOption();
-- csOption.Title = option.Title;
-- csOption.TitleFontSize = option.TitleFontSize;
-- csOption.TitleSprite = option.TitleSprite;
-- csOption.ShowTitleSprite = option.ShowTitleSprite;
-- csOption.Content = option.Content;
-- csOption.ContentFontSize = option.ContentFontSize;
-- csOption.DoubleButton = option.DoubleButton;
-- csOption.OnClickOK = option.OnClickOK;
-- csOption.OnClickCancel = option.OnClickCancel;
-- return NCSpeedLight.UIManager.OpenStandardDialog(csOption);
end

function UIManager.CloseStandardDialog()
-- return NCSpeedLight.UIManager.CloseStandardDialog();
end

function UIManager.OpenProgressDialog(option)
	if option == nil then
		Log:Error('Can not open progressdialog,please input option.');
		return;
	end
-- local csOption = NCSpeedLight.UIManager.ProgressDialogOption();
-- csOption.AutoClose = option.AutoClose;
-- csOption.Cancelable = option.Cancelable;
-- csOption.Timeout = option.Timeout;
-- csOption.Content = option.Content;
-- csOption.ContentFontSize = option.ContentFontSize;
-- csOption.OnClose = option.OnClose;
-- csOption.OnAutoClose = option.OnAutoClose;
-- csOption.OnCancel = option.OnCancel;
-- return NCSpeedLight.UIManager.OpenProgressDialog(csOption);
end

function UIManager.CloseProgressDialog()
-- return NCSpeedLight.UIManager.CloseProgressDialog();
end

function UIManager.OpenTipsDialog(content)
-- return NCSpeedLight.UIManager.OpenTipsDialog(content);
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
	return window;
end

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

UIManager = {};

local this = UIManager;

function this:Initialize()
	return NCSpeedLight.UIManager.Initialize();
end

function this:OpenWindow(windowName)
	return NCSpeedLight.UIManager.OpenWindow(windowName);
end

function this:CloseWindow(windowName)
	return NCSpeedLight.UIManager.CloseWindow(windowName);
end

function this:OpenStandardDialog(option)
	if option == nil then
		Log:Error('Can not open standardDialog,please input option.');
		return;
	end
	local csOption = NCSpeedLight.UIManager.StandardDialogOption();
	csOption.Title = option.Title;
	csOption.TitleFontSize = option.TitleFontSize;
	csOption.TitleSprite = option.TitleSprite;
	csOption.ShowTitleSprite = option.ShowTitleSprite;
	csOption.Content = option.Content;
	csOption.ContentFontSize = option.ContentFontSize;
	csOption.DoubleButton = option.DoubleButton;
	csOption.OnClickOK = option.OnClickOK;
	csOption.OnClickCancel = option.OnClickCancel;
	return NCSpeedLight.UIManager.OpenStandardDialog(csOption);
end

function this:CloseStandardDialog()
	return NCSpeedLight.UIManager.CloseStandardDialog();
end

function this:OpenProgressDialog(option)
	if option == nil then
		Log:Error('Can not open progressdialog,please input option.');
		return;
	end
	local csOption = NCSpeedLight.UIManager.ProgressDialogOption();
	csOption.AutoClose = option.AutoClose;
	csOption.Cancelable = option.Cancelable;
	csOption.Timeout = option.Timeout;
	csOption.Content = option.Content;
	csOption.ContentFontSize = option.ContentFontSize;
	csOption.OnClose = option.OnClose;
	csOption.OnAutoClose = option.OnAutoClose;
	csOption.OnCancel = option.OnCancel;
	return NCSpeedLight.UIManager.OpenProgressDialog(csOption);
end

function this:CloseProgressDialog()
	return NCSpeedLight.UIManager.CloseProgressDialog();
end

function this:OpenTipsDialog(content)
	return NCSpeedLight.UIManager.OpenTipsDialog(content);
end
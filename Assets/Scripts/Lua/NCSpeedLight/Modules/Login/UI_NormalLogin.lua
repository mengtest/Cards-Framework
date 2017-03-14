UI_NormalLogin = {
}

local this = UI_NormalLogin;

local transform;
local gameObject;


local lbAccount;
local ipPassword;
local btnLogin;
local btnRegister;

local isRecordPanelOpen;

local recordLoginInfo = {
	
};

function UI_NormalLogin.New()
	return this;
end

function UI_NormalLogin.Awake(go)
	gameObject = go;
	transform = go.transform;
	isRecordPanelOpen = false;
end

function UI_NormalLogin.Start()
	lbAccount = transform:Find("Input (account)/Label"):GetComponent('UILabel');
	ipPassword = transform:Find("Input (password)"):GetComponent('UIInput');
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'Btn/Button (login)', onClickLogin);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'Btn/Button (regist)', onClickRegister);
	NCSpeedLight.UIHelper.SetButtonEvent(transform, 'Input (account)', onClickArrow);
end

function UI_NormalLogin.OnEnable()
end

function UI_NormalLogin.OnDisable()
end

function UI_NormalLogin.Update()
end

function UI_NormalLogin.LateUpdate()
end

function UI_NormalLogin.OnDestroy()
end

function onClickLogin(go)
	if string.len(lbAccount.text) == 0 then
		UIManager.OpenTipsDialog("请输入账号");
		return;
	elseif string.len(ipPassword.value) == 0 then
		UIManager.OpenTipsDialog("请输入密码");
		return;
	end
	LoginScene:UpdateLoginRecord(lbAccount.text, ipPassword.value);
	LoginScene:RequestLogin(lbAccount.text, ipPassword.value);
end

function onClickRegister(go)
	UIManager.CloseWindow("Login/ui_normalLogin");
	UIManager.OpenWindow("Login/ui_register");
end

function onClickArrow(go)
	isRecordPanelOpen = not isRecordPanelOpen;
	if isRecordPanelOpen == true then
		recordLoginInfo = {};
		local loginScene = LoginScene:Instance();
		if loginScene ~= nil and loginScene.LoginRecord ~= nil and loginScene.LoginRecord.loginInfo ~= nil then
			local bgHeight = 55;
			local bg = transform:Find('Panel/Sprite'):GetComponent('UISprite');
			local panel = transform:Find('Panel/Accounts');
			local item = transform:Find('Panel/CloneAccount');
			local otherAccountItem = transform:Find('Panel/CloneAccount2');
			if bg == nil or panel == nil or item == nil or otherAccountItem == nil then return end;
			local index = 1;
			for i = 1, # loginScene.LoginRecord.loginInfo do
				local info = loginScene.LoginRecord.loginInfo[i];
				local childItem = UnityEngine.GameObject.Instantiate(item);
				childItem:SetParent(panel);
				childItem.localPosition = UnityEngine.Vector3.zero;
				childItem.localScale = UnityEngine.Vector3.one;
				childItem.gameObject:SetActive(true);
				childItem.name = info.account;
				NCSpeedLight.UIHelper.SetLabelText(childItem, 'Label', info.account);
				NCSpeedLight.UIHelper.SetButtonEvent(childItem, onClickAccountItem);
				bgHeight = bgHeight + 55;
				recordLoginInfo[i] = {childItem, info};
				index = i;
			end
			
			-- 其他账号按钮
			local otherAccountItemClone = UnityEngine.GameObject.Instantiate(otherAccountItem);
			otherAccountItemClone:SetParent(panel);
			otherAccountItemClone.localPosition = UnityEngine.Vector3.zero;
			otherAccountItemClone.localScale = UnityEngine.Vector3.one;
			otherAccountItemClone.gameObject:SetActive(true);
			NCSpeedLight.UIHelper.SetButtonEvent(otherAccountItemClone, onClickOtherAccount);
			local grid = panel:GetComponent('UIGrid');
			if grid ~= nil then
				grid.enabled = true;
			end
			bg.height = bgHeight;
			index = index + 1;
			recordLoginInfo[index] = {otherAccountItemClone, nil};
		end
	else
		for i = 1, # recordLoginInfo do
			local item = recordLoginInfo[i];
			if item[1] ~= nil then
				UnityEngine.GameObject.Destroy(item[1].gameObject);
			end
		end
		recordLoginInfo = nil;
	end
end

function onClickAccountItem(go)
end

function onClickOtherAccount(go)
end
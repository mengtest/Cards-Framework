UI_OtherPlayer = {
	transform = nil,
	gameObject = nil,
	Player = nil,
}
local this = UI_OtherPlayer;
this.__index = UI_OtherPlayer;
function UI_OtherPlayer.New()
	local obj = {};
	setmetatable(obj, this);
	return obj;
end
function UI_OtherPlayer:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end
function UI_OtherPlayer:Start()
end
function UI_OtherPlayer:OnDestroy()
	self.gameObject = nil;
	self.transform = nil;
	if self.Player ~= nil then
		self.Player:OnUIDestroy();
		self.Player = nil;
	end
end
function UI_OtherPlayer:Initialize(player)
	self.Player = player;
end
-- 播放出牌效果
function UI_OtherPlayer:PlayOutCardAnimation(card)
	-- local outCardTran = self.transform:Find("OutCard/Card");
	-- local tweener = outCardTran:GetComponent(typeof(TweenTransform));
	-- local tweenerUtils = outCardTran:GetComponent(typeof(NCSpeedLight.InvisiableOnTweenFinish));
	-- tweenerUtils.OnFinish = function()
	-- 	if UI_HeroPlayer.DragingCardObj ~= nil then
	-- 		UnityEngine.GameObject.Destroy(UI_HeroPlayer.DragingCardObj);
	-- 	end
	-- end
	-- tweener.enabled = true;
	-- tweener.duration = 0.5;
	-- tweener.from = UI_HeroPlayer.DragingCardObj.transform;
	-- tweener:ResetToBeginning();
	-- NCSpeedLight.UIHelper.SetSpriteName(outCardTran, "Sprite", MaJiangType.GetString(card.m_Type));
	-- outCardTran.gameObject:SetActive(true);
	local tableCard = MJSceneController.GetOneUnuseCard(card.m_Index, card.m_Type, self.Player.ID);
	local cardPos = self.Player:GetTableCardPos(self.Player.TableCardCount);
	tableCard:Show(cardPos, self.Player.TableCardRotation);
end 
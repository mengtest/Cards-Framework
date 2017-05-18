UI_MJInteraction =
{
	transform = nil,
	gameObject = nil,
};

UI_MJInteraction.__index = UI_MJInteraction;

function UI_MJInteraction.New()
	local o = {};
	setmetatable(o, UI_MJInteraction);
	return o;
end

function UI_MJInteraction:Awake(go)
	self.gameObject = go;
	self.transform = go.transform;
end

-- 播放交互动画
function UI_MJInteraction:Play(startPos, targetPos, spriteName)
	self.transform.localPosition = startPos;
	local tweener = UIHelper.GetComponent(self.transform, typeof(TweenPosition));
	tweener.from = startPos;
	tweener.to = targetPos;
	tweener.enabled = true;
	
	local sprite = UIHelper.GetComponent(self.transform, "Item", typeof(UISprite));
	sprite.spriteName = spriteName;
	local strLength = string.len(spriteName);
	local namePrefix = string.sub(spriteName, 1, strLength - 1);
	local spriteAnimation = UIHelper.GetComponent(self.transform, "Item", typeof(UISpriteAnimation));
	spriteAnimation.namePrefix = namePrefix;
	coroutine.start(self.PlayAnimation, self, spriteAnimation, spriteName, namePrefix);
end

function UI_MJInteraction:PlayAnimation(spriteAnimation, spriteName, namePrefix)
	coroutine.wait(0.7);
	AudioManager.PlaySound(namePrefix);
	spriteAnimation.enabled = true;
	if spriteName == "egg1" then
		coroutine.wait(1.4);
	elseif spriteName == "bomb1" then
		coroutine.wait(1.9);
	elseif spriteName == "cheers1" then
		coroutine.wait(1.6);
	elseif spriteName == "flower1" then
		coroutine.wait(1.5);
	elseif spriteName == "shoe1" then
		coroutine.wait(1.5);
	end
	UnityEngine.GameObject.Destroy(self.gameObject);
end 
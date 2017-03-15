GameMessage = {
	
	-- ***************玩家账号登入流程;***************************************************************************** 
	GM_ACCOUNT_REQUEST = 200,      -- 验证是否有这个帐号;
	GM_ACCOUNT_REQUEST_RETURN = 201,  -- 验证是否有这个帐号返回;
	
	GM_ACCOUNT_VERIFY = 202,            -- 验证帐号密码;
	GM_ACCOUNT_VERIFY_RETURN = 203,     -- 验证帐号密码返回;
	
	GM_ACCOUNT_CREATE = 204,			-- 进行账号创建的消息;
	GM_ACCOUNT_CREATE_RETURN = 205,   -- 进行账号创建的消息返回	
	
	GM_PASSWORD_MODIFY = 206,			-- 进行帐号密码修改的消息;
	GM_PASSWORD_MODIFY_RETURN = 207,  -- 进行帐号密码修改的消息返回;
	
	GM_ACCOUNT_LOGIN_AREA = 208,      -- 玩家选区,不需要返回消息;
	
	GM_ROLE_ENSURE_CHOOSE_AREA = 209,     -- 玩家确定选区;
	
	GM_VERIFY_VERSION = 210,          -- 客户端验证版本号; 
	GM_VERSION_RETURN = 211,          -- 版本号验证结果;  
	
	SM_NOTIFY_DBWRITE = 212,  -- gmdb 告诉gmserver写一次;
	
	GM_NOTIFY_QUEEN_INFO = 214,-- 通知排队信息;
	GM_NOTIFY_TAKELOGIN = 215,-- 通知客户端你可以登陆了;
	-- ***************玩家账号登入流程结束;************************************************************************** 


	-- **************选择区号消息;************************************************************************************* 
	GM_STATELIST_REQUEST = 300,	-- 区列表请求;
	GM_STATELIST_RETURN = 301,        -- 区列表请求返回;
	
	GM_CHOOSE_AREA = 302,				-- 选择区;
	GM_CHOOSE_AREA_RETURN = 303,        -- 选择区返回;
	
	
	GM_REGISTER_STATSERVER = 306,		-- 状态服务器向全局服务器注册;
	GM_UNREGISTER_STATSERVER = 307, -- 注销状态服务器;
	
	SM_REGISTER_SERVER_TO_GATE = 308,	-- 向网关服务器注册服务器信息;
	SM_UNREGISTER_SERVER_TO_GATE = 309,-- 注销服务器信息;
	
	GM_ACCOUNT_SERVER_MESSAGE_END = 399,        -- 账号服务器消息结束;
	
-- **************选择区号消息返回;************************************************************************************* 
}

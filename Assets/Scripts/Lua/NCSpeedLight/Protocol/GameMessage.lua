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

	-- ***************************网关服务器分配网络包消息id段：;GameServer*****************************************/
	GATE_MESSAGE_GAME_SERVER_BEGIN = 400,
	
	-- **************角色消息;*************************************************************************************/
	GM_ROLELIST_REQUEST = 400,		-- 请求角色列表;
	GM_ROLELIST_RETURN = 401,           -- 返回角色列表;
	
	GM_ROLE_CREATE = 407,										     -- 角色创建;
	GM_ROLE_CREATE_RETURN = 408,									-- 创建角色消息返回 
	GM_ROLE_DELETE = 409,											-- 删除角色信息;
	GM_ROLE_DELETE_RETURN = 410,									-- 删除角色信息返回 
	GM_ROLE_LOGIN = 411,											-- 玩家登陆;
	GM_ROLE_LOGIN_RETURN = 412,                                   -- 角色登陆成功返回 
	
	GM_ROLENAME_REQUEST = 413,									-- 随机名字;
	GM_ROLENAME_REQUEST_RETURN = 414,
	
	GM_RECOVER_DELETE_ROLE_REQUEST = 420,         -- 可恢复删除角色请求;
	GM_RECOVER_DELETE_ROLE_RETURN = 421,          -- 可恢复删除角色返回;
	GM_CANCEL_RECOVER_DELETE_ROLE_REQUEST = 422,  -- 取消 删除角色请求;
	GM_CANCEL_RECOVER_DELETE_ROLE_RETURN = 423,   -- 取消 删除角色返回;
	GM_RECOVER_DELETE_ROLE_NOTIFY = 424,          -- 通知客户端 是否取消删除角色;
	
	GM_AREAACCOUNT_INFO_REQUEST = 440,	-- L,请求区类表中角色信息;
	GM_AREAACCOUNT_INFO_RETURN = 441,         -- L,回调区类表中角色信息;
	-- L 03.25add

	GM_CREATE_ROLE_NOTIFY = 443,					-- 创建角色通知;
	GM_DELETE_ROLE_NOTIFY = 444,					-- 删除角色通知;
	GM_ROLE_LEVEL_NOTIFY = 445,                   -- 角色等级更改通知;
	
	GM_RESTORE_CONNECT_FROM_OFFLINEHANG = 446,        -- 掉线重连;
	GM_RESTORE_CONNECT_FROM_OFFLINEHANG_OK = 447,     -- 重连成功;
	GM_RESTORE_CONNECT_FROM_OFFLINEHANG_FAILED = 448, -- 不具备重连资格,重连失败;
	
	GM_COMMON_IP_CLIENT_REQUEST = 449,
	
	GAME_SERVER_LOGIN_MESSAGE_SPLIT = 450,          -- 游戏服务器登录前后消息分隔id;
	
	GM_ROLE_QUIT = 451,										-- 清除内存玩家退出	  
	SM_PULL_PLAYER_CACHE_REQUEST = 456,                     -- 请求玩家数据拉玩家进入缓存;
	SM_PULL_PLAYER_CACHE_RETURN = 457,-- 离线玩家信息返回;
	
	GM_ROLE_HANG = 461,-- 角色挂起;
	
	GM_NOTIFYDISCONNECT = 462,                           -- 通知逻辑服务器客户端连接断开;
	
	GM_CHACKPLAYERSTATE = 463,                       -- 网关服务器通知逻辑服务器所有在线玩家;
	
	GM_READ_PLAYDELETE_INFO = 465,              -- 请求角色删除数据;
	GM_READ_PLAYDELETE_INFO_RETURN = 466,             -- 数据库角色删除数据返回;
	-- **************************查看角色信息;***********************************/
	GM_CHECK_ROLEINFO_REQUEST = 520,		-- 请求查看角色信息;
	SM_REQUEST_ROLE_BASE_INFO = 521,		-- 游戏服务器向数据库服务器请求角色基本信息;
	GM_ROLE_BASEINFO_RETURN = 522,		-- 角色的基本信息回调;
	SM_ROLE_ID_BY_NAME = 523,             -- 后台封号  gameServer 通过名字  向数据库请求查找roleID 
	SM_ROLE_ID_BY_NAME_RETURN = 524,      -- 通过角色名获得的角色信息的回调;
	
-- ***************************查看角色信息结束;*******************************/

-- **************角色消息完;*************************************************************************************/
}

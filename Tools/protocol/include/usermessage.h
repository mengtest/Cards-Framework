/*************************************************************
客户端和服务器间通信的消息ID定义
*************************************************************/
#pragma  once
#include"userstruct.h"


enum GameMessage
{     
	///**************************************************************************************************
	GM_GAMESERVER_INIT_OK = 101,//逻辑服务器初始化完成消息(共享内存部分)
	GM_DATABASESERVER_INIT_OK,//数据库服务器初始化完成
	GM_REGISTERLOGSERVER,///注册日志服务器
	GM_REGISTERLOGSERVER_RETURN,
	GM_REGISTER_GAME_SERVER,
	GM_INIT_OK_REQUEST, //http服务器初始化OK
	GM_INIT_OK_RETURN,
	GM_REGISTER_AUDIO_SERVER, //GameServer 注册语音服务器
	
	GM_ACCOUNT_SERVER_MESSAGE_START = 199,			///账号服务器消息开始

	///***************玩家账号登入流程*****************************************************************************/
	GM_ACCOUNT_REQUEST=200,      ///验证是否有这个帐号;
	GM_ACCOUNT_REQUEST_RETURN,	///验证是否有这个帐号返回

	GM_ACCOUNT_VERIFY,            ///验证帐号密码;
	GM_ACCOUNT_VERIFY_RETURN,     ///验证帐号密码返回

	GM_ACCOUNT_CREATE,			///进行账号创建的消息
	GM_ACCOUNT_CREATE_RETURN,	///进行账号创建的消息返回	

	GM_PASSWORD_MODIFY,			///进行帐号密码修改的消息
	GM_PASSWORD_MODIFY_RETURN,  ///进行帐号密码修改的消息返回

	GM_ACCOUNT_LOGIN_AREA,		///玩家选区,不需要返回消息

	GM_ROLE_ENSURE_CHOOSE_AREA,		///玩家确定选区;

	GM_VERIFY_VERSION,			/*!< 客户端验证版本号 */
	GM_VERSION_RETURN,			/*!< 版本号验证结果 */

	SM_NOTIFY_DBWRITE=212,  //gmdb 告诉gmserver写一次

	GM_NOTIFY_QUEEN_INFO=214,///通知排队信息
	GM_NOTIFY_TAKELOGIN,///通知客户端你可以登陆了


	SM_NOTIFY_ERASE_PLAYER,//共享内存主动清除玩家通知
	GM_IS_EXAMINATION_REQUEST,
	GM_IS_EXAMINATION_RETURN,		//通知客户端是否审核

	GM_IS_SERVERONLOGINNOTICE_REQUEST,//请求是否在登陆界面显示公告
	GM_IS_SERVERONLOGINNOTICE_RETURN,

	GM_TEASTACCOUNT_REQUEST=250,///客户端请求试玩账号
	GM_TEASTACCOUNT_RETURN,///返回客户端试玩账号用户名和密码
	GM_BANDTESTACCOUNT_REQUEST,///客户端请求绑定试玩账号
	GM_BANDTESTACCOUNT_RETURN,///返回绑定账号结果

	GM_RECORDACCOUNTINFO_REQUEST,///记录玩家用户名和密码

	///***************玩家账号登入流程结束**************************************************************************/

	///**************选择区号消息*************************************************************************************/
	GM_STATELIST_REQUEST=300,	///区列表请求
	GM_STATELIST_RETURN,		///区列表请求返回

	GM_CHOOSE_AREA,				///选择区
	GM_CHOOSE_AREA_RETURN=303,		///选择区返回
	 

	GM_REGISTER_STATSERVER=306,		///状态服务器向全局服务器注册
	GM_UNREGISTER_STATSERVER, ///注销状态服务器

	SM_REGISTER_SERVER_TO_GATE,	///向网关服务器注册服务器信息;
	SM_UNREGISTER_SERVER_TO_GATE,///注销服务器信息;

    GM_ACCOUNT_SERVER_MESSAGE_END = 399,		///账号服务器消息结束

	///**************选择区号消息返回*************************************************************************************/

	
	/***************************网关服务器分配网络包消息id段：GameServer*****************************************/
	GATE_MESSAGE_GAME_SERVER_BEGIN=400,

	///**************角色消息*************************************************************************************/
	GM_ROLELIST_REQUEST=400,		///请求角色列表
	GM_ROLELIST_RETURN=401,		    ///返回角色列表

	GM_ROLE_CREATE=407,										     ///角色创建
	GM_ROLE_CREATE_RETURN,									///创建角色消息返回 
	GM_ROLE_DELETE,											///删除角色信息
	GM_ROLE_DELETE_RETURN,									///删除角色信息返回 
	GM_ROLE_LOGIN,											///玩家登陆
	GM_ROLE_LOGIN_RETURN,									///角色登陆成功返回 

	GM_ROLENAME_REQUEST,									///随机名字
	GM_ROLENAME_REQUEST_RETURN,

	GM_RECOVER_DELETE_ROLE_REQUEST=420,         //可恢复删除角色请求
	GM_RECOVER_DELETE_ROLE_RETURN,          //可恢复删除角色返回
	GM_CANCEL_RECOVER_DELETE_ROLE_REQUEST,  //取消 删除角色请求
	GM_CANCEL_RECOVER_DELETE_ROLE_RETURN,   //取消 删除角色返回
	GM_RECOVER_DELETE_ROLE_NOTIFY,          //通知客户端 是否取消删除角色
	
	GM_AREAACCOUNT_INFO_REQUEST = 440,	///L,请求区类表中角色信息;
	GM_AREAACCOUNT_INFO_RETURN,			///L,回调区类表中角色信息;
	///L 03.25add
	
	GM_CREATE_ROLE_NOTIFY=443,					///创建角色通知;
	GM_DELETE_ROLE_NOTIFY,					///删除角色通知;
	GM_ROLE_LEVEL_NOTIFY,					///角色等级更改通知;

	GM_RESTORE_CONNECT_FROM_OFFLINEHANG,        //掉线重连
	GM_RESTORE_CONNECT_FROM_OFFLINEHANG_OK,     //重连成功
	GM_RESTORE_CONNECT_FROM_OFFLINEHANG_FAILED, //不具备重连资格,重连失败

	GM_COMMON_IP_CLIENT_REQUEST,

	GAME_SERVER_LOGIN_MESSAGE_SPLIT = 450,			///游戏服务器登录前后消息分隔id;

	GM_ROLE_QUIT = 451,										///清除内存玩家退出	  
	SM_PULL_PLAYER_CACHE_REQUEST=456,						//请求玩家数据拉玩家进入缓存
	SM_PULL_PLAYER_CACHE_RETURN,//离线玩家信息返回
	
	GM_ROLE_HANG = 461,///角色挂起

	GM_NOTIFYDISCONNECT,                           ///通知逻辑服务器客户端连接断开

	GM_CHACKPLAYERSTATE=463,                       ///网关服务器通知逻辑服务器所有在线玩家

	GM_READ_PLAYDELETE_INFO=465,				//请求角色删除数据
	GM_READ_PLAYDELETE_INFO_RETURN,			    //数据库角色删除数据返回
	//**************************查看角色信息;***********************************/
	GM_CHECK_ROLEINFO_REQUEST=520,		///请求查看角色信息;
	SM_REQUEST_ROLE_BASE_INFO,		///游戏服务器向数据库服务器请求角色基本信息;
	GM_ROLE_BASEINFO_RETURN,		///角色的基本信息回调;
	SM_ROLE_ID_BY_NAME,             //后台封号  gameServer 通过名字  向数据库请求查找roleID 
	SM_ROLE_ID_BY_NAME_RETURN,		///通过角色名获得的角色信息的回调
	//***************************查看角色信息结束;*******************************/

	///**************角色消息完*************************************************************************************/

	/***************************************** 语音聊天 ***************************************************/
	GM_SEND_AUDIO_REQUEST = 750,			///客户端请求发送语音;
	GM_SEND_AUDIO_RETURN,					///请求回调;
	GM_READ_AUDIO_REQUEST,					///客户端请求阅读语音;
	GM_READ_AUDIO_RETURN,					///请求回调;
	GM_SEND_AUDIO_CONTENT_REQUEST,			///客户端请求发送语音包的内容;

	GM_AUDIOS_NUM_REQUEST,					///请求存储语音包的数量;
	GM_AUDIOS_NUM_RETURN,
	GM_AUDIOS_CONTENT_REQUEST,				///请求指定数量的语音包内容;
	GM_AUDIOS_CONTENT_RETURN,				

	SM_GET_ROOMID,								//新加语音sdk获取roomid
	GM_SENDCRCKEY,///将玩家消息校验码发给客户端
	/***************************************** 语音聊天 ****************************************************/

	/***************排行榜模块*************************************************************************/
	GM_ALLRANKLIST_REQUEST=1000,	//请求所有排行榜列表
	GM_ALLRANKLIST_RETURN,			//返回所有排行榜列表
	GM_RANKLISTPAGE_REQUEST,		//请求某个排行榜的某页
	GM_RANKLISTPAGE_RETURN,			//返回某个排行榜的某页
	GM_CHALLENGELIST_REQUEST,		//请求道海试炼排行榜表
	GM_CHALLENGELIST_RETURN,		//返回道海试炼排行榜表

	//排行榜数据
	SM_RANKDATA_REQUEST=1050,
	SM_RANKDATA_RETURN,
	/***************排行榜模块结束***********************************************************************/

	/***********************物品使用模块消息beg*******************************/
	GM_ITEMUSE_OPEN_REQUEST=1150,		//客户端请求使用物品
	GM_ITEMUSE_OPEN_RETURN,				//返回使用礼包物品结果
	GM_ITEMUSE_COMPOUND_REQUEST,		//客户端请求合成装备或雕纹
	GM_ITEMUSE_COMPOUND_RETURN,			//返回合成装备或雕纹结果
	/***********************物品使用模块消息end*******************************/
	/**********************************心跳包、时间包开始*********************************************/
	GM_ROLE_HEARTBEAT_MESSAGE=1200,
	SM_WATCHDOG_HEARTBEAT,
	GM_HEARTBEAT_MESSAGE,			///心跳包
	GM_CENTERCOPY_HEARBEAT,			///中心服务器副本的心跳包;
	/**********************************心跳包、时间包结束*********************************************/

	/***************************************** 网络延迟 ****************************************************/
	GM_CHECKTIME_REQUEST=1300,              //请求场景服务器时间
	GM_CHECKTIME_RETURN,
	GM_DELAYTEST_MESSAGE_REQUEST,      //向场景服务器请求  延迟测试
	GM_DELAYTEST_MESSAGE_RETURN,
	/***************************************** 网络延迟结束 ****************************************************/

	/************************************** 聊天模块模块 *****************************************/
	GM_SEND_CHAT_WORD=1400,		///客户端向服务器请求聊天;
	GM_SEND_SYSTEM_CHAT,	///请求发送系统公告;
	GM_PVP_TEMP_RANK,
	SM_TEMP_FB_PLAYER_INFO,
	/*************************************** 聊天模块结束 ****************************************/

	/************************************** 组队模块 *****************************************/
	GM_TEAM_CREATE_REQUEST=1500,          //创建队伍请求
	GM_TEAM_CAEATE_RESULT,
	GM_INVITE_ROLE_INTEAM_REQUEST,		 //邀请角色入队伍
	GM_INVITE_ROLE_INTEAM_RESULT,        //邀请角色返回
	GM_INVITE_ROLE_INTEAM_NOTIFY,        //通知被邀请人加入队伍
	GM_ANSWER_ROLE_INTEAM_REQUEST,       //回复加入队伍
	GM_ANSWER_ROLE_INTEAM_RESULT,        //回复加入队伍操作结果
	GM_ANSWER_ROLE_INTEAM_NOTIFY,		 //通知邀请人，邀请结果
	GM_ROLE_TEAM_NOTIFY,                 //通知队伍中所有人，当前队伍状态
	GM_KICKOUT_TEAM_REQUEST,             //将某人踢出队伍
	GM_KICKOUT_TEAM_RESULT,              //踢出队伍结果
	GM_LEAVE_TEAM_REQUEST,               //离开队伍请求
	GM_LEAVE_TEAM_RESULT,				 //离开队伍操作结果
	GM_FRIEND_LIST_REQUEST,              //求满足要求的好友列表
	GM_FRIEND_LIST_RESULT,				 //好友列表操作结果
	GM_CHAT_IN_TEAM,					//聊天窗口入队
	GM_TEAM_ACTIVEOVER,					//通知活动结束

	GM_TEAM_INVITEDATA_REQUEST,			// 通知邀请信息
	GM_TEAM_INVITEDATA_RETURN,
	GM_TEAM_INVITEDATA_REMOVE,			// 移除组队信息

	/*************************************** 组队模块结束 ****************************************/

	/************************************** 组队匹配模块 *****************************************/
	GM_SANHUANG_MATCH_REQUEST=1550,  //请求匹配征战三荒
	GM_SANHUANG_MATCH_OPER_RESULT,   //匹配结果
	GM_SANHUANG_MATCHING_NOTIFY,     //三荒匹配通知
	GM_SANHUANG_MATCH_CANCEL_REQUEST,//取消匹配三荒
	GM_SANHUANG_MATCH_CANCEL_RESULT, //取消匹配三荒结果

	SM_CS_TEAM_MATCH = 1575,		// 发送组队匹配信息到中心服务器
	SM_CS_TEAM_MATCH_RETURN,		// 发送组队匹配信息到中心服务器
	SM_CS_TEAM_CANCEL,				// 发送组队取消匹配信息到中心服务器
	SM_CS_TEAM_CANCEL_RETURN,		// 中心服务器组队取消匹配 结果
	SM_CS_TEAM_REMOVE,				// 发送组队取消匹配信息到中心服务器
	SM_CS_TEAM_INFB,				// 中心服务器队伍进副本
	SM_CS_TEAM_SAMEAREAN,			// 中心服务器返回战斗结果同区
	/*************************************** 组队匹配模块结束 ****************************************/

	/************************************** 全服首杀 *****************************************/
	GM_FIRSTBLOOD_REQUEST=1600,  //请求全服首杀名单
	GM_FIRSTBLOOD_RESULT,

	SM_FIRSTBLOOD_DATA_REQUEST,				// 首杀信息获取
	SM_FIRSTBLOOD_DATA_RETURN,				// 返回
	/*************************************** 全服首杀结束 ****************************************/
	
	SM_ALL_GANG_DATA_REQUEST=1700,			///请求所有帮派数据;
	SM_ALL_GANG_DATA_RETURN,				///所有帮派数据回调;
	SM_ALL_GANG_ROLE_DATA_RETURN,			///所有帮派成员数据回调;
	SM_ALL_GANG_APPLY_DATA_RETURN,			///所有公会加入申请数据回调;
	SM_ALL_GANG_LOG_RETURN,					///公会日志数据回调;
	GM_REQUEST_GANGRANK,

	///*******************************************跨服战模块********************************************************//
	GM_REGISTER_FBSERVER_REQUEST=5100,			//"某某"服务器注册到副本服务器上;
	GM_REGISTER_FBSERVER_RETURN,
	GM_UNREGISTER_FBSERVER_REQUEST,				//"某某"服务器注销从副本服务器上;
	GM_UNREGISTER_FBSERVER_RETURN,
	GM_GAMESERVERREGISTERCENTER_REQUEST,		///1\逻辑服务器注册到中心服务器;
	GM_GAMESERVERREGISTERCENTER_RETURN,			///回调;
	GM_TOPFIGHT_MATCHREQUEST,					///2\逻辑服务器向中心服务器请求决斗之巅匹配;
	GM_TOPFIGHT_MATCHRETURN,					///回调;
	GM_TOPFIGHTCANCLEMATCH_REQUEST,				///3\逻辑服务器请求取消匹配;
	GM_TOPFIGHTCANCLEMATCH_RETURN,				///回调;
	GM_TOPFIGHTCENTERRANK_REQUEST,				///4\逻辑服务器请求中心服务器中决斗之巅的排行数据;
	GM_TOPFIGHTCENTERRANK_RETURN,				///回调;
	GM_TOPFIGHT_FBSERVERRESULT_REQUEST,			///5\副本服务器通知中心服务器战斗结果;
	GM_TOPFIGHT_FBSERVERRESULT_RETURN,			///回调;
	GM_CENTERFBIP_NOTIFY,						///通知客户端中心服务器ip地址;

	///*******************************************跨服战模块over********************************************************//

	/***************************************动态typeobject表********************************/
	GM_GET_DYNAMIC_TYPEOBJECT_REQUEST=5450,
	GM_GET_DYNAMIC_TYPEOBJECT_RETURN,
	/***************************************动态typeobject表结束*****************************/

	/****************************************动态表同步操作*******************************************/
	SM_GET_DYN_OBJECT_FROM_CENTER_REQUEST=5550,		//向中心服务器请求动态礼包描述
	SM_GET_DYN_OBJECT_FROM_CENTER_RETURN,			//向中心服务器返回动态礼包描述
	SM_GET_DYN_GIFT_BAG_FROM_CENTER_REQUEST,		//向中心服务器请求具体的礼包物品详情
	SM_GET_DYN_GIFT_BAG_FROM_CENTER_RETURN,			//向中心服务器请求具体的礼包物品详情返回
	SM_GET_TABLE_VERSION_REQUEST,	//请求当前活动的版本号
	SM_GET_TABLE_VERSION_RETURN,	//返回当前活动的版本号
	/****************************************动态表同步操作结束***************************************/

	/****************************************古神浩劫活动*******************************************/
	GM_GSHJ_BOSSINFO_REQUEST=5600,		//客户端请求古神浩劫boss信息,发空包
	GM_GSHJ_BOSSINFO_RETURN,			//服务器返回结果,或主动通知玩家
	GM_GSHJ_JOIN_REQUEST,				//客户端请求参加古神浩劫,发空包
	GM_GSHJ_JOIN_RETURN,				//服务器返回参加结果，如果成功则会跳到匹配界面,否则提示错误
	GM_GSHJ_COOLDOWN_REQUEST,			//客户端请求取消挑战冷却倒计时，发空包
	GM_GSHJ_COOLDOWN_RETURN,			//服务器返回操作结果
	GM_GSHJ_INSPIRE_REQUEST,			//客户端请求花费晶石来鼓舞士气，，提升自己的战斗力。发空包
	GM_GSHJ_INSPIRE_RETURN,				//服务器返回操作结果
	GM_GSHJ_RANKINFO_REQUEST,			//客户端请求gshj伤害排名信息，发空包
	GM_GSHJ_RANKINFO_RETURN,			//服务器返回排名信息

	SM_GSHJ_MODULEINFO_REQUEST,			//从db获取玩家的信息
	SM_GSHJ_MODULEINFO_RETURN,			//db返回玩家的信息

	/****************************************古神浩劫活动结束***************************************/

	GM_MAJIANG_REQUEST=5700,			//请求匹配
	GM_MAJIANG_ASKFRIEND_REQUEST,		//请求拉好友进包厢
	GM_MAJIANG_NOTIFY_ASKFIREND,		//通知请求好友
	GM_MAJIANG_JOIN_VIPROOM,			//进入指定包厢
	GM_PLAYERISINBATTLE_REQUEST,		//请求玩家是否在副本当中;
	GM_PLAYERISINBATTLE_RETURN,			//返回当前玩家是否在副本当中;
	GM_PLAYERADDTIME_REQUEST,		//玩家请求给包间续费;
	GM_PLAYERADDTIME_RETURN,		//玩家请求续费结果返回;
	GM_MAJIANG_RETURN,				//返回进入麻将的结果;

	/***************************************日志服务器使用开始*******************************************/
	SM_LOG_INFO_STRRT=7000,
	///----------角色类信息------------
	SM_LOG_CREATE_ACCOUNT,				///帐号创建
	SM_LOG_ACCOUNT_LOGIN,				///帐号登入
	SM_LOG_ROLE_CREATE,					///角色创建
	SM_LOG_ROLE_LOGIN,					///角色登入
	SM_LOG_ROLE_BASE,					///角色基本信息
	SM_LOG_ROLE_LOGOUT,					///角色登出
	SM_LOG_RUNE_REPLACE,				///雕纹替换
	SM_LOG_PET_EVOLVE,					///宠物进化
	SM_LOG_PET_UPGRADE,					///宠物升级
	SM_LOG_TREASURE_OPEN,				///宝箱打开
	SM_LOG_TREASURE_ITEM,				///宝箱物品信息
	SM_LOG_SKILL_UPGRADE,				///技能升级
	SM_LOG_RUNE_GETEXP,					///雕纹获得经验
	SM_LOG_SNATCH,						///夺宝掠夺
	SM_LOG_SNATCH_COMPOUND,				///夺宝合成
	SM_LOG_PET_COMPOUND,				///宠物合成;
	SM_LOG_PET_FRAGMENT_CHANGE,			///宠物碎片变化;
	SM_LOG_PET_SKILL_REALIZE,			///宠物技能领悟;
	SM_LOG_PET_SKILL_DEAL,				///宠物技能操作  添加 寄存 炼化 交换
	SM_LOG_PET_SKILL_UPGRADE,			///宠物领悟技能升级
	SM_LOG_PET_SPECIAL_SKILL,			///宠物特俗技能升级
	SM_LOG_ROLE_UPGRADE,				///角色升级
	SM_LOG_PET_RENT,					///角色升级
	SM_LOG_PET_HIRE,					///角色升级
	SM_LOG_AWAKEN_OBTAIN,				///装备觉醒 获取
	SM_LOG_AWAKEN_REFINE,				///装备觉醒 炼化
	SM_LOG_AWAKEN_SWAP,					///装备觉醒 交换
	SM_LOG_AWAKEN_UPGRADE,				///装备觉醒 升级
	SM_LOG_EQUIP_SWAPSPIRIT,			///装备觉醒 升级
	SM_LOG_EQUIP_MELT,					///装备熔炼
	SM_LOG_EQUIP_RECAST,				///装备重铸
	//-----------------------------------------------------------------*********--;
	SM_LOG_TITLE_REPLACE,				//更换称号;
	SM_LOG_ROLENAME_REPLACE,			//角色更名信息;
	SM_LOG_ROLEEXP_GET,					//主角经验增加;
	SM_LOG_REALTIME,					//巫蛮之战;
	SM_LOG_ROLEDEAD,					//主角死亡;
	SM_LOG_RETAICHI,					//炼星;
	SM_LOG_COPY,						//副本信息;

	SM_LOG_FINE,								///晶石信息
	SM_LOG_SIDERITE,					//陨铁信息
	SM_LOG_OBJECT,						//物品产出和消耗信息
	SM_LOG_WAKESPIRIT,				//觉醒灵性信息
	SM_LOG_PRESTIGE,					//声望信息
	SM_LOG_TAICHI,						//太极炼星符信息
	SM_LOG_BRAVE,						//勇者之证信息
	SM_LOG_PEAKTOKEN,				//天寒战牌信息
	SM_LOG_HONOR,						//荣誉值
	SM_LOG_CHARMS,					//护符信息
	SM_LOG_GANGCREATE,			//公会创建信息
	SM_LOG_GANGAPPLY,				//玩家申请公会信息
	SM_LOG_GANGJOIN,				//玩家加入公会信息
	SM_LOG_GANGPOSITION,				//玩家公会职务信息
	SM_LOG_GANGEXIT,						///玩家推出公会
	SM_LOG_GANGDISSOLVE,					//公会解散信息
	SM_LOG_GANGUPGRADE,          //公会建筑升级信息
	SM_LOG_GANGCONSTRUCTION,//公会建设信息
	SM_LOG_GANGDONATION,//角色帮贡信息
	SM_LOG_GANGHALL,//公会大厅信息
	SM_LOG_GANGPRAYER,//公会祈祷信息
	SM_LOG_GANGCOPY,//遗迹巨魔信息
	SM_LOG_GANGBID,//公会竞标信息
	SM_LOG_GANGFIGHT,//公会战信息
	SM_LOG_GANGSTORE,//公会商店信息
	SM_LOG_CARDGET,						//翻牌奖励;
	SM_LOG_STARREWAED,					//星星领取奖励;
	SM_LOG_ELITECOPY,					//精英副本信息;
	SM_LOG_SURVIAL,						//生存副本;
	SM_LOG_GOLDBIN,						//金币副本;
	SM_LOG_SILVER,						//货币信息;
	SM_LOG_GOLD,						//钻石获得消耗信息; 


	SM_LOG_TEAMCOPY,             	//征战三慌;
	SM_LOG_KING,             	//王座之巅;
	SM_LOG_BOSSCOPY, 		//古神浩劫; 
	SM_LOG_ROADSCHO, 		//道海试练; 
	SM_LOG_TASKGUIDE,		//任务指引;
	SM_LOG_TASK,			//任务完成信息; 
	SM_LOG_FATIGUE,			//体力获得消耗信息;
	SM_LOG_EXPERIENCE,		//历练获得消耗信息;
	SM_LOG_REFINE,             	//精炼石信息;
	SM_LOG_ARENA,				//生灵竞技;
	SM_LOG_DUEL,				//决战天寒;

	SM_LOG_ADD_FRIEND,                   //添加好友信息
	SM_LOG_DEL_FRIEND,                   //删除好友信息
	SM_LOG_BLACK_LIST,                   //黑名单信息
	SM_LOG_CANCEL_BACKLIST,        //取消黑名单信息
	SM_LOG_REC_EXP,                       //领取历练信息

	SM_LOG_STOREWELFARE,            //商城福利购买信息
	SM_LOG_STORECONSUME,         //商城消费信息
	SM_LOG_AREASTORE,                 //竞技场商店信息
	SM_LOG_BLACKMARKET,           //黑市信息
	SM_LOG_BRAVESTORE,              //勇者商店信息
	SM_LOG_PEAKSTORE,               //天寒商店信息
	SM_LOG_HONORSTORE,          //荣誉商店信息
	SM_LOG_CHALLENGESTORE,   //擂台商店信息

	SM_LOG_RECHORDER,          //订单信息
	SM_LOG_RECHARGE,            //充值信息
	SM_LOG_VIP,                      //VIP经验信息
	SM_LOG_MAIL_RECEIVE,      //邮件领取信息
	SM_LOG_MAIL_ATTACHMENT,  //邮件附件信息

	SM_LOG_ENTER_SYSTEM,   //进入系统信息

	SM_LOG_FUNACTIVITY,       //领取缤纷活动信息
	SM_LOG_EXACTIVITY,          //领取精彩活动信息
	SM_LOG_LIMITPET,              //限时灵宠
	SM_LOG_LIMITPET_OBJ,       //抽取限时灵宠物品信息
	SM_LOG_PETSPIRIT,              //限时灵宠
	SM_LOG_EXCHANGEEQUIP,         //更换装备
	SM_LOG_COPYSWEEP,			 //扫荡

	SM_LOG_EQUIPELITE,			///装备精练;
	SM_LOG_EQUIPFORGE,			///装备强化;
	SM_LOG_EQUIPBREAK,			///装备突破;

	SM_LOG_ACTIVATECODE,      ///礼包兑换

	SM_LOG_ONLINE_COUNT,		//在线人数

	SM_LOG_PLAYER_OP,			/// 玩家Tokeningdata操作日志  运维
	SM_LOG_LOGIN_OP,			/// 玩家新手操作日志 未创建角色  运维
	SM_LOG_STATISTIC,			///日志内容
	SM_LOG_ROOMCARD,				//房卡信息;
	SM_LOG_MAJIANGEVENT,			//麻将信息
	SM_LOG_GOLDEN,                  //金花信息
	SM_LOG_FRUIT,                  //水果机信息


	SM_LOG_INFO_END=8999,    
	/***************************************日志服务器使用结束*******************************************/

	/*************************************GM工具开始**************************************************/
	GMCOMMAND_START = 9000,
	GMCOMMAND_GETONLINE_REQUEST,				///请求获得最大现在玩家数
	GMCOMMAND_GETONLINE_RETURN,				///请求获得最大现在玩家数回包
	GMCOMMAND_REQUEST_LOADPLUG,	//加载插件
	GMCOMMAND_REQUEST_UNLOADPLUG,	//卸载插件
	GMCOMMAND_RETURN_PLUGRESULT,	//插件结果
	GMCOMMAND_SEALPLAYER_REQUEST,				///请求封禁角色
	GMCOMMAND_SEALPLAYER_RETURN,				///请求封禁角色回调
	GMCOMMAND_KICKOFF_REQUEST,					///请求踢角色下线
	GMCOMMAND_KICKOFF_RETURN,					///请求踢角色下线回调
	GMCOMMAND_REMOVE_SEALPLAYER_REQUEST,		///请求移除封禁角色
	GMCOMMAND_REMOVE_SEALPLAYER_RETURN,		///请求移除封禁角色回调
	GMCOMMAND_GET_SEALPLAYER_LIST_REQUEST,		///封禁角色列表
	GMCOMMAND_GET_SEALPLAYER_LIST_RETURN,		///封禁角色列表回调

	GMCOMMAND_HTTP_REGISTER,							///apache扫描服务器的心跳包

	GMCOMMAND_GET_SEAL_ACCOUNT_LIST_REQUEST,				//获得封禁账号列表
	GMCOMMAND_GET_SEAL_ACCOUNT_LIST_RETURN,
	GMCOMMAND_ADD_SEAL_ACCOUNT_REQUEST,					//添加封禁账号
	GMCOMMAND_ADD_SEAL_ACCOUNT_RETURN,
	GMCOMMAND_REMOVE_SEAL_ACCOUNT_REQUEST,					//移除封禁账号
	GMCOMMAND_REMOVE_SEAL_ACCOUNT_RETURN,
	
	GMCOMMAND_MOVE_PLAYER_TO_CITY_REQUEST,					//将玩家拉回主城
	GMCOMMAND_MOVE_PLAYER_TO_CITY_RETURN,
	GMCOMMAND_MODIFY_PASSWORD_REQUEST,						//修改账目密码
	GMCOMMAND_MODIFY_PASSWORD_RETURN,
	GMCOMMAND_SEND_SYSTEM_WORD_REQUEST,					//推送系统公告
	GMCOMMAND_SEND_SYSTEM_WORD_RETURN,							

	GMCOMMAND_ADD_TASK_REQUEST,	//添加任务
	GMCOMMAND_ADD_TASK_RETURN,
	GMCOMMAND_REMOVE_TASK_REQUEST,	//移除任务
	GMCOMMAND_REMOVE_TASK_RETURN,
	GMCOMMAND_GM_COMMAND_REQUEST,	//gm命令
	GMCOMMAND_GM_COMMAND_RETURN,

	GMCOMMAND_BOARDCAST_SEAL_ACCOUNT,		//广播账号被封消息
	GMCOMMAND_UPGRADE_PLAYER,				//拉角色等级
	GMCOMMAND_UPGRADE_PLAYER_RETURN,

	GMCOMMAND_EXCEL_SEAL_PLAYERS,			//通过excel封角色
	GMCOMMAND_EXCEL_SEAL_PLAYERS_RETURN,
	GMCOMMAND_EXCEL_SEAL_ACCOUNT,			//通过excel封账号
	GMCOMMAND_EXCEL_SEAL_ACCOUNT_RETURN,

	GMCOMMAND_CDKEY_REWARD_REQUEST,		///cdkey发送奖励;
	GMCOMMAND_CDKEY_REWARD_RETURN,			///cdkey发送奖励回调;

	GMCOMMAND_GET_AREA_STRATEGY,			//请求选区策略
	GMCOMMAND_GET_AREA_STRATEGY_RETURN,
	GMCOMMAND_CHANGE_AREA_STRATEGY,		//改变选区策略
	GMCOMMAND_CHANGE_AREA_STRATEGY_RETURN,
	GMCOMMAND_HTTPSERVER_INIT_OK,				//通知http服务器初始化好了
	GMCOMMAND_GET_AREA_FLAG,				//向httpServer获得分区状态标识
	GMCOMMAND_GET_AREA_FLAG_RETURN,		
	GMCOMMAND_CHANGE_AREA_FLAG,			//gm工具改变服务器状态
	GMCOMMAND_CHANGE_AREA_FLAG_RETURN,

	GMCOMMAND_GET_BLACKLIST,				//获取登陆黑名单
	GMCOMMAND_GET_BLACKLIST_RETURN,		
	GMCOMMAND_ADD_BLACKLIST,				//加登陆黑名单
	GMCOMMAND_ADD_BLACKLIST_RETURN,
	GMCOMMAND_REMOVE_BLACKLIST,			//移除登陆黑名单
	GMCOMMAND_REMOVE_BLACKLIST_RETURN,

	GMCOMMAND_RELOAD_TABLE,		//重新加载表格
	GMCOMMAND_RELOAD_TABLE_RETURN,	//重新加载表格返回

	GMCOMMAND_RELOAD_OPERATION_PARAM,	//加载系数
	GMCOMMAND_RELOAD_OPERATION_PARAM_RETURN,	//加载 系数返回
	GMCOMMAND_CHANGESYSTEMTIME_REQUEST,			//修改系统时间
	GMCOMMAND_CHANGESYSTEMTIME_RETURN,				//返回系统修改结果
	GMCOMMAND_RELOADWONDERFUL_REQUEST,			//GM命令重新读取精彩活动表格
	GMCOMMAND_RELOADWONDERFUL_RETURN,				//返回结果
	GMCOMMAND_CELLPHONEGIFT_SENDMSG_REQUEST,	//向HTTP服务器请求发送短信
	GMCOMMAND_REMOVE_DYNAMIC_GIFTBAG_REQUEST,		///移除动态礼包
	GMCOMMAND_REMOVE_DYNAMIC_GIFTBAG_RETURN,		///移除动态礼包回调
	GMCOMMAND_ADD_DYNAMIC_GIFTBAG_REQUEST,			///添加动态礼包
	GMCOMMAND_ADD_DYNAMIC_GIFTBAG_RETURN,			///添加动态礼包回调

	GMCOMMAND_SEND_SINGLE_MAIL,///单发邮件
	GMCOMMAND_SEND_SINGLE_MAIL_RETURN,///单发邮件返回
	GMCOMMAND_SEND_GROUP_MAIL,///群发邮件
	GMCOMMAND_SEND_GROUP_MAIL_RETURN,///群发邮件返回
	GMCOMMAND_SEND_TIMER_MAIL,///定时邮件添加
	GMCOMMAND_SEND_TIMER_MAIL_EDIT,///定时邮件修改
	GMCOMMAND_SEND_TIMER_MAIL_DEL,	///定时邮件删除

	GMCOMMAND_UPDATE_AREA,	///更新服务器状态
	GMCOMMAND_UPDATE_AREA_RETURN,	///更新服务器状态返回

	GMCOMMAND_FRESH_RETURN,			//刷新动态表回调

	GMCOMMAND_FRESHDYNTEST_RETURN,	//刷新dyn_test;

	GMCOMMAND_FRESH_DYNTABLE,		//刷新动态表
	//agoni临时加的;
	GMCOMMAND_FRESH_DYNTESTTABLE,

	GMCOMMAND_SEAL_ALL,		//封所有
	GMCOMMAND_SEAL_ACCOUNT,	//封账号
	GMCOMMAND_SEAL_DEVICE,	//封设备

	GMCOMMAND_SHARE_ACCOUNTREQUEST,//分享账号;
	GMCOMMAND_SHARE_ACCOUNTRETURN,//

	GMCOMMAND_UPDATE_NOTICE,//更新公告

	GMCOMMAND_END = 9999,
	/*************************************GM工具结束**************************************************/



	PLAYER_MESSAGE_START = 10000,    //玩家模块消息开始
	GM_PLAYER_OPERATE_LOG = 10001,    //玩家操作统计  用于运维
	GM_LOG_ENTERSYSTEM_REQUEST=10002,  //玩家进入系统信息
	GM_LOG_STATISTICS,				//日志数据
   /***************人物背包模块***********************************************************************/
	GM_PACK_REQUEST=10050,		    ///请求背包列表
	GM_PACK_REQUEST_RETURN,		///请求背包的返回
	
	GM_PACK_TIDY=10056,				///整理背包
	GM_PACK_TIDY_RETURN,		///整理背包的响应
	GM_PACK_SPLIT,				///拆分物品
	GM_PACK_SPLIT_RETURN,		///拆分物品响应

	GM_PACK_NOTIFY=10064,		///背包变化通知
	GM_PACK_NOTIFY_ALLGRID=10067,		//通知背包整理结果

	GM_PACK_SETTING,			//获取背包的设置
	GM_PACK_SETTING_RETURN,		//获取背包设置的响应
	
	GM_PACK_UNLOCK_GRID,		//解锁背包格子
	GM_PACK_UNLOCK_GRID_RETURN,	//解锁背包格子响应

	GM_PACK_VALIDGRID_NOTIFY,	//背包最大格子数变化通知

	GM_PACK_STOREOBJECT,		//存放物品到仓库中
	GM_PACK_STOREOBJECT_RETURN,	//回包
	GM_PACK_RESTOREOBJECT,		//从仓库拿回物品
	GM_PACK_RESTOREOBJECT_RETURN,	//回包
	GM_SOLD_OBJ_REQUEST,				//出售装备
	GM_SOLD_OBJ_RETURN,		//出售装备返回

	GM_MOUNT_EQUIP_REQUEST,     //安装装备
	GM_MOUNT_EQUIP_RETURN,      //安装装备返回

	GM_UNMOUNT_EQUIP_REQUEST,   //卸下装备
	GM_UNMOUNT_EQUIP_RETURN,    //卸下装备返回

	GM_PICKUP_TEMP_PACKAGE_REQUEST, //拾取临时背包物品
	GM_PICKUP_TEMP_PACKAGE_RESULT,  //拾取临时背包物品结果

	GM_EQUIP_LINKINFO_REQUEST,      //装备连接信息请求
	GM_EQUIP_LINKINFO_RESULT,       //装备连接信息返回

	/***************人物背包结束***********************************************************************/


	//***************************************聊天模块;***************************************/
	GM_GET_CHAT_RETURN = 10100,			///客户端获得服务器聊天回包;
	GM_GET_PERSONAL_CHAT,				///客户端向服务器请求私聊;
	GM_CHAT_ERROR,						///错误信息消息id;

	GM_AUDIO_SERVERIP_REQUEST,			///请求语音服务器的IP地址;
	GM_AUDIO_SERVERIP_RETURN,			///回调;

	DB_CHATSHIELD_LIST_REQUEST,			///逻辑服务器向数据库请求聊天屏蔽名单;
	DB_CHATSHIELD_LIST_RETURN,			///回调;
	GM_SHIELDLIST_REQUEST,				///客户端请求聊天屏蔽名单;
	GM_SHIELDLIST_RETURN,				///回调;
	GM_SHIELDPLAYER_REQUEST,			///客户端请求屏蔽某人\解除屏蔽某人;
	GM_SHIELDPLAYER_RETURN,				///回调;
	GM_GET_ROOMID,						///获取新加语音sdk获取roomid
	GM_SEALLANUAGER_NOTIFY,				///通知客户端被禁言/解除禁言;

	//***************************************聊天模块;***************************************/

	//***************************************邮件模块;***************************************/
	GM_MAIL_REQUEST = 10200,///请求邮件总信息;
	GM_MAIL_REQUEST_RETURN,						///回调邮件总信息;
	GM_DELETE_MAIL_REQUEST,						///删除邮件请求;
	GM_DELETE_MAIL,								///通知客户端删除邮件;
	GM_DELETE_MAIL_RETURN,						///删除邮件请求结果回调;
	GM_READ_MAIL_REQUEST,						///读取邮件请求;
	GM_SEND_MAIL_REQUEST,						///发送邮件请求;
	GM_SEND_MAIL_RETURN,							///发送邮件回调;
	GM_GET_ONE_MAIL,								///服务器向客户端发送一封邮件;
	GM_GET_ITEM_REQUEST,							///请求领取邮件内的道具;
	GM_GET_ITEM_RETURN,							///请求领取邮件内道具回调;
	SM_MAIL_DATA_REQUEST,					///请求邮件数据;
	GM_GET_ALL_ITEM_REQUEST,				///一键收取道具;
	GM_GET_ALL_ITEM_RETURN,				///一键收取道具回调;

	GM_SEND_MAIL_GM_REQUEST,						///gm工具发送邮件请求;
	GM_SEND_MAIL_GM_RETURN,							///gm工具发送邮件回调;

	///——add by xrl
	DB_GLOBALMAIL_COUNT_REQUEST,		///请求全局邮件封数(玩家的数据);
	DB_GLOBALMAIL_COUNT_RETURN,			///回调;
	DB_GLOBALMAIL_DATA_REQUEST,			///请求全局邮件数据(manager的数据);
	DB_GLOBALMAIL_DATA_RETURN,			///回调;
	DB_OFFLINE_MAIL_REQUEST,			///发送一封离线邮件;
	//***************************************邮件模块结束;***************************************/


	/***************任务模块*************************************************************************/
	GM_REQUEST_PLAYERTASK=10300,//请求角色任务列表
	GM_REQUEST_PLAYERTASK_RETURN,

	GM_ROLE_ALLOC_TASK_RETURN,           ///分配一个任务给客户端
	GM_ROLE_FINSH_TASK_NOTIFY,           ///服务器通知玩家完成一个任务

	GM_ROLE_COMMIT_TASK_REQUEST,         ///客户端提交一个任务
	GM_ROLE_COMMIT_TASK_RETURN,          ///返回提交任务是否成功，如果成功获取奖励  

	GM_TASK_PROGRESS_CHANGE,             ///通知客户端收集/打怪任务进度改变

	GM_ROLE_ACCEPT_TASK_REQUEST,         ///接受任务请求
	GM_ROLE_ACCEPT_TASK_RETURN,          ///接受任务返回
	GM_TALK_EVENT,						///对话事件
	/***************任务模块结束***********************************************************************/


	/***************征战三荒模块*************************************************************************/
	GM_BRAVESTORE_REQUEST=10400,            //请求勇者商店数据
	GM_BRAVESTORE_RETURN,
	GM_BRAVESTORE_RESET_REQUEST,           //请求重置勇者商店
	GM_BRAVESTORE_RESET_RETURN,           
	GM_BRAVESTORE_BUY_REQUEST,             //购买勇者商店物品
	GM_BRAVESTORE_BUY_RESULT,            

	SM_SANHUANG_DATA_REQUEST,				// 征战三荒数据
	SM_SANHUANG_DATA_RETURN,				// 返回
	SM_BRAVESTORE_DATA_REQUEST,				// 勇者商店物品请求
	SM_BRAVESTORE_DATA_RETURN,				// 返回
	/***************征战三荒模块结束***********************************************************************/

	/************************************************************************/
	/*                         宠物模块 evange yu                               */
	/************************************************************************/
	//客户端和服务器通讯
	GM_PET_UI_REQUEST=10500,				//请求宠物界面
	GM_PET_UI_RETURN,						//请求宠物界面返回
	GM_PET_ONBATTLE_REQUEST,				//宠物上阵 替换 下阵请求
	GM_PET_ONBATTLE_RETURN,					//宠物上阵 替换 下阵结果
	GM_PET_DETAIL_REQUEST,					//宠物详细信息请求
	GM_PET_DETAIL_RETURN,					//宠物详细信息
	GM_PET_PROPERTY_REQUEST,				//宠物属性请求
	GM_PET_PROPERTY_RETURN,					//宠物属性结果
	GM_PET_SUMMON_REQUEST,					//宠物召唤请求
	GM_PET_SUMMON_RETURN,					//宠物召唤结果
	GM_PET_UPGRADE_REQUEST,					//宠物升级请求
	GM_PET_UPGRADE_RETURN,					//宠物升级结果
	GM_PET_EVOLVE_REQUEST,					//宠物进化请求
	GM_PET_EVOLVE_RETURN,					//宠物进化结果

	GM_PETEQUIP_UI_REQUEST,					// 领悟技能 UI界面打开
	GM_PET_SKILL_UI_RETURN,
	GM_PETEQUIP_UPGRADE_REQUEST,			// 领悟技能 升级
	GM_PET_SKILL_UPGRADE_RETURN,
	GM_PETEQUIP_OBTAIN_REQUEST,				// 领悟技能 获取  1 或 10 连
	GM_PET_SKILL_OBTAIN_RETURN,	
	GM_PETEQUIP_ADDSWAP_REQUEST,			// 领悟技能 替换添加
	GM_PET_SKILL_ADDSWAP_RETURN,
	GM_PETEQUIP_STORE_REQUEST,				// 领悟技能 保存到背包
	GM_PET_SKILL_STORE_RETURN,
	GM_PETEQUIP_REFINE_REQUEST,				// 领悟技能 炼化
	GM_PET_SKILL_REFINE_RETURN,	
	GM_PETEQUIP_UNLOCK_REQUEST,				// 领悟技能 背包槽位解锁
	GM_PET_SKILL_UNLOCK_RETURN,	

	GM_PET_FATE_REQUEST,					// 宠物福缘信息
	GM_PET_FATE_RETURN,

	GM_PETSKILL_COUNT_REQUEST,				//宠物灵绝请求宠物技能数量信息;
	GM_PETSKILL_COUNT_RETUEN,		

	GM_PETSKILL_SPECIAL_REQUEST,			//请求宠物灵绝;
	GM_PETSKILL_SPECIAL_RETURN,				

	//服务器之间通讯
	SM_PET_DATA_REQUEST = 10560,			//请求宠物信息
	SM_PET_DATA_RETURN,
	SM_PET_FRAGMENT_DATA_REQUEST,			//请求宠物技能信息
	SM_PET_FRAGMENT_DATA_RETURN,
	SM_PETEQUIP_EXTEND_DATA_REQUEST,		//宠物领悟技能总信息
	SM_PETEQUIP_EXTEND_DATA_RETURN,
	SM_PETEQUIP_INFO_DATA_REQUEST,			//请求宠物技能信息
	SM_PETEQUIP_INFO_DATA_RETURN,

	GM_PET_UPGRADE_CHANGE = 10580,			// 领悟技能状态变化
	GM_PET_FRAGMENT_CHANGE,					// 宠物碎片数目变化
	/****************************宠物模块 结束********************************/
	/************************************************************************/
	/*                         技能升级 evange yu                           */
	/************************************************************************/
	//客户端和服务器通讯
	GM_SKILL_LEVEL_INFO_REQUEST=10600,	//请求玩家技能信息
	GM_SKILL_LEVEL_INFO_RETURN,			//玩家技能信息返回
	GM_SKILL_LEVEL_UPGRADE_REQUEST,			//技能升级
	GM_SKILL_LEVEL_UPGRADE_RETURN,			//技能升级结果

	//服务器之间通讯
	SM_SKILL_LEVEL_INFO_REQUEST,
	SM_SKILL_LEVEL_INFO_RETURN,

	/****************************技能升级结束********************************/
	//***************************************通知客户端信息改变;***************************************/
	GM_NOTIFY_MONEYCHANGE=10700,
	GM_NOTIFY_GOLDCHANGE,
	GM_NOTIFY_SCORECHANGE,
	GM_NOTIFY_HPCHANGE,
	GM_NOTIFY_MPCHANGE,
	GM_NOTIFY_EXPCHANGE,
	GM_NOTIFY_TIREDVALUE_CHANGE,
	GM_NOTIFY_PRESTIGE_CHANGE,
	GM_NOTIFY_COMMON_CHANGE,
	GM_NOTIFY_GANG_RICHIES_CHANG,		///公会财富值改变;
	
	GM_NOTIFY_STRENGTH_CHANGE,
	GM_NOTIFY_INTELLECT_CHANGE,
	GM_NOTIFY_STAMINA_CHANGE,
	GM_NOTIFY_SPIRIT_CHANGE,
	GM_NOTIFY_HONOR_CHANGE,
	GM_NOTIFY_FIGHTVAL_CHANGE,
	GM_NOTIFY_NAMECHANGE,
	
	GM_NOTIFY_FIGHTDATA_CHANGE,			//战力基础数据变化通知
	GM_NOTIFY_CHANGE_int32,				//整形数据变化通知
	GM_NOTIFY_CHANGE_LONG64,				//长整形数据变化通知
	GM_NOTIFY_CHANGE_float,				//浮点变化通知
	GM_NOTIFY_CHANGE_xstring,			//字符串变化通知

	GM_NOTIFY_SETTINGCHANGE,
	GM_NOTIFY_SIGNCHANGE,				//个性签名 变化;
	GM_NOTIFY_HEADCHANGE,				//头像 变化;
	GM_NOTIFY_FRAMECHANGE,				//相框 变化;
	GM_NOTIFY_SEXCHANGE,				//性别 变化;

	//***************************************通知客户端信息改变结束***************************************/
	/************************************************************************/
	/*                         宝箱 evange yu                               */
	/************************************************************************/
	//客户端和服务器通讯
	GM_TREASURECHEST_BUY_REQUEST=10800,	//请求开启宝箱
	GM_TREASURECHEST_BUY_RETURN,		//请求开启宝箱返回
	GM_TREASURECHEST_ENTER_REQUEST,		//请求宝箱界面
	GM_TREASURECHEST_ENTER_RETURN,		//请求宝箱界面返回

	GM_TREASURECHEST_TOKEN_REQUEST,		// 宝箱令开宝箱
	GM_TREASURECHEST_TOKEN_RETURN,

	//服务器之间通讯
	SM_TREASURECHEST_INFO_REQUEST,		//向数据库请求宝箱记录
	SM_TREASURECHEST_INFO_RETURN,		//向数据库请求宝箱记录返回

	/****************************神秘宝箱结束********************************/

	/************************************************************************/
	/*                         黑市 evange yu                               */
	/************************************************************************/
	//客户端和服务器通讯
	GM_BLACKMARKET_OPEN_REQUEST=10850,	//打开黑市
	GM_BLACKMARKET_OPEN_RETURN,

	GM_BLACKMARKET_REFRESH_REQUEST,		//黑市刷新
	GM_BLACKMARKET_REFRESH_RETURN,

	GM_BLACKMARKET_BUY_REQUEST,			//黑市购买
	GM_BLACKMARKET_BUY_RETURN,

	GM_BLACKMARKET_SMELT_REQUEST,		//黑市熔炼
	GM_BLACKMARKET_SMELT_RETURN,

	GM_BLACKMARKET_RECAST_REQUEST,		//黑市重铸
	GM_BLACKMARKET_RECAST_RETURN,

	GM_BLACKMARKET_ONEKEYSMELT_REQUEST,//一键化晶;
	GM_BLACKMARKET_ONEKEYSMELT_RETURN,

	//服务器之间通讯
	SM_BLACKMARKET_INFO_REQUEST,	//玩家登陆请求神秘商店数据
	SM_BLACKMARKET_INFO_RETURN,
	SM_BLACKMARKET_OBJINFO_REQUEST,	//玩家登陆请求神秘商店商品数据
	SM_BLACKMARKET_OBJINFO_RETURN,

	GM_BLACKMARKET_SPAR_REQUEST,		//黑市巫晶获取
	/********************************黑市结束 evange yu********************************/

	SM_SEND_FRIEND_CHANGE_TO_DB=10900,	//通知数据库修改变更数据

	SM_SEND_REFUSE_RESULT_FROM_DB_TO_GS,	//将处理拒绝离线好友的结果通知到逻辑服务器

	SM_SEND_FRIEND_NUM_TO_DB,			//通知数据库查询好友数量并添加为好友
	SM_SEND_FRIEND_NUM_TO_DB_RETURN,	//从数据库返回添加结果

	SM_SEND_FRIEND_NUM_ALL_TO_DB,			//通知数据库批量处理添加好友
	SM_SEND_FRIEND_NUM_ALL_TO_DB_RETURN,	//批量处理添加好友返回

	SM_FRIEND_DATA_REQUEST,			//向数据库请求玩家好友数据
	SM_FRIEND_DATA_RETURN,			//从数据库返回玩家好友数据

	SM_FRIEND_INVITE_DATA_REQUEST,	//向数据库请求加了玩家为好友的玩家数据
	SM_FRIEND_INVITE_DATA_RETURN,   //从数据库返回加了玩家为好友的玩家数据

	SM_FRIEND_RECIEVE_REQUEST,		//向数据库请求玩家馈赠次数数据
	SM_FRIEND_RECIEVE_RETRUN,		//从数据库返回玩家馈赠次数数据

	GM_OPEN_FRIEND_REQUEST,			//客户端请求获取玩家好友信息
	GM_OPEN_FRIEND_RETURN,			//客户端请求获取玩家好友信息回调

	GM_FRIEND_EXPRECIEVE_REQUEST,	//客户端请求馈赠好友
	GM_FRIEND_EXPRECIEVE_RETURN,	//客户端请求馈赠好友返回

	GM_FRIEND_RECOMMEND_REQUEST,	//客户端请求获取推荐好友信息
	GM_FRIEND_RECOMMEND_RETURN,		//客户端请求获取推荐好友信息回调

	GM_SINGLE_RECOMMEND_REQUEST,	//客户端请求获取请求指定好友信息
	GM_SINGLE_RECOMMEND_RETURN,		//客户端请求获取请求指定好友信息回调

	GM_FRIEND_INVITE_REQUEST,		//客户端请求添加好友
	GM_FRIEND_INVITE_RETURN,		//客户端请求添加好友回调

	GM_FRIEND_DELETE_REQUEST,		//客户端请求删除好友
	GM_FRIEND_DELETE_RETURN,		//客户端请求删除好友回调

	GM_FRIEND_RECIEVE_REQUEST,		//客户端请求打开领取历练界面
	GM_FRIEND_RECIEVE_RETURN,		//客户端请求打开领取历练界面回调

	GM_FRIEND_RECIEVE_SINGLE_REQUEST,		//客户端请求领取单个历练
	GM_FRIEND_RECIEVE_SINGLE_RETURN,		//客户端请求领取单个历练回调

	GM_FRIEND_RECIEVE_ALL_REQUEST,		//客户端请求领取全部历练
	GM_FRIEND_RECIEVE_ALL_RETURN,		//客户端请求领取全部历练回调

	GM_FRIEND_INVITELIST_REQUEST,		//客户端请求显示好友申请列表
	GM_FRIEND_INVITELIST_RETURN,		//客户端请求显示好友申请列表回调

	GM_FRIEND_INVITEAGREE_REQUEST,		//客户端请求同意好友申请
	GM_FRIEND_INVITEAGREE_RETURN,		//客户端请求同意好友申请回调

	GM_FRIEND_INVITEAGREEALL_REQUEST,		//客户端请求同意所有好友申请
	GM_FRIEND_INVITEAGREEALL_RETURN,		//客户端请求同意好友申请回调

	GM_FRIEND_INVITEREFUSE_REQUEST,		//客户端请求拒绝好友申请
	GM_FRIEND_INVITEREFUSE_RETURN,		//客户端请求拒绝好友申请回调

	GM_FRIEND_GETINFO_REQUEST,		//客户端请求查看好友信息申请
	GM_FRIEND_GETINFO_RETURN,		//客户端请求查看好友信息申请回调

	GM_FRIEND_NOTICE_RETURN,		//通知客户端有新的好友消息
	SM_SENDXGPUSH_REQUEST,			//发送信鸽推送

	/*************************充值模块***************************/
	SM_GET_RECHARGE_FROM_DB = 11000,				//逻辑服务器向db请求玩家充值相关数据
	SM_GET_RECHARGE_FROM_DB_RETURN,					//数据服务器返回玩家充值相关数据
	SM_GET_WALFARE_FROM_DB,							//逻辑服务器向db请求玩家礼包购买相关数据
	SM_GET_WALFARE_FROM_DB_RETURN,					//数据服务器返回玩家礼包购买相关数据
	SM_GET_SHOPOBJ_FROM_DB,
	SM_GET_SHOPOBJ_FROM_DB_RETURN,

	GM_RECHARGE_REQUEST,							//请求充值
	GM_RECHARGE_RETURN,								//告知客户端充值结果
	GM_RECHARGE_OPEN_REQUEST,						//客户端请求打开充值界面
	GM_RECHARGE_OPEN_RETURN,						//回客户端玩家充值信息
	GM_SHOP_WALFARE_OPEN_REQUEST,					//显示福利数据
	GM_SHOP_WALFARE_OPEN_RETURN,					//回客户端福利数据
	GM_SHOP_SINGLE_WALFARE_REQUEST,					//请求单个福利礼包数据
	GM_SHOP_SINGLE_WALFARE_RETURN,					//回客户端单个礼包的数据
	GM_SINGLE_WALFARE_BUY_REQUEST,					//请求购买单个福利礼包
	GM_SINGLE_WALFARE_BUY_RETURN,					//回客户端购买结果
	GM_SHOP_OBJECT_OPEN_REQUEST,					//显示道具界面
	GM_SHOP_OBJECT_OPEN_RETURN,						//回客户端道具数据
	GM_SHOP_OBJECT_BUY_REQUEST,						//购买道具
	GM_SHOP_OBJECT_BUY_RETURN,						//回客户端道具购买结果
	GM_SHOP_OBJECT_SINGLE_REQUEST,					//请求单个物品的购买区间
	GM_SHOP_OBJECT_SINGLE_RETURN,					//回客户端单个物品购买区间
	GM_SINGLE_OBJECT_REQUEST,						//请求单个道具的购买数据
	GM_SINGLE_OBJECT_RETURN,						//回客户端请求单个道具的购买数据
	GM_GET_ZY_ORDERDATA_REQUEST,					//获取掌娱订单信息
	GM_GET_ZY_ORDERDATA_RETURN,						//回客户端掌娱订单信息
	/*************************充值模块结束***************************/
	/*************************VIP************************************/
	SM_GET_VIP_FROM_DB = 11100,					//向DB请求玩家vip信息
	SM_GET_VIP_FROM_DB_RETURN,					//DB返回玩家vip信息
	GM_VIP_UPLEVEL_RETURN,						///通知客户端VIP信息变动
	GM_VIP_REQUEST ,							//客户端获得玩家vip信息
	GM_VIP_RETURN,									//回客户端玩家vip信息
	GM_VIP_GETEXP,								//领取vip经验
	GM_VIP_GETEXP_RETURN,						//领取vip经验返回
	GM_VIP_GETREWARDDATA,						//请求vip特权数据
	GM_VIP_GETREWARD_RETURN,					//请求vip特权数据返回
	GM_VIP_GETVIPREWARD,						//领取vip奖励
	GM_VIP_GETVIPREWARD_RETURN,					//领取vip奖励返回
	/*************************VIP结束************************************/

	/*************************图鉴************************************/
	SM_ILLUSTRATED_DATA_REQUEST = 11150,					//向DB请求玩家图鉴收集信息
	SM_ILLUSTRATED_DATA_RETURN,								//从数据库返回玩家图鉴信息
	GM_ILLUSTRATED_REQUEST,									//请求打开图鉴
	GM_ILLUSTRATED_RETURN,									//返回图鉴收集信息
	GM_ILLUSTRATED_OBJECTGET_NOTICE,						//通知客户端获得物品
	
	/*************************图鉴结束************************************/

	/*************************部族战争模块***************************/
	GM_GANGWAR_OPENMINERAL = 11200,				//客户端打开矿脉地图
	GM_GANGWAR_OPENMINERAL_RETURN,				//回客户端打开矿脉地图
	GM_GANGWAR_RANKINGS,						//请求竞标榜信息
	GM_GANGWAR_RANKINGS_RETURN,					//回竞标榜信息
	GM_GANGWAR_BIDDING,							//竞标(增加建设度)
	GM_GANGWAR_BIDDING_RETURN,					//回客户端竞标结果
	GM_GANGWAR_WAR_OPEN,						//客户端请求打开矿脉争夺界面
	GM_GANGWAR_WAR_OPEN_RETURN,					//回客户端矿脉争夺信息
	GM_GANGWAR_CHECKROOM,						//客户端请求查看房间内信息
	GM_GANGWAR_CHECKROOM_RETURN,				//回客户端房间内信息
	GM_GANGWAR_ENTERROOM,						//客户端请求进入房间
	GM_GANGWAR_ENTERROOM_RETURN,				//回客户端请求进入房间的结果
	GM_GANGWAR_ENTERROOM_EVENT,					//告诉客户端 有玩家离开房间
	GM_GANGWAR_LEAVEROOM_EVENT,					//告诉客户端 有新玩家加入房间
	GM_GANGWAR_LEAVEROOM,						//客户端请求离开房间
	GM_GANGWAR_LEAVEROOM_RETURN,				//回客户端已处理离开请求
	GM_GANGWAR_NOBODY,							//对面没人
	

	GM_GANGWAR_TEST,							//主动修改状态
	GM_GANGWAR_TEST_RETURN,						//返回		
	GM_GANGWAR_SPARBIDDING,						//晶石竞标
	GM_GANGWAR_SPARBIDDING_RETURN,				//回晶石竞标结果
	
	/*************************部族战争模块结束***************************/

	/*************************实施战场 巫蛮之战 模块***************************/
	GM_REALTIME_OPEN = 11300,				// 实施战场打开
	GM_REALTIME_OPEN_RETURN,
	GM_REALTIME_STORE,						// 实施战场商店
	GM_REALTIME_STORE_RETURN,
	GM_REALTIME_STORE_RESET,				// 商店重置
	GM_REALTIME_STORE_RESET_RETURN,	
	GM_REALTIME_STORE_BUY,					// 商店购买
	GM_REALTIME_STORE_BUY_RETURN,

	SM_REALTIME_DATA = 11350,				// 实施战场数据
	SM_REALTIME_DATA_RETURN,
	SM_REALTIME_STORE_DATA,					// 实施战场商店数据
	SM_REALTIME_STORE_DATA_RETURN,
	/*************************实施战场 巫蛮之战 模块结束***************************/

	/*******************玩家历史操作数据模块;********************/
	SM_OPERATE_DATA_REQUEST = 11600,	///请求玩家操作数据;
	SM_OPERATE_DATA_RETURN,				///玩家操作数据回调;
	/*******************玩家历史操作数据模块结束;********************/

	/*************************称号模块;**************************/
	SM_TITLE_REQUEST = 11700,	///向数据库服务器请求玩家称号数据;
	SM_TITLE_RETURN,			///数据库服务器回调玩家已拥有称号数据;
	SM_TITLE_INFO_RETURN,		///数据库服务器回调玩家称号模块信息数据;

	GM_TITLE_REQUEST,		///玩家请求查看称号数据;
	GM_TITLE_RETURN,		///玩家请求查看称号数据回调;

	GM_EQUIP_TITLE_REQUEST,	///玩家请求装备称号;
	GM_EQUIP_TITLE_RETURN,	///玩家请求装备称号回调;
	

	DB_LIMIT_TITLE_NOTIFY,	///修改玩家的限时称号数据;
	GM_ADDTITLE_NOTIFY,		///服务器通知客户端获得一个新称号;


	/*************************称号模块结束;**************************/

	/*************************道海试炼**************************/
	GM_CHALLENGE_OPEN_REQUEST = 11800,	 // 打开试炼界面
	GM_CHALLENGE_OPEN_RETURN,
	GM_CHALLENGE_CHOOSE_REQUEST,		// 难度选择
	GM_CHALLENGE_CHOOSE_RETURN,
	GM_CHALLENGE_RESET_REQUEST,			 // 试炼重置刷新
	GM_CHALLENGE_RESET_RETURN,
	GM_CHALLEBGE_START_REQUEST,			// 开始试炼
	GM_CHALLEBGE_START_RETURN,
	GM_CHALLENGE_STORE_REQUEST,			// 打开商店
	GM_CHALLENGE_STORE_RETURN,
	GM_CHALLENGE_STORE_RESET_REQUEST,	// 重置商店
	GM_CHALLENGE_STORE_RESET_RETURN,
	GM_CHALLENGE_STORE_BUY_REQUEST,		// 商店购买
	GM_CHALLENGE_STORE_BUY_RETURN,
	GM_CHALLENGE_ONBATTLE,				// 宠物上阵
	GM_CHALLENGE_ONBATTLE_RETURN,
	GM_CHALLENGE_RESET_FORTUNE_REQUEST,	// 运势重置刷新
	GM_CHALLENGE_RESET_FORTUNE_RETURN,
	GM_CHALLEBGE_READY_REQUEST,			// 准备 宠物上阵界面
	GM_CHALLEBGE_READY_RETURN,
	GM_CHALLENGE_FORTUNE_OPEN_REQUEST,	// 运势界面
	GM_CHALLENGE_FORTUNE_OPEN_RETURN,
	GM_CHALLENGE_RENTPET_REQUEST,		// 出租宠物宠物
	GM_CHALLENGE_RENTPET_RETURN,
	GM_CHALLENGE_RENTPET_OPEN_REQUEST,	// 租赁界面
	GM_CHALLENGE_RENTPET_OPEN_RETURN,
	GM_CHALLENGE_RENTPET_RENT_REQUEST,	// 出租宠物
	GM_CHALLENGE_RENTPET_RENT_RETURN,
	GM_CHALLENGE_RENTPET_HIRE_REQUEST,	// 租宠物
	GM_CHALLENGE_RENTPET_HIRE_RETURN,

	GM_CHALLENGE_PROOF_NOTIFY,		// 试炼凭证改变通知

	GM_CHALLENGE_CARD_REQUEST,	// 请求翻牌信息
	GM_CHALLENGE_CARD_RETURN,

	SM_CHALLENGE_DATA_REQUEST = 11850,  // 请求数据
	SM_CHALLENGE_DATA_RETURN,
	SM_CHALLENGE_STORE_REQUEST,			// 请求商店数据
	SM_CHALLENGE_STORE_RETURN,
	SM_CHALLENGE_PET_REQUEST,			// 请求商店宠物数据
	SM_CHALLENGE_PET_RETURN,
	SM_CHALLENGE_RENT_REQUEST,			// 请求商店宠物租赁
	SM_CHALLENGE_RENT_RETURN,
	SM_CHALLENGE_BATTLE_REQUEST,		// 请求对手列表
	SM_CHALLENGE_BATTLE_RETURN,
	/*************************道海试炼结束;**************************/

	/*************************战斗援助**************************/
	GM_FIGHTAID_REQUEST = 11950,		//客户端请求数据
	GM_FIGHTAID_RETURN,					//回调
	GM_NOTIFY_FIGHTAID,				//服务器主动通知
	GM_FIGHTAID_GET_REQUEST,	//客户端请求领取
	GM_FIGHTAID_GET_RETURN,	//领取结果返回

	SM_FIGHTAID_REQUEST,			//逻辑服务器向DB请求数据
	SM_FIGHTAID_RETURN,			//回调
	/*************************战斗援助结束**************************/


	///*******************************************运营活动模块********************************************************//
	GM_REQUEST_CHARGE_INFO=12000,
	GM_RETURN_CHARGE_INFO,
	GM_REQUEST_GETREWARD,
	GM_RETURN_GETREWARD,
	GM_REQUEST_LOGINREWARDINFO,
	GM_RETURN_LOGINREWARDINFO,
	GM_REQUEST_FLOPCARD,
	GM_RETURN_FLOPCARD,
	GM_REQUEST_LOGINREWARDPACKAGE,
	GM_RETURN_LOGINREWARDPACKAGE,
	GM_REQUEST_TOTALCOST,				//请求总消费
	GM_RETURN_TOTALCOST,				//返回总消费
	GM_CHARGEANDFIRSTINFO_REQUEST,		///客户端请求首冲和充值的cfg配置;
	///*******************************************运营活动模块over********************************************************//

	/*************************婚姻系统**************************/
	GM_TARGETSELR_EQUEST = 12100,				//客户端请求打开对象选择界面
	GM_TARGETSEL_REQTURN,							//服务器返回符合条件的对象
	GM_MARRY_REQUEST,									//客户端请求提亲
	GM_NOTIFYTARGET_MARRY,						//服务器通知被提亲者
	GM_AGREEMARRY_REQUEST,						//客户端请求同意结婚
	GM_MARRY_RETURN,									//服务器通知提亲者提亲结果

	GM_CONTREEDATA_REQUEST,						//客户端请求同心树数据
	GM_CONTREEDATA_RETURN,						//请求数据回调
	GM_CONTREEGET_REQUEST,						//客户端请求领取奖励
	GM_CONTREEGET_RETURN,							//领取奖励回调
	GM_CONTREEIRRIGATE_REQUEST,				//客户端请求灌溉
	GM_CONTREEIRRIGATE_RETURN,				//请求灌溉回调
	GM_CONTREEDIVORCE_REQUEST,				//客户端请求离婚
	GM_NOTIFYTARGET_DIVORCE,						//服务器通知被离婚者
	GM_AGREEDIVORCE_REQUEST,					//客户端请求同意离婚
	GM_CONTREEDIVORCE_RETURN,				//通知提出协商离婚者离婚结果
	GM_ORDERCALENDAR_REQUEST,				//客户端请求预约日历信息
	GM_ORDERCALENDAR_RETURN,					//返回日历信息
	GM_ORDER_REQUEST,									//客户端请求预约
	GM_ORDER_RETURN,									//返回预约结果
	GM_WEDDINGCALENDAR_REQUEST,			//客户端请求婚宴日历信息
	GM_WEDDINGCALENDAR_RETURN,			//返回结果

	SM_CONTREEDATA_REQUEST,						//逻辑服务器请求同心树数据
	SM_CONTREEDATA_RETURN,						//数据库服务器回包
	SM_COUPLEDATA_REQUEST,						//逻辑服务器请求个人数据
	SM_COUPLEDATA_RETURN,							//数据库服务器回包

	GM_MARRYRANKLISTPAGE_REQUEST,		//请求同心树排行榜数据
	GM_MARRYRANKLISTPAGE_RETURN,			//返回同心树排行榜数据
	/*************************婚姻系统结束**************************/

	/*************************婚姻喜宴系统开始**************************/
	GM_NOTIFY_JOINWEDDING=12200,			//通知玩家可以进入婚姻喜宴场景
	GM_JOINWEDDING_REQUEST,						//客户端请求进入婚宴场景
	GM_JOINWEDDING_RETURN,						//客户端请求进入婚宴场景结果返回
	/*************************婚姻喜宴系统结束**************************/


	/*************************************战斗数据开始*******************************************/
	GM_READ_FIGHTDATA=12900,			//请求战斗数据
	GM_READ_FIGHTDATA_RETURN,			//战斗数据响应

	GM_REQUEST_MODULEFIGHTVALUE,			/*!< 请求各模块的战斗力加成 */
	GM_MODULEFIGHTVALUE_RESULT,				/*!< 各模块战斗力加成返回 */
	/*************************************战斗数据结束*******************************************/

	/********************************切换角色***************************************************/
	GM_LOGOUT_TO_ROLE_LIST_REQUEST=13600,			//请求下线
	GM_LOGOUT_TO_ROLE_LIST_RETURN,			//请求下线回调
	GM_KICKOFF_PLAYER,						//踢角色下线

	/********************************场景消息*************************/
	GM_REQUEST_LOGIN_SCENE=13700,                //请求登陆场景
	GM_LOGIN_SCENE_RETURN,
	GM_CHANGE_BROADCASTCOUNT,					 //改变显示个数
	//场景服务器
	GM_CENTERSERVER_ROLEIDCNG_NOTIFY=13740,		//中心服务器返回，通知修改角色id;
	GM_CORRECT_PLAYERDATA,						//回主城时，修复玩家数据
	GM_NOTIFY_ROLE_ACTION,						//角色动作通知
	GM_ROLE_ACTION,								//角色场景活动
	//通用  主动通知
	GM_NOTIFY_ROLE_SIGHT_APPEND=13750,		//通知角色出现在我的视野
	GM_NOTIFY_ROLE_LEAVESIGHT,				//通知角色离开视野
	GM_NOTIFY_ROLE_SHOW_CHANGE,				///广播角色显示变化;
	GM_NOTIFY_ROLE_TITLE_CHANGE,			///广播角色称号变化;
	GM_NOTIFY_ROLE_GANG_CHANGE,				///广播角色公会信息变化;
	GM_NOTIFY_ROLE_VIP_CHANGE,				///广播VIP信息改变
	GM_NOTIFY_ROLE_NAME_CHANGE,				///广播角色姓名变化;
	GM_NOTIFY_ROLE_TOPGRADE_CHANGE,			///广播角色天寒段位变化;
	/********************************场景消息*************************/

	/******************************************支付模块开始*********************************************/
	GM_CREATE_PAYMENT_REQUEST=14700,			//客户端请求打开支付界面 即生成支付请求
	GM_CREATE_PAYMENT_RETURN,			
	GM_APPSTORE_VERIFY_ORDER_REQUEST,				//客户端请求验证订单 Appstore用
	GM_APPSTORE_VERIFY_ORDER_RETURN,				//回复客户端finish包
	GM_GET_CHAREG_DATA_REQUEST,			//请求充值界面数据
	GM_GET_CHAREG_DATA_RETURN,
	GM_GOOGLEPLAY_VERIFY_ORDER_REQUEST,	//客户端请求验证订单 google支付用(GooglePlay)
	GM_GOOGLEPLAY_VERIFY_ORDER_RETURN,				//回复客户端finish包
	GM_RECHARGE_OVER_RETURN,			//通知客户端  订单完成

	SM_CHECK_PAYMENT_REQUEST,			//向Http服务器请求检查漏单
	SM_CREATE_PAYMENT_REQUEST,			//向Http服务器请求创建一条支付信息
	SM_CREATE_PAYMENT_RETURN,
	SM_GET_PAYMENT_REQUEST,				//向Http服务器请求是否有未完成的支付订单
	SM_APPSTORE_VERIFY_ORDER_REQUEST,				//向Http服务器发包
	SM_APPSTORE_VERIFY_ORDER_RETURN,				//http服务器回包
	SM_CHAREG_DATA_DB_REQUEST,			//向数据库请求玩家数据
	SM_CHAREG_DATA_DB_RETURN,
	SM_GOOGLEPLAY_VERIFY_ORDER_REQUEST,				//向Http服务器发包
	SM_GOOGLEPLAY_VERIFY_ORDER_RETURN,				//http服务器回包
	SM_SEND_PAYMENT_REQUEST,	//发放订单
	SM_SEND_PAYMENT_RETURN,
	SM_FINISH_PAYMENT_REQUEST,			//向http服务器请求修改订单为完成状态
	SM_FINISH_PAYMENT_RETURN,
	SM_CREATE_ORDER_REQUEST,			//请求创建订单  - 新（Dean）
	SM_GET_ZY_ORDER_REQUEST,			//获取掌娱订单信息
	SM_GET_ZY_ORDER_RETURN,				//获取掌娱订单信息返回
	/******************************************支付模块结束**********************************************/

	/******************************************推广模块开始*********************************************/
	GM_GENERALIZE_CODE_REQUEST=14800,				//显示二维码界面
	GM_GENERALIZE_CODE_RETURN,
	GM_GENERALIZE_FEEDBACK_REQUEST,					//推广反馈界面
	GM_GENERALIZE_FEEDBACK_RETURN,
	GM_GENERALIZE_GETREWARD_REQUEST,				//领取反馈奖励
	GM_GENERALIZE_GETREWARD_RETURN,
	GM_GENERALIZE_BIND_REQUEST,								//绑定邀请码
	GM_GENERALIZE_BIND_RETURN,								//绑定邀请码返回
	SM_GENERALIZE_CLICKDATA_FROM_DB,						//向数据库请求推广领取数据
	SM_GENERALIZE_CLICKDATA_FROM_DB_RETURN,					//返回
	GM_GENERALIZE_CENTER_REQUEST,						//请求推广每次生成的数据;
	GM_GENERALIZE_CENTER_RETURN,							//返回推广产生的所有数据;
	SM_GENERALIZE_ONEDATA_FROM_DB,					//从数据库中请求推广的记录;
	SM_GENERALIZE_ONEDATA_FROM_DB_RETURN,		//返回记录;

	/******************************************推广模块结束**********************************************/

	/******************************************更新动态表**********************************************/

	/******************************************更新动态表结束**********************************************/

    ///--------------------------监测网络--------------------------
	GM_NETLISTEN_REQUEST=21200,///发包监测网络是否链接正常
	GM_NETLISTEN_RETURN,  ///回包返回网络正常
	CS_RETURNMONEY_REQUEST,				//逻辑服务器->中心服务器-请求是否要还钱给他
	CS_RETURNMONEY_RETURN,				//中心服务器->逻辑服务器-是否要返给他

	GM_SEALACCOUNT_REQUEST=21900,///逻辑服务器请求被封账号信息
	GM_SEALACCOUNT_RETURN,  ///返回被封账号信息
		
	
	///-----------------------------------------------------------------------------------------------------------------
	///add by xrl - 精彩活动;
	DB_WONDERFULHERO_REQUEST=22000,		///英雄投资活动数据库请求;
	DB_WONDERFULHERO_RETURN,			///回调;
	DB_ACTIVITYEND_CLEARDATA,			///活动结束,通知数据库服务器clear数据;
	SM_DB_SURPRISE_REQUEST,				///向数据库请求七天登陆记录;
	SM_DB_SURPRISE_RETURN,				///回调;

	GM_WONDERFUL_LIST_REQUEST=22050,	///客户端请求活动列表;
	GM_WONDERFUL_LIST_RETURN,			///回调;
	GM_WONDERFUL_DATA_REQUEST,			///客户端请求某一活动数据;
	GM_WONDERFUL_HERODATA_RETUEN,		///1\"投资计划"回调;
	GM_WONDERFUL_TIREDVAL_RETUEN,		///2\"美食天下"回调;
	GM_WONDERFUL_SEVENDATA_RETUEN,		///3\"开服好礼"回调;
	GM_WONDERFUL_MONTHCHARGE_RETUEN,	///4\"本月回馈"回调;
	GM_WONDERFUL_DESCRIBE_RETUEN,		///5\"双倍竞技"回调;
	GM_WONDERFUL_DAYCHARGEDATA_RETUEN,	///6\"单日累充"回调;
	GM_WONDERFUL_COSTDATA_RETUEN,		///7\"消费返利"回调;
	GM_WONDERFUL_LIMITPET_RETUEN,		///8\"限时灵宠"回调;
	GM_WONDERFUL_DOUBLECARD_RETURN,///9\"双卡惊喜"回调;
	GM_WONDERFUL_TENLUCKDRAW_RETURN, ///10\"钻石十连抽"回调;
	GM_WONDERFUL_TREASURETEN_RETURN,	///11 宝箱十连抽回调
	GM_WONDERFUL_ROCATE_RETURN,			//请求转盘转盘回调;
	GM_WONDERFUL_FIGHTUP_RETURN,		//战力狂飙回调;
	GM_WONDERFUL_OSPREFERENTIAL_RETURN, ///11"开服特惠"回调
	GM_WONDERFUL_CHARGEREWARD_RETURN, ///12"充值豪礼回调
	GM_WONDERFUL_CARD_RETURN,				//翻牌 返回;

	GM_WONDERFUL_ROTATE_GETDIAMOND_REQUEST,//客户端 转盘结束客户端请求添加钻石;
	GM_WONDERFUL_ROTATE_GETDIAMOND_RTURN,  //回调;

	GM_WONDERFUL_ROTATE_RECORD_REQUEST,//客户端 请求转盘记录;
	GM_WONDERFUL_ROTATE_RECORD_RTURN,//回调;

	GM_WONDERFUL_ACHIEVE_REQUEST=22070,	///客户端请求领奖;
	GM_WONDERFUL_ACHIEVE_RETURN,		///回调;
	GM_WONDERFUL_BUY_REQUEST,			///客户端请求购买;
	GM_WONDERFUL_BUY_RETURN,			///回调;
	GM_WONDERFUL_STATE_NOTIFY,			///状态变化的通知1;
	GM_WONDERFUL_STATE_NOTIFY2,			///状态变化的通知2;
	GM_WONDERFUL_CHANGE_NOTIFY,			///精彩活动添加或删除通知;
	GM_FIRST_CHARGE_DATA_REQUEST,		///客户端请求首冲信息;
	GM_FIRST_CHARGE_DATA_RETURN,		///回调;
	GM_LIMITPET_RANKINFO_REQUEST,		///限时灵宠积分排行信息请求;
	GM_LIMITPET_RANKINFO_RETURN,		///回调;
	GM_FIRSTCHARGE_INFO_NOTIFY,			///通知客户端首冲信息;

	GM_WONDERFUL_LOGINREWARD_REQUEST = 22090,	// 获取登陆豪礼信息
	GM_WONDERFUL_LOGINREWARD_RETURN,			// 回调;
	GM_WONDERFUL_LOGINREWARD_RECEIVE,			// 领取豪礼
	GM_WONDERFUL_LOGINREWARD_RECEIVE_RETURN,	// 

	GM_WONDERFUL_HERO_RED_RETURN,				//提醒 客户端，投资回报可以领取;
	GM_WONDERFUL_CARD_RED_RETURN,				//提醒 客户端，翻牌可以领取;
	/************************************************************************/
	/* 缤纷礼包                                                             */
	SM_COLORFULSIGN_REQUEST=22100,		///签到活动数据库请求;
	SM_COLORFULSIGN_RETURN,				///回调;
	GM_COLORFUL_LIST_REQUEST,			///客户端请求缤纷活动列表;
	GM_COLORFUL_LIST_RETURN,			///回调;
	GM_COLORFUL_DATA_REQUEST,			///客户端请求某一活动数据;
	GM_COLORFUL_ACHIEVE_REQUEST,		///客户端请求领奖;
	GM_COLORFUL_ACHIEVE_RETURN,			///回调;
	GM_COLORFUL_CHANGE_NOTIFY,			///精彩活动添加或删除通知;
	GM_COLORFUL_SIGN_RETUEN,		///1\"签到活动"回调;
	GM_COLORFUL_OPENSER_RETUEN,		///3\"开服好礼"回调;
	GM_COLORFUL_LEVEL_RETUEN,		///2\"等级礼包"回调;
	GM_COLORFUL_ONLINE_RETUEN,		///4\"在线礼包"回调;
	GM_COLORFUL_RESIGN_REQUEST,		///客户端请求补签		
	GM_COLORFUL_RESIGN_RETURN,		///返回补签结果
	GM_COLORFUL_STATE_NOTIFY,		///状态变化的通知1;

	GM_WONDER_CARD_DB_REQUEST,		//翻牌打包请求;
	GM_WONDER_CARD_DB_RETURN,

	GM_WONDER_ROTATE_DB_REQUEST,	//转盘 db;	
	GM_WONDER_ROTATE_DB_RETURN,

	/************************************************************************/

	/****************************************系统设置**************************************************/
	GM_SYSTEMSET_CDKEY_REQUEST=23400,	///客户端向逻辑服务器的激活码请求
	GM_SYSTEMSET_CDKEY_RETURN,			///客户端向逻辑服务器的激活码返回
	//GM_SYSTEMSET_DATA_REQUEST,	//系统设置登陆请求
	//GM_SYSTEMSET_DATA_RETURN,	//系统设置登陆返回
	//GM_SYSTEMSET_SET_REQUEST,	//系统设置参数修改请求
	//GM_SYSTEMSET_SET_RETUTRN,	//系统设置参数修改返回

	SM_SYSTEMSET_CDKEY_REQUEST,			///逻辑服务器向中心服务器激活码请求
	SM_SYSTEMSET_CDKEY_RETURN,			///逻辑服务器向中心服务激活码返回

	/****************************************占星模块**************************************************/
	DB_ASTROLOGYHIS_REQUEST=23500,		///向数据库请求数据;
	DB_ASTROLOGYHIS_RETURN,				///回调;
	GM_ASTROLOGYHIS_REQUEST,			///客户端请求历史占星记录;
	GM_ASTROLOGYHIS_RETURN,				///回调;
	GM_ASTROLOGY_REQUEST,				///客户端请求占星操作;
	GM_ASTROLOGY_RETURN,				///回调;

	/****************************************战役模块**************************************************/
	
	DB_FBUNLOCK_REQUEST=23600,		///向数据库请求数据;
	DB_FBUNLOCK_RETURN,				///解锁回调;
	DB_FBCHESTS_RETURN,				///宝箱回调;
	GM_CHESTSINFO_NOTIFY,			///服务器主动通知<可领取宝箱信息>
	GM_FBSTAR_NOTIFY,				///服务器主动通知<星星信息>
	GM_LASTFBID_NOTIFY,

	GM_FBUNLOCK_REQUEST=23620,		///客户端请求副本解锁信息
	GM_FBUNLOCK_RETURN,				///回调;
	GM_FBSTARANK_REQUEST,			///客户端请求副本星星排行
	GM_FBSTARANK_RETURN,			///回调;
	GM_FBJOIN_REQUEST,				///客户端请求进入副本
	GM_FBJOIN_RETURN,				///回调;
	GM_FBSWEEP_REQUEST,				///客户端请求扫荡副本
	GM_FBSWEEP_RETURN,				///回调;
	GM_FBRESET_REQUEST,				///客户端请求重置副本挑战次数
	GM_FBRESET_RETURN,				///回调;
	GM_CHESTSACHIEVE_REQUEST,		///客户端请求领取宝箱奖励
	GM_CHESTSACHIEVE_RETURN,		///回调;
	GM_OTHERFB_UNLOCK_REQUES,		///客户端请求其他副本解锁信息（征战三荒）;
	GM_OTHERFB_UNLOCK_RETURN,		///回调;
	GM_FBDRAWCARD_REQUEST,			//翻牌请求
	GM_FBDRAWCARD_RETURN,			//翻牌结果
	GM_SWEEPOBJECT_REQUEST,			///逻辑服务器向副本服务器请求扫荡物品;
	GM_SWEEPOBJECT_RETURN,			///回调;

	/****************************************雕文系统begin**************************************************/
	GM_RUNE_ALLPARAM_REQUEST=23700,		///客户端请求所有的雕纹的等级信息
	GM_RUNE_ALLPARAM_RETURN,			///返回所有的雕纹的等级信息
	GM_RUNE_FEED_REQUEST,				///客户端请求对雕纹进行喂养升级
	GM_RUNE_FEED_RETURN,				///返回对雕纹进行喂养升级结果
	GM_RUNE_DRESS_REQUEST,				///客户端请求装备雕纹;
	GM_RUNE_DRESS_RETURN,				///返回装备雕纹结果
	GM_RUNE_DOWN_REQUEST,				///客户端请求卸下雕纹
	GM_RUNE_DOWN_RETURN,				///返回卸下雕纹结果
	GM_RUNE_NOTIFY_ADD,					///通知客户端新获得一个雕纹
	SM_RUNE_ALLPARAM_REQUEST,			///逻辑服务器向数据库服务器请求所有的雕纹的等级信息
	SM_RUNE_ALLPARAM_RETURN,			///返回所有的雕纹的等级信息
	/****************************************雕文系统end**************************************************/

	///-----------------------------------------------------------------------------------------------------------------
	///装备升级系统开始;
	DB_EQUIPUPLEVEL_REQUEST = 23800,	///请求数据库装备"升级"数据：包括"强化等级"\"精炼等级";
	DB_EQUIPUPLEVEL_RETURN,				///数据库回调;
	GM_EQUIPLEVEL_NOTIFY,				///服务器主动通知装备升级信息变化;

	GM_EQUIPFORGEINFO_REQUEST=23830,	//客户端请求装备升级信息(强化\精练\突破)
	GM_EQUIPFORGEINFO_RETURN,			//回调;
	GM_EQUIPFORGE_REQUEST,				//客户端请求强化（注意：消耗的蓝绿装备需去掉本身）
	GM_EQUIPFORGE_RETURN,				//回调;
	GM_EQUIPALLFORGE_REQUEST,			//客户端请求一键强化（注意：消耗的蓝绿装备需去掉本身）
	GM_EQUIPALLFORGE_RETURN,			//回调;
	GM_EQUIPREFIN_REQUEST,				//客户端请求精练
	GM_EQUIPREFIN_RETURN,				//回调;
	GM_EQUIPBREAK_REQUEST,				//客户端请求突破
	GM_EQUIPBREAK_RETURN,				//回调;
	GM_EQUIPFORGEDATA_REQUEST,			//客户端请求装备信息;
	GM_EQUIPFORGEDATA_RETURN,			//回调;

	GM_EQUIP_WING_REQUEST,				//客户端请求羽化;
	GM_EQUIP_WING_RETURN,				//回调;

	GM_EQUIPAWAKEN_UI_REQUEST,				// 装备觉醒 UI界面打开
	GM_EQUIPAWAKEN_UI_RETURN,				// 装备觉醒 返回
	GM_EQUIPAWAKEN_UPGRADE_REQUEST,			// 装备觉醒 升级
	GM_EQUIPAWAKEN_UPGRADE_RETURN,			// 装备觉醒 返回
	GM_EQUIPAWAKEN_OBTAIN_REQUEST,			// 装备觉醒 获取  1 或 10 连
	GM_EQUIPAWAKEN_OBTAIN_RETURN,			// 装备觉醒 返回
	GM_EQUIPAWAKEN_ADDSWAP_REQUEST,			// 装备觉醒 替换添加
	GM_EQUIPAWAKEN_ADDSWAP_RETURN,			// 装备觉醒 返回
	GM_EQUIPAWAKEN_STORE_REQUEST,			// 装备觉醒 保存到背包		
	GM_EQUIPAWAKEN_STORE_RETURN,			// 装备觉醒 返回
	GM_EQUIPAWAKEN_REFINE_REQUEST,			// 装备觉醒 炼化
	GM_EQUIPAWAKEN_REFINE_RETURN,			// 装备觉醒 返回
	GM_EQUIPAWAKEN_UNLOCK_REQUEST,			// 装备觉醒 背包槽位解锁
	GM_EQUIPAWAKEN_UNLOCK_RETURN,			// 装备觉醒 返回
	GM_EQUIPAWAKEN_INFO_REQUEST,			// 装备觉醒 属性获取
	GM_EQUIPAWAKEN_INFO_RETURN,				// 装备觉醒 返回
	GM_EQUIPAWAKEN_SWAP_REQUEST,			// 装备觉醒 交换
	GM_EQUIPAWAKEN_SWAP_RETURN,				// 装备觉醒 返回

	GM_EQUIPAWAKEN_NOTIFY,					// 装备觉醒 属性改变

	SM_EQUIPAWAKEN_REQUEST,					// 请求觉醒属性 
	SM_EQUIPAWAKEN_RETURN,
	SM_EQUIPAWAKEN_INFO_REQUEST,			// 请求觉醒总数据
	SM_EQUIPAWAKEN_INFO_RETURN,

	SM_AWAKEEQUIP_ALL_REQUEST,				//冥魂信息请求;
	SM_AWAKEEQUIP_ALL_RETURN,

	SM_AWAKENSPECIAL_REQUEST,				//冥魂道具冥魂请求;

	///装备升级系统结束;


	//装备觉醒;  转移到pet处
	//DB_AWAKENINFO_REQUEST=23900,		//向数据库请求装备觉醒信息;
	//DB_AWAKENINFO_RETURN,				//回调;
	//GM_AWAKENINFO_REQUEST,				//客户端请求装备觉醒历史信息;
	//GM_AWAKENINFO_RETURN,				//回调;
	//GM_AWAKEN_REQUEST,					//客户端请求觉醒操作;
	//GM_AWAKEN_RETURN,					//回调;
	//GM_AWAKENUP_REQUEST,				//客户端请求升级觉醒属性;
	//GM_AWAKENUP_RETURN,					//回调;
	//GM_AWAKENOPER_REQUEST,				//客户端请求炼化\添加\替换
	//GM_AWAKENOPER_RETURN,				//回调;

	/****************************************夺宝系统**************************************************/
	GM_SNATCH_ALLPARAM_REQUEST=23900,	//客户端请求所有的夺宝碎片背包信息
	GM_SNATCH_ALLPARAM_RETURN,			//返回夺宝碎片背包信息
	GM_SNATCH_LOOK_REQUEST,				//客户端请求查看夺宝信息
	GM_SNATCH_LOOK_RETURN,				//返回可以被抢夺的玩家信息
	GM_SNATCH_DOSNATCH_REQUEST,			//客户端请求进行夺宝
	GM_SNATCH_DOSNATCH_RETURN,			//返回夺宝信息结果
	GM_SNATCH_DOMULSNATCH_REQUEST,		//客户端请求5连夺宝
	GM_SNATCH_DOMULSNATCH_RETURN,		//返回5连夺宝信息结果
	GM_SNATCH_BUYPEACE_REQUEST,			//客户端请求购买和平模式
	GM_SNATCH_BUYPEACE_RETURN,			//返回购买和平模式结果
	GM_SNATCH_COMPOUND_REQUEST,			//点击合成
	GM_SNATCH_COMPOUND_RETURN,			//返回合成结果
	GM_SNATCH_PACKAGE_NOTIFY,			//通知客户端碎片数量变化
	GM_SNATCH_SWITCHCARD_REQUEST,		//客户端请求夺宝翻牌
	GM_SNATCH_SWITCHCARD_RETURN,		//返回夺宝翻牌结果
	GM_SNATCH_REWARD_REQUEST,			//客户端请求领取5连抢奖励
	GM_SNATCH_REWARD_RETURN,			//返回5连抢奖励
	GM_SNATCH_PEACETIME_REQUEST,		//请求当前和平时间
	GM_SNATCH_PEACETIME_RETURN,			//返回当前和平时间
	/****************************************夺宝系统end**************************************************/
	
	/****************************************新手指引系统**************************************************/
	GM_GUIDE_UNLOCKEDSYSTEM_REQUEST=23950,	//客户端请求所有已解锁的系统信息
	GM_GUIDE_UNLOCKEDSYSTEM_RETURN,			//返回已经解锁的系统信息
	GM_GUIDE_UNLOCKEDSYSTEM_NOTIFY,			//返回等级提升解锁的系统信息
	GM_GUIDE_ALLGUIDE_REQUEST,				//客户端请求所有未完成的新手指引
	GM_GUIDE_ALLGUIDE_RETURN,				//返回未完成的新手指引
	GM_GUIDE_GUIDE_NOTIFY,					//返回等级提升获得的新手指引
	GM_GUIDE_FINISHGUIDE_REQUEST,			//客户端请求完成一个新手指引
	GM_GUIDE_FINISHGUIDE_RETURN,			//返回操作结果
	GM_GUIDE_CLOSELEVEL_REQUEST,			//客户端请求关闭指引的等级
	GM_GUIDE_CLISELEVEL_RETURN,				//返回设置关闭指引的等级

	SM_GUIDE_DBGUIIDE_REQUEST,				//从数据库服务器中获取所有指引信息
	SM_GUIDE_DBGUIIDE_RETURN,				//数据库服务器返回所有指引信息
	/****************************************新手指引系统结束**********************************************/

	/****************************************升灵竞技场系统**************************************************/
	DB_SPIRITARENA_REQUEST=24000,		//向数据库请求升灵竞技场数据;
	DB_SPIRITARENA_RETURN,				//回调;
	DB_ARENASHOP_REQUEST,				//向数据库请求升灵竞技场商店数据;
	DB_ARENASHOP_RETURN,				//回调;
	
	GM_AREANSHOW_REQUEST=24030,			//客户端请求打开竞技场界面
	GM_AREANSHOW_RETURN,				//回调;
	GM_AREANFIGHT_REQUEST,				//客户端请求挑战;
	GM_AREANFIGHT_RETURN,				//回调;
	GM_AREANMYRANK_REQUEST,				//客户端请求我的排名;
	GM_AREANMYRANK_RETURN,				//回调;
	GM_AREANALLRANK_REQUEST,			//客户端请求全部排名\(全部排名最大500名)
	GM_AREANALLRANK_RETURN,				//回调;
	GM_EXCHANGESHOP_REQUEST,			//客户端请求兑换商店;
	GM_EXCHANGESHOP_RETURN,				//回调;
	GM_EXCHANGE_REQUEST,				//客户端请求兑换物品;
	GM_EXCHANGE_RETURN,

	/****************************************升灵竞技场系统**************************************************/

	/****************************************决战天寒系统**************************************************/
	DB_TOPFIGHT_SHOP_REQUEST=24100,		//向数据库请求决战天寒商店数据;
	DB_TOPFIGHT_SHOP_RETURN,			//回调;
	DB_TOPFIGHT_RANK_REQUEST,			//向数据库请求决战天寒数据;
	DB_TOPFIGHT_RANK_RETURN,			//回调;

	GM_TOPFIGHT_SHOW_REQUEST=24130,		//客户端请求决战天寒界面
	GM_TOPFIGHT_SHOW_RETURN,			//回调;
	GM_TOPFIGHT_RANK_REQUEST,			//客户端请求决战天寒排名;
	GM_TOPFIGHT_RANK_RETURN,			//回调;
	GM_TOPFIGHT_MATCH_REQUEST,			//客户端请求匹配;
	GM_TOPFIGHT_MATCH_RETURN,			//回调;
	GM_TOPFIGHT_CANCLEMATCH_REQUEST,	//客户端请求匹配;
	GM_TOPFIGHT_CANCLEMATCH_RETURN,		//回调;
	GM_TOPFIGHT_SHOP_REQUEST,			//客户端请求天寒商店;
	GM_TOPFIGHT_SHOP_RETURN,			//回调;
	GM_TOPFIGHT_RESETSHOP_REQUEST,		//客户端请求重置天寒商店;
	GM_TOPFIGHT_RESETSHOP_RETURN,		//回调;
	GM_TOPFIGHT_EXCHANGE_REQUEST,		//客户端请求兑换物品;
	GM_TOPFIGHT_EXCHANGE_RETURN,		//回调;
	GM_TOPFIGHT_FIGHTRESULT_NOTIFY,		//服务器通知客户端战斗结果;

	/****************************************决战天寒系统**************************************************/


	/*****************帮派模块;******************/

	///-----------------公会离会时间---------------------;
	DB_PLAYER_EXIT_TIME_REQUEST=24200,
	DB_PLAYER_EXIT_TIME_RETURN,

	GM_ALL_GANG_REQUEST=24210,		///客户端请求所有公会信息;
	GM_ALL_GANG_INFO_RETURN,		///回调;
	GM_MY_GANG_REQUEST,				///客户端请求我的公会;
	GM_MY_GANG_INFO_RETURN,			///回调;
	GM_REQUEST_JOIN_GANG,			///客户端请求加入公会;
	GM_REQUEST_JOIN_GANG_RETURN,	///回调;
	GM_REQUEST_CREATE_GANG,			///客户端请求创建公会;
	GM_REQUEST_CREATE_GANG_RETURN,	///回调;
	GM_REQUEST_KICK_OUT_GANG,		///客户端请求把玩家踢出公会;
	GM_KICK_OUT_GANG_RETURN,		///回调;
	GM_NOTIFY_KICKED_OUT_GANG,		///通知被T出方已被中踢出公会;

	GM_GANG_MEMBER_REQUEST,			///客户端请求公会成员信息;
	GM_GANG_MEMBER_RETURN,			///回调;
	GM_GANG_ROLE_JOB_CHANGE,		///客户端请求修改公会成员的职务;
	GM_GANG_ROLE_JOB_CHANGE_RETURN,	///回调;
	GM_CHANGE_LEADER_REQUEST,		///客户端请求转让会长;
	GM_CHANGE_LEADER_RETURN,		///回调;  
	GM_REQUEST_GANG_APPLY,			///客户端请求所有公会申请信息;
	GM_GANG_APPLY_RETURN,			///回调;
	GM_HANDLE_GANG_APPLY,			///客户端处理公会申请;
	GM_HANDLE_GANG_APPLY_RETURN,	///回调;
	GM_GANG_APPLY_HANDLE_NOTIFY,	///公会申请处理结果通知被处理者;

	GM_DISMISS_GANG,				///客户端解散公会;
	GM_DISMISS_GANG_RETURN,			///回调;
	GM_NOTIFY_DISMISS_GANG,			///通知公会成员公会已解散;

	GM_QUIT_GANG_REQUEST,			///客户端请求退出公会;
	GM_QUIT_GANG_RETURN,			///回调;
	GM_CHANGE_GANG_NOTICE_REQUEST,	///客户端请求修改公会公告;
	GM_CHANGE_GANG_NOTICE_RETURN,	///回调;
	GM_CANCLE_GANG_REQUEST,			///客户端取消申请加入公会;
	GM_CANCLE_GANG_RETURN,			///回调;

	///公会日志模块;
	GM_GANG_LOG_REQUEST,			///客户端请求公会日志数据;
	GM_GANG_LOG_RETURN,				///回调;
	GM_NOTIFY_CLIENT_OPER_SUCCESS,	///通知客户端的操作成功;

	GM_GANGMODULELOCKINFO_REQUEST,	///客户端请求帮派里模块解锁请求
	GM_GANGMODULELOCKINFO_RETURN,	///回调;
	GM_GANGINFO_CHANGE_NOTIFY,		///公会信息变化通知;
	GM_GANGMEMBER_CHANGE_NOTIFY,	///公会成员信息变化通知;
	GM_GANGLOG_ADD_NOTIFY,			///公会日志通知;

	///部族；
	GM_GANGHALL_UPLV_REQUEST,		///客户端请求部族大厅升级;
	GM_GANGHALL_UPLV_RETURN,		///回调;
	GM_GANGHALL_CONSTRUCT_REQUEST,	///客户端请求部族大厅建设;
	GM_GANGHALL_CONSTRUCT_RETURN,	///回调;
	GM_GANGTEMPLE_BLESS_REQUEST,	///客户端请求祈福;
	GM_GANGTEMPLE_BLESS_RETURN,		///回调;
	GM_GANGSHOPDATA_REQUEST,		///客户端请求公会商店数据;
	GM_GANGSHOPDATA_RETURN,			///回调;
	GM_GANGSHOP_OPEROBJ_REQUEST,	///客户端请求兑换物品;
	GM_GANGSHOP_OPEROBJ_RETURN,		///回调;
	GM_GANGINFO_SERCH_REQUEST,		///客户端搜索公会;
	GM_GANGINFO_SERCH_RETURN,		///回调;


	GM_COMMON_PLAYER_DATA_REQUEST = 24300,   
	GM_COMMON_PLAYER_INFO_RETURN,
	GM_COMMON_PLAYER_EQUIP_REQUES,
	GM_COMMON_PLAYER_EQUIP_RETURN,
	GM_COMMON_PLAYER_IP_REQUEST,//像网管请求ip信息;
	GM_COMMON_PLAYER_IP_RETURN,
	GM_PLAYER_PLAYBACK_REQUEST,		//回放请求
	GM_PLAYER_PLAYBACK_RETURN,		//回放返回
	

	GM_RECOVERY_DATA=24350,						//人物历练和体力恢复数据
	GM_RECOVERY_DATA_RETURN,					//人物历练和体力恢复数据返回

	GM_SETTING_REQUEST,					// 请求设置
	GM_SETTING_CHANGE,					// 请求修改设置

	/*******************************************论道系统*****************************************************************/

	GM_ANSWER_OPENGATE_REQUEST=24400,			//请求打开界面;
	GM_ANSWER_OPENGATE_RETURN,			//;

	GM_ANSWER_OPENGIFT_REQUEST,			//打开奖励预览;
	GM_ANSWER_OPENGIFT_RETURN,			//;

	GM_ANSWER_MATCH_REQUEST,			//请求匹配;
	GM_ANSWER_MATCH_RETURN,				//;

	GM_ANSWER_MATCHSUCCESS_REQUEST,		//匹配成功;

	GM_ANSWER_CANCEL_REQUEST,			//取消匹配;
	GM_ANSWER_CANCEL_RETURN,

	GM_ANSWER_RED_RETURN,				//通知客户端还有奖品没有领取显示红点;

	GM_ANSWER_END_RETURN,				//结算返回;

	DB_ANSWER_DATA_RETURST,				//module数据请求;
	DB_ANSWER_DATA_RETURN,				//;
	///-----------------------------------------------------------------------------------------------------------------



	/*******************************************fish*****************************************************************/
	GM_FISH_CREATEROOM_REQUEST=24500,       //请求创建房间;
	GM_FISH_CREATEROOM_RETURN,				 //

	GM_FISH_LOGINROOM_REQUEST,				//请求进入房间;
	GM_FISH_LOGINROOM_RETUEN,

	GM_FISH_LOGIN_REQUEST,					 //请求进入副本;
	GM_FISH_LOGIN_RETURN,

	GM_FISH_ALL_REQUEST,					//请求所有房间信息;
	GM_FISH_ALL_RETURN,	

	GM_FISH_BROAD_RETURN,					//新建房间信息返回;

	GM_FISH_NEWGOLDENMAN_LOGIN_REQUEST,		//请求房间信息;
	GM_FISH_NEWGOLDENMAN_LOGIN_RETURN,		//新玩家进入房间;

	GM_FISH_NEWFISHMAN_LOGIN_RETURN,		//新玩家进入房间;

	GM_FISH_LEAVE_REQUEST,					//请求离开房间;
	GM_FISH_LEAVE_RETURN,	

	GM_FISH_DB_REQUEST,						//捕鱼db 请求;
	GM_FISH_DB_RETURN,

	GM_FISH_COMMON_REQUEST,					//请求 共用db信息;
	GM_FISH_COMMON_RETURN,

	GM_FISH_POWER_REQUEST,					//请求设置能量;
	GM_FISH_POWER_RETURN,

	//GM_FISH_GUN_REQUEST,		//请求炮 升级炮;
	//GM_FISH_GUN_RETURN,		

	//GM_FISH_FIRE_REQUEST,		//请求发射;
	//GM_FISH_FIRE_RETURN,	

	//GM_FISH_GUNSELF_REQUEST,		//请求炮的信息;
	//GM_FISH_GUNSELF_RETURN,

	//GM_FISH_KILL_RETURN,		//击杀返回;

	//GM_FISH_MONEY_RETURN,		//资产变化;

	//GM_FISH_TICKET_RETURN,		//奖券变化;

	//GM_FISH_POWER_RETUEN,		//能量变化;


	//***************************************    捕鱼  ***************************************/

	/*******************************************golden*****************************************************************/
	GM_GOLDEN_CREATEROOM_REQUEST=24600,       //请求创建房间;
	GM_GOLDEN_CREATEROOM_RETURN,				 //

	GM_GOLDEN_LOGINROOM_REQUEST,				//请求进入房间;
	GM_GOLDEN_LOGINROOM_RETUEN,

	GM_GOLDEN_LOGIN_REQUEST,					 //请求进入副本;
	GM_GOLDEN_LOGIN_RETURN,

	GM_GOLDEN_ALL_REQUEST,					//请求所有房间信息;
	GM_GOLDEN_ALL_RETURN,	

	GM_GOLDEN_BROAD_RETURN,					//新建房间信息返回;

	GM_GOLDEN_NEWGOLDENMAN_LOGIN_REQUEST,		//请求房间信息;
	GM_GOLDEN_NEWGOLDENMAN_LOGIN_RETURN,		//新玩家进入房间;

	GM_GOLDEN_LEAVE_REQUEST,					//请求离开房间;
	GM_GOLDEN_LEAVE_RETURN,		

	GM_GOLDEN_PRIVATE_TRQUEST,					//请求创建包间;
	GM_GOLDEN_PRIVATE_RETURN,

	GM_GOLDEN_INVITE_REQUEST,					//请求 邀请好友比赛;
	GM_GOLDEN_INVITE_RETURN,					//;

	GM_GOLDEN_INVITE_NOTIFY_RETURN,				//通知 被邀请者，有人邀请;

	GM_GOLDEN_KICK_REQUEST,						//请求踢人;
	GM_GOLDEN_KICK_RETURN,			

	GM_GOLDEN_SWITCH_REQUEST,					//请求切换房间;
	GM_GOLDEN_SWITCH_RETURN,					//;

	/*******************************************水果机;*****************************************************************/

	GM_FRUIT_LOGINROOM_REQUEST=24700,				//请求进入房间;
	GM_FRUIT_LOGINROOM_RETUEN,

	GM_FRUIT_ADDGAMBLEFRUIT_REQUEST,		//请求水果加注;
	GM_FRUIT_ADDGAMBLEFRUIT_RETURN,			

	GM_FRUIT_GO_REQUEST,					//请求开始转动;
	GM_FRUIT_GO_RETURN,

	GM_FRUIT_GOFIGUREPLUS_REQUEST,			//请求猜大小 加倍 减倍;
	GM_FRUIT_GOFIGUREPLUS_RETURN,

	GM_FRUIT_GOFIGURE_REQUEST,				//请求猜大小;
	GM_FRUIT_GOFIGURE_RETURN,	

	GM_FRUIT_GATHER_REQUEST,				//请求收钱;
	GM_FRUIT_GATHER_RETURN,			

	GM_FRUIT_MONEYCHANGE_RETURN,			//资产变化 所有值;

	GM_FRUIT_TEMMONEY_TRTURN,				//自己所得钱的变化;

	/*******************************************成就;*****************************************************************/

	GM_ACHIEVE_CHANNEL_REQUEST=24800,		//请求 的成就类型( 就是左侧的频道id);
	GM_ACHIEVE_CHANNEL_RETURN,

	GM_ACHIEVE_ACCRPT_REQUEST,		//请求领取;
	GM_ACHIEVE_ACCEPT_RETURN,

	GM_ACHIEVE_CAN_RETURN,			//通知有新的成就可以领取;

	GM_ACHIEVE_DB_REQUEST,			//打包请求;
	GM_ACHIEVE_DB_RETURN,

	/*******************************************救济 兑换;*****************************************************************/
	GM_EXCHANGE_DB_REQUEST,
	GM_EXCHANGE_DB_RETURN,

	GM_EXCHANGE_RECORD_REQUEST,		//请求兑换记录;
	GM_EXCHANGE_RECORD_RETURN,

	GM_EXCHANGE_EXCHANGE_REQUEST,	//请求兑换;
	GM_EXCHANGE_EXCHANGE_RETURN,

	//救济;
	GM_RELIWF_DB_REQUEST,		
	GM_RELIWF_DB_RETURN,

	GM_RELIWF_REQUEST,				//请求救济界面信息;
	GM_RELIWF_RETURN,

	GM_RELIEF_GET_REQUEST,			//请求领取;
	GM_RELIEF_GET_RETURN,	

	//兑换人物绑定信息;
	GM_EXCHANGEINFO_DB_REQUEST,
	GM_EXCHANGEINFO_DB_RETURN,

	GM_EXCHANGEINFO_REQUEST,		//请求信息绑定信息;
	GM_EXCHANGEIBNFO_RETUEN,	

	GM_EXCHANGEINFO_BIND_REQUEST,	//请求绑定，或更改;
	GM_EXCHANGEINFO_BIND_RETURN,

	GM_EXCHANGEINFO_EXCHANGEINFO_REQUEST, //请去兑换信息;
	GM_EXCHANGEINFO_EXCHANGEINFO_RETURN,

	GM_DB_PHONE_REQUEST,					//请求db手机信息;
	GM_DB_PHONE_RETURN,

	/*********************************************比赛;***************************************************************/
	GM_MATCH_UI_REQUEST=25000,					//请求 界面 比赛信息;
	GM_NATCH_UI_RETURN,

	GM_MATCH_DB_ROLE_REQUEST,						//请求人物信息;
	GM_MATCH_DB_ROLE_RETURN,
	        
	GM_MATCH_DB_DATA_REQUEST,						//请求比赛信息;
	GM_MATCH_DB_DATA_RETURN,

	GM_MATCH_PEOPLENUM_REQUEST,						//请求人物数量;
	GM_MATCH_PEOPLENUM_RETURN,

	GM_MATCH_APPLY_REQUEST,							//请求申请;
	GM_MATCH_APPLY_RETURN,

	GM_MATCH_JOIN_REQUEST,							//请求加入;
	GM_MATCH_JOIN_RETURN,

	GM_MATCH_QUIT_GAME_REQUEST,						//请求退赛;
	GM_MATCH_QUIT_GAME_RETURN,

	GM_MATCH_QUIT_REQUEST,							//请求退出;
	GM_MATCH_QUIT_RETURN,					

	GM_MATCH_RANK_REQUEST,							//请求排行榜;
	GM_MATCH_RANK_RETURN,

	GM_MATCH_TEAM_REQUEST,							//组队消息（比赛还有多久开始）;

	GM_MATCH_RESULT_RETURN,							//个人结算;

	GM_MATCH_RATE_RETURN,							//倍率变化;

	/*********************************************包间信息;***************************************************************/
	GM_ROOM_ROLE_DB_REQUEST,						//请求包间信息;
	GM_ROOM_ROLE_DB_RETURN,							//;

	GM_ROOM_COMMON_DB_REQUEST,						//包间共用信息;
	GM_ROOM_COMMON_DB_RETURN,		

	GM_ROOM_RECORD_REQUEST,							//请求包间记录;
	GM_ROOM_RECORD_RETURN,	
	GM_ROOM_DAY_RECORD_REQUEST,						//请求玩家当天记录
	GM_ROOM_DAY_RECORD_RETURN,

	GM_PLAYBACK_DB_REQUEST,							//DB请求回放数据;
	GM_PLAYBACK_DB_RETURN,							//DB返回回放数据;
	GM_PLAYBACK_DB_INSERT_REQUEST,					//DB插入请求回放数据;
	GATE_MESSAGE_GAME_SERVER_END=100000,
	/***************************网关服务器分配网络包消息id段结束：GameServer*****************************************/


	/***************************副本服务器分配网络包消息id段：FBServer*****************************************/
	GATE_MESSAGE_CROSS_SERVER_BEGIN=100001,
	//***************************************副本消息*******************************************/
	GM_REGISTER_FBSERVER,//注册副本服务器
	GM_REQUEST_ACTIVENUM,//请求副本服务器，服务器负载量
	GM_REQUEST_ACTIVENUM_RETURN,////返回逻辑服务器 服务器负载量

	GM_REQUEST_BATTLE,			///战斗总接口
	GM_REQUEST_BATTLE_RETURN,	//请求创建副本返回
	GM_FBSERVERINFO_RETURN,		///副本服务器信息返回,通过这个信息链接到副本服务器
	GM_LOGINFB_REQUEST,			//玩家登陆副本服务器请求
	GM_LOGINFB_RETURN,			//玩家登陆副本服务器返回
	GM_BATTLE_NEW_CHARACTER,	//广播有新玩家加入副本
	GM_SEND_READY,				//客户端通知加载完成,麻将中，玩家点击开始发ready
	GM_NOTIFY_BATTLEENDTIME,	//发送战斗结束时间包
	GM_ACTIVE_BIGWAVE_REQUEST,	//通知激活怪物
	GM_ACTIVE_BIGWAVE_RETURN,	//返回通知
	GM_CLIENT_NOTIFY_DIED,		//客户端通知死亡事件
	GM_BATTLE_RESULT,			//战斗结果
	GM_ALL_CHARACTERINFO,		//获取所有角色信息
	GM_INFORM_OBJECT_ACTION,    //动作包
	GM_BROADCAST_OBJECT_ACTION, //动作包转发给其他角色   
	GM_BROADCAST_BATTLESCENE_LEAVE, //角色离开
	GM_GODLIKE,					//通关副本
	GM_NOTIFY_DIED,				//通知对象死亡
	GM_AI_CONCTROL,				//AI控制权限
	GM_ATTACK,					//攻击处理
	GM_ATTACK_RETURN,			//攻击返回
	GM_BROADCAST_HPMPNOW_CHANGE,//广播掉血
	GM_NOTIFY_BACK,				//客户端主动离开副本
	GM_REPLACE_PET_REQUESET,	//宠物替换
	GM_REPLACE_PET_RETURN,		//宠物替换返回
	GM_SYNC_MOVEMENT,			//副本位置同步信息
	GM_NOTIFY_RELIVE,			//通知客户端重生
	GM_NOTIFY_RELIVE_TIME,		//通知客户端重生倒计时
	GM_PET_BATTLEINFO,			//宠物位置信息
	GM_NOTIFY_POINT_CHANGE,		//通知客户端积分信息(包括采集点)
	SM_NOTIFY_CLIENT_OFFLINE,	//通知客户端离线
	GM_NOTIFY_ADDBUFF,			//添加buff
	GM_NOTIFY_REMOVEBUFF,		//移除buff
	GM_CLIENT_STORY_TIME,		//获取副本剧情占时
	GM_TAKE_PLAYERBACK,			//把玩家拉回去
	GM_CHANGE_PLAYERTOAI,		//修改玩家成机器人
	SM_KICKOUT_FB,				//超时被提出副本
	GM_CLIENT_DROPHP,			//客户端通知掉血
	GM_CLIENT_NOTIFY_SPECIALSKILL,	//客户端通知稀有技使用
	SM_NOTIFY_DATARELOAD,			//通知副本服务器更新
	GM_NORMOLFB_BOSSSHOW,			//boss出现
	GM_NOTIFYFB_LOGINFB,		//通知副本登陆完成
	GM_CLIENT_NOTIFY_RELIVE,		//客户端通知玩家复活（用于buff）
	GM_CLIENT_STOPTIME,			//普通副本暂停时间
	GM_UNSTOP_TIME,				//暂停结束后时间
	GM_CLIENT_MPCHANGE,			// 客户端通知蓝变化
	GM_CHAOSBUFF_CHANGE,		//通知客户端混沌战场buff层数和杀怪数改变
	GM_TEAMBUFF_CHANGE,			//通知客户端勇气之煞buff携带者改变
	GM_FISH_ATTACK_RQUEST,				//捕鱼攻击;
	GM_FISH_ATTACK_RETURN,
	GM_HANDCARD_INFO,			//玩家手牌信息
	GM_NOTIFY_PLAYER_OPERATOR,		//玩家操作广播
	GM_CLIENT_REQUEST_OPERATOR,		//玩家请求操作
	GM_NOTIFY_CAN_OPERATOR,		//通知能做操作
	GM_NOTIFY_HuPai_OPERATOR,	//通知胡牌
	GM_MAJIANG_BEGIN_REQUEST,	//客户端通知麻将已经可以开始，要所有人都发送才算开始
	GM_NOTIFY_READY,			//通知其他人准备好
	GM_KICKOUT_REQUEST,			//踢出玩家
	GM_TRUSTTEE_REQUEST,		//客户端请求托管
	GM_NOTIFY_TRUSTTEE,			//广播托管
	GM_NOTIFY_ROOMMASTER,		//通知角色变成房主;
	GM_PLAYERJOINBATTLEAGAIN_REQUEST,//玩家请求再次进入副本;
	GM_PLAYERJOINBATTLEAGAIN_RETRUN,//返回玩家请求再次进入副本的所有数据;
	GM_NOTIFYFBTIMEOVER_RETURN,		//通知副本时间到结束，副本关闭
	SM_NOTIFYFBADDTIME,				//通知副本时间增加
	GM_MASTERCLOSEROOM_REQUEST,		//请求解散房间
	GM_MASTERCLOSEROOM_RETURN,		//房主解散房间信息
	GM_MASTERNOTADDTIME_REQUEST,	//房主不付费，请求由其他人续费
	GM_NOTIFYOTHERPALYERADDTIME,	//通知由其他玩家续费
	GM_ROOMCARD_RETURN,				//包间信息通知(扣除房卡，记录玩家包间信息);
	GM_ROOMCARDRESULT_RETURN,	//包间场总结算信息;
	GM_MJ_ROOM_PLAYBACK_RETURN,		//包间回放;
	GM_NOTIFY_WANTCLOSEROOM,	//通知其他人有人想要解散房间;
	GM_CHOOSE_IS_CLOSEROOM,		//选择是否同意解散房间;
	GM_CHOOSE_IS_CLOSEROOM_RETURN,//广播选择解散房间操作;
	GM_CopySendPushMessage_REQUEST,//副本请求发送推送;
	GM_PlayerRollTouZi_Request,//玩家请求转动骰子;
	GM_PlayerRecivePackReturn,//玩家收到服务器包之后返回核对包;
	GM_PlayerGameStateRequest,//玩家在异常情况下请求当前游戏的状态;
	GM_PlayerNeedCardRequest,//玩家请求一张需要的牌;
	GM_MJOperator_Error,	 //玩家操作错误

/*******************************************论道系统*****************************************************************/
	GM_ANSWER_QUESTION_REQUEST=100200,			//请求题目的信息;
	GM_ANSWER_QUESTION_RETURN,			//;

	GM_ANSWER_BEGIN_REQUEST,			//通知服务器5秒倒计时结束，广播题目信息;
	GM_ANSWER_BEGIN_RETURN,				//回题目信息;

	GM_ANSWER_ANSWER_REQUEST,			//客户端答题;

	GM_ANSWER_ANSWER_NEXTBEGIN_RETUEN,  //下一道题开始的信息;

	GM_ANSWER_RANK_REQUEST,				//请求排名;
	GM_ANSWER_RANK_RETURN,				//;

	GM_ANSWER_FACE_REQUEST,				//发送表情;
	GM_ANSWER_FACE_RETURN,				//;
	//***************************************      ***************************************/


//***************************************    金花  ***************************************/

	GM_GOLDEN_BEGIN_RETURN=100400,						//一局 开始;

	GM_GOLDEN_MAKERID_RETURN,					//广播给所有人 谁是操作者;

	GM_GOLDEN_CARD_REQUEST,//请求看牌;				
	GM_GOLDEN_CARD_RETURN,//;
	GM_GOLDEN_BROAD_CARD_RETURN,//广播给所有人 有人看牌;

	GM_GOLDEN_ADD_REQUEST,//请求加注;
	GM_GOLDEN_ADD_RETURN,// 广播给所有人有人加注;

	GM_GOLDEN_FOLLOW_REQUEST,//请求跟注;
	GM_GOLDEN_FOLLOW_RETURN,//广播给所有人， 有人跟注;

	GM_GOLDEN_BOUT_RETURN,

	GM_GOLDEN_COMPARE_REQUEST,//请求比牌;
	GM_GOLDEN_COMPARE_RETUEN,//同时广播给所有人;

	GM_GOLDEN_ABANDON_REQUEST,	//请求弃牌;
	GM_GOLDEN_ABANDON_RETURN,//广播给所有人 有人能弃牌;

	GM_GOLDEN_GAMBLE_SINGLE_RETURN,//广播 全部注的值 当前值 不是增加的值;

	GM_GOLDEN_GAMBLE_ALL_RETURN,//广播 单注的值 当前值 不是增加的值;

	GM_GOLDEN_GAMBLE_SELF_RETURN,//广播人物自己资产的变化 当前值 不是增加的值;

	GM_GOLDEN_BEGIN_TIME_RETURN,// 开局 倒计时5秒;

	GM_GOLDEN_SINGLE_TIME_RETURN,//单人 倒计时10秒;

	GM_GOLDEN_END_RETURN,//一局结束;

	GM_GOLDEN_PAUSE_REQUEST,			//请求暂停;
	GMGOLDEN_PAUSE_RETURN,

	GM_GOLDEN_SHOW_REQUEST,				//请求亮牌;		
	GM_GOLDEN_SHOW_RETURN,				//亮牌广播;

	GM_GOLDEN_KICK_PASS,				//副本服务器传过来的踢人信息;

	GM_GOLDEN_ROOM_STATE_RETURM,		//房间信息;

	GM_GOLDEN_WATCH_RETURN,				//通知玩家进入离线状态;
	GM_GOLDEN_CANCEL_WATCH_RETURN,		//通知玩家取消离开状态;

	GM_GOLDEN_WATCH_REQUEST,			//取消离线;

	GM_GOLDEN_CHARGE_REQUEST,			//请求充值;
	GM_GODLEN_CHARGE_RETURN,			//广播充值;

	GM_GODLEN_CANCLE_CHARGE_REQUEST,	//请求取消充值;
	GM_GODLEN_CANCLE_CHARGE_RETURN,		//;

	GM_GODLEN_PREPARE_REQUEST,					//请求准备;
	GM_GODLEN_PREPARE_RETURN,					

	GM_GODLEN_SRART_REQUEST,					//请求开始;
	GM_GODLEN_SRART_RETURN,					

	//***************************************    金花  ***************************************/

	//***************************************    捕鱼  ***************************************/
	GM_FISH_GUN_REQUEST=100500,		//请求炮 升级炮;
	GM_FISH_GUN_RETURN,		

	GM_FISH_FIRE_REQUEST,		//请求发射;
	GM_FISH_FIRE_RETURN,	

	GM_FISH_GUNSELF_REQUEST,		//请求炮的信息;
	GM_FISH_GUNSELF_RETURN,

	GM_FISH_KILL_RETURN,		//击杀返回;

	GM_FISH_MONEY_RETURN,		//资产变化;

	GM_FISH_TICKET_RETURN,		//奖券变化;

	GM_FISH_POWER_RETUEN,		//能量变化;


	//***************************************    捕鱼  ***************************************/

	GATE_MESSAGE_CROSS_SERVER_END=200000,


	/***************************网关服务器分配网络包消息id段结束：场景服务器*****************************************/
	GATE_MESSAGE_SCENE_SERVER_BEGIN=200001,
	


	GATE_MESSAGE_SCENE_SERVER_END=300000,
	GM_MAX_MESSAGE,										///最大消息ID


};

///怪物类型枚举
enum MonsterType
{	
	MT_SPEEDKILL=0,	///0、速杀怪物
	MT_NORMAL,		///1、普通怪物 
	MT_ELITE,		///2、精英怪物
	MT_RARE,		///3、稀有怪物
	MT_OBSTACLES,	///4、破坏物
	MT_MACHINE,		///5、机关怪物
	MT_BOSSBEGIN,	//boss开始
	MT_BOSS = MT_BOSSBEGIN,///6、副本Boss怪物
	MT_BOSSSTATE,	///7、BOSS关卡怪物
	MT_ELITEBOSS,	///8、精英BOSS怪物
	MT_WORLDBOSS,	///9、世界BOSS怪物	
	MT_GUILDBOSS,	///10、公会BOSS怪物
	MT_TEAMBOSS,	///11、组队BOSS怪物
	MT_TEAMCOPYBOSS,///12、组队副本分身boss
	MT_BOSSEND,		///13,BOSS结束
	MT_GOLDBOSS,	///14、金币BOSS怪物
	MT_SUPERGOLD,	///15、掉20堆金币怪物
	MT_SUMMON,		///16、召唤怪物
	
	MT_Count
};


enum AttackType
{
	physicalAttack=0,		///物理攻击;
	magicAttack,			///魔法攻击;
};

enum AttackProcess
{
	initiativeAttack=0,		///主动攻击;
	passiveAttack,			///被动攻击;
};

enum RoleMotionType
{
	RMT_None,
	RMT_MoveBegin,
	RMT_Walk,
	RMT_WalkBack,
	RMT_WalkLeft,
	RMT_WalkRight,
	RMT_Run,
	RMT_MoveEnd,

	RMT_Idle=50,
	RMT_BeAttack,
	RMT_BeAttack1,
	RMT_BeAttack2,	
	RMT_Die,
	RMT_BeatBack,
	RMT_BlowFly,
	RMT_BeatBackStand,
	RMT_BlowFlyStand,
	RMT_EnterReady,
	RMT_Enter,
	RMT_SpacialIdle,	///特殊待机;

	RMT_Dance1,			///跳舞动作1;
	RMT_Relive,			///复活动作;
	RMT_Mining,			///挖矿动作;
	RMT_Win,			///胜利动作;
	
	RMT_KnockDown,		///击倒;
    RMT_KnockDownStand,///击倒起身;

	RMT_WeakIdle,
	
	RMT_AttackStart = 100,

	RMT_Attack1,
	RMT_Attack2,
	RMT_Attack3,
	RMT_Attack4,
	RMT_Attack5,
	RMT_Attack6,
	RMT_Attack7,
	RMT_Attack8,
	RMT_Attack9,
	RMT_Attack10,

	RMT_AttackEnd = 199,

		
	RMT_SkillStart = 200,

	RMT_Skill_1,
	RMT_Skill_2,
	RMT_Skill_3,
	RMT_Skill_4,
	RMT_Skill_5,
	RMT_Skill_6,
	RMT_Skill_7,
	RMT_Skill_8,
	RMT_Skill_9,
	RMT_Skill_10,
	RMT_Skill_11,
	RMT_Skill_12,
	RMT_Skill_13,
	RMT_Skill_14,
	RMT_Skill_15,
	RMT_Skill_16,
	RMT_Skill_17,
	RMT_Skill_18,
	RMT_Skill_19,
	RMT_Skill_20,
	RMT_Skill_21,
	RMT_Skill_22,
	RMT_Skill_23,
	RMT_Skill_24,
	RMT_Skill_25,
	RMT_Skill_26,
	RMT_Skill_27,
	RMT_Skill_28,
	RMT_Skill_29,
	RMT_Skill_30,
	RMT_Skill_31,
    RMT_Skill_32,
    RMT_Skill_33,
    RMT_Skill_34,
    RMT_Skill_35,
    RMT_Skill_36,
    RMT_Skill_37,
    RMT_Skill_38,
    RMT_Skill_39,
    RMT_Skill_40,
    RMT_Skill_41,
    RMT_Skill_42,
    RMT_Skill_43,
    RMT_Skill_44,
	
	RMT_SkillEnd,

};

enum OutPosType
{
	OPT_NORMALFB=0,
	OPT_DEATHTOWER,
	OPT_CITY,
	OPT_NONE,
	OPT_Elite,
	OPT_SpecialFb,
	OPT_MoWang,	///魔王副本;
};


enum CharacterType
{ 
    CT_Player=0,		//角色
    CT_Monster,			//怪物
	CT_Robot,			//机器人
	CT_Offline,			//掉线玩家
};


//职业枚举(0,通用;1,蛮士;2,巫修;3,仙族)
enum Profession
{
	P_COMMON=0,				//通用
	P_WARRIOR,				//蛮士
	P_ASSASSIN,				//巫修(刺客)
	P_MAGE,					//仙族	
	P_ProfessionCount,		//职业种类数
};


/**货币/经验/属性产出来源枚举*/
enum AddWay
{
	Add_NONE=500,				//未知原因
	Add_Recharge,				//充值获得
	Add_Generalize,				//推广领取
	Object_None=1000,			//不明确理由
	
	///玩家获得物品时，AddWay格式用：OBJECT_模块。
	OBJECT_BLACKMARKET=2000,				// 黑市物品
	OBJECT_BLACKMARKET_ETRECAST,			// 黑市重铸
	OBJECT_BLACKMARKET_SMELT,				// 黑市熔炼
	OBJECT_TREASURE_LOW_ONE,				// 低级宝箱一次
	OBJECT_TREASURE_LOW_TEN,				// 低级宝箱十连
	OBJECT_TREASURE_HIGH_ONE,				// 高级宝箱一次
	OBJECT_TREASURE_HIGH_TEN,				// 高级宝箱十连
	OBJECT_GMTool,							//gm工具;
	OBJECT_SELL,
	OBJECT_GIFTBAG,							//购买福利礼包
	OBJECT_FBUNLOCK,						//战役领取;
	OBJECT_EquipForge,						///装备强化;
	OBJECT_SHOPOBJ,							//购买道具
	OBJECT_EquipRefin,						///装备精练;
	OBJECT_EquipBreak,						///装备突破;
	OBJECT_EquipWake,						//装备觉醒炼化
	OBJECT_SnatchCompound,					//夺宝碎片合成
	OBJECT_SnatchGet,						//夺宝系统抢别人的
	OBJECT_AreanShop,						///竞技场商店;
	OBJECT_TopfightShop,					///天寒商店;
	OBJECT_SpiritArean,						///竞技场;
	OBJECT_FBDROP,							// 副本掉落
	OBJECT_BraveStore_Buy,					///勇者商店购买
	OBJECT_RealTime_Buy,					/// 巫蛮商店购买
	OBJECT_RealTime_Reward,					/// 巫蛮战斗胜利
	OBJECT_Task,							//任务获得
	OBJECT_GiftBag,							//开礼包获得
	OBJECT_Recieve,							//领取历练
	OBJECT_FirstCharge,						///首冲奖励;
	OBJECT_HeroProject,						///英雄计划;
	OBJECT_EatTired,						///吃大餐;
	OBJECT_OpenServer,						///开服好礼;
	OBJECT_MonthCharge,						///月充值;
	OBJECT_DoubleDesc,						///双倍竞技;
	OBJECT_DayCharge,						///日充值;
	OBJECT_CostReward,						///消费奖励;
	OBJECT_LimitPet,						///显示灵宠;
	OBJECT_FirstLogin,						///初次登陆
	OBJECT_GangCreate,						///公会创建;
	OBJECT_HallUplv,						///大厅升级;
	OBJECT_HallConstruct,					///大厅建设;
	OBJECT_GangBless,						///公会祈福;
	OBJECT_GangShop,						///公会商店;
	OBJECT_EquipCompound,					///碎片合成获得
	OBJECT_Challenge_Buy,					///试炼商店购买
	OBJECT_Challenge_Battle,					///试炼商店结算
	OBJECT_Challenge_Card,					///试炼商店card
	OBJECT_TEAMFIGHT,							///组队副本历练返还
	OBJECT_Challenge_Rent,					///试炼运势出租宠物
	Object_Sign,							///签到获得
	Object_Upgrade,							///升级有礼
	OBJECT_GangWar_Return,					///部族战争竞标失败返还
	OBJECT_TEAMFIGHT_KICKOUT,				///组队副本未进副本历练返还
	OBJECT_REALTIME_KICKOUT,				///巫蛮之战未进副本历练返还
	OBJECT_ADDEQUIP,						//新增装备
	OBJECT_PETSKILLOBTAIN,						//领悟技能获取 
	OBJECT_PETSKILLREFINE,						//领悟技能炼化
	OBJECT_PETSKILLSWAP,						//领悟技能炼化
	OBJECT_FBSWEEP,							//副本扫荡;
	OBJECT_TOPFIGHT,						///决战天寒战斗;
	OBJECT_LOGINREWARD,						//登陆豪礼
	OBJECT_DOUBLECARD,						//双卡惊喜
	OBJECT_TENLUCK,							//限时灵宠十连赠礼
	OBJECT_TREASURETENLUCK,				//钻石宝箱十连赠礼
	OBJECT_ROTATE,							//转盘;
	OBJECT_OSPREFERENTIAL,				//开服特惠
	OBJECT_CHARGEREWARD,				//充值豪礼
	OBJECT_FIGHTUP,						//战力狂飙;
	OBJECT_GUIDECHECK,						//lua，指引判断
	OBJECT_VIPREWARD,							//vip奖励
	OBJECT_FIGHTAID,						//战斗援助礼包
	OBJECT_MARRY,							//姻缘系统
	OBJECT_ONLINEACTIVITY,					//在线礼包
	OBJECT_LOGINACTIVITY,					//累计登陆
	OBJECT_ANSWER,							//论道;
	OBJECT_EXCHANGE,						//兑换;
	OBJECT_RELIEF,							//救济;
	OBJECT_HERO,							//投资;
	OBJECT_CARD,							//翻牌;
	OBJECT_FISH,							//捕鱼;
	OBJECT_CDK,								//cdk礼包领取;
	OBJECT_MATCH,							//比赛;
	OBJECT_FRUIT,							//水果机;
	OBJECT_GOLDEN,							//炸金花;
	OBJECT_MJ,								//麻将普通场;
	OBJECT_ACHIEVE,							//成就;

	///玩家消耗物品时，AddWay格式用：COST_模块。
	COST_TREASURE=10000,					// 抽取花费
	COST_Skill_Lvlup,						// 技能花费
	COST_Refresh_BlackMarket,				// 刷新黑市花费
	COST_BLACKMARKETRECAST,					// 黑市重铸
	COST_BLACKMARKETSMELT,					// 黑市熔炼
	COST_BLACKMARKETBUY,					//黑市商店购买花费
	COST_RESETFB,							//重置副本;
	COST_Sell,								//出售物品
	COST_Task,								//收集物品任务
	COST_UnlockGrid,						//解锁背包网格
	COST_Split,								/*!< 拆分背包格子 */
	COST_RuneFeed,							//雕纹喂养
	COST_PET_UPGRADE,						// 升级花费
	COST_PetSummon,							// 宠物召唤
	COST_PetEvolve,							// 宠物进化
	COST_GIFTBAG,							// 购买福利礼包
	COST_PET_SKILL_PILL,					// 领悟丹使用
	COST_PET_SKILL,							// 领悟技能花费
	COST_PET_SKILL_Upgrade,					// 领悟技能升级花费
	COST_PET_SKILL_Obtain,					// 领悟技能获取花费
	COST_EquipForge,						//装备强化;
	COST_PET_SKILL_UNLOCK_PACKAGE,			// 领悟技能背包解锁花费
	COST_EQUIP_AWAKEN_PILL,					// 觉醒印使用
	COST_EQUIP_AWAKEN,						// 钻石觉醒花费
	COST_EQUIP_AWAKEN_UNLOCK_PACKAGE,		// 觉醒背包解锁花费
	COST_EQUIP_AWAKEN_SWAP,					// 觉醒属性交换花费
	COST_EQUIP_AWAKEN_UPGRADE,				//觉醒灵性升级花费
	COST_EquipRefin,						//装备精练;
	COST_EquipBreak,						//装备突破;
	COST_SHOPOBJ,							//购买道具
	COST_SNATCHPEACE,						//夺宝购买和平时间
	COST_AreanShop,							///竞技场商店;
	COST_SpiritArean,						///竞技场;
	COST_TopfightShop,						///天寒商店重置;
	COST_BraveStore_Refresh,				///勇者商店刷新
	COST_BraveStore_Buy,					///勇者商店购买
	COST_RealTime_Refresh,					///巫蛮商店刷新
	COST_RealTime_Buy,						///巫蛮商店购买
	Cost_HeroBuy,
	COST_SNATCH,							///夺宝消耗
	COST_UseItem,							///使用物品消耗
	COST_FirstCharge,						///首冲奖励;
	COST_HeroProject,						///英雄计划;
	COST_EatTired,							///吃大餐;
	COST_OpenServer,						///开服好礼;
	COST_MonthCharge,						///月充值;
	COST_DoubleDesc,						///双倍竞技;
	COST_DayCharge,							///日充值;
	COST_CostReward,						///消费奖励;
	COST_LimitPet,							///显示灵宠;
	COST_GangCreate,						///公会创建;
	COST_HallUplv,							///大厅升级;
	COST_HallConstruct,						///大厅建设;
	COST_GangBless,							///公会祈福;
	COST_GangShop,							///公会商店;
	COST_EquipCompound,						///碎片合成消耗
	COST_Challenge_Refresh,					///试炼商店刷新
	COST_Challenge_Buy,						///试炼商店购买
	COST_Gshj_CoolDown,						///古神浩劫取消冷却
	COST_Gshj_Inspire,						///古神浩劫鼓舞
	COST_Challenge,							///试炼消耗
	COST_Challenge_Fortune,					///试炼运势刷新
	COST_Challenge_Rent,					///试炼运势雇宠物
	COST_TEAMFIGHT,							///组队副本历练消耗
	COST_RealTime,							///巫蛮之战历练销号
	Cost_Resign,							///签到补签消耗
	COST_GangWar_Bidding,					///部族战争竞标消耗
	COST_CHANGENAME,						///改名消耗
	COST_FBSWEEP,							///副本扫荡消耗;
	COST_TOPFIGHT,							///决战天寒战斗消耗;
	COST_WING,								//羽化消耗;
	CSST_GangLevel,							//离开公会;
	COST_Rotate,							//转盘;
	COST_EquipAwake,						//装备冥魂（使用冥魂道具）;
	COST_PetSkill,							//宠物灵绝;
	COST_MARRY,						//姻缘系统
	COST_WEDDING,					//喜宴系统
	COST_EXCHANGE,					//兑换;
	COST_HERO,						//投资;
	COST_FISH,						//捕鱼;
	COST_MATCH,						//比赛;
	COST_MJRoom,				//麻将开包间;
	COST_MJ,						//麻将普通房;
	COST_FRUIT,						//水果机;
	COST_GOLDEN,					//炸金花普通场;
};

/**角色属性改变通知**/
enum NotifyType
{
	Set_HP=1,
	Set_MP,
	Set_FullHP,
	Set_FullMP,
};


//模块操作通用错误
enum ModuleResult
{
	E_OUTOF_SHAREMEMORY,		//共享内存不足
};


/**
 * \enum	PackageResult 
 * \brief	背包操作返回结果集
*/
enum PackageResult
{
	EPKG_SUCCESS=0,			/*!< 背包操作成功 */
	EPKG_NEEDFREEGRID,		/*!< 需要空格子 */
	EPKG_INVALIDTYPE,		/*!< 错误的物品类型 */
	EPKG_INVALIDPACKAGE,	/*!< 无效的背包 */
	EPKG_InvalidGrid,		/*!< 无效的格子号 */
	EPKG_EmptyGrid,			/*!< 空的格子 */
	EPKG_NumNotEnough,		/*!< 物品数量不足 */

	EPKG_BAGFULL,              //背包已满
	EPKG_BAGLIMIT,				///超过物品的背包最大负重值

	EPKG_StoreFull,			/*!< 仓库已满 */

	EPKG_NOSRCPACK,				///源背包不存在
	EPKG_NODSTPACK,             //目标背包不存在

	EPKG_NeedGold,
	EPKG_NeedDiamond,

	EPKG_OPERATE_FAILD,        //操作失败
	EPKG_OPERATE_FORBID,
	EPKG_Exception,			/*!< 异常情况 */

	EPKG_Tired_Max,			// 体力上限
	EPKG_Chasten_Max,		// 历练上限

};


//背包类型汇总(type_object  bagtype值)
enum PackageType
{
	enPackageTemp=-2,            //临时背包
	enPackageDressEquip=-1,		 //角色身上的装备
	enPackageAdditionEquip=1,    //角色附加装备
	enPackageRune=2,			//雕纹背包
	enPackageGoods=10,			//背包物品
	enPackageChip=11,			///碎片背包;
	enPackagestorehouse=100,    //仓库
};

//物品子类型[1,头盔;2,衣服;3,武器;4,鞋子;5,项链;6,臂环;7,戒指;8,翅膀;9,洪荒;10,黄纹;
//11,玄纹;12,天纹;13,地纹;14,雕文碎片;15,装备碎片;16,灵宠碎片;17,夺宝碎片;18,灵宠;
//19,礼包;20,钥匙;21,兑换资源;22,货币材料;23,钱币;24,巫晶;25,体力;26,历练;27,玄铁;
//28,符文经验;29,VIP经验;30,灵性;31,领悟经验;32,升灵牌;33,猎之凭证;34,三荒令;
//35,天寒战牌;36,试炼凭证;37,角色经验]
enum ObjectSubKind
{
	enkindHelment=1,
	enkindClothes,
	enkindWeapon,
	enkindShoes,
	enkindNecklace=5,
	enkindArmlet,
	enkindRing,
	enkindWing,
	enkindHongHuang,
	enkindHuangWen=10,
	enkindXuanWen,
	enkindTianWen,
	enkindDiWen,
	enkindCarvedDebris,
	enkindEquipmentDebris=15,
	enkindSpiritDebris,
	enkindIndianaDebris,
	enkindSpirit,
	enkindGiftPackage,
	enkindKey=20,
	enkindExchangeResources,
	enkindMonetaryMaterial,
	enKindGold,                  //钱币
	enkindWuJing,
	enkindManual=25,            //体力
	enkindLiLian,
	enkindXuanTie,
	enkindFuWenExperience,
	enkindVIPExperience,
	enkindSpiritual=30,
	enkindLingWuExperience,
	enkindShengLingPai,
	enkindHuntingCertificate,
	enkindSanHuanLing,
	enkindTianHangZhanPai=35,
	enkindShiLiangPingZheng,
	enKindExp,					//经验
	enKindDiamond,              //砖石
	enKindTitle,				//称号
	enKindExpStone,				//经验符石
	enKindGongxian,				//贡献
	enKindChestKey,				//宝箱令
	enKindChangeSoulStone,		//换魂石
	enKindMinhun,				//铭魂道具
	enKindLinjue,				//灵觉道具
	enKindWeddingRing,			//婚戒
	enKindWeddingCard,			//喜宴凭证
	enKindFashion,				//时装
	enKindRoomCard = 51,		//麻将 ----- 房卡
	enKindDynObject=99,			//动态物品
	enKindCount
};

//玩家属性改变   通知枚举
enum PlayDataClass
{
	notify_profession=1,			//职业
	notify_level,					//等级;
	notify_hpfull,					//满hp值
	notify_hpnow,					//hp当前值;
	notify_mpfull,					//mp最大值;
	notify_mpnow,					//mp当前值;
	notify_tiredvalue,				//疲劳值;
	notify_honourvalue,				//荣誉值;
	notify_prestige,				//声望;
	notify_fightvalue,				//战力;
	notify_gold,					//金币;
	notify_diamond,					//砖石;
	notify_exp,						//经验;
	notify_playermapid,				//地图id;
	notify_playerposx,				//位置sx;
	notify_playerposy,				//位置sy;
	notify_playervecx,				//方向cx;
	notify_playervecy,				//方向cy;
	notify_last_loginoff_time,		//上次下线时间;
	notify_accountid,				//账号id;
	notify_onlinestate,				//角色在线状态;
	notify_equipAwaken,				//觉醒相关改变
	notify_chasten,					//历练值修改
	notify_Spar_value,				//巫晶个数
	notify_Ironvalue,				//陨铁数量变化;
	notify_vipLv,					//vip等级;
	notify_roomcard,				//房卡;
};

enum BindMethod
{
	enEquipBind = 1,		/*!< 装备绑定 */
	enPickBind,			/*!< 拾取绑定 */
};



/**玩家属性枚举;*/
enum RoleAttribute
{
	///数值属性;
	RA_HP=1, ///生命值;
	RA_MP, ///魔法值;
	RA_Attack, ///攻击力;
	RA_HitRate, ///命中率;
	RA_DodgeRate, ///回避率;
	RA_BlockRate,//格挡率
	RA_BlockDamage,//格挡减伤
	RA_CritRate, ///暴击率;
	RA_CritDamage,///暴击伤害
	RA_CritResistRate,//抗暴率
	RA_CritAvoidance,//暴击免伤
	RA_DamageAvoidance,//伤害减免
	RA_FinalDamage,//最终减伤
	RA_AttackRegeHP,//普攻回血
	RA_AttackSuckHP,//普攻吸血
	RA_DamageRebound,//伤害反弹
	RA_FirewallDamage,//火墙伤害
	RA_FirewallRate,//火墙触发率
	RA_FrozenDamage,//冰冻伤害
	RA_FrozenRate,//冰冻伤害
	RA_ThunderboltDamage,//雷电伤害
	RA_ThunderboltRate,//雷电触发率
	RA_DefenseBreak,//破防值
	RA_AttackGemp,	//普攻回蓝
	RA_AttackBreakDefense,//普通破防;
	RA_DefenseBreakreBound,//回防值;
	RA_AttriCount,
};

enum VirtualPlayerID
{
	enSystemPlayer=0,		//系统角色
};

enum ServerFlag
{
	SERVER_FLAG_NEW=0,	///新服;
	SERVER_FLAG_TUIJIAN,	///推荐;
	SERVER_FLAG_NULL,		///无标志
};

enum ServerState
{
	SERVER_STATE_OK = 0,		///良好;
	SERVER_STATE_HOT,			///火爆;
	SERVER_STATE_REPAIR,		///维护;
	SERVER_STATE_WAIT,			///待开;
	SERVER_STATE_TEST,			///测试
};

enum Recover_DeleteRole_Result
{
	DELETEROLE_OPER_SUCCESS=0, //成功
	ERROR_SERVER_INIT_NOTOK=1,     //服务器数据未初始化好
	ERROR_ALREADY_DELETED=2,       //角色已经删除了
	ERROR_ROLEID_NOTEXIST=3,       //角色ID不存在
	ERROR_DELETE_ROLE_UNKNOW=4,                //未知错误
};
enum AppStoreVerifyResult
{
	ASR_SUCCESS=0,				//客户端提示成功
	ASR_HasPay=1,				//客户端不提示 直接finish
	ASR_ErrorPlayer=3,			//客户端提示非当前角色订单  请稍后
	ASR_ErrorOrder=4,			//客户端提示订单错误  请稍后
	ASR_ErrorProductID=5,		//客户端不提示 直接finish
};

enum LoadTableOperation
{
	LO_Act_Begin=0,			//活动用的枚举
	LO_Act_End=100000,		
	LO_Shop,
	LO_ActivityTime,
	LO_ChargeData,	//充值界面的数据
	LO_TreasureBox,	//宝箱重新读取概率


	LO_Center_Begin=200000,
	LO_GiftBag,		//更新动态礼包数据	 200000到300000发给中心服务器
	LO_Center_End=300000,
};
enum PlatformType
{
	PT_Android=1,
	PT_IOS=0,
};


//系统设置中cdkey使用情况 
enum SystemSet_CDkeystate
{
	SystemSet_CDkey_success,	//成功
	SystemSet_CDkey_invalError,	//无效的key
	SystemSet_CDkey_timeError,	//时间无效
	SystemSet_CDkey_usedError,	//已经被使用
	SystemSet_CDkey_areaError,	//区号限制
	SystemSet_CDkey_bagError,	//格子不够
	SystemSet_CDkey_sameError,	//已经使用过相同的key
	SystemSet_CDkey_noidError,	//没有找到奖励id
};

enum MailSource
{
	enMailGMTool,			////gm工具
	enMailCdKey,			///激活码cdkey
	enMailBlackMarket,		///黑市;
	enMailTreasureChest,	///开宝箱;
	enMailSanHuang,			// 征战三荒
	enMailGshjFirst,		//古神浩劫首杀
	enMailChallengeRent,	//试炼股宠物
	enMailGangDismiss,		//公会解散
	enMailArenaRefresh,		//竞技场刷新历史排名;
	enMailSnatch,			//被夺宝了挑衅下;
	enMailDailySignVip,			//VIP改变 每日签到奖励 补发;
	enMailSparCondegreeReturn,	//晶石竞标失败返还
	enMailArenaSpiritDayReward, //竞技场每日奖励
	enMailTopfightDayReward, //决战天寒每日奖励
	enMailTopfightWeekReward, //决战天寒每周奖励
	enMailFightAid,			//战斗援助
	enMailMarry,				//姻缘邮件
	enMailAnswer,				//论道奖励;
	enMailMatch,				//比赛场;
	enMailNone=300,
};

enum TeamOperResult
{
	enTeamNotExist=1,     //队伍不存在或者已经开始匹配或者未开始匹配
	enTeamRoleNotExist=2, //角色不在线
	enTeamRoleNotIn=3,    //角色不再队伍中
	enTeamRoleInAnother=4, //角色已经加入其他队伍
	enTeamRoleInFb=5,     //角色加入其他活动
	enTeamNotLeader=6,    //角色不是队长
	enTeamFull=7,         //队伍已满
	enTeamLeaderNotOper=8,//队长不能这样操作
	enTeamException=9,    //服务器异常
};

enum TeamType
{
	enTeamNormal=0,   //普通组队
	enTeamSanHuang=1, //三荒组队
	enTeamWuMan=2, //三荒组队
};

enum TeamStatus
{
	enTeamInIng=0,   //在队伍中
	enTeamDisMiss=1, //解散
	enTeamKickOut=2, //被踢出
	enTeamLeave=3,   //离开队伍
};

///-----------------------------------------------------------------------------------------------------------------
/**
 * \enum	战斗数据来源的枚举 
 * \brief	
*/
enum FightDataSource
{
	enFDRole=0,				/*!< 角色本身的基础属性 */
	enFDEquip,					/*装备属性*/
	enFDTitle,					/*!< 称号提升 */
	enFDRune,					/*!< 雕纹提升 */
	enFDPet,					/*!< 宠物影响角色战斗力 */
	enFDEquipAwaken,			/*!< 装备觉醒属性变化 */
	enFDEquipForge,			/*!< 装备强化属性变化 */
	enFDEquipRefin,			/*!< 装备精练属性变化 */
	enFDEquipBreak,			/*!< 装备突破属性变化 */
	enFDPetFight,			// 上阵宠物战斗力变化  空的 只是为了重计算
	enFDAstrolog,			//占星;
	enFDWing,				//羽化;
};


enum BATTLETYPE
{
	BATTLE_CITY=0,				//主城
	BATTLE_PVE_START=100,		//Pve战斗开始;
	BATTLE_FCMJ_3,				//丰城麻将3人
	BATTLE_FCMJ_4,				//丰城麻将4人
	BATTLE_HONGZHONG_2,			//红中麻将
	BATTLE_HONGZHONG,			//红中麻将
	BATTLE_XINYU_2,				//新余麻将2人
	BATTLE_XINYU_4,				//新余麻将4人
	BATTLE_YONGXIU_EASY_2,		//永修简单打法	
	BATTLE_YONGXIU_EASY,		//永修简单打法		
	BATTLE_YONGXIU_2,			//永修满带
	BATTLE_YONGXIU,				//永修满带

	BATTLE_PVP_START=200,		//pvp战斗开始;
	BATTLE_TOPFIGHT,			//巅峰对决
	BATTLE_PK_3K,				//3个老K
	
	BATTLE_FISHS=250,			//捕鱼;	
	BATTLE_GOLDEN=251,			//金花;
};

///-----------------------------------------------------------------------------------------------------------------

enum VIPACCESSTYPE
{
	enVIPACCESS_Recharge=0,		// 充值额度
	enVIPACCESS_Reward,			// 领取礼包
	enVIPACCESS_Title,			// VIP称号
	enVIPACCESS_StaminaLimit,		// 体力上限
	enVIPACCESS_Chastenlimit,	// 历练上限
	enVIPACCESS_FifthSnatch,	// 五连夺宝权限
	enVIPACCESS_OneKeySynthesis=6,	// 一键合成权限
	enVIPACCESS_OneKeyReinforce,	// 一件强化
	enVIPACCESS_BattleFBLimit,		// 战役副本上限
	enVIPACCESS_FifthSweep,			// 五次扫荡权限
	enVIPACCESS_TeamFBLimit,		// 组队副本上限
	enVIPACCESS_RealTimeBattleLimit=11,	// 实时战场上限
	enVIPACCESS_PVPReset,			// 擂台霸主充值
	enVIPACCESS_DiamondAwaken,		// 钻石觉醒次数
	enVIPACCESS_DiamondRealize,		// 钻石领悟次数
	enVIPACCESS_BlackMarketRefresh,	// 刷新黑市次数
	enVIPACCESS_GoldBagBuyLimit=16,	// 	金币袋购买数量
	enVIPACCESS_StaminaPillBuyLimit,	// 体力丹购买数量
	enVIPACCESS_ChastenPillBuyLimit,	// 历练丹购买数量
	enVIPACCESS_IronBagBuyLimit,		// 陨铁袋购买数量
	enVIPACCESS_SwapAwakenStoneBuyLimit,	//换魂石购买数量
	enVIPACCESS_ImmortalStoneBuyLimit=21,	// 升仙石购买数量
	enVIPACCESS_SilverChestBuyLimit,		//白银宝箱购买数量
	enVIPACCESS_SilverChestKeyBuyLimit,		//白银钥匙购买数量
	enVIPACCESS_GoldChestBuyLimit,			//黄金宝箱购买数量
	enVIPACCESS_GoldChestKeyBuyLimit,		//黄金钥匙
	enVIPACCESS_AnimalBoneBuyLimit=26,		//开尘兽骨购买次数
	enVIPACCESS_StarDustBuyLimit,			//星之粉尘购买次数
	enVIPACCESS_TopFightProtectTime,		//决战天寒保护次数
	enVIPACCESS_FBExpIncrease,				//副本经验增加
	enVIPACCESS_TiredRecoverLimit,			//体力恢复时间
	enVIPACCESS_ChastenRecoverLimit,		//历练恢复时间
	enVIPACCESS_END
};

// 排行榜类型
enum SORT_CRITERION 
{ 
	TOP_RANK,			//巅峰排行榜，每日赚钱
	WINNUM_RANK,		//战神排行榜，胜场
	GOLD_RANK,			//土豪排行榜，金币

	RANK_COUNT,
};

enum ActivityState
{
	Act_CanRcv=0,		///可领取;
	Act_NotRcv,			///未领取;
	Act_HadRcv,			///已领取;
};

enum ActivityEnum
{
	GM_ZERO=0,
	GB_CHARGE=1,		//充值活动
	GB_ACTIVITY=2,		//礼包活动
	ONLINE_ACTIVITY=3,	//在线活动
	OTHER_ACTIVITY=4,	//其他类


	ACT_Month=100,		//月签礼包
	ACT_Level,			//等级礼包
	ACT_OpenServer,		//开服礼包
	ACT_Online,			//在线礼包
	ACT_DigTreasure,	//熊猫挖宝
	ACT_Invest,			//投资计划
	ACT_Eat,			//吃大餐
	ACT_LimitPet,		//限时武神
	ACT_MonthCharge,	//真情回馈(月充值)
	ACT_DayCharge,		//单日累计充值(日充值)
	ACT_Expend,			//钻石消耗
	ACT_DiaTreasure,	//钻石宝箱十连抽
	ACT_DoubleCopy,		//双倍副本
	ACT_Login,			//累计登录
	ACT_FirstOpen,		//新服礼包
	ACT_DoubleArena,	//双倍竞技;
	ACT_DoubleCard,		//双卡惊喜
	ACT_TenLuck,			//十连赠礼
	ACT_Rotate,			//转盘活动;
	ACT_OSPreferential,		//开服特惠
	ACT_ChargeReward,		//充值豪礼
	ACT_FightUp=121,	//战力狂飙;

	/** 活动副本*/
	ACT_FBActivity = 500,			//	活动副本开始
	ACT_SpiritArena=510,			// 升灵竞技场  pvp ai
	ACT_Snatch=520,					// 夺宝大会		pvp	ai 抢东西
	ACT_TeamFight=530,				// 组队副本  征战三荒
	ACT_TopFightUnlock=540,				// 决战天寒解锁时间	pvp 实时
	ACT_TopFightDouble=541,			// 决战天寒双倍
	ACT_RealTime=550,				// 巫蛮之战 实时战场	多人pvp
	//ACT_TLPZUnlockNoon=551,			// 巫蛮之战 天岚壁障 中午开启	
	//ACT_TLPZUnlockMoon=552,			// 巫蛮之战 天岚壁障 晚上开启
	//ACT_WZDDUnlockNoon=553,			// 巫蛮之战 巫族大地 中午开启
	//ACT_WZDDUnlockMoon=554,			// 巫蛮之战 巫族大地 晚上开启
	//ACT_HUNDUNUnlockNoon=555,		// 混沌战场 巫族大地 晚上开启
	//ACT_HUNDUNUnlockMoon=556,		// 混沌战场 巫族大地 晚上开启
	//ACT_BOSSNUnlockNoon=557,		// 神秘遗迹 巫族大地 晚上开启
	//ACT_BOSSNUnlockMoon=558,		// 神秘遗迹 巫族大地 晚上开启
	ACT_ANSWER=559,					//	习文论道;
	ACT_Challenge=560,				// 道海试炼 1v10 pvp ai
	ACT_GangWar_Fight=571,			// 部族战争 战斗
	ACT_GangWar_Bid=572,			// 部族战争 竞标
	ACT_GSHJ_Noon=580,				// 古神浩劫 中午时间
	ACT_GSHJ_After=581,				// 古神浩劫 下午时间
	ACT_GSHJ_Moon=582,				// 古神浩劫 晚上时间
	



};
/**********************************其他运营活动枚举结束***********************************/

enum AcitivityEver
{
	AE_EverActivity=0,		//永久活动
	AE_DaliyActivity=1,		//每天某个时段活动
	AE_WeeklyActivity=2,	//每周某个时段活动
	AE_AddedActivity=3,		//加开的活动,即一次性的
};

enum ActivityType
{
	AT_OtherActivity=0,		//运营活动 福利列表
	AT_LimitActivity=1,		//缤纷礼包
	AT_WonderfulActivity=2,	//精彩活动
	AT_FBActivity=5,		///副本活动;
};

enum ArenaVPState
{
	RewardArena_Minus=-1,		///免费体力次数 -1;
	RewardArena_Add=1,			///免费体力次数 +1;
};

///-----------------------------------------------------------------------------------------------------------------
///帮派职位;
enum GangJob
{
	GJ_None = -1,
	GJ_Leader = 0,		///会长;
	GJ_AgentLeader,		///代理族长;
	GJ_ViceLeader,		///副会长;(长老)
	GJ_Elite,			///精英;
	GJ_Normal,			///普通会员;
	GJ_Count,
};

enum  GangModuleID
{
	GANG_Bless=1,///帮派祈福
	GANG_LifeTree=2,///帮派生命树
	GANG_Boss=3,        ///帮派boss
	GANG_Battle=4,   ///帮派战
	GANG_Default=10,///默认
};

///-----------------------------------------------------------------------------------------------------------------
enum Wonderful_Result
{
	WonderfulR_Success = 1,		///成功;
	WonderfulR_Error=2,			///非法请求
	WonderfulR_Bagfull=3,		///背包已满
	WonderfulR_SignHad=4,		///签到奖励已经领取;
	WonderfulR_Gearfull=5,		///英雄计划已经领取到最大档位了;
	WonderfulR_LessLevel=6,		///英雄计划等级不足;
	WonderfulR_HadHero=7,		///英雄计划已购买;
	WonderfulR_LessDiamond=8,	///晶石不足;
	WonderfulR_SevenHad=9,		///已领取当次七天惊喜奖励;
	WonderfulR_NotGiftbag=10,	///礼包不存在;
	WonderfulR_NotTried=11,		///体力不可领取;
	WonderfulR_NoTimes=12,		///补签次数不足
	WonderfulR_NeedtResign=13,	///不需要在补签了
	WonderfulR_NoSet=14,		///没有设置奖励数据
	WonderfulR_NoTime=15,		///时间未到
	WonderfulR_HasGet=16,		///已经领取了该奖励
	WonderfulR_CantGet=17,		///不可领取
	WonderfulR_VipLess=18,		///vip等级不足;
	WonderfulR_LastNum,			//次数不足;
};

enum Wonderful_State
{
	WonderfulState_NotAch=0,	///不可领取;
	WonderfulState_CanAch,		///可领取;
	WonderfulState_HadAch,		///已领取;
	WonderfulState_Close,		///已关闭;
	WonderfulState_NotOpen,		///未开启;
};


enum Op_Event_Log
{
	// loginserver;
	OEL_ClientFirstOpenStart = 1,	// 第一次客户端初次打开;
	OEL_ClientFirstOpenEnd,		// 第一次客户端打开完成;
	OEL_ResouceDownloadBegin,	// 第一次资源下载开始;
	OEL_ResouceDownloadEnd,		// 第一次资源下载完成;
	OEL_Weixinlog = 5,		// 第一次点击微信登陆;
	OEL_Weixinconfirm,		// 第一次点击微信确认登陆;
	OEL_Entergame,			// 第一次进入游戏界面;	
	OEL_Openroom,			//点击创建房间;
	OEL_Enterroom,			//点击进入房间;
	OEL_Enterfirst,			// 第一次进入第一局;

};

//服务器控制开关对应枚举(表s_type_activity_switch);
enum FunctionEnum
{
	FI_BEGIN=1,
	FI_FirstRecharge = FI_BEGIN,// 首充
	FI_EnablePayment,			// 支付
	FI_LoginReward,				// 登陆豪礼 
	FI_Swapcode,				// 礼包兑换
	FI_END,
};

// 设置枚举
enum PushSwitch 
{
	PS_PhysicalMax = 1,			// 体力值回复满	2^0
	PS_ChastenMax = 2,			// 历练值回复满
	PS_EatFood = 4,				// 美食天下通知
	PS_GSHJ = 8,				// 古神浩劫开启
	PS_WMZZ = 16,				// 巫蛮之战开启
	PS_TopFight = 32,			// 决战天寒开启
	PS_GangFight = 64,			// 部落战争开启	2^6

	PS_FriendApply = 32768,		// 好友申请		2^15
	PS_GangJoin = 65535,		// 加入部族
	PS_GangApply = 131072,		// 部族申请
	PS_GangPosition = 262144,	// 部族职位变动
	PS_SnatchNotify = 524288,	// 秘宝之争
	PS_TeamInvite = 1048576,	// 组队邀请		2^20

};

enum BuffWarBuffId 
{
	BUFFWAR_BUFFID = 6080103,			// buff id 

};



enum MaJiangType
{
	MJ_1_WAN,
	MJ_2_WAN,
	MJ_3_WAN,
	MJ_4_WAN,
	MJ_5_WAN,
	MJ_6_WAN,
	MJ_7_WAN,
	MJ_8_WAN,
	MJ_9_WAN,
	MJ_1_TIAO,
	MJ_2_TIAO,
	MJ_3_TIAO,
	MJ_4_TIAO,
	MJ_5_TIAO,
	MJ_6_TIAO,
	MJ_7_TIAO,
	MJ_8_TIAO,
	MJ_9_TIAO,
	MJ_1_TONG,
	MJ_2_TONG,
	MJ_3_TONG,
	MJ_4_TONG,
	MJ_5_TONG,
	MJ_6_TONG,
	MJ_7_TONG,
	MJ_8_TONG,
	MJ_9_TONG,
	MJ_DONG,
	MJ_NAN,
	MJ_XI,
	MJ_BEI,
	MJ_ZHONG,
	MJ_FA,
	MJ_BAI,
	MJ_NUM,

	
	PK_3_SPADE=100,
	PK_4_SPADE,
	PK_5_SPADE,
	PK_6_SPADE,
	PK_7_SPADE,
	PK_8_SPADE,
	PK_9_SPADE,
	PK_10_SPADE,
	PK_J_SPADE,
	PK_Q_SPADE,
	PK_K_SPADE,
	PK_1_SPADE,
	PK_2_SPADE,
	PK_3_HEART,
	PK_4_HEART,
	PK_5_HEART,
	PK_6_HEART,
	PK_7_HEART,
	PK_8_HEART,
	PK_9_HEART,
	PK_10_HEART,
	PK_J_HEART,
	PK_Q_HEART,
	PK_K_HEART,
	PK_1_HEART,
	PK_2_HEART,
	PK_3_CLUB,
	PK_4_CLUB,
	PK_5_CLUB,
	PK_6_CLUB,
	PK_7_CLUB,
	PK_8_CLUB,
	PK_9_CLUB,
	PK_10_CLUB,
	PK_J_CLUB,
	PK_Q_CLUB,
	PK_K_CLUB,
	PK_1_CLUB,
	PK_2_CLUB,
	PK_3_DIAMOND,
	PK_4_DIAMOND,
	PK_5_DIAMOND,
	PK_6_DIAMOND,
	PK_7_DIAMOND,
	PK_8_DIAMOND,
	PK_9_DIAMOND,
	PK_10_DIAMOND,
	PK_J_DIAMOND,
	PK_Q_DIAMOND,
	PK_K_DIAMOND,
	PK_1_DIAMOND,
	PK_2_DIAMOND,
	PK_JOKER,
	PK_BIGJOKER,
	PK_NUM,
};

enum MaJiangOperatorType
{
	MJOT_BEGIN,	//开始
	MJOT_GetCard,//抓牌
	MJOT_BuCard,//补牌
	MJOT_SendCard,//出牌
	MJOT_Tan,	//摊
	MJOT_CHI,	//吃
	MJOT_SAO,	//勺
	MJOT_PENG,	//碰
	MJOT_GANG,	//杠
	MJOT_AN_GANG,//暗杠
	MJOT_BuGang,//补杠
	MJOT_GUO,	//过
	MJOT_HU,	//胡
	MJOT_DingHU,//定胡;

	PKOT_Dan=100,//单张
	PKOT_Dui,	 //对子
	PKOT_SUN,	 //顺子
	PKOT_LianDui,//连对
	PKOT_3dai,	 //3带
	PKOT_Liandai,//连带
	PKOT_BOOM,	 //炸弹
};

enum MJPlayWay///麻将内玩法
{
	PW_Begin,
	//红中麻将
	PW_7DUI,		//可胡7对
	PW_1MA,			//一码全中
	PW_2MA,			//扎2码
	PW_4MA,			//扎4码
	PW_6MA,			//扎6码
	//新余麻将
	PW_LONG,		//一条龙
	PW_16BEI,		//16倍
	PW_32BEI,		//32倍
	PW_64BEI,		//64倍
	PW_NOBEI,		//不封顶
	//永修麻将
	PW_Chi,			//可吃
	PW_DanDiao,		//可单钓简易玩法
	PW_FangPao,		//可放炮

	//南昌麻将
	PW_WXJ,			//无下精;
	PW_HTSXJ,		//上下精;
	PW_MDL,			//埋地雷;
	
	PW_TYSG,		//同一首歌;
	PW_HTYX,		//回头一笑;

	PW_End,
};
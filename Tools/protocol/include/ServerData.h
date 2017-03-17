/************************************************************
服务器和客户端间共享的数据结构定义 
**************************************************************/
#pragma once
#include <math.h>



#define   Version "0.0.1 CN.IO.91"        

/*************CustParament参数名宏定义集合;**************/
#define VN_GameServerIp xstring("gameserverip")		///标识逻辑服务器ip的参数;
#define VN_ClientIp	xstring("userip")			///标识客户端ip的参数;
#define VN_RoleId xstring("roleId")
#define VN_CommuniId xstring("CommuniId")		///与网关服务器的临时通信id;
#define VN_OffLineRequestFlag "OffLineRequestFlag" ///离线信息请求flag
#define SERVERDATA "serverData.bin"
/*************CustParament参数名宏定义集合结束;**************/

///共享数据设置函数定义;
#define SET_VALUE(type,field,target)\
	void set_##field##(type val)\
{\
	lock();\
	target.field = val;\
	unlock();\
};


///共享数据字符串设置函数定义;
#define SET_STR(field,target)\
	void set_##field##(const xstring & str)\
{\
	lock();\
	strcpy(target.field,str.c_str());\
	unlock();\
};

#define GET_VALUE(type,field,src)\
	type get_##field##(){\
		return src.field;\
	};
#define GetModule(type,player,name) (static_cast<type*>(player->getModuleByName(name)))
#define GetFactory(type,name) (static_cast<type*>(ModuleManager::getSingleton().getFactoryByType(name)));

typedef std::vector<LONG64> GmidCollect;

enum CodeSegmentEnum
{
	CE_MessageBegin=0,

	CE_OnTimerBegin=10000000,  //onTimer的枚举放这个后面
	CE_GameDataBaseApp,
	CE_gameServerApp,
	CE_Log_Connect_Game,
	CE_ActivityTimeManager,
	CE_ChatManager,
	CE_FBModule,
	CE_GMToolManager,
	CE_LoginQueen_GameServer,
	CE_LoginQueen_GateServer,
	CE_PlayerLoginQueue,
	CE_PlayerManager,
	CE_PlayerMoudle,
	CE_Gate_Connect_Center,
	CE_CenterServerInfo_HttpServer,
	CE_TopFightManager,
	CE_Game_Connect_DB,		//Game主动连DB
	CE_MessageStatistics,
	CE_NetListenBase_DataBaseServer,
	CE_Scene_Connect_Game,	//sceneServer主动连gameserver
	CE_Login_Connect_Log,	//login连接log
	CE_Http_Connect_Game,	//Http主动连gameserver
	CE_xWatchDogConfig,
	CE_myWatchDog,
	CE_InstanceServer,
	CE_MessageStatistics_InstanceServer,
	CE_registerServerManager,
	CE_Gate_Connect_Login,		//gateserver连接loginserver
	CE_RetransmissionManager,
	CE_SceneServer,
	CE_GANGMANAGER,			///帮派管理
	CE_WONDERFULTIME,		///精彩活动;
	CE_PLAYERDELETE,		///定时删除角色
	CE_PAIHANGBANG,			///定时1小时修改排行榜
	CE_MAIL,				///邮件;
	CE_TEAM_MATCH,			///组队匹配
	CT_SPIRIT_AREAN,		///升灵竞技场;
	CE_Topfight,			///决战天寒;
	CE_Login_Connect_Account,	//login服务器连接account
	CE_CSTEAM_MATCH,		///中心服务器 组队匹配
	CE_CENTER_KICKOUT,		///中心服务器踢人

	CE_TIRED_RECOVER,		// 体力恢复
	CE_CHASTEN_RECOVER,		// 历练恢复
	CE_Scene_Connect_Gate,	//Scene服务器连接Gate
	CE_Game_Connect_Gate,	//Game服务器连接Gate
	CE_Instance_Connect_Game,	//Instance服务器连接Game
	CE_Instance_Connect_Gate,	//Instance服务器连接Gate
	CE_Center_Connect_Instance,	//Center服务器连接Instance
	CE_LogInsert,				//日志插入定时
	CE_AnswerManager,			//论道匹配;
	CE_FISH_Common,				//捕鱼common;
	CE_GOLDEN_MATCH_ROBOT,		//金花匹配;
	CE_MATCH,					//比赛场;
	CE_MESS,					//麻将包间记录;

	CE_Begin=20000000,  //代码段枚举加在下面
	CE_GMTool_GetActivityList,
	CE_GMTool_EASYDOG,
};

#define ServerLength   20  ///服务区名字长度
#define IPaddressLength  50///定义ip地址需要少空间;
#define MacLength	30
#define	IdfaLength	64
#define UdidLength	64
#define NetWorkTypeLen	20
#define ActivateKeyLength 21
#define UserPwdLength     20///密码长度;
#define UserNameLength   255//用户名长度;
#define IPPwdLength     IPaddressLength
#define RandStrLength          16      ///随机产生字符串的长度
#define UserEmailLength   30  
#define ChatMaxLength (200)	///聊天最大字符长度;
#define TaskNameLength   40   //20
#define TaskDiscribeLength 4096   //120
#define ALERM_RECT	20///怪物预警范围
#define PETGRIDNUM 24   ///宠物背包格子数量
#define PetItemDescribeLength	200

#define MailSubjectLength (80)	///邮件主题的最大字符数;
#define MailWordLength (900)	///邮件内容的最大字符数;
#define ItemGmidVec (50)		///道具gmid集合长度;

#define RunicGridVolume (999)	///符文格子容量;
#define RunicBagGridCount (12)	///同一种族同一品级的符文背包格子数量;
#define MaxRunicEquipPart (4)	///最大符文格位;
#define MaxRunicQueueCount (1)	///最大符文碎片强化队列数;

#define ComposeNeedCount (3)	//材料升级所需要的数目;
#define TopFightRankShowNum	100
///任务奖励物品最大种类数
#define TaskRewardObjectNumber	10
///任务完成条件(打怪或收集)种类上线
#define TaskConditionNumber			10
#define MAX_HURTER				4
#define TaskObjectBaseID		1404720000

//20130424,yuyi,object
#define ObjectNameLength		40
#define KindNameLength			20
#define ObjectDescribeLength	200
//end
#define MaxNameLength		20
#define MaxDescrLength		255
#define VIPVendorRecordTime 40	//vip售货机记录中时间字符串长度

/*********************信息源模块************/
#define MaxContentRecord 30			//最大记录数
#define MessageContentLength 120	//信息源中提示内容最大长度
#define RecordTimeLength 40			//时间字符串长度
/*********************信息源模块结束************/
//最高等级
#define MAX_LEVEL		80
//VIP 0 的默认疲劳值上限
#define MAX_TIREVALUE	100
//疲劳值增长幅度
#define TIREDVALUEUP_VAL		1	//每次增长1点
//疲劳值增长间隔时间
//历练值增长间隔时间
#ifdef _DEBUG
#define MAX_TIRED_RECOVER_TIME		(2*60)
#define MAX_CHASTEN_RECOVER_TIME	(2*60)
#else
#define MAX_TIRED_RECOVER_TIME		(8*60)
#define MAX_CHASTEN_RECOVER_TIME	(8*60)
#endif

#define MIN_RECOVER_TIME			(1*60)


//VIP 0 的默认历练值上限
#define MAX_CHASTENVALUE	50
//历练值增长幅度
#define CHASTENVALUEUP_VAL		1		//每次增长1点

///转职扣钱
#define PROFESSIONCHANGECOST	20000

#define FBPlayerMax			4//单个副本玩家组队上限
#define FBPlayerFull			100//副本最高容纳人数
#define FBKickOutTimeOut		10//被T了之后冷却时间

#define FB_DEADTIME				60

#define OFFLINE_HANG_TIME		60*60*24	//客户端掉线后保持时间

#define TT_RewardDay				3	///天梯奖励隔天数
#define TT_LISTPEOPLE				4
#define TT_REPORT_Max			5	//天梯战报保留数
#define TT_DefChallengeTime		10//天梯默认剩余挑战次数
//#define TT_MAXBuyClgTime			3///最大购买挑战次数
//#define TT_ONCEBUYTIME			10//买一次增加的挑战次数
#define TT_CDTIME						10*60//CD time len
#define TT_MAXChallengeTime		5*60

#define BuffNameLength 30		//buff名字长度,625,samuel 
#define BuffDescribeLength 300	//buff描述长度 

#define MAX_UNIX_TIMESTAMP 2147483647 //最大UNIX时间戳
/*********************好友系统************/
#define VN_FriendSendId xstring("sendId")
#define MAX_FRIEND_NAME_NUM 10 
#define MAX_FRIEND_REFRESH_TIME 60 //列表刷新时间为60秒
/*******************好友系统结束*********/
#define TT_MAXChallengeTime		5*60
#define PlayerMaxTaskNumber 20



#define GANG_LOG_LENGTH	(100)		///公会日志长度;

#define SECPRO_PRIZE						100000//学习副职业价格

#define AUCTION_GOLD -1			//拍卖中拍卖金币的typeid

#define FIGHT_RANDMAX		10000

#define PVPBEGINFBID		10000

#define ACTIVITY_MAXREC		20

#define ACTIVITY_CARDSUM		3
#define ACTIVITY_PACKAGESUM	3

#define DELFWALKSPEED		4.0f	///默认行走速度

#define GANG_FIGHT_APPLY_DAY	3
#define GANGFIGHT_APPLY_TIME	GANG_FIGHT_APPLY_DAY*24*60*60/// 报名时长,3天
#define GANGFIGHT_TIME				2*60*60/// 比赛时间
#define GANGFIGHT_MAXRACE		4///最多4场比赛

#define GANG_APPLY_PRISE				50000


#define TOPFIGHT_MAX_MATCH_TIME		180

#define TOPFIGHT_FIRSTWIN_TIME			22*60*60//首胜间隔时间,单位秒

#define BOSSFIGHT_LAST		10

#define FRIENDBOX_NUM (99) //好友列表上限
#define BLACKLIST_NUM (99) //黑名单列表上限
#define ADDFRIEND_NUM (99) //附近玩家列表上限

#define MAX_SYSTEM		100///可解锁系统总数
#define MAX_FBUNLOCK	67
#define BattleResultByte					6
#define MAX_CONSUMABLE_HOTKEY 6	///消耗品快捷键键位

#define  LogMessageLength 255

///玩家最大宠物数量
#define PLAYER_MAX_PET_NUM 10

///玩家最大宠物技能数量
#define PLAYER_MAX_PETSKILL_NUM 10

//材料升级;
#define MaterialsInfoNull   0
#define MaterialsNum		2

//坐骑
#define NoMountid	0
#define RideMount	0
#define NoRideMount 1

#define RideSuccess 0
#define LowLevel	1
#define AnotherProfession 2
#define Zero		0
//成就;
#define LimitSucType	1
//袖珍罐
#define HighOpenTank	1 
#define DoubleOpenTank	9
#define MaxUseTimes		30		//开罐的最大次数;

//翻牌18
#define CARDSWITCH_TIMEOUT			60
#define CARDSWITCH_AUTO				8
#define CARDSWITCH_DELAY			1

///一天的秒数
#define ONEDAY_SEC		86400
#define ONEHOUR_SEC		3600
#define ONEMINUTE_SCE	60
#define ONEHOUR_MINUTE	60		//一小时多少分钟

//心跳包间隔
#define HeartBeatTime	300

#define BATTLE_STATIC_OBJECT_BEGIN	1600001
#define BATTLE_STATIC_OBJECT_END	1899999

#define MAX_NEWGUIDELINES_STEP		100


#define SHOP_EXCHANGEOBJECTSUM		3
#define PercentMoneyTypeId			1308530002
#define RMB_TO_MONEY_RATE			10			//人民币兑换游戏货币汇率
#define RANDOM_PLAYERLIST_NUM		10			//随机可添加好友数量

#define EMPTYTIME "0000-00-00 00:00:00"


#define FIGHT3V3_RELIVEFEE	5
#define BOSSFIGHT_RELIVEFEE	10
#define NORMALFB_RELIVEFEE  10
#define LOVERFIGHT_RELIVEFEE 10
#define QUNPI_RELIVEFEE 20

#define GANG_NAME_LENGTH 30		//公会名长度

#define  Gang_Notice_Length	1000
#define ResetClock		3

#define RiseDiscribeLength 200	///升阶描述的长度;
#define ChannelAppstore		xstring("appstore")
#define ChannelTWGooglePlay	xstring("twgoogleplay")
#define  ChannelTWAppstore  xstring("twappstore")
#define ChannelJoybomb	xstring("joybomb")
#define ChannelSOHA	xstring("soha")
#define RiseDiscribeLength 200	///升阶描述的长度;
#define UNLOCK_DELIVFB_LV	60	///解锁魔王副本等级;
#define TotalProbablity		10000 ///礼包随机的总共概率
#define  KAKAOCHANEL    "kakao"

//动态礼包专用的objectid 1009900000-1009999999 objectType:99 bagtype:10
#define DYNOBJECTID_BEGIN 1009900000	//动态礼包id的最大值
#define DYNOBJECTID_END 1009999999	//动态礼包id的最小值

#define  ReleaseShareMemory(a) if((a) != NULL) {(a)->release(); (a)=NULL;}

#define GM_ACCOUNTSHARE_TYPE "@@roomcard 3"//分享发放奖励
#define GM_ACCOUNTSHARE_CONNECT 99
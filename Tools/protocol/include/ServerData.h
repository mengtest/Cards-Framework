/************************************************************
�������Ϳͻ��˼乲������ݽṹ���� 
**************************************************************/
#pragma once
#include <math.h>



#define   Version "0.0.1 CN.IO.91"        

/*************CustParament�������궨�弯��;**************/
#define VN_GameServerIp xstring("gameserverip")		///��ʶ�߼�������ip�Ĳ���;
#define VN_ClientIp	xstring("userip")			///��ʶ�ͻ���ip�Ĳ���;
#define VN_RoleId xstring("roleId")
#define VN_CommuniId xstring("CommuniId")		///�����ط���������ʱͨ��id;
#define VN_OffLineRequestFlag "OffLineRequestFlag" ///������Ϣ����flag
#define SERVERDATA "serverData.bin"
/*************CustParament�������궨�弯�Ͻ���;**************/

///�����������ú�������;
#define SET_VALUE(type,field,target)\
	void set_##field##(type val)\
{\
	lock();\
	target.field = val;\
	unlock();\
};


///���������ַ������ú�������;
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

	CE_OnTimerBegin=10000000,  //onTimer��ö�ٷ��������
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
	CE_Game_Connect_DB,		//Game������DB
	CE_MessageStatistics,
	CE_NetListenBase_DataBaseServer,
	CE_Scene_Connect_Game,	//sceneServer������gameserver
	CE_Login_Connect_Log,	//login����log
	CE_Http_Connect_Game,	//Http������gameserver
	CE_xWatchDogConfig,
	CE_myWatchDog,
	CE_InstanceServer,
	CE_MessageStatistics_InstanceServer,
	CE_registerServerManager,
	CE_Gate_Connect_Login,		//gateserver����loginserver
	CE_RetransmissionManager,
	CE_SceneServer,
	CE_GANGMANAGER,			///���ɹ���
	CE_WONDERFULTIME,		///���ʻ;
	CE_PLAYERDELETE,		///��ʱɾ����ɫ
	CE_PAIHANGBANG,			///��ʱ1Сʱ�޸����а�
	CE_MAIL,				///�ʼ�;
	CE_TEAM_MATCH,			///���ƥ��
	CT_SPIRIT_AREAN,		///���龺����;
	CE_Topfight,			///��ս�캮;
	CE_Login_Connect_Account,	//login����������account
	CE_CSTEAM_MATCH,		///���ķ����� ���ƥ��
	CE_CENTER_KICKOUT,		///���ķ���������

	CE_TIRED_RECOVER,		// �����ָ�
	CE_CHASTEN_RECOVER,		// �����ָ�
	CE_Scene_Connect_Gate,	//Scene����������Gate
	CE_Game_Connect_Gate,	//Game����������Gate
	CE_Instance_Connect_Game,	//Instance����������Game
	CE_Instance_Connect_Gate,	//Instance����������Gate
	CE_Center_Connect_Instance,	//Center����������Instance
	CE_LogInsert,				//��־���붨ʱ
	CE_AnswerManager,			//�۵�ƥ��;
	CE_FISH_Common,				//����common;
	CE_GOLDEN_MATCH_ROBOT,		//��ƥ��;
	CE_MATCH,					//������;
	CE_MESS,					//�齫�����¼;

	CE_Begin=20000000,  //�����ö�ټ�������
	CE_GMTool_GetActivityList,
	CE_GMTool_EASYDOG,
};

#define ServerLength   20  ///���������ֳ���
#define IPaddressLength  50///����ip��ַ��Ҫ�ٿռ�;
#define MacLength	30
#define	IdfaLength	64
#define UdidLength	64
#define NetWorkTypeLen	20
#define ActivateKeyLength 21
#define UserPwdLength     20///���볤��;
#define UserNameLength   255//�û�������;
#define IPPwdLength     IPaddressLength
#define RandStrLength          16      ///��������ַ����ĳ���
#define UserEmailLength   30  
#define ChatMaxLength (200)	///��������ַ�����;
#define TaskNameLength   40   //20
#define TaskDiscribeLength 4096   //120
#define ALERM_RECT	20///����Ԥ����Χ
#define PETGRIDNUM 24   ///���ﱳ����������
#define PetItemDescribeLength	200

#define MailSubjectLength (80)	///�ʼ����������ַ���;
#define MailWordLength (900)	///�ʼ����ݵ�����ַ���;
#define ItemGmidVec (50)		///����gmid���ϳ���;

#define RunicGridVolume (999)	///���ĸ�������;
#define RunicBagGridCount (12)	///ͬһ����ͬһƷ���ķ��ı�����������;
#define MaxRunicEquipPart (4)	///�����ĸ�λ;
#define MaxRunicQueueCount (1)	///��������Ƭǿ��������;

#define ComposeNeedCount (3)	//������������Ҫ����Ŀ;
#define TopFightRankShowNum	100
///��������Ʒ���������
#define TaskRewardObjectNumber	10
///�����������(��ֻ��ռ�)��������
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
#define VIPVendorRecordTime 40	//vip�ۻ�����¼��ʱ���ַ�������

/*********************��ϢԴģ��************/
#define MaxContentRecord 30			//����¼��
#define MessageContentLength 120	//��ϢԴ����ʾ������󳤶�
#define RecordTimeLength 40			//ʱ���ַ�������
/*********************��ϢԴģ�����************/
//��ߵȼ�
#define MAX_LEVEL		80
//VIP 0 ��Ĭ��ƣ��ֵ����
#define MAX_TIREVALUE	100
//ƣ��ֵ��������
#define TIREDVALUEUP_VAL		1	//ÿ������1��
//ƣ��ֵ�������ʱ��
//����ֵ�������ʱ��
#ifdef _DEBUG
#define MAX_TIRED_RECOVER_TIME		(2*60)
#define MAX_CHASTEN_RECOVER_TIME	(2*60)
#else
#define MAX_TIRED_RECOVER_TIME		(8*60)
#define MAX_CHASTEN_RECOVER_TIME	(8*60)
#endif

#define MIN_RECOVER_TIME			(1*60)


//VIP 0 ��Ĭ������ֵ����
#define MAX_CHASTENVALUE	50
//����ֵ��������
#define CHASTENVALUEUP_VAL		1		//ÿ������1��

///תְ��Ǯ
#define PROFESSIONCHANGECOST	20000

#define FBPlayerMax			4//������������������
#define FBPlayerFull			100//���������������
#define FBKickOutTimeOut		10//��T��֮����ȴʱ��

#define FB_DEADTIME				60

#define OFFLINE_HANG_TIME		60*60*24	//�ͻ��˵��ߺ󱣳�ʱ��

#define TT_RewardDay				3	///���ݽ���������
#define TT_LISTPEOPLE				4
#define TT_REPORT_Max			5	//����ս��������
#define TT_DefChallengeTime		10//����Ĭ��ʣ����ս����
//#define TT_MAXBuyClgTime			3///�������ս����
//#define TT_ONCEBUYTIME			10//��һ�����ӵ���ս����
#define TT_CDTIME						10*60//CD time len
#define TT_MAXChallengeTime		5*60

#define BuffNameLength 30		//buff���ֳ���,625,samuel 
#define BuffDescribeLength 300	//buff�������� 

#define MAX_UNIX_TIMESTAMP 2147483647 //���UNIXʱ���
/*********************����ϵͳ************/
#define VN_FriendSendId xstring("sendId")
#define MAX_FRIEND_NAME_NUM 10 
#define MAX_FRIEND_REFRESH_TIME 60 //�б�ˢ��ʱ��Ϊ60��
/*******************����ϵͳ����*********/
#define TT_MAXChallengeTime		5*60
#define PlayerMaxTaskNumber 20



#define GANG_LOG_LENGTH	(100)		///������־����;

#define SECPRO_PRIZE						100000//ѧϰ��ְҵ�۸�

#define AUCTION_GOLD -1			//������������ҵ�typeid

#define FIGHT_RANDMAX		10000

#define PVPBEGINFBID		10000

#define ACTIVITY_MAXREC		20

#define ACTIVITY_CARDSUM		3
#define ACTIVITY_PACKAGESUM	3

#define DELFWALKSPEED		4.0f	///Ĭ�������ٶ�

#define GANG_FIGHT_APPLY_DAY	3
#define GANGFIGHT_APPLY_TIME	GANG_FIGHT_APPLY_DAY*24*60*60/// ����ʱ��,3��
#define GANGFIGHT_TIME				2*60*60/// ����ʱ��
#define GANGFIGHT_MAXRACE		4///���4������

#define GANG_APPLY_PRISE				50000


#define TOPFIGHT_MAX_MATCH_TIME		180

#define TOPFIGHT_FIRSTWIN_TIME			22*60*60//��ʤ���ʱ��,��λ��

#define BOSSFIGHT_LAST		10

#define FRIENDBOX_NUM (99) //�����б�����
#define BLACKLIST_NUM (99) //�������б�����
#define ADDFRIEND_NUM (99) //��������б�����

#define MAX_SYSTEM		100///�ɽ���ϵͳ����
#define MAX_FBUNLOCK	67
#define BattleResultByte					6
#define MAX_CONSUMABLE_HOTKEY 6	///����Ʒ��ݼ���λ

#define  LogMessageLength 255

///�������������
#define PLAYER_MAX_PET_NUM 10

///��������＼������
#define PLAYER_MAX_PETSKILL_NUM 10

//��������;
#define MaterialsInfoNull   0
#define MaterialsNum		2

//����
#define NoMountid	0
#define RideMount	0
#define NoRideMount 1

#define RideSuccess 0
#define LowLevel	1
#define AnotherProfession 2
#define Zero		0
//�ɾ�;
#define LimitSucType	1
//�����
#define HighOpenTank	1 
#define DoubleOpenTank	9
#define MaxUseTimes		30		//���޵�������;

//����18
#define CARDSWITCH_TIMEOUT			60
#define CARDSWITCH_AUTO				8
#define CARDSWITCH_DELAY			1

///һ�������
#define ONEDAY_SEC		86400
#define ONEHOUR_SEC		3600
#define ONEMINUTE_SCE	60
#define ONEHOUR_MINUTE	60		//һСʱ���ٷ���

//���������
#define HeartBeatTime	300

#define BATTLE_STATIC_OBJECT_BEGIN	1600001
#define BATTLE_STATIC_OBJECT_END	1899999

#define MAX_NEWGUIDELINES_STEP		100


#define SHOP_EXCHANGEOBJECTSUM		3
#define PercentMoneyTypeId			1308530002
#define RMB_TO_MONEY_RATE			10			//����Ҷһ���Ϸ���һ���
#define RANDOM_PLAYERLIST_NUM		10			//�������Ӻ�������

#define EMPTYTIME "0000-00-00 00:00:00"


#define FIGHT3V3_RELIVEFEE	5
#define BOSSFIGHT_RELIVEFEE	10
#define NORMALFB_RELIVEFEE  10
#define LOVERFIGHT_RELIVEFEE 10
#define QUNPI_RELIVEFEE 20

#define GANG_NAME_LENGTH 30		//����������

#define  Gang_Notice_Length	1000
#define ResetClock		3

#define RiseDiscribeLength 200	///���������ĳ���;
#define ChannelAppstore		xstring("appstore")
#define ChannelTWGooglePlay	xstring("twgoogleplay")
#define  ChannelTWAppstore  xstring("twappstore")
#define ChannelJoybomb	xstring("joybomb")
#define ChannelSOHA	xstring("soha")
#define RiseDiscribeLength 200	///���������ĳ���;
#define UNLOCK_DELIVFB_LV	60	///����ħ�������ȼ�;
#define TotalProbablity		10000 ///���������ܹ�����
#define  KAKAOCHANEL    "kakao"

//��̬���ר�õ�objectid 1009900000-1009999999 objectType:99 bagtype:10
#define DYNOBJECTID_BEGIN 1009900000	//��̬���id�����ֵ
#define DYNOBJECTID_END 1009999999	//��̬���id����Сֵ

#define  ReleaseShareMemory(a) if((a) != NULL) {(a)->release(); (a)=NULL;}

#define GM_ACCOUNTSHARE_TYPE "@@roomcard 3"//�����Ž���
#define GM_ACCOUNTSHARE_CONNECT 99
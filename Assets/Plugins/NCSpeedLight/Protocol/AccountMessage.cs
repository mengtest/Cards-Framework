/*----------------------------------------------------------------
            // Copyright © 2014-2016 Air2000
            // 
            // FileName: AccountMessage.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  10/10 星期一 20:24:45
            // Modify History:
            //
//----------------------------------------------------------------*/

//排行榜类型;
enum SORT_CRITERION
{
    EXP_RANK,           //经验;
    WINNUM_RANK,        //战神排行榜，胜场;
    GOLD_RANK,          //土豪排行榜，金币;
    RANK_COUNT,
};

//物品类型;
enum OBJECY_TYPE
{
    //物品类型[10武器，11头盔，12时装，13翅膀，14金币,15技能,16经验]
    OBJECT_SELF = 9,
    OBJTY_WEAPON = 10,//武器;
    OBJTY_HELMET,//头盔;
    OBJTY_FASHION,//时装;
    OBJTY_WING,//翅膀;
    OBJTY_GOLD,//金币;
    OBJTY_SKILL,//技能;
    OBJTY_EXP,//经验;
};

enum LOGIN_ERROR
{
    LOGIN_SUCCESS = 1,//1成功;
    LOGIN_EXIST,//2帐号已经存在;
    LOGIN_CHARACTER_ERROR,//3帐号含有特殊字符;
    LOGIN_PWD_ERROR,//4密码错误;
    LOGIN_LOGIC_ERROR,//5服务器错误;
};
//阵营;
enum CAMP_TYPE
{
    CAMP_NULL,//没有，空;
    CAMP_RED,
    CAMP_BLUE,
    CAMP_MIDDLE,//中立;
    CAMP_MONSTER,//怪物;
    CAMP_BOX,//盒子，箱子，可以摧毁的物体;
};
//穿着 bind;
enum RQUIP_WEAR_STATE
{
    WEAR_NOTBIND,
    WEAR_BIND,//穿;
};

//是否是基础装备;
enum EQUIP_BASE
{
    EB_NOT,
    EB_IS,
};


enum CharacterType
{
    CT_Player = 1,//真人;
    CT_Offline,//掉线;
    CT_Robot,//机器人;
    CT_Monster,//怪物;
};

enum CharacterState
{
    CS_Live,//火;
    CS_Death,//死;
};

public enum AccountMessage
{
    //玩家第一次登录，询问模块是否已经初始化完成;
    LOGIN_FIRST_ACCOUNT = 0,

    DB_ACCOUNT_REGISTER_REQUESR,    //请求数据库帐号信息;
    DB_ACCOUNT_REGISTER_RETURN,

    GO_ACCOUNT_LOGIN_REQUEST,       //客户端请求登录;
    GO_ACCOUNT_LOGIN_RETURN,

    GO_ACCOUNT_UPDATE_ROLE_REQUEST,//请求更改人物信息;
    GO_ACCOUNT_UPDATE_ROLE_RETURN,

    DB_ACCOUNT_UPDATE_ROLE_REQUEST,//像数据库请求更改人物信息;
    DB_ACCOUNT_UPDATE_ROLE_RETURN,

    GO_TEST_LATENCY,                //测试网络延迟


    GO_COPY_NEW_MAN_REQUEST = 100,  //请求玩家信息;
    GO_COPY_NEW_MAN_RETURN,         //新玩家加入;

    GO_COPY_MAN_LEAVE_RETURN,       //玩家离开;

    GO_POSITION_COMMANF_REQUEST,    //位置信息请求;
    GO_POSITION_COMMANF_RETURN,

    GO_POSITION_ATTACK_ERQEST,      //攻击请求;
    GO_POSITION_ATTACK_RETIRN,

    GO_COPY_MATCH_REQUEST,          //匹配副本;
    GO_COPY_MATCH_RETURN,

    GO_COPY_LOGIN_REQUEST,          //副本进入请求;
    GO_COPY_LOGIN_RETURN,

    GO_COPY_LEAVE_REQUEST,          //副本离开;
    GO_COPY_LEAVE_RETURN,

    GO_COPY_CREATE_REQUEST,         //副本创建请求;
    GO_COPY_CREATE_RETURN,

    GO_COPY_LIST_REQUEST,           //副本列表信息请求;
    GO_COPY_LIST_RETURN,

    GO_COPY_ROOMINFO_REQUEST,       //房间详细信息请求;
    GO_COPY_ROOMINFO_RETURN,

    GO_COPY_ROLEINFO_RETURN,        //玩家具体信息;

    GO_COPY_BEGIN_REQUEST,          //房主请求开始;
    GO_COPY_BEGIN_RETURN,

    GO_COPY_ATTACK_REQUEST,         //攻击请求;
    GO_COPY_ATTACK_RETURN,

    GO_COPY_RESULT_RETURN,          //副本结算;

    GO_COPY_DEAD_RESULT,            //死者id;

    GO_COPY_DROPROLE_REQUEST,       //捡到物品请求;
    GO_COPY_DROPROLE_RETURN,

    //排行榜;
    GM_ALLRANKLIST_REQUEST = 200,       //请求所有排行榜列表;
    GM_ALLRANKLIST_RETURN,          //返回所有排行榜列表;
    GM_RANKLISTPAGE_REQUEST,        //请求某个排行榜的某页;
    GM_RANKLISTPAGE_RETURN,         //返回某个排行榜的某页;

    GM_RANK_ROLEINFO_REQUEST,       //请求查看其他玩家的信息;
    GM_RANK_ROLEINFO_RETURN,

    //背包;
    DB_PACKAGE_INFO_REQUEST = 300,      //请求背包信息;
    DB_PACKAGE_INFO_RETURN,

    DB_PACKAGE_UPDATE_REQUEST,      //更改背包信息;
    DB_PACKAGE_CREATE_REQUEST,      //创建背包信息;

    GO_PACKAGE_GET_REQUEST,         // 客户端请求得到背包信息;
    GO_PACKAGE_GET_RETURN,

    GO_PACKAGE_WEAR_REQUEST,        //请求穿戴;
    GO_PACKAGE_WEAR_RETURN,
};

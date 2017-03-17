/**************************************************
	客户端和服务器间通信的消息结构体
**************************************************/
#pragma  once
#include"ServerData.h"



//***********************选区相关结构信息*****************************************************************************************
///玩家选择区号
//#pragma pack(push,1)
//struct GM_ChooseArea
//{
//	UINT m_Account;			///账号id
//	UINT m_Area;			///区号，新号区号为0
//	char m_RandStr[RandStrLength];		///随机产生的字符串，用于客户端与服务器的通信
//};
//#pragma pack(pop)




///返回选定区号的状态服务器的地址
//#pragma pack(push,1)
//struct GM_ChooseAreaReturn
//{
//	char  m_Result;								///0、请求成功，1、该区号不存在
//	char  m_ServerIP[IPaddressLength];			///服务器地址
//	char  m_Password[IPPwdLength];				///服务器密码
//	int   m_PortNumber;							 ///端口号
//};
//#pragma pack(pop)




///客户端请求服务器地址,用于服务器与客户端通信
//#pragma pack(push,1)
//struct GM_RequestGameServerConnect
//{
//	UINT m_Account;
//	char m_RandStr[RandStrLength];///随机产生的字符串，用于客户端与服务器的通信
//};
//#pragma pack(pop)

///通知逻辑服务器将有客户端连接
#pragma pack(push,1)
struct GM_InformGameServer
{
	UINT  m_Account;///账号
	char  m_RandStr[RandStrLength];		///随机产生的字符串，用于客户端与服务器的通信
	char  m_IP[IPaddressLength];		///客户端ip地址
};
#pragma pack(pop)



///返回较空闲的逻辑服务器的地址给客户端
// #pragma pack(push,1)
// struct GM_GameServerIpReturn
// {
// 	char  m_Result;						///0、正常请求，1、非法请求
// 	char  m_ServerIP[IPaddressLength];	///逻辑服务器地址和端口号
// 	char  m_Password[IPPwdLength];		///逻辑服务器密码
// 	int   m_PortNumber;					///端口号
// };
// #pragma pack(pop)

///***********************选区相关结构信息******************************************************************




///*****************************账号模块********************************************************************

///验证玩家账号信息
//#pragma pack(push, 1)
//struct GM_AccountRequest
//{
//	char m_AccountName[UserNameLength];
//	char m_Password[UserNameLength];
//};
//#pragma pack(pop)


///返回玩家账号验证结果
//#pragma pack(push,1)
//struct GM_AccountReturn
//{
//	char	m_Result;  ///0、成功，1、账号不存在，2、密码错误，3、此账号已冻结
//	uint32   m_AccountID;///帐号id
//	int32   m_lastloginServerID;///最后登陆服务器ID
//	char  m_RandStr[RandStrLength];///随机产生的字符串，用于客户端与服务器的通信
//};
//#pragma pack(pop)





//客户端发送创建账号消息
//#pragma pack(push, 1)
//struct GM_AccountCreate
//{	
//	char m_AccountName[UserNameLength];
//	char m_Password[UserNameLength];
//};
//#pragma pack(pop)
//
//
/////创建消息返回给客户端
//#pragma pack(push, 1)
//struct GM_AccountCreateReturn
//{
//	char   m_Result; ///0,创建成功，1，存在账号 2,账号长度不符合3,密码长度不符合 4,是关键字
//	int32   m_AccountID;///帐号id
//	char   m_AccountName[UserNameLength];
//	char   m_Password[UserNameLength];
//};
//#pragma pack(pop)





///客户端发送修改密码消息
#pragma pack(push, 1)
struct GM_PasswordModify
{
	char m_AccountName[UserNameLength];///账号名字
	char m_Password[UserNameLength];///修改的密码
	char m_NewPassword[UserNameLength]; ///新密码
};
#pragma pack(pop)



 
//#pragma pack(push, 1)
//struct  GM_RoleListRequest
//{
//	uint32 m_Account;
//	uint32 m_AreaID;
//};
//#pragma pack(pop)


#pragma pack(push, 1)
struct  GM_BagRequest
{
	uint32 m_roleid;
};
#pragma pack(pop)
///******************************账号模块结束****************************************************************

/**************************************************
	�ͻ��˺ͷ�������ͨ�ŵ���Ϣ�ṹ��
**************************************************/
#pragma  once
#include"ServerData.h"



//***********************ѡ����ؽṹ��Ϣ*****************************************************************************************
///���ѡ������
//#pragma pack(push,1)
//struct GM_ChooseArea
//{
//	UINT m_Account;			///�˺�id
//	UINT m_Area;			///���ţ��º�����Ϊ0
//	char m_RandStr[RandStrLength];		///����������ַ��������ڿͻ������������ͨ��
//};
//#pragma pack(pop)




///����ѡ�����ŵ�״̬�������ĵ�ַ
//#pragma pack(push,1)
//struct GM_ChooseAreaReturn
//{
//	char  m_Result;								///0������ɹ���1�������Ų�����
//	char  m_ServerIP[IPaddressLength];			///��������ַ
//	char  m_Password[IPPwdLength];				///����������
//	int   m_PortNumber;							 ///�˿ں�
//};
//#pragma pack(pop)




///�ͻ��������������ַ,���ڷ�������ͻ���ͨ��
//#pragma pack(push,1)
//struct GM_RequestGameServerConnect
//{
//	UINT m_Account;
//	char m_RandStr[RandStrLength];///����������ַ��������ڿͻ������������ͨ��
//};
//#pragma pack(pop)

///֪ͨ�߼����������пͻ�������
#pragma pack(push,1)
struct GM_InformGameServer
{
	UINT  m_Account;///�˺�
	char  m_RandStr[RandStrLength];		///����������ַ��������ڿͻ������������ͨ��
	char  m_IP[IPaddressLength];		///�ͻ���ip��ַ
};
#pragma pack(pop)



///���ؽϿ��е��߼��������ĵ�ַ���ͻ���
// #pragma pack(push,1)
// struct GM_GameServerIpReturn
// {
// 	char  m_Result;						///0����������1���Ƿ�����
// 	char  m_ServerIP[IPaddressLength];	///�߼���������ַ�Ͷ˿ں�
// 	char  m_Password[IPPwdLength];		///�߼�����������
// 	int   m_PortNumber;					///�˿ں�
// };
// #pragma pack(pop)

///***********************ѡ����ؽṹ��Ϣ******************************************************************




///*****************************�˺�ģ��********************************************************************

///��֤����˺���Ϣ
//#pragma pack(push, 1)
//struct GM_AccountRequest
//{
//	char m_AccountName[UserNameLength];
//	char m_Password[UserNameLength];
//};
//#pragma pack(pop)


///��������˺���֤���
//#pragma pack(push,1)
//struct GM_AccountReturn
//{
//	char	m_Result;  ///0���ɹ���1���˺Ų����ڣ�2���������3�����˺��Ѷ���
//	uint32   m_AccountID;///�ʺ�id
//	int32   m_lastloginServerID;///����½������ID
//	char  m_RandStr[RandStrLength];///����������ַ��������ڿͻ������������ͨ��
//};
//#pragma pack(pop)





//�ͻ��˷��ʹ����˺���Ϣ
//#pragma pack(push, 1)
//struct GM_AccountCreate
//{	
//	char m_AccountName[UserNameLength];
//	char m_Password[UserNameLength];
//};
//#pragma pack(pop)
//
//
/////������Ϣ���ظ��ͻ���
//#pragma pack(push, 1)
//struct GM_AccountCreateReturn
//{
//	char   m_Result; ///0,�����ɹ���1�������˺� 2,�˺ų��Ȳ�����3,���볤�Ȳ����� 4,�ǹؼ���
//	int32   m_AccountID;///�ʺ�id
//	char   m_AccountName[UserNameLength];
//	char   m_Password[UserNameLength];
//};
//#pragma pack(pop)





///�ͻ��˷����޸�������Ϣ
#pragma pack(push, 1)
struct GM_PasswordModify
{
	char m_AccountName[UserNameLength];///�˺�����
	char m_Password[UserNameLength];///�޸ĵ�����
	char m_NewPassword[UserNameLength]; ///������
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
///******************************�˺�ģ�����****************************************************************

RoomType =
{
	R_1 = 10002,
	R_2 = 10003,
}

SceneType =
{
	DownloadScene = "DownloadScene",
	LoginScene = 'LoginScene',
	HallScene = 'HallScene',
	MaJiangScene = 'MaJiangScene',
}

UIType = {
	UI_MaJiang = "MaJiang/UI_MaJiang",
	UI_Share = "Hall/UI_Share",
	UI_Record = "Hall/UI_Record",
	UI_CreateRoom = "Hall/UI_CreateRoom",
	UI_JoinRoom = "Hall/UI_JoinRoom",
	UI_Load = "Dialog/UI_Load",
}

PlayerEventType =
{
	PE_None = 0,
	PE_CalculateDelayFinish = 1,
	PE_AppReActive = 2,
	PE_PopTopUI = 3,
	PE_PushTopUI = 4,
	PE_RegCreateRoom = 5,
	PE_ReturnCreateRoomInfo = 6,
	PE_RegRoomInfo = 7,
	PE_ReturnRoomInfo = 8,
	PE_RegAddRoom = 9,
	PE_ReturnAddRoom = 10,
	Pe_ReturnSingleRoom = 11,
	PE_AddScene = 12,
	PE_ReturnScene = 13,
	PE_SendPostion = 14,
	PE_ReturnPostion = 15,
	PE_RoleConlorl = 16,
	PE_NotifyDie = 17,
	PE_NotifyReturnRoom = 18,
	PE_NotifyRoomReturn = 19,
	PE_NotifyCreateModel = 20,
	PE_NotifyBoxFish = 21,
	PE_NotifyNetSend = 22,
	PE_ReturnNet = 23,
	PE_NetCreate = 24,
	PE_RegSignIn = 25,
	PE_ReturnSignIn = 26,
	PE_RegLoginAward = 27,
	PE_ReturnAward = 28,
	PE_RequestCardMessage = 29,
	PE_ReturnCardMessage = 30,
	PE_RequestCardAward = 31,
	PE_ReturnCardAward = 32,
	PE_ReturnCardCanGetAward = 33,
	PE_RequestInvestMessage = 34,
	PE_ReturnInvestMessage = 35,
	PE_RegBuyInvest = 36,
	PE_ReturnBuyInvest = 37,
	PE_InformBulletin = 38,
	PE_Task = 39,
	PE_ReturnTask = 40,
	PE_SubmitTask = 41,
	PE_ReturnSubmitTask = 42,
	PE_ReturnFinishTask = 43,
	PE_ReturnProgressTask = 44,
	PE_ReturnAllocationTask = 45,
	PE_AchieveChannel = 46,
	PE_ReturnAchieveChannel = 47,
	PE_RequsetGetAchieveAward = 48,
	PE_ReturnGetAchieveAward = 49,
	PE_ReturnNewAchieveGet = 50,
	PE_RequestShop = 51,
	PE_ReturnShop = 52,
	PE_RequestRecharge = 53,
	PE_ReturnRecharge = 54,
	PE_ReturnRechargeOver = 55,
	PE_RequestRankMessage = 56,
	PE_ReturnRankMessage = 57,
	PE_RequestOtherMessage = 58,
	PE_ReturnOtherMessage = 59,
	PE_RegPrimerRoom = 60,
	PE_RegMiddleRoom = 61,
	PE_RegRichRoom = 62,
	PE_RegVipRoom = 63,
	PE_RegMatchRoom = 64,
	PE_RegExitRoom = 65,
	PE_RegQuitFight = 66,
	PE_RegChangeRoom = 67,
	PE_RegNewPlayerData = 68,
	PE_RegForgoPlate = 69,
	PE_RegPutPlate = 70,
	PE_RegStopGame = 71,
	PE_RegAddMoney = 72,
	PE_RegFollowMoney = 73,
	PE_RegSeePlate = 74,
	PE_RegShowCard = 75,
	PE_ZjhRoomExist = 76,
	PE_ZJHReconnectRestoreData = 77,
	PE_NewPlayerJoin = 78,
	PE_FightPlayerJoin = 79,
	PE_PE_NotifyZjhChat = 80,
	PE_ReturnInZjhFb = 81,
	PE_NotRoomInfo = 82,
	PE_NotPlayGame = 83,
	PE_NotStartGame = 84,
	PE_NotIsOperater = 85,
	PE_NotExitRoom = 86,
	PE_NotChangeRoom = 87,
	PE_NotForgoPlate = 88,
	PE_NotPutPlate = 89,
	PE_NotStopGame = 90,
	PE_NotAddMoney = 91,
	PE_NotFollowMoney = 92,
	PE_NotSeePlate = 93,
	PE_NotShowCard = 94,
	PE_NotOtherSeePlate = 95,
	PE_RegZJHReady = 96,
	PE_NotZJHReady = 97,
	PE_RegVIPStartGame = 98,
	PE_NotVIPStartGame = 99,
	PE_NotZJHXuFeiTime = 100,
	PE_ReturnZJHPlayer = 101,
	PE_ZJHRoomTimeArrive = 102,
	PE_ZJHRoomMasterNotBuy = 103,
	PE_ZJHRoomDisslove = 104,
	PE_BeKickOutRoom = 105,
	PE_StartCountdown = 106,
	PE_HandleCountdown = 107,
	PE_NotBoutNum = 108,
	PE_NotAllMoney = 109,
	PE_NotSingeMoney = 110,
	PE_NotPlayerMoney = 111,
	PE_NotGameEnd = 112,
	PE_NotInOffLine = 113,
	PE_NotCancelOffLine = 114,
	PE_RegCancelOff_Line = 115,
	PE_RegTopUp = 116,
	PE_TopUp = 117,
	PE_RegCancelTopUp = 118,
	PE_CancelTopUp = 119,
	Pe_NotRoomState = 120,
	PE_RegIndianRoom = 121,
	PE_RegPacificRoom = 122,
	PE_RegAtlanticRoom = 123,
	PE_RegArcticRoom = 124,
	PE_RegFishingLeaveRoom = 125,
	PE_RegNewFishingJoin = 126,
	PE_RegCannonInfo = 127,
	PE_RegAddCannon = 128,
	PE_RegChangeRate = 129,
	PE_RegCannonFire = 130,
	PE_RegCountFishing = 131,
	PE_NotFishingRoom = 132,
	PE_NotJoinFight = 133,
	PE_NotFishingLeaveRoom = 134,
	PE_NotNewFishingJoin = 135,
	PE_NotCannonInfo = 136,
	PE_NotAddCannon = 137,
	PE_NotChangeRate = 138,
	PE_NotFishingFish = 139,
	PE_NotChangeMoney = 140,
	PE_NotChangePower = 141,
	PE_NotChangeTicket = 142,
	PE_NotCannonFire = 143,
	PE_NotCountFishing = 144,
	PE_EnterFruitRoom = 145,
	PE_ReturnEnterFruitRoom = 146,
	PE_FruitGo = 147,
	PE_ReturnFruitGo = 148,
	PE_GuessSize = 149,
	PE_ReturnGuessSize = 150,
	PE_FruitCollectMoney = 151,
	PE_ReturnFruitCollectMoney = 152,
	PE_LoadMaJiangFinish = 153,
	PE_FirstSzEnd = 154,
	PE_SecondSzEnd = 155,
	PE_ThirdSzBegin = 156,
	PE_ThirdSzEnd = 157,
	PE_SzEnd = 158,
	PE_NotifyRoleReady = 159,
	PE_RequestOutCard = 160,
	PE_ReturnMJPlayer = 161,
	PE_ReturnMJPlayerCard = 162,
	PE_AllPlayerReady = 163,
	PE_OperateMjCard = 164,
	PE_NotifyCanOperateMjCard = 165,
	PE_NotifyPlayerHuCard = 166,
	PE_MjRoomGoNext = 167,
	PE_MjInvitedFriendChange = 168,
	PE_InviteWeiXinFriend = 169,
	PE_NotifyMjChat = 170,
	PE_ReturnMjDesk = 171,
	PE_NotifyMjTrust = 172,
	PE_MjRoomMasterChange = 173,
	PE_MjRoomExist = 174,
	PE_MjReconnectRestoreData = 175,
	PE_MjRoomXuFei = 176,
	PE_MjRoomTimeArrive = 177,
	PE_MjRoomMasterNotBuy = 178,
	PE_MjApplyDissolve = 179,
	PE_MjChooseDissolveRoom = 180,
	PE_MjRoomDissolve = 181,
	PE_MjRoomTotalResult = 182,
	PE_RoomRateWillChange = 183,
	PE_ReturnSeeMJCard = 184,
	PE_ReturnResult = 185,
	PE_ReturnDraw = 186,
	PE_RequestRoomRecord = 187,
	PE_ReturnRoomRecord = 188,
	PE_VerifyMJOperate = 189,
	PE_ReturnIsInFb = 190,
	PE_LoadDestroy = 191,
	PE_ReturnDiceNum = 192,
	PE_ReturnOperateError = 193,
	PE_TakeCard = 194,
	PE_EndRound = 195,
	PE_RePlayRound = 196,
	PE_OperateFinish = 197,
	PE_RequestGetFeedback = 198,
	PE_ReturnGetFeedback = 199,
	PE_ReturnFeedbackCenter = 200,
	PE_RequestBinding = 201,
	PE_ReturnBinding = 202,
	PE_RequestTurntable = 203,
	PE_ReturnTurntable = 204,
	PE_RequestTurntableRun = 205,
	PE_ReturnTurntableRun = 206,
	PE_RequestTurntableStop = 207,
	PE_ReturnTurntableStop = 208,
	PE_RequestTurntableRecord = 209,
	PE_ReturnTurntableRecord = 210,
	PE_ReturnNewRecord = 211,
	PE_RequestReadMail = 212,
	PE_RequestSystemMail = 213,
	PE_ReturnSystemMail = 214,
	PE_RequestGetAnnex = 215,
	PE_ReturnGetAnnex = 216,
	PE_ReturnDeleteMail = 217,
	PE_ReturnNewMail = 218,
	PE_RequestSendMessage = 219,
	PE_ReturnSendMessage = 220,
	PE_ReturnChatError = 221,
	PE_UI_Request_Friend_MyFriend = 222,
	PE_UI_Return_Friend_MyFriend = 223,
	PE_UI_Request_Friend_Gift = 224,
	PE_UI_Return_Friend_Gift = 225,
	PE_UI_Request_Friend_Recommend = 226,
	PE_UI_Return_Friend_Recommend = 227,
	PE_UI_Request_Friend_Seek = 228,
	PE_UI_Return_Friend_Seek = 229,
	PE_UI_Request_Friend_Add = 230,
	PE_UI_Return_Friend_Add = 231,
	PE_UI_Request_Delete_Friend = 232,
	PE_UI_Return_Delete_Friend = 233,
	PE_UI_Request_Friend_Receive = 234,
	PE_UI_Return_Friend_Receive = 235,
	PE_UI_Request_Friend_Get = 236,
	PE_UI_Return_Friend_Get = 237,
	PE_UI_Request_Friend_AllGet = 238,
	PE_UI_Return_Friend_AllGet = 239,
	PE_UI_Request_Friend_ApplyFor = 240,
	PE_UI_Return_Friend_ApplyFor = 241,
	PE_UI_Request_Friend_Agree = 242,
	PE_UI_Return_Friend_Agree = 243,
	PE_UI_Request_Friend_AllAgree = 244,
	PE_UI_Return_Friend_AllAgree = 245,
	PE_UI_Request_Friend_Oppose = 246,
	PE_UI_Return_Friend_Oppose = 247,
	PE_UI_Request_Info = 248,
	PE_UI_Request_Friend_More = 249,
	PE_UI_Return_Inform = 250,
	PE_UI_Relief_request = 251,
	PE_UI_Relief_return = 252,
	PE_UI_Get_request = 253,
	PE_UI_Get_return = 254,
	PE_UI_VipMessage_request = 255,
	PE_UI_VipMessage_return = 256,
	PE_UI_GetVipAward_request = 257,
	PE_UI_GetVipAward_return = 258,
	PE_UI_VipMessage_Variation_return = 259,
	PE_RequestExchangeMessage = 260,
	PE_ReturnExchangeMessage = 261,
	PE_RequestExchangeHistroy = 262,
	PE_ReturnExchangeHistroy = 263,
	PE_RequestExchange = 264,
	PE_ReturnExachange = 265,
	PE_ReturnBangDing = 266,
	PE_RequestChangePersonMessage = 267,
	PE_ReturnChangePersonMessage = 268,
	PE_UI_ChangeName_request = 269,
	PE_UI_ChangeName_return = 270,
	PE_UI_ChangeSignature_request = 271,
	PE_UI_ChangeSignature_return = 272,
	PE_UI_GenderPortraitFrame_request = 273,
	PE_UI_GenderPortraitFrame_return = 274,
	PE_UI_ExamineMessage_request = 275,
	PE_UI_ExamineMessage_return = 276,
	PE_ReturnLoginFB = 277,
	PE_NotifyPlayerLeave = 278,
	PE_NotifyChangeSometing = 279,
	PE_NotifyChangeSometingInt32 = 280,
	PE_NotifyShowRedPoint = 281,
	PE_NotifyCancelRedPoint = 282,
	PE_NotifyMessageRedPoint = 283,
	PE_RequestPlayingField = 284,
	PE_ReturnPlayingField = 285,
	PE_RequestPeopleNum = 286,
	PE_ReturnPeopleNum = 287,
	PE_BeginPlaying = 288,
	PE_RequestJoin = 289,
	PE_ReturnJoin = 290,
	PE_RequestApply = 291,
	PE_ReturnApply = 292,
	PE_RequestPlayingFieldRank = 293,
	PE_ReturnPlayingFieldRank = 294,
	PE_RequestQuitPlaying = 295,
	PE_ReturnQuitPlaying = 296,
	PE_ReturnMathchResult = 297,
	PE_NotifyCenterFbI_Startp = 298,
	PE_NotifyCenterFbI_End = 299,
	PE_UI_RecordEnd = 300,
	PE_UI_ReturnVoice = 301,
	PE_UI_ReturnText = 302,
	PE_NotifyMjTextChat = 303,
	PE_UI_VoicePlayBegin = 304,
	PE_UI_VoicePlayEnd = 305,
	PE_UI_ReturnVoiceSender = 306,
	PE_UI_BroadcastVoice = 307,
	PE_UI_Linkman = 308,
	PE_RequestCardKey = 309,
	PE_ReturnCardKey = 310,
	PE_UI_PlayerInteraction = 311,
	PE_UI_Gain_Center = 312,
	PE_UI_NotifyCZ = 313,
	PE_END = 314,
}
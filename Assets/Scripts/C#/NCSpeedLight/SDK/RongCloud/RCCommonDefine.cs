using System;

namespace RCloud
{
	public enum MessagePsersistent
	{
		//在本地不存储，不计入未读数
		MessagePersistent_NONE = 0,
	    //在本地只存储，但不计入未读数
		MessagePersistent_PERSIST = 1,
		//在本地进行存储并计入未读数
		MessagePersistent_PERSIST_COUNT = 3,
	    //在本地不存储，不计入未读数，并且如果对方不在线，服务器会直接丢弃该消息，对方如果之后再上线也不会再收到此消息。
	    //@discussion 一般用于发送输入状态之类的消息，该类型消息的messageUId为nil。
		MessagePersistent_STATUS = 16
			
	}

	public enum RCErrorCode
	{   
        // 未知错误（预留）
		ERRORCODE_UNKNOWN = -1,

	    // 已被对方加入黑名单
		REJECTED_BY_BLACKLIST = 405,

	    // 超时
		ERRORCODE_TIMEOUT = 5004,

	    // 发送消息频率过高，1秒钟最多只允许发送5条消息
		SEND_MSG_FREQUENCY_OVERRUN = 20604,

	    // 不在该讨论组中
		NOT_IN_DISCUSSION = 21406,

	    // 不在该群组中
		NOT_IN_GROUP = 22406,

	    // 在群组中已被禁言
		FORBIDDEN_IN_GROUP = 22408,

	    // 不在该聊天室中
		NOT_IN_CHATROOM = 23406,

	    // 在该聊天室中已被禁言
		FORBIDDEN_IN_CHATROOM = 23408,

	    // 已被踢出聊天室
		KICKED_FROM_CHATROOM = 23409,

	    // 聊天室不存在
		RC_CHATROOM_NOT_EXIST = 23410,

	    // 聊天室成员超限
		RC_CHATROOM_IS_FULL = 23411,

	    // 当前连接不可用（连接已经被释放）
		RC_CHANNEL_INVALID = 30001,

	    // 当前连接不可用
		RC_NETWORK_UNAVAILABLE = 30002,

	    // SDK没有初始化, 在使用SDK任何功能之前，必须先Init。
		CLIENT_NOT_INIT = 33001,

	    // 数据库错误, 请检查您使用的Token和userId是否正确。
		DATABASE_ERROR = 33002,

	    // 开发者接口调用时传入的参数错误,请检查接口调用时传入的参数类型和值。
		INVALID_PARAMETER = 33003,

	    // 历史消息云存储业务未开通
		MSG_ROAMING_SERVICE_UNAVAILABLE = 33007,
	}

	public enum ConnectionStatus  
	{  
	    // 未知状态
		ConnectionStatus_UNKNOWN = -1,

	    // 连接成功
		ConnectionStatus_Connected = 0,

	    // 当前设备网络不可用, 建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_NETWORK_UNAVAILABLE = 1,

	    // 当前设备切换到飞行模式, 建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_AIRPLANE_MODE = 2,

	    // 当前设备切换到 2G（GPRS、EDGE）低速网络, 建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_Cellular_2G = 3,

	    // 当前设备切换到 3G 或 4G 高速网络, 建立连接的ConnectionStatus_DISCONN_EXCEPTION临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_Cellular_3G_4G = 4,

	    // 当前设备切换到 WIFI 网络, 建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_WIFI = 5,

	    // 当前用户在其他设备上登陆，此设备被踢下线
		ConnectionStatus_KICKED_OFFLINE_BY_OTHER_CLIENT = 6,

	    // 当前用户在 Web 端登陆, 建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_LOGIN_ON_WEB = 7,

	    // 服务器异常, 建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_SERVER_INVALID = 8,

	     //连接验证异常,建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_VALIDATE_INVALID = 9,

	    // 连接中
		ConnectionStatus_Connecting = 10,

	    // 连接失败或未连接
		ConnectionStatus_Unconnected = 11,

	    // 已注销
		ConnectionStatus_SignUp = 12,

	     // Token无效一般有两种原因。一是token错误，请您检查客户端初始化使用的AppKey和您服务器获取token使用的AppKey是否一致；二是token过期，是因为您在开发者后台设置了token过期时间，您需要请求您的服务器重新获取token并再次用新的token建立连接。
		ConnectionStatus_TOKEN_INCORRECT = 31004,

	     //与服务器的连接已断开, 建立连接的临时状态，SDK会做好自动重连，开发者无须处理。
		ConnectionStatus_DISCONN_EXCEPTION = 31011
	}

	public enum MessageDirection  
	{  
		// 发送
		MessageDirection_SEND = 1,

		// 接收
		MessageDirection_RECEIVE
	}

	public enum MessageStatus  
	{  
		//未读
		ReceivedStatus_UNREAD = 0,

		//已读
		ReceivedStatus_READ = 1,

		//已听（仅限语音）
		ReceivedStatus_LISTENED = 2,

		//已下载
		ReceivedStatus_DOWNLOADED = 4,

		//发送中
		SentStatus_SENDING = 10,

		//发送失败
		SentStatus_FAILED = 20,

		//已发送
		SentStatus_SENT = 30,

		//已接收
		SentStatus_RECEIVED = 40,

		//对方已读
		SentStatus_READ = 50

	}

	public enum ConversationType{

		//单聊
		ConversationType_PRIVATE = 1,

		//讨论组
		ConversationType_DISCUSSION,

		//群组
		ConversationType_GROUP,

		//聊天室
		ConversationType_CHATROOM,

		//客服
		ConversationType_CUSTOMERSERVICE,

		//系统
		ConversationType_SYSTEM,

		//应用内公众服务会话
		ConversationType_APPSERVICE,

		//跨应用公众服务会话
		ConversationType_PUBLICSERVICE,

		//推送服务会话
		ConversationType_PUSHSERVICE
	}

	public enum MediaType
	{
		//图片
		MediaType_IMAGE = 1,

		//语音
		MediaType_AUDIO,

		//视频
		MediaType_VIDEO,

		//其他文件
		MediaType_FILE = 100
	};
}


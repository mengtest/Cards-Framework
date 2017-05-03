using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RCloud;
using System;
using System.Security.Cryptography;
using System.Text;
using System.Runtime.InteropServices;

namespace NCSpeedLight
{
    public class RongCloudAdapter : MonoBehaviour, IRCConnectStatusObserver, IRCRecivedMessageObserver
    {
        public delegate void ReceiveVoiceCallbackDelegate(string roleid, string uri, int duration);

        public static RongCloudAdapter Instance;

        public static ReceiveVoiceCallbackDelegate ReceiveVoiceCallback;

        public static string APP_KEY = "bmdehs6pbinqs";

        public static string APP_SECRET = "9pJFCVLYeYxbEl";

        public static string TOKEN = string.Empty;

        public static string USER_ID = string.Empty;

        public static int RESPONSE_CODE = 0;

#if UNITY_ANDROID
        private static AndroidJavaObject SoundUtils;
#endif

        private void Awake()
        {
            Instance = this;
            if (Application.isEditor == false)
            {
#if UNITY_ANDROID
                SoundUtils = new AndroidJavaObject("com.hsu.sound.SoundUtils");
#endif
            }
        }

        private void OnDestory()
        {
            Instance = null;
        }

        private string GetTimeStamp()
        {
            TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return Convert.ToInt64(ts.TotalSeconds).ToString();
        }

        private string GetNonce()
        {
            System.Random rd = new System.Random();
            int rd_i = rd.Next();
            String nonce = Convert.ToString(rd_i);
            return nonce;
        }

        private string GetHash(string input)
        {
            //建立SHA1对象
            SHA1 sha = new SHA1CryptoServiceProvider();

            //将mystr转换成byte[]
            UTF8Encoding enc = new UTF8Encoding();
            byte[] dataToHash = enc.GetBytes(input);

            //Hash运算
            byte[] dataHashed = sha.ComputeHash(dataToHash);

            //将运算结果转换成string
            string hash = BitConverter.ToString(dataHashed).Replace("-", "");

            return hash;
        }

        public static void Initialize(ReceiveVoiceCallbackDelegate onReveiveVoice)
        {
            ReceiveVoiceCallback = onReveiveVoice;
            if (Application.isEditor == false)
            {
#if UNITY_IOS || UNITY_ANDROID
                RongIMAPI.GetInstance().InitRongCloud(APP_KEY);
                RCConnectionStatusListener.AddObserver(Instance);
                RCMessageListener.AddObserver(Instance);
#endif
            }
        }

        public IEnumerator RequestToken(string roleid, string rolename, string headurl)
        {
            string url = "http://api.cn.ronghub.com/user/getToken.json";
            // www form.
            WWWForm form = new WWWForm();
            form.AddField("userId", roleid);
            form.AddField("name", rolename);
            form.AddField("portraitUri", headurl);

            url = Uri.EscapeUriString(url);

            Dictionary<string, string> header = new Dictionary<string, string>();
            string nonce = GetNonce();
            string timestamp = GetTimeStamp();
            string signature = APP_SECRET + nonce + timestamp;
            signature = GetHash(signature);
            header.Add("App-Key", APP_KEY);
            header.Add("Nonce", nonce);
            header.Add("Timestamp", timestamp);
            header.Add("Signature", signature);
            header.Add("Content-Type", "application/x-www-form-urlencoded");

            Debug.Log("RongCloudAdapter.RequestToken: url is " + url);
            using (WWW www = new WWW(url, form.data, header))
            {
                yield return www;
                if (string.IsNullOrEmpty(www.error) == false)
                {
                    Debug.LogError("RongCloudAdapter.RequestToken: error is " + www.error);
                    yield break;
                }
                try
                {
                    RCJSONNode jsonNode = RCJSON.Parse(www.text);
                    TOKEN = jsonNode["token"];
                    int.TryParse(jsonNode["code"], out RESPONSE_CODE);
                    USER_ID = jsonNode["userId"];
                }
                catch (Exception e)
                {
                    Debug.LogError("RongCloudAdapter.RequestToken: json Parse error,str is " + www.text);
                    Debug.LogError("RongCloudAdapter.RequestToken: json Parse error,exception is " + e.Message);
                    yield break;
                }
                Debug.Log("RongCloudAdapter.RequestToken: response code is " + RESPONSE_CODE);
                Debug.Log("RongCloudAdapter.RequestToken: token is " + TOKEN);
                Debug.Log("RongCloudAdapter.RequestToken: userid is " + USER_ID);

#if UNITY_ANDROID || UNITY_IOS
                // 连接至融云服务器
                RongIMAPI.GetInstance().ConnectRongCloud(TOKEN, USER_ID);
#endif
            }
        }

        /// <summary>
        /// 请求融云token并且连接至融云服务器
        /// </summary>
        /// <param name="roleid"></param>
        /// <param name="rolename"></param>
        /// <param name="headurl"></param>
        public static void Login(string roleid, string rolename, string headurl)
        {
            if (Application.isEditor == false)
            {
#if UNITY_IOS || UNITY_ANDROID
                Instance.StartCoroutine(Instance.RequestToken(roleid, rolename, headurl));
#endif
            }
        }

        /// <summary>
        /// 开始录音
        /// </summary>
        public static void StartRecordVoice(RCVoiceCaptureCallback.VoiceCaptureFinishedCallback onFinished, RCVoiceCaptureCallback.VoiceCaptureVolumeCallback onVolumeChanged, RCVoiceCaptureCallback.VoiceCaptureErrorCallback onError)
        {
#if UNITY_ANDROID || UNITY_IOS
            RongIMAPI.GetInstance().StartRecordVoice(new RCVoiceCaptureCallback()
            {
                onVoiceCaptureFinished = onFinished,
                onVoiceVolume = onVolumeChanged,
                onVoiceCaptureError = onError
            });
#endif
        }

        /// <summary>
        /// 停止录音
        /// </summary>
        public static void StopRecordVoice()
        {
#if UNITY_ANDROID || UNITY_IOS
            RongIMAPI.GetInstance().StopRecordVoice();
#endif
        }

        /// <summary>
        /// Send voice message to rongcloud server and dispatch it.
        /// </summary>
        /// <param name="targetID"></param>
        /// <param name="content"></param>
        public static void SendVoiceMessage(string targetID, string uri, int duration)
        {
#if UNITY_ANDROID || UNITY_IOS
            RCAudioMessageContent msg = new RCAudioMessageContent(uri, duration);
            RCSendMessageCallback cb = new RCSendMessageCallback();
            cb.onSendSuccessCallback = () =>
            {
                Debug.Log("RongCloudAdapter.SendVoiceMessage: send to " + targetID + " success.");
            };
            cb.onSendFailureCallback = (RCErrorCode code) =>
            {
                Debug.Log("RongCloudAdapter.SendVoiceMessage: send to " + targetID + " fail.");
            };
            RongIMAPI.GetInstance().SendMessage(ConversationType.ConversationType_PRIVATE, targetID, msg, "", "", cb);
#endif
        }

        /// <summary>
        /// Play voice.
        /// </summary>
        /// <param name="file"></param>
        /// <param name="volume"></param>

#if UNITY_IOS
    [DllImport("__Internal")]
    public static extern int PlayVoice(string file, float volume = 1f);
#elif UNITY_ANDROID
        public static void PlayVoice(string file, float volume = 1f)
        {
            SoundUtils.Call("Play", file, volume);
        }

#else
        public static void PlayVoice(string file, float volume = 1f)
        {
            Debug.Log("RongCloudAdapter.PlayVoice: not support this platform");
        }
#endif

        public void OnRecivedMessage(RCMessage message)
        {
#if UNITY_ANDROID || UNITY_IOS
            RCDownloadMediaFileCallback callback = new RCDownloadMediaFileCallback
            {
                onSuccess = (string localMediaPath) =>
                {
                    Debug.Log("RongCloudAdapter.OnRecivedMessage.onSuccess: download media file to " + localMediaPath);
                    Loom.QueueOnMainThread(() =>
                    {
                        RCAudioMessageContent tempMessage = message.content as RCAudioMessageContent;
                        if (ReceiveVoiceCallback != null)
                        {
                            ReceiveVoiceCallback(message.senderUserId, localMediaPath, tempMessage.Duration);
                        }
                    });
                },
                onFailure = (RCErrorCode error) =>
                {
                    Debug.LogError("RongCloudAdapter.OnRecivedMessage.onFailure: download media file error,code is " + error);
                }
            };
            RCAudioMessageContent voiceMsg = message.content as RCAudioMessageContent;
            RongIMAPI.GetInstance().DownloadMedia(message.m_conversation.Type, message.m_conversation.TargetId,
                MediaType.MediaType_AUDIO, voiceMsg.VoiceUri, callback);
#endif
        }

        public void OnConnectStatusChanged(ConnectionStatus status)
        {
            Debug.Log("RongCloudAdapter.OnConnectStatusChanged: status is " + status);
        }
    }
}


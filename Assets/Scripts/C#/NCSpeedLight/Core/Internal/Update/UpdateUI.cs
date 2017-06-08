using Pathfinding.Serialization.JsonFx;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public class UpdateUI : MonoBehaviour
    {
        private UIProgressBar progressBar;
        private UILabel labelTips;

        [NonSerialized]
        public FileDownloader FileDownloader;
        [NonSerialized]
        public HttpListener JsonServerListener;
        [NonSerialized]
        public HttpListener FileServerListener;

        private void Awake()
        {
            FileDownloader = new FileDownloader(this);
            progressBar = UIHelper.GetComponent(transform, "Progress Bar", typeof(UIProgressBar)) as UIProgressBar;
            labelTips = UIHelper.GetComponent(transform, "Tips/Content", typeof(UILabel)) as UILabel;
        }

        public void SetTips(string tips)
        {
            labelTips.text = tips;
        }

        public void UpdateProgressBar(int current, int total)
        {
            if (progressBar.gameObject.activeSelf == false)
            {
                progressBar.gameObject.SetActive(true);
            }
            if (total < 1024 * 1024)
            {
                UIHelper.SetLabelText(progressBar.transform, "Label", current / 1024 + "/" + total / 1024 + " KB");
            }
            else
            {
                UIHelper.SetLabelText(progressBar.transform, "Label", (current / (1024 * 1024f)).ToString("0.00") + "/" + (total / (1024 * 1024f)).ToString("0.00") + " MB");
            }
            progressBar.value = (current * 1f / total);
        }

        public void HideProgressBar()
        {
            progressBar.gameObject.SetActive(false);
            progressBar.value = 0;
        }

        public void StartUpdate()
        {
            RequestJson();
        }

        private void RequestJson()
        {
            Helper.Log("RequestJson: request json @ " + Constants.JSON_URL);
            JsonServerListener = new HttpListener(Constants.JSON_URL, 2, (HttpListener.Status last, HttpListener.Status current, WWW www) =>
            {
                if (current == HttpListener.Status.NetworkError)
                {
                    SetTips("当前网络不可用,请检查设备是否连接至互联网");
                }
                else if (current == HttpListener.Status.HostError)
                {
                    SetTips("配置服务器异常,重新连接中");
                }
                else if (current == HttpListener.Status.OK)
                {
                    JsonServerListener.Stop();
                    if (ParseJson(www.text) == false)
                    {
                        SetTips("配置解析异常");
                    }
                    else
                    {
                        CompareVersion();
                    }
                }
            });
            JsonServerListener.Start();
        }

        private void CompareVersion()
        {
            SetTips("对比版本号");
            string[] version = Constants.NEWEST_VERSION.Split('.');
            int majorVersion = 0;
            int middleVersion = 0;
            int miniorVersion = 0;
            int.TryParse(version[0], out majorVersion);
            int.TryParse(version[1], out middleVersion);
            int.TryParse(version[2], out miniorVersion);
            if (majorVersion != Constants.MAJOR_VERSION)
            {
                if (Application.platform == RuntimePlatform.IPhonePlayer)
                {
                    InternalUIManager.OpenConfirmDialog("发现新版本，请前往AppStore进行更新", false, null, null);
                    SetTips("发现新版本，请前往AppStore进行更新");
                }
                else
                {
                    //Constants.APK_DOWNLOAD_URL = Constants.REMOTE_FILE_BUNDLE_ROOT + "PPHZ20170604_5.apk";
                    //Constants.APK_SIZE = 18755859;
                    InternalUIManager.OpenConfirmDialog("发现新版本，点击确定开始下载", true, () => { Loom.StartCR(UpdateAPK()); }, () => { Application.Quit(); });
                }
            }
            else
            {
                Loom.StartCR(UpdateFile(middleVersion, miniorVersion));
            }
        }

        private IEnumerator UpdateFile(int middleVersion, int miniorVersion)
        {
            SetTips("检查更新");
            Constants.MIDDLE_VERSION = middleVersion;
            Constants.MINIOR_VERSION = miniorVersion;
            bool updateAsset = false;
            bool updateScript = false;
            if (Constants.FORCE_UPDATE)
            {
                updateAsset = true;
                updateScript = true;
            }
            else
            {
                if (middleVersion != Constants.MIDDLE_VERSION)
                {
                    updateAsset = true;
                    updateScript = true;
                }
                else if (miniorVersion != Constants.MINIOR_VERSION)
                {
                    updateAsset = false;
                    updateScript = true;
                }
            }
            if (FileServerListener != null)
            {
                FileServerListener.Stop();
            }
            FileServerListener = new HttpListener(Constants.REMOTE_FILE_BUNDLE_ROOT, 2, (HttpListener.Status last, HttpListener.Status current, WWW www) =>
             {
                 Helper.Log("OnFileServerStatusChanged: timeframe is " + Time.frameCount + ",last is " + last + ",current is " + current);
                 if (current == HttpListener.Status.NetworkError)
                 {
                     SetTips("当前网络不可用,请检查设备是否连接至互联网");
                 }
                 else if (current == HttpListener.Status.HostError)
                 {
                     SetTips("资源服务器异常,重新连接中");
                 }
                 if ((last == HttpListener.Status.HostError || last == HttpListener.Status.NetworkError || last == HttpListener.Status.None) && current == HttpListener.Status.OK)
                 {
                     FileDownloader.Start(updateAsset, updateScript);
                 }
             });
            if (updateAsset || updateScript)
            {
                FileServerListener.Start();
                yield return new WaitUntil(() => { return FileDownloader.IsDone && string.IsNullOrEmpty(FileDownloader.Error); });
                FileServerListener.Stop();
                yield return StartCoroutine(StartGame());
            }
            else
            {
                yield return StartCoroutine(StartGame());
            }
        }

        private IEnumerator UpdateAPK()
        {
            int downloadCount = 1;
            while (downloadCount <= 3)
            {
                SetTips("正在下载安装包,请不要断开网络");
                WWW www = new WWW(Constants.APK_DOWNLOAD_URL);
                while (www.isDone == false)
                {
                    yield return new WaitForSeconds(0.1f);
                    UpdateProgressBar((int)(Constants.APK_SIZE * www.progress), Constants.APK_SIZE);
                }
                yield return new WaitUntil(() => { return www.isDone; });
                if (string.IsNullOrEmpty(www.error) == false)
                {
                    downloadCount++;
                    yield return null;
                }
                else
                {
                    string directory = Path.GetDirectoryName(Constants.APK_FILE);
                    if (Directory.Exists(directory) == false)
                    {
                        Directory.CreateDirectory(directory);
                    }
                    File.WriteAllBytes(Constants.APK_FILE, www.bytes);
                    downloadCount = 99;
                    InstallAPK(Constants.APK_FILE);
                    Application.Quit();
                }
            }
            if (downloadCount != 99)
            {
                InternalUIManager.OpenConfirmDialog("更新失败,请稍后重试", false, () => { Application.Quit(); }, () => { });
            }
        }

        private bool InstallAPK(string path)
        {
            try
            {
                var Intent = new AndroidJavaClass("android.content.Intent");
                var ACTION_VIEW = Intent.GetStatic<string>("ACTION_VIEW");
                var FLAG_ACTIVITY_NEW_TASK = Intent.GetStatic<int>("FLAG_ACTIVITY_NEW_TASK");
                var intent = new AndroidJavaObject("android.content.Intent", ACTION_VIEW);

                var file = new AndroidJavaObject("java.io.File", path);
                var Uri = new AndroidJavaClass("android.net.Uri");
                var uri = Uri.CallStatic<AndroidJavaObject>("fromFile", file);

                intent.Call<AndroidJavaObject>("setDataAndType", uri, "application/vnd.android.package-archive");
                intent.Call<AndroidJavaObject>("addFlags", FLAG_ACTIVITY_NEW_TASK);
                intent.Call<AndroidJavaObject>("setClassName", "com.android.packageinstaller", "com.android.packageinstaller.PackageInstallerActivity");

                var UnityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
                var currentActivity = UnityPlayer.GetStatic<AndroidJavaObject>("currentActivity");
                currentActivity.Call("startActivity", intent);
                return true;
            }
            catch (Exception e)
            {
                Helper.LogError("InstallAPK: " + e.Message);
                return false;
            }
        }
        private bool ParseJson(string json)
        {
            try
            {
                Dictionary<string, string> dic = JsonReader.Deserialize<Dictionary<string, string>>(json);
                if (dic == null || dic.Count == 0)
                {
                    SetTips("Decode json error.");
                    return false;
                }
                Dictionary<string, string>.Enumerator ir = dic.GetEnumerator();
                for (int i = 0, max = dic.Count; i < max; i++)
                {
                    ir.MoveNext();
                    KeyValuePair<string, string> kvp = ir.Current;

                    switch (kvp.Key)
                    {
                        case "xmlurl":
                            Constants.REMOTE_FILE_BUNDLE_ROOT = kvp.Value + "/";
                            Constants.REMOTE_ASSET_BUNDLE_PATH = kvp.Value + "/" + Constants.PLATFORM_NAME + "/Assets/";
#if UNITY_IOS
                            if (IntPtr.Size == 4)
                            {
                                //32 Bit  
                                Constants.REMOTE_SCRIPT_BUNDLE_PATH = kvp.Value + "/" + Constants.PLATFORM_NAME + "/Scripts/x86/";
                            }
                            else if (IntPtr.Size == 8)
                            {
                                //64 Bit  
                                Constants.REMOTE_SCRIPT_BUNDLE_PATH = kvp.Value + "/" + Constants.PLATFORM_NAME + "/Scripts/x64/";
                            }
#else
                            Constants.REMOTE_SCRIPT_BUNDLE_PATH = kvp.Value + "/" + Constants.PLATFORM_NAME + "/Scripts/";
#endif
                            //Constants.REMOTE_ASSET_BUNDLE_PATH = "http://192.168.1.155:9555/" + Constants.PLATFORM_NAME + "/Assets/";
                            //Constants.REMOTE_SCRIPT_BUNDLE_PATH = "http://192.168.1.155:9555/" + Constants.PLATFORM_NAME + "/Scripts/";
                            break;
                        case "noticeurl":
                            break;
                        case "accountserverip":
                            Constants.ACCOUNT_SERVER_IP = kvp.Value;
                            break;
                        case "accountserverport":
                            int port = 0;
                            int.TryParse(kvp.Value, out port);
                            Constants.ACCOUNT_SERVER_PORT = port;
                            break;
                        case "urlpush":
                            break;
                        case "urlicon":
                            Constants.SHARE_ICON = kvp.Value;
                            break;
                        case "urldownload":
                            Constants.APK_DOWNLOAD_URL = kvp.Value;
                            break;
                        case "size":
                            int size = 0;
                            int.TryParse(kvp.Value, out size);
                            Constants.APK_SIZE = size;
                            break;
                        case "question":
                            Constants.FEEDBACK_URL = kvp.Value;
                            break;
                        case "wxurl":
                            Constants.WECHAT_URL = kvp.Value;
                            break;
                        case "updateversion":
                            Constants.NEWEST_VERSION = kvp.Value;
                            break;
                        case "textone":
                            Constants.SHARE_TITLE = kvp.Value;
                            break;
                        case "texttwo":
                            Constants.SHARE_CONTENT = kvp.Value;
                            break;
                        case "textthree":
                            Constants.SHARE_MOMENT_CONTENT = kvp.Value;
                            break;
                        case "urlsharefriend":
                            Constants.SHARE_URL = kvp.Value;
                            break;
                    }
                }
            }
            catch (Exception e)
            {
                SetTips(e.Message);
                return false;
            }
            return true;
        }

        private IEnumerator StartGame()
        {
            SetTips("正在进入游戏");
            yield return new WaitForSeconds(0.1f);
            LuaManager.Initialize();// 加载内置的bundle
            Game.Instance.Launch();
            yield return 0;
        }
    }
}


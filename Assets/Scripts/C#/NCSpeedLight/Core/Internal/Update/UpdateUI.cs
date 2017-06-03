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
        public FileDownloader fileDownloader;

        private HttpListener jsonServerListener;
        private HttpListener.Status jsonServerLastStatus;
        private HttpListener.Status jsonServerCurrentStatus;

        private HttpListener fileServerListener;

        private void Awake()
        {
            fileDownloader = new FileDownloader(this);
            progressBar = UIHelper.GetComponent(transform, "Progress Bar", typeof(UIProgressBar)) as UIProgressBar;
            labelTips = UIHelper.GetComponent(transform, "Tips/Content", typeof(UILabel)) as UILabel;
        }

        private void OnGUI()
        {
            if (GUI.Button(new Rect(10, 10, 150, 30), "[JsonServer] HostError"))
            {
                jsonServerListener.SwitchStatus(HttpListener.Status.HostError, null);
            }
            if (GUI.Button(new Rect(10, 40, 150, 30), "[JsonServer] NetworkError"))
            {
                jsonServerListener.SwitchStatus(HttpListener.Status.NetworkError, null);
            }
            if (GUI.Button(new Rect(10, 90, 150, 30), "[FileServer] HostError"))
            {
                fileServerListener.SwitchStatus(HttpListener.Status.HostError, null);
            }
            if (GUI.Button(new Rect(10, 130, 150, 30), "[FileServer] NetworkError"))
            {
                fileServerListener.SwitchStatus(HttpListener.Status.NetworkError, null);
            }
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
            jsonServerListener = new HttpListener(Constants.JSON_URL, 3, (HttpListener.Status last, HttpListener.Status current, WWW www) =>
            {
                jsonServerLastStatus = last;
                jsonServerCurrentStatus = current;

                if (jsonServerCurrentStatus == HttpListener.Status.NetworkError)
                {
                    SetTips("当前网络不可用,请检查设备是否连接至互联网");
                }
                else if (jsonServerCurrentStatus == HttpListener.Status.HostError)
                {
                    SetTips("服务器异常,重新连接中...");
                }
                else if (jsonServerCurrentStatus == HttpListener.Status.HostOK)
                {
                    jsonServerListener.Stop();
                    if (ParseJson(www.text) == false)
                    {
                        SetTips("数据解析异常");
                    }
                    else
                    {
                        CompareVersion();
                    }
                }
            });
            jsonServerListener.Start();
        }

        private void CompareVersion()
        {
            SetTips("正在对比版本号...");
            string[] version = Constants.NEWEST_VERSION.Split('.');
            if (version.Length < 3)
            {
                SetTips("正在检查更新...");
            }
            int majorVersion = 0;
            int middleVersion = 0;
            int miniorVersion = 0;
            int.TryParse(version[0], out majorVersion);
            int.TryParse(version[1], out middleVersion);
            int.TryParse(version[2], out miniorVersion);
            if (majorVersion != Constants.MAJOR_VERSION)
            {
                InternalUIManager.OpenConfirmDialog("发现新版本，点击确定打开浏览器下载", true, () => { Application.OpenURL(Constants.PKG_DOWNLOAD_URL); }, () => { Application.Quit(); });
                SetTips("发现新版本");
            }
            else
            {
                StartCoroutine(UpdateFile(middleVersion, miniorVersion));
            }
        }

        private IEnumerator UpdateFile(int middleVersion, int miniorVersion)
        {
            SetTips("正在检查更新...");
            if (fileServerListener != null)
            {
                fileServerListener.Stop();
            }
            fileServerListener = new HttpListener(Constants.REMOTE_FILE_BUNDLE_ROOT, 3, (HttpListener.Status last, HttpListener.Status current, WWW www) =>
            {
                if (current == HttpListener.Status.NetworkError)
                {
                    SetTips("当前网络不可用,请检查设备是否连接至互联网");
                }
                else if (current == HttpListener.Status.HostError)
                {
                    SetTips("服务器异常,重新连接中...");
                }

                if ((last == HttpListener.Status.HostError || last == HttpListener.Status.NetworkError) && current == HttpListener.Status.HostOK)
                {
                    StartCoroutine(UpdateFile(middleVersion, miniorVersion));
                }
            });
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
            fileDownloader.Start(updateAsset, updateScript);
            yield return new WaitUntil(() => { return fileDownloader.IsDone; });
            fileServerListener.Stop();
            yield return StartCoroutine(StartGame());
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
                            Constants.REMOTE_SCRIPT_BUNDLE_PATH = kvp.Value + "/" + Constants.PLATFORM_NAME + "/Scripts/";
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
                            Constants.PKG_DOWNLOAD_URL = kvp.Value;
                            break;
                        case "size":
                            int size = 0;
                            int.TryParse(kvp.Value, out size);
                            Constants.PKG_SIZE = size;
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
            SetTips("正在进入游戏...");
            yield return new WaitForSeconds(0.1f);
            LuaManager.Initialize();// 加载内置的bundle
            Game.Instance.Launch();
            yield return 0;
        }
    }
}


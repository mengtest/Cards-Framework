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
        public enum Status
        {
            Check,
            Download,
            EnterGame,
        }
        public UIProgressBar ProgressBar;
        public UILabel Tips;
        public Status CurrentStatus = Status.Check;
        public GameObject StatusCheck;
        public GameObject StatusDownload;
        public GameObject StatusEnterGame;

        private float CostTime = 0f;
        private bool Done = false;

        public LabelDotsAnimation LableAnimation;

        public FileUpdate FileUpdate;
        void Awake()
        {
            FileUpdate = new FileUpdate(this);
        }

        public void StartUpdate()
        {
            CostTime = 0;
            Done = false;
            StartCoroutine(ProcessUpdate());
        }

        public void SwitchStatus(string tips)
        {
            LableAnimation.SetContent(tips);
        }

        private IEnumerator ProcessUpdate()
        {
            SwitchStatus("正在请求服务器...");
            using (WWW www = new WWW(Constants.JSON_URL))
            {
                yield return www;
                if (string.IsNullOrEmpty(www.error) == false)
                {
                    SwitchStatus(www.error);
                    yield break;
                }
                else if (www.isDone == false)
                {
                    SwitchStatus("Can not get json.");
                    yield break;
                }
                else
                {
                    if (ParseJson(www.text)==false)
                    {
                        SwitchStatus("Parse json error.");
                        yield break;
                    }
                }
            }
            SwitchStatus("正在检查资源文件");
            if (Application.isEditor)
            {
                if (Constants.SCRIPT_BUNDLE_MODE)
                {
                    yield return StartCoroutine(FileUpdate.UpdateScript());
                    if (Constants.ASSET_BUNDLE_MODE)
                    {
                        yield return StartCoroutine(FileUpdate.UpdateAsset());
                        yield return StartCoroutine(StartGame());
                    }
                    else
                    {
                        yield return StartCoroutine(StartGame());
                    }
                }
                else
                {
                    if (Constants.ASSET_BUNDLE_MODE)
                    {
                        yield return StartCoroutine(FileUpdate.UpdateAsset());
                        yield return StartCoroutine(StartGame());
                    }
                    else
                    {
                        yield return StartCoroutine(StartGame());
                    }
                }
            }
            else
            {
                yield return StartCoroutine(FileUpdate.UpdateScript());
                yield return StartCoroutine(FileUpdate.UpdateAsset());
                yield return StartCoroutine(StartGame());
            }
        }

        private bool ParseJson(string json)
        {
            try
            {
                Dictionary<string, string> dic = JsonReader.Deserialize<Dictionary<string, string>>(json);
                if (dic == null || dic.Count == 0)
                {
                    SwitchStatus("Decode json error.");
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
                SwitchStatus(e.Message);
                return false;
            }
            return true;
        }
        private IEnumerator CheckNetStatus()
        {
            Helper.Log("UIUpdate.CheckNetStatus: done.");
            yield return 0;
        }

        private IEnumerator StartGame()
        {
            Done = true;
            SwitchStatus("正在进入游戏");
            LuaManager.Initialize();// 加载内置的bundle
            Game.Instance.StartGame();
            yield return new WaitForSeconds(0.1f);
            gameObject.SetActive(false);
            yield return 0;
        }
    }
}


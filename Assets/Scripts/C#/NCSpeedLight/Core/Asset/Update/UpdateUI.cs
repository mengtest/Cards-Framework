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
        public FileUpdate FileUpdate;

        private void Awake()
        {
            FileUpdate = new FileUpdate(this);
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
            StartCoroutine(ProcessUpdate());
        }

        private IEnumerator ProcessUpdate()
        {
            SetTips("正在连接服务器...");
            using (WWW www = new WWW(Constants.JSON_URL))
            {
                Helper.Log("UpdateUI.ProcessUpdate: request json @ " + Constants.JSON_URL);
                yield return www;
                if (string.IsNullOrEmpty(www.error) == false)
                {
                    SetTips(www.error);
                    yield break;
                }
                else if (www.isDone == false)
                {
                    SetTips("Can not get json.");
                    yield break;
                }
                else
                {
                    if (ParseJson(www.text) == false)
                    {
                        SetTips("Parse json error.");
                        yield break;
                    }
                }
            }
            SetTips("正在检查更新...");
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


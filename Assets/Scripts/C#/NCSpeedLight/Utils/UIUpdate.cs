using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public class UIUpdate : MonoBehaviour
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
        private static string AssetsURL;
        private static string ScriptsURL;

        private string ContentScriptsManifestMD5 = string.Empty;
        private string LocalScriptsManifestMD5 = string.Empty;
        private string RemoteScriptsManifestMD5 = string.Empty;
        private string[] ContentScriptsManifest = null;
        private string[] LocalScriptsManifest = null;
        private string[] RemoteScriptsManifest = null;

        private LuaManifest ContentLuaManifest = null;
        private LuaManifest LocalLuaManifest = null;
        private LuaManifest RemoteLuaManifest = null;

        private static string ManifestAtLoacl;
        private static string ManifestAtContent;
        private static string ManifestAtRemote;

        private float CostTime = 0f;
        private bool Done = false;

        public LabelDotsAnimation LableAnimation;

        void Awake()
        {
            AssetsURL = "http://192.168.1.146:9555/" + Constants.PLATFORM_NAME + "/Assets/";
            ScriptsURL = "http://192.168.1.146:9555/" + Constants.PLATFORM_NAME + "/Scripts/";
            ManifestAtLoacl = Constants.SCRIPT_BUNDLE_PATH + "manifest.txt";
            ManifestAtContent = Constants.APP_CONTENT_PATH + "manifest.txt";
            ManifestAtRemote = ScriptsURL + "manifest.txt";
        }

        void Start()
        {
        }

        void Update()
        {
            //CostTime += Time.deltaTime;
            //if (Done == false)
            //{
            //    float deltaValue = Time.deltaTime / 20;
            //    ProgressBar.value += deltaValue;
            //}
            //else
            //{
            //    float deltaValue = Time.deltaTime;
            //    ProgressBar.value += deltaValue;
            //}
        }
        public void StartUpdate()
        {
            CostTime = 0;
            Done = false;
            if (Application.isEditor && Constants.LUA_BUNDLE_MODE)
            {
                if (Constants.LUA_BUNDLE_MODE)
                {
                    StartCoroutine(ProcessUpdate());
                }
                else
                {
                    StartCoroutine(StartGame());
                }
            }
            else
            {
                StartCoroutine(ProcessUpdate());
            }
        }
        public void SwitchStatus(string tips)
        {
            LableAnimation.SetContent(tips);
        }

        private IEnumerator ProcessUpdate()
        {
            SwitchStatus("正在检查资源文件");
            yield return StartCoroutine(CheckNetStatus());
            yield return StartCoroutine(RequestJson());
            //yield return StartCoroutine(CompareScriptsManifest());
            yield return StartCoroutine(UpdateScripts());
            //yield return StartCoroutine(ExtractInternalScripts());
            //yield return StartCoroutine(ExtractInternalAssets());
            //yield return StartCoroutine(UpdateAssets());
            yield return StartCoroutine(InitializeLua());
            yield return StartCoroutine(StartGame());
        }

        private IEnumerator CheckNetStatus()
        {
            Helper.Log("UIUpdate.CheckNetStatus: done.");
            yield return 0;
        }

        private IEnumerator RequestJson()
        {
            SwitchStatus("正在检查更新");
            yield return 0;
        }

        private IEnumerator UpdateScripts()
        {
            ContentLuaManifest = new LuaManifest(ManifestAtContent);
            yield return StartCoroutine(ContentLuaManifest.Load(true, false));
            LocalLuaManifest = new LuaManifest(ManifestAtLoacl);
            yield return StartCoroutine(LocalLuaManifest.Load(false, false));
            RemoteLuaManifest = new LuaManifest(ManifestAtRemote);
            yield return StartCoroutine(RemoteLuaManifest.Load(false, true));

            if (LocalLuaManifest.Files.Count == 0)
            {
                // 本地不存在文件，从安装包中解压出来
                yield return StartCoroutine(ExtractInternalScripts());
                // 重置本地清单列表
                LocalLuaManifest = new LuaManifest(ManifestAtLoacl);
                yield return LocalLuaManifest.Load(false, false);
            }
            else
            {
                Helper.Log("UIUpdate.UpdateScripts: content scripts is same with local,no need to extract.");
            }


            LuaManifest.DifferInfo differInfo = LocalLuaManifest.CompareWith(RemoteLuaManifest);
            if (differInfo.Modified.Count > 0)
            {
                // 下载服务器差异的文件
                yield return StartCoroutine(DownloadScripts(differInfo.Modified));
            }
            if (differInfo.Added.Count > 0)
            {
                // 下载服务器新增的文件
                yield return StartCoroutine(DownloadScripts(differInfo.Added));
            }
            if (differInfo.Deleted.Count > 0)
            {
                // 删除服务器不存在的文件
                yield return StartCoroutine(DeleteOldScripts(differInfo.Deleted));
            }
            if (differInfo.Added.Count == 0 && differInfo.Modified.Count == 0 && differInfo.Deleted.Count == 0)
            {
                Helper.Log("UIUpdate.UpdateScripts: lcoal scripts is same with remote,no need to update.");
            }
            yield return 0;
        }

        private IEnumerator ExtractInternalScripts()
        {
            Helper.Log("UIUpdate.ExtractInternalScripts: start.");
            string dataPath = Constants.SCRIPT_BUNDLE_PATH;  //数据目录
            string contentPath = Constants.APP_CONTENT_PATH + "Scripts/"; //游戏包资源目录
            Helper.Log("UIUpdate.ExtractInternalScripts: data path is " + dataPath);
            Helper.Log("UIUpdate.ExtractInternalScripts: content path is " + contentPath);

            if (Directory.Exists(dataPath))
            {
                Directory.Delete(dataPath, true);
            }
            Directory.CreateDirectory(dataPath);

            // 拷贝清单里的其他文件
            for (int i = 0; i < ContentLuaManifest.Files.Count; i++)
            {
                LuaManifest.FileInfo fileInfo = ContentLuaManifest.Files[i];
                string contentFilePath = contentPath + fileInfo.Name;
                string localFilePath = dataPath + fileInfo.Name;
                Helper.Log("UIUpdate.ExtractInternalScripts: extract " + contentFilePath + " to " + localFilePath);
                if (Application.platform == RuntimePlatform.Android)
                {
                    WWW www = new WWW(contentFilePath);
                    yield return www;
                    if (www.isDone)
                    {
                        File.WriteAllBytes(localFilePath, www.bytes);
                    }
                    yield return 0;
                }
                else
                {
                    if (File.Exists(localFilePath))
                    {
                        File.Delete(localFilePath);
                    }
                    File.Copy(contentFilePath, localFilePath, true);
                }
                yield return new WaitForEndOfFrame();
            }
            Helper.Log("UIUpdate.ExtractInternalScripts: done.");
            yield return 0;
        }

        private IEnumerator DownloadScripts(List<LuaManifest.FileInfo> fileInfos)
        {
            SwitchStatus("正在下载更新");
            Helper.Log("UIUpdate.DownloadScripts: start.");
            string dataPath = Constants.SCRIPT_BUNDLE_PATH;  //数据目录
            Helper.Log("UIUpdate.DownloadScripts: data path is " + dataPath);

            // 保存manifest文件至本地
            File.WriteAllBytes(ManifestAtLoacl, RemoteLuaManifest.Bytes);

            WWW www = null;
            for (int i = 0; i < fileInfos.Count; i++)
            {
                LuaManifest.FileInfo fileInfo = fileInfos[i];
                string remoteFilePath = ScriptsURL + fileInfo.Name;
                string localFilePath = Constants.SCRIPT_BUNDLE_PATH + fileInfo.Name;
                Helper.Log("UIUpdate.DownloadScripts: download from " + remoteFilePath + " to " + localFilePath);
                www = new WWW(remoteFilePath);
                yield return www;
                if (www.isDone)
                {
                    File.WriteAllBytes(localFilePath, www.bytes);
                }
                yield return new WaitForEndOfFrame();
            }
            Helper.Log("UIUpdate.DownloadScripts: done.");
            yield return 0;
        }

        private IEnumerator DeleteOldScripts(List<LuaManifest.FileInfo> fileInfos)
        {
            Helper.Log("UIUpdate.DeleteOldScripts: start.");
            string dataPath = Constants.SCRIPT_BUNDLE_PATH;  //数据目录
            Helper.Log("UIUpdate.DeleteOldScripts: data path is " + dataPath);

            for (int i = 0; i < fileInfos.Count; i++)
            {
                LuaManifest.FileInfo fileInfo = fileInfos[i];
                string filePath = dataPath + fileInfo.Name;

                if (File.Exists(filePath))
                {
                    Helper.Log("UIUpdate.DeleteOldScripts: delete " + filePath);
                    File.Delete(filePath);
                }

            }
            Helper.Log("UIUpdate.DeleteOldScripts: done.");
            yield return 0;
        }

        private IEnumerator ExtractInternalAssets()
        {
            Helper.Log("UIUpdate.ExtractInternalAssets: extract internal assets is done.");
            yield return 0;
        }


        private IEnumerator UpdateAssets()
        {
            yield return 0;
        }

        private IEnumerator InitializeLua()
        {
            SwitchStatus("正在进入游戏");
            LuaManager.Initialize();// 加载内置的bundle
            yield return 0;
        }

        private IEnumerator StartGame()
        {
            Done = true;
            Game.Instance.StartGame();
            yield return new WaitForSeconds(0.1f);
            //gameObject.SetActive(false);
            yield return 0;
        }
    }
}


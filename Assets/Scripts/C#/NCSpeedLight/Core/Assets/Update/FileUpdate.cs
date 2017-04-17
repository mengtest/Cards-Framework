using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public class FileUpdate
    {
        public FileManifest LocalScriptManifest;
        public FileManifest RemoteScriptManifest;
        public FileManifest ContentScriptManifest;

        public FileManifest LocalAssetManifest;
        public FileManifest RemoteAssetManifest;
        public FileManifest ContentAssetManifest;

        public UpdateUI UpdateUI;

        public FileUpdate(UpdateUI ui)
        {
            UpdateUI = ui;
        }

        public IEnumerator UpdateScript()
        {
            ContentScriptManifest = new FileManifest(Constants.LOCAL_SCRIPT_BUNDLE_PATH, Constants.REMOTE_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
            yield return UpdateUI.StartCoroutine(ContentScriptManifest.Initialize(true, false));
            LocalScriptManifest = new FileManifest(Constants.LOCAL_SCRIPT_BUNDLE_PATH, Constants.REMOTE_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
            yield return UpdateUI.StartCoroutine(LocalScriptManifest.Initialize(false, false));
            RemoteScriptManifest = new FileManifest(Constants.LOCAL_SCRIPT_BUNDLE_PATH, Constants.REMOTE_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
            yield return UpdateUI.StartCoroutine(RemoteScriptManifest.Initialize(false, true));

            if (LocalScriptManifest.FileInfos.Count == 0)
            {
                // 本地不存在文件，从安装包中解压出来
                yield return UpdateUI.StartCoroutine(ExtractStreamingScript());
                // 重置本地清单列表
                LocalScriptManifest = new FileManifest(Constants.LOCAL_SCRIPT_BUNDLE_PATH, Constants.REMOTE_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
                yield return LocalScriptManifest.Initialize(false, false);
            }
            else
            {
                Helper.Log("FileUpdate.UpdateScript: content scripts is same with local,no need to extract.");
            }
            FileManifest.DifferInfo differInfo = LocalScriptManifest.CompareWith(RemoteScriptManifest);

            if (differInfo.HasDiffer == false)
            {
                Helper.Log("FileUpdate.UpdateScript: lcoal scripts is same with remote,no need to update.");
            }
            else
            {
                if (differInfo.Modified.Count > 0)
                {
                    // 下载服务器差异的文件
                    yield return UpdateUI.StartCoroutine(DownloadScript(differInfo.Modified));
                }
                if (differInfo.Added.Count > 0)
                {
                    // 下载服务器新增的文件
                    yield return UpdateUI.StartCoroutine(DownloadScript(differInfo.Added));
                }
                if (differInfo.Deleted.Count > 0)
                {
                    // 删除服务器不存在的文件
                    yield return UpdateUI.StartCoroutine(DeleteOldScript(differInfo.Deleted));
                }
            }
            yield return 0;
        }

        private IEnumerator ExtractStreamingScript()
        {
            Helper.Log("FileUpdate.ExtractStreamingScript: start.");
            string dataPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH;  //数据目录
            string contentPath = Constants.STREAMING_PATH + "Scripts/"; //游戏包资源目录
            Helper.Log("FileUpdate.ExtractStreamingScript: data path is " + dataPath);
            Helper.Log("FileUpdate.ExtractStreamingScript: content path is " + contentPath);

            if (Directory.Exists(dataPath))
            {
                Directory.Delete(dataPath, true);
            }
            Directory.CreateDirectory(dataPath);

            // 拷贝清单里的其他文件
            for (int i = 0; i < ContentScriptManifest.FileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = ContentScriptManifest.FileInfos[i];
                string contentFilePath = contentPath + fileInfo.Name;
                string localFilePath = dataPath + fileInfo.Name;
                Helper.Log("FileUpdate.ExtractStreamingScript: extract " + contentFilePath + " to " + localFilePath);
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
            Helper.Log("FileUpdate.ExtractStreamingScript: done.");
            yield return 0;
        }

        private IEnumerator DownloadScript(List<FileManifest.FileInfo> fileInfos)
        {
            UpdateUI.SwitchStatus("正在下载脚本文件");
            Helper.Log("FileUpdate.DownloadScript: start.");
            string dataPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH;  //数据目录
            Helper.Log("FileUpdate.DownloadScript: data path is " + dataPath);

            WWW www = null;
            for (int i = 0; i < fileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string remoteFilePath = Constants.REMOTE_SCRIPT_BUNDLE_PATH + fileInfo.Name;
                string localFilePath = Constants.LOCAL_SCRIPT_BUNDLE_PATH + fileInfo.Name;
                Helper.Log("FileUpdate.DownloadScript: download from " + remoteFilePath + " to " + localFilePath);
                www = new WWW(remoteFilePath);
                yield return www;
                if (www.isDone)
                {
                    File.WriteAllBytes(localFilePath, www.bytes);
                }
                yield return new WaitForEndOfFrame();
            }

            // 保存manifest文件至本地
            string localManifestPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH + Constants.SCRIPT_MANIFEST_FILE;
            File.WriteAllBytes(localManifestPath, RemoteScriptManifest.Bytes);

            Helper.Log("FileUpdate.DownloadScript: done.");
            yield return 0;
        }

        private IEnumerator DeleteOldScript(List<FileManifest.FileInfo> fileInfos)
        {
            Helper.Log("FileUpdate.DeleteOldScript: start.");
            string dataPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH;  //数据目录
            Helper.Log("FileUpdate.DeleteOldScript: data path is " + dataPath);

            for (int i = 0; i < fileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string filePath = dataPath + fileInfo.Name;

                if (File.Exists(filePath))
                {
                    Helper.Log("FileUpdate.DeleteOldScript: delete " + filePath);
                    File.Delete(filePath);
                }

            }
            Helper.Log("FileUpdate.DeleteOldScript: done.");
            yield return 0;
        }


        public IEnumerator UpdateAsset()
        {
            ContentAssetManifest = new FileManifest(Constants.LOCAL_ASSET_BUNDLE_PATH, Constants.REMOTE_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
            yield return UpdateUI.StartCoroutine(ContentAssetManifest.Initialize(true, false));
            LocalAssetManifest = new FileManifest(Constants.LOCAL_ASSET_BUNDLE_PATH, Constants.REMOTE_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
            yield return UpdateUI.StartCoroutine(LocalAssetManifest.Initialize(false, false));
            RemoteAssetManifest = new FileManifest(Constants.LOCAL_ASSET_BUNDLE_PATH, Constants.REMOTE_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
            yield return UpdateUI.StartCoroutine(RemoteAssetManifest.Initialize(false, true));

            if (LocalAssetManifest.FileInfos.Count == 0)
            {
                // 本地不存在文件，从安装包中解压出来
                yield return UpdateUI.StartCoroutine(ExtractStreamingAsset());
                // 重置本地清单列表
                LocalAssetManifest = new FileManifest(Constants.LOCAL_ASSET_BUNDLE_PATH, Constants.REMOTE_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
                yield return LocalAssetManifest.Initialize(false, false);
            }
            else
            {
                Helper.Log("FileUpdate.UpdateAsset: content assets is same with local,no need to extract.");
            }
            FileManifest.DifferInfo differInfo = LocalAssetManifest.CompareWith(RemoteAssetManifest);
            if (differInfo.HasDiffer == false)
            {
                Helper.Log("FileUpdate.UpdateAsset: lcoal assets is same with remote,no need to update.");
            }
            else
            {
                if (differInfo.Modified.Count > 0)
                {
                    // 下载服务器差异的文件
                    yield return UpdateUI.StartCoroutine(DownloadAsset(differInfo.Modified));
                }
                if (differInfo.Added.Count > 0)
                {
                    // 下载服务器新增的文件
                    yield return UpdateUI.StartCoroutine(DownloadAsset(differInfo.Added));
                }
                if (differInfo.Deleted.Count > 0)
                {
                    // 删除服务器不存在的文件
                    yield return UpdateUI.StartCoroutine(DeleteOldAsset(differInfo.Deleted));
                }
            }
            yield return 0;
        }

        private IEnumerator ExtractStreamingAsset()
        {
            Helper.Log("FileUpdate.ExtractStreamingAsset: start.");
            string dataPath = Constants.LOCAL_ASSET_BUNDLE_PATH;  //数据目录
            string contentPath = Constants.STREAMING_PATH + "Assets/"; //游戏包资源目录
            Helper.Log("FileUpdate.ExtractStreamingAsset: data path is " + dataPath);
            Helper.Log("FileUpdate.ExtractStreamingAsset: content path is " + contentPath);

            if (Directory.Exists(dataPath))
            {
                Directory.Delete(dataPath, true);
            }
            Directory.CreateDirectory(dataPath);

            // 拷贝清单里的其他文件
            for (int i = 0; i < ContentAssetManifest.FileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = ContentAssetManifest.FileInfos[i];
                string contentFilePath = contentPath + fileInfo.Name;
                string localFilePath = dataPath + fileInfo.Name;
                Helper.Log("FileUpdate.ExtractStreamingAsset: extract " + contentFilePath + " to " + localFilePath);
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
            Helper.Log("FileUpdate.ExtractStreamingAsset: done.");
            yield return 0;
        }

        private IEnumerator DownloadAsset(List<FileManifest.FileInfo> fileInfos)
        {
            UpdateUI.SwitchStatus("正在下载资源文件");
            Helper.Log("FileUpdate.DownloadAsset: start.");
            string dataPath = Constants.LOCAL_ASSET_BUNDLE_PATH;  //数据目录
            Helper.Log("FileUpdate.DownloadAsset: data path is " + dataPath);

            WWW www = null;
            for (int i = 0; i < fileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string remoteFilePath = Constants.REMOTE_ASSET_BUNDLE_PATH + fileInfo.Name;
                string localFilePath = Constants.LOCAL_ASSET_BUNDLE_PATH + fileInfo.Name;
                Helper.Log("FileUpdate.DownloadAsset: download from " + remoteFilePath + " to " + localFilePath);
                www = new WWW(remoteFilePath);
                yield return www;
                if (www.isDone)
                {
                    File.WriteAllBytes(localFilePath, www.bytes);
                }
                yield return new WaitForEndOfFrame();
            }

            // 保存manifest文件至本地
            string localManifestPath = Constants.LOCAL_ASSET_BUNDLE_PATH + Constants.ASSET_MANIFEST_FILE;
            File.WriteAllBytes(localManifestPath, RemoteAssetManifest.Bytes);

            Helper.Log("FileUpdate.DownloadAsset: done.");
            yield return 0;
        }

        private IEnumerator DeleteOldAsset(List<FileManifest.FileInfo> fileInfos)
        {
            Helper.Log("FileUpdate.DeleteOldAsset: start.");
            string dataPath = Constants.LOCAL_ASSET_BUNDLE_PATH;  //数据目录
            Helper.Log("FileUpdate.DeleteOldAsset: data path is " + dataPath);

            for (int i = 0; i < fileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string filePath = dataPath + fileInfo.Name;

                if (File.Exists(filePath))
                {
                    Helper.Log("FileUpdate.DeleteOldAsset: delete " + filePath);
                    File.Delete(filePath);
                }

            }
            Helper.Log("FileUpdate.DeleteOldAsset: done.");
            yield return 0;
        }
    }
}

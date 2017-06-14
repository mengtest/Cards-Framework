using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

namespace NCSpeedLight
{
    public class FileDownloader
    {
        public FileManifest LocalScriptManifest;
        public FileManifest RemoteScriptManifest;
        public FileManifest StreamingScriptManifest;

        public FileManifest LocalAssetManifest;
        public FileManifest RemoteAssetManifest;
        public FileManifest StreamingAssetManifest;

        public UpdateUI UI;

        public int TotalSize;
        public int DownloadSize;

        public bool IsDone
        {
            get; set;
        }

        public string Error
        {
            get; set;
        }

        public FileDownloader(UpdateUI ui)
        {
            UI = ui;
        }

        public void Start(bool updateAsset, bool updateScript)
        {
            Loom.StartCR(ProcessUpdate(updateAsset, updateScript));
        }

        private IEnumerator ProcessUpdate(bool updateAsset, bool updateScript)
        {
            IsDone = false;
            // initialize asset manifest.
            StreamingAssetManifest = new FileManifest(Constants.STREAMING_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
            yield return Loom.StartCR(StreamingAssetManifest.Initialize(true, false));
            LocalAssetManifest = new FileManifest(Constants.LOCAL_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
            yield return Loom.StartCR(LocalAssetManifest.Initialize(false, false));
            if (updateAsset)
            {
                RemoteAssetManifest = new FileManifest(Constants.REMOTE_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
                yield return Loom.StartCR(RemoteAssetManifest.Initialize(false, true));
                Error = RemoteAssetManifest.Error;
                if (string.IsNullOrEmpty(Error) == false)
                {
                    IsDone = true;
                    yield break;
                }
            }
            // initialize script manifest.
            StreamingScriptManifest = new FileManifest(Constants.STREAMING_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
            yield return Loom.StartCR(StreamingScriptManifest.Initialize(true, false));
            LocalScriptManifest = new FileManifest(Constants.LOCAL_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
            yield return Loom.StartCR(LocalScriptManifest.Initialize(false, false));
            if (updateScript)
            {
                RemoteScriptManifest = new FileManifest(Constants.REMOTE_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
                yield return Loom.StartCR(RemoteScriptManifest.Initialize(false, true));
                Error = RemoteScriptManifest.Error;
                if (string.IsNullOrEmpty(Error) == false)
                {
                    IsDone = true;
                    yield break;
                }
            }
            // ensure local asset is ok.
            if (LocalAssetManifest.FileInfos.Count == 0)
            {
                yield return Loom.StartCR(ExtractStreamingAsset());
                // reload asset manifest.
                LocalAssetManifest = new FileManifest(Constants.LOCAL_ASSET_BUNDLE_PATH, Constants.ASSET_MANIFEST_FILE);
                yield return LocalAssetManifest.Initialize(false, false);
            }
            // ensure local script is ok.
            if (LocalScriptManifest.FileInfos.Count == 0)
            {
                yield return Loom.StartCR(ExtractStreamingScript());
                // reload script manifest.
                LocalScriptManifest = new FileManifest(Constants.LOCAL_SCRIPT_BUNDLE_PATH, Constants.SCRIPT_MANIFEST_FILE);
                yield return LocalScriptManifest.Initialize(false, false);
            }
            // process update.
            TotalSize = 0;
            DownloadSize = 0;
            if (updateAsset)
            {
                FileManifest.DifferInfo assetDifferInfo = LocalAssetManifest.CompareWith(RemoteAssetManifest);
                TotalSize += assetDifferInfo.UpdateSize;
                FileManifest.DifferInfo scriptDifferInfo = null;
                if (updateScript)
                {
                    scriptDifferInfo = LocalScriptManifest.CompareWith(RemoteScriptManifest);
                    TotalSize += scriptDifferInfo.UpdateSize;
                }
                yield return UpdateAsset(assetDifferInfo);
                if (string.IsNullOrEmpty(Error) == false)
                {
                    IsDone = true;
                    yield break;
                }
                if (updateScript)
                {
                    yield return UpdateScript(scriptDifferInfo);
                    if (string.IsNullOrEmpty(Error) == false)
                    {
                        IsDone = true;
                        yield break;
                    }
                }
            }
            else if (updateScript)
            {
                FileManifest.DifferInfo scriptDifferInfo = LocalScriptManifest.CompareWith(RemoteScriptManifest);
                TotalSize += scriptDifferInfo.UpdateSize;
                yield return UpdateScript(scriptDifferInfo);
                if (string.IsNullOrEmpty(Error) == false)
                {
                    IsDone = true;
                    yield break;
                }
            }
            IsDone = true;
        }

        public IEnumerator UpdateScript(FileManifest.DifferInfo differInfo)
        {
            Error = string.Empty;
            if (differInfo.HasDiffer == false)
            {
                Helper.Log("FileDownloader.UpdateScript: lcoal scripts is same with remote,no need to update.");
                yield break;
            }
            else
            {
                if (differInfo.NeedUpdate)
                {
                    UI.SetTips("正在下载必要的资源,请不要断开网络");
                    UI.UpdateProgressBar(DownloadSize, TotalSize);
                }
                if (differInfo.Modified.Count > 0)
                {
                    // 下载服务器差异的文件
                    yield return Loom.StartCR(DownloadScript(differInfo.Modified, differInfo));
                }
                if (string.IsNullOrEmpty(Error) == false)
                {
                    yield break;
                }
                if (differInfo.Added.Count > 0)
                {
                    // 下载服务器新增的文件
                    yield return Loom.StartCR(DownloadScript(differInfo.Added, differInfo));
                }
                if (string.IsNullOrEmpty(Error) == false)
                {
                    yield break;
                }
                if (differInfo.Deleted.Count > 0)
                {
                    // 删除服务器不存在的文件
                    yield return Loom.StartCR(DeleteOldScript(differInfo.Deleted));
                }
            }
            yield return 0;
        }

        private IEnumerator ExtractStreamingScript()
        {
            Helper.Log("FileDownloader.ExtractStreamingScript: start.");
            Helper.Log("FileDownloader.ExtractStreamingScript: data path is " + Constants.LOCAL_SCRIPT_BUNDLE_PATH);
            Helper.Log("FileDownloader.ExtractStreamingScript: streaming path is " + Constants.STREAMING_SCRIPT_BUNDLE_PATH);
            if (Directory.Exists(Constants.LOCAL_SCRIPT_BUNDLE_PATH))
            {
                Directory.Delete(Constants.LOCAL_SCRIPT_BUNDLE_PATH, true);
            }
            Directory.CreateDirectory(Constants.LOCAL_SCRIPT_BUNDLE_PATH);

            // 拷贝清单里的其他文件
            for (int i = 0; i < StreamingScriptManifest.FileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = StreamingScriptManifest.FileInfos[i];
                string contentFilePath = Constants.STREAMING_SCRIPT_BUNDLE_PATH + fileInfo.Name;
                string localFilePath = Constants.LOCAL_SCRIPT_BUNDLE_PATH + fileInfo.Name;
                Helper.Log("FileDownloader.ExtractStreamingScript: extract " + contentFilePath + " to " + localFilePath);
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
            // 保存manifest文件至本地
            if (StreamingScriptManifest.Bytes != null)
            {
                string localManifestPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH + Constants.SCRIPT_MANIFEST_FILE;
                File.WriteAllBytes(localManifestPath, StreamingScriptManifest.Bytes);
            }
            Helper.Log("FileDownloader.ExtractStreamingScript: done.");
            yield return 0;
        }

        private IEnumerator DownloadScript(List<FileManifest.FileInfo> fileInfos, FileManifest.DifferInfo differ)
        {
            Helper.Log("FileDownloader.DownloadScript: start.");
            string dataPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH;  //数据目录
            Helper.Log("FileDownloader.DownloadScript: data path is " + dataPath);

            WWW www = null;
            for (int i = 0; i < fileInfos.Count; i++)
            {
                if (UI.FileServerListener.CurrentStatus == HttpListener.Status.HostError || UI.FileServerListener.CurrentStatus == HttpListener.Status.NetworkError)
                {
                    Error = "ServerError";
                    yield break;
                }
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string remoteFilePath = Constants.REMOTE_SCRIPT_BUNDLE_PATH + fileInfo.Name;
                string localFilePath = Constants.LOCAL_SCRIPT_BUNDLE_PATH + fileInfo.Name;
                Helper.Log("FileDownloader.DownloadScript: download from " + remoteFilePath + " to " + localFilePath);
                www = new WWW(remoteFilePath);
                yield return www;
                if (string.IsNullOrEmpty(www.error) && www.isDone)
                {
                    DownloadSize += fileInfo.Size;
                    UI.UpdateProgressBar(DownloadSize, TotalSize);
                    File.WriteAllBytes(localFilePath, www.bytes);
                    yield return new WaitForEndOfFrame();
                }
                else
                {
                    Error = www.error;
                    www.Dispose();
                    yield break;
                }
            }
            www.Dispose();

            //UpdateUI.HideProgressBar();
            // 保存manifest文件至本地
            string localManifestPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH + Constants.SCRIPT_MANIFEST_FILE;
            File.WriteAllBytes(localManifestPath, RemoteScriptManifest.Bytes);

            Helper.Log("FileDownloader.DownloadScript: done.");
            yield return 0;
        }

        private IEnumerator DeleteOldScript(List<FileManifest.FileInfo> fileInfos)
        {
            Helper.Log("FileDownloader.DeleteOldScript: start.");
            string dataPath = Constants.LOCAL_SCRIPT_BUNDLE_PATH;  //数据目录
            Helper.Log("FileDownloader.DeleteOldScript: data path is " + dataPath);

            for (int i = 0; i < fileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string filePath = dataPath + fileInfo.Name;

                if (File.Exists(filePath))
                {
                    Helper.Log("FileDownloader.DeleteOldScript: delete " + filePath);
                    File.Delete(filePath);
                }

            }
            Helper.Log("FileDownloader.DeleteOldScript: done.");
            yield return 0;
        }

        public IEnumerator UpdateAsset(FileManifest.DifferInfo differInfo)
        {
            Error = string.Empty;
            if (differInfo.HasDiffer == false)
            {
                Helper.Log("FileDownloader.UpdateAsset: lcoal assets is same with remote,no need to update.");
                yield break;
            }
            else
            {
                if (differInfo.NeedUpdate)
                {
                    UI.SetTips("正在下载必要的资源,请不要断开网络");
                    UI.UpdateProgressBar(DownloadSize, TotalSize);
                }
                if (differInfo.Modified.Count > 0)
                {
                    // 下载服务器差异的文件
                    yield return Loom.StartCR(DownloadAsset(differInfo.Modified, differInfo));
                }
                if (string.IsNullOrEmpty(Error) == false)
                {
                    yield break;
                }
                if (differInfo.Added.Count > 0)
                {
                    // 下载服务器新增的文件
                    yield return Loom.StartCR(DownloadAsset(differInfo.Added, differInfo));
                }
                if (string.IsNullOrEmpty(Error) == false)
                {
                    yield break;
                }
                if (differInfo.Deleted.Count > 0)
                {
                    // 删除服务器不存在的文件
                    yield return Loom.StartCR(DeleteOldAsset(differInfo.Deleted));
                }
                Error = string.Empty;
                yield return 0;
            }
        }

        private IEnumerator ExtractStreamingAsset()
        {
            Helper.Log("FileDownloader.ExtractStreamingAsset: start.");
            Helper.Log("FileDownloader.ExtractStreamingAsset: data path is " + Constants.LOCAL_ASSET_BUNDLE_PATH);
            Helper.Log("FileDownloader.ExtractStreamingAsset: streaming path is " + Constants.STREAMING_ASSET_BUNDLE_PATH);
            if (Directory.Exists(Constants.LOCAL_ASSET_BUNDLE_PATH))
            {
                Directory.Delete(Constants.LOCAL_ASSET_BUNDLE_PATH, true);
            }
            Directory.CreateDirectory(Constants.LOCAL_ASSET_BUNDLE_PATH);
            // 拷贝清单里的其他文件
            for (int i = 0; i < StreamingAssetManifest.FileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = StreamingAssetManifest.FileInfos[i];
                string contentFilePath = Constants.STREAMING_ASSET_BUNDLE_PATH + fileInfo.Name;
                string localFilePath = Constants.LOCAL_ASSET_BUNDLE_PATH + fileInfo.Name;
                Helper.Log("FileDownloader.ExtractStreamingAsset: extract " + contentFilePath + " to " + localFilePath);
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
            // 保存manifest文件至本地
            if (StreamingScriptManifest.Bytes != null)
            {
                string localManifestPath = Constants.LOCAL_ASSET_BUNDLE_PATH + Constants.SCRIPT_MANIFEST_FILE;
                File.WriteAllBytes(localManifestPath, StreamingAssetManifest.Bytes);
            }
            Helper.Log("FileDownloader.ExtractStreamingAsset: done.");
            yield return 0;
        }

        private IEnumerator DownloadAsset(List<FileManifest.FileInfo> fileInfos, FileManifest.DifferInfo differInfo)
        {
            Helper.Log("FileDownloader.DownloadAsset: start.");
            string dataPath = Constants.LOCAL_ASSET_BUNDLE_PATH;  //数据目录
            Helper.Log("FileDownloader.DownloadAsset: data path is " + dataPath);

            WWW www = null;
            for (int i = 0; i < fileInfos.Count; i++)
            {
                if (UI.FileServerListener.CurrentStatus == HttpListener.Status.HostError || UI.FileServerListener.CurrentStatus == HttpListener.Status.NetworkError)
                {
                    Error = "ServerError";
                    yield break;
                }
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string remoteFilePath = Constants.REMOTE_ASSET_BUNDLE_PATH + fileInfo.Name;
                string localFilePath = Constants.LOCAL_ASSET_BUNDLE_PATH + fileInfo.Name;
                Helper.Log("FileDownloader.DownloadAsset: download from " + remoteFilePath + " to " + localFilePath);
                www = new WWW(remoteFilePath);
                yield return www;
                if (string.IsNullOrEmpty(www.error) && www.isDone)
                {
                    DownloadSize += fileInfo.Size;
                    UI.UpdateProgressBar(DownloadSize, TotalSize);
                    File.WriteAllBytes(localFilePath, www.bytes);
                    yield return new WaitForEndOfFrame();
                }
                else
                {
                    Error = www.error;
                    www.Dispose();
                    yield break;
                }
            }
            www.Dispose();

            //UpdateUI.HideProgressBar();
            // 保存manifest文件至本地
            string localManifestPath = Constants.LOCAL_ASSET_BUNDLE_PATH + Constants.ASSET_MANIFEST_FILE;
            File.WriteAllBytes(localManifestPath, RemoteAssetManifest.Bytes);

            Helper.Log("FileDownloader.DownloadAsset: done.");
            yield return 0;
        }

        private IEnumerator DeleteOldAsset(List<FileManifest.FileInfo> fileInfos)
        {
            Helper.Log("FileDownloader.DeleteOldAsset: start.");
            string dataPath = Constants.LOCAL_ASSET_BUNDLE_PATH;  //数据目录
            Helper.Log("FileDownloader.DeleteOldAsset: data path is " + dataPath);

            for (int i = 0; i < fileInfos.Count; i++)
            {
                FileManifest.FileInfo fileInfo = fileInfos[i];
                string filePath = dataPath + fileInfo.Name;

                if (File.Exists(filePath))
                {
                    Helper.Log("FileDownloader.DeleteOldAsset: delete " + filePath);
                    File.Delete(filePath);
                }

            }
            Helper.Log("FileDownloader.DeleteOldAsset: done.");
            yield return 0;
        }
    }
}

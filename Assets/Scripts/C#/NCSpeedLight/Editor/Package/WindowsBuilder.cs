using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEngine;

namespace NCSpeedLight
{
    public class WindowsBuilder : Builder
    {
        private string archivePath;
        private string zipPath;

        public WindowsBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }

        public override void Build()
        {
#if UNITY_STANDALONE_WIN
            EditorEventCatcher.OnPostBuildPlayerEvent += OnBuildDone;
            CalculateArchivePath();
            BuildOptions ops = BuildOptions.None;
            EditorHelper.BackupAssetOnPreBuild();
            CopyBundlesToStreaming();
            BuildPipeline.BuildPlayer(GetBuildScenes(), archivePath, BuildTarget.StandaloneWindows64, ops);
            DeleteBundlesFromStreaming();
            EditorHelper.RestoreAssetOnPostBuild();
#endif
        }
        private string[] GetBuildScenes()
        {
            List<string> names = new List<string>();
            names.Add("Assets/Launcher.unity");
            return names.ToArray();
        }

        private void CalculateArchivePath()
        {
            int maxIndex = 1;
            string datetime = DateTime.Now.ToString("yyyyMMdd");
            if (Directory.Exists(Constants.BUILD_ARCHIVE_PATH))
            {
                DirectoryInfo binDirectory = new DirectoryInfo(Constants.BUILD_ARCHIVE_PATH);
                FileInfo[] fileInfos = binDirectory.GetFiles();
                if (fileInfos != null && fileInfos.Length > 0)
                {
                    for (int i = 0; i < fileInfos.Length; i++)
                    {
                        FileInfo fileInfo = fileInfos[i];
                        if (fileInfo == null) continue;
                        string fileName = fileInfo.Name;
                        if (string.IsNullOrEmpty(fileName)) continue;
                        if (fileName.EndsWith(".exe") == false) continue;
                        string[] dotArray = fileName.Split(new char[] { '.' });
                        if (dotArray == null || dotArray.Length == 0)
                        {
                            continue;
                        }
                        if (dotArray.Length < 2) continue;
                        string newName = dotArray[dotArray.Length - 2];
                        if (string.IsNullOrEmpty(newName)) continue;
                        string[] strArray = newName.Split(new char[] { '_' });
                        if (strArray.Length == 2)
                        {
                            string tempdate = strArray[0];
                            if (string.IsNullOrEmpty(tempdate)) continue;
                            if (tempdate.EndsWith(datetime))
                            {
                                int tempIndex = 0;
                                int.TryParse(strArray[1], out tempIndex);
                                if (tempIndex >= maxIndex)
                                {
                                    maxIndex = tempIndex;
                                    maxIndex++;
                                }
                            }
                        }
                    }
                }
            }
            archivePath = Helper.StringFormat("{0}{1}{2}_{3}.exe", Constants.BUILD_ARCHIVE_PATH, Constants.GAME_NAME, datetime, maxIndex);
            zipPath = Helper.StringFormat("{0}{1}{2}_{3}.exe", Constants.BUILD_ARCHIVE_PATH, Constants.GAME_NAME, datetime, maxIndex);
        }

        private void OnBuildDone(BuildTarget target, string path)
        {
            EditorEventCatcher.OnPostBuildPlayerEvent -= OnBuildDone;
            if (target == BuildTarget.StandaloneWindows64)
            {
                //EditorLoom.QueueOnMainThread(() =>
                //{
                //    List<string> files = new List<string>();
                //    files.Add(binPath);
                //    files.Add(Path.GetFileNameWithoutExtension(binPath) + "_Data");
                //    EditorHelper.ZipFile(files, zipPath);
                //});
            }
        }

        private void CopyBundlesToStreaming()
        {
            Helper.CopyDirectory(Constants.BUILD_ASSET_BUNDLE_PATH, Constants.STREAMING_ASSET_BUNDLE_PATH, ".meta", ".manifest", ".DS_Store");
            Helper.CopyDirectory(Constants.BUILD_SCRIPT_BUNDLE_PATH, Constants.STREAMING_SCRIPT_BUNDLE_PATH, ".meta", ".manifest", ".DS_Store");
            AssetDatabase.Refresh();
        }

        private void DeleteBundlesFromStreaming()
        {
            Helper.DeleteDirectory(Constants.STREAMING_ASSET_BUNDLE_PATH);
            Helper.DeleteDirectory(Constants.STREAMING_SCRIPT_BUNDLE_PATH);
            AssetDatabase.Refresh();
        }
    }
}


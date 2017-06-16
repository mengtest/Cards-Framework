using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;

namespace NCSpeedLight
{
    public class AndroidBuilder : Builder
    {
        private string archivePath;
        public AndroidBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }

        public override void Build()
        {
#if UNITY_ANDROID
            CalculateArchivePath();
            SetKeyStore();
            EditorHelper.BackupAssetOnPreBuild();
            CopyBundlesToStreaming();
            BuildPipeline.BuildPlayer(GetBuildScenes(), archivePath, BuildTarget.Android, SetBuildOption());
            CopyBundlesToStreaming();
            EditorHelper.RestoreAssetOnPostBuild();
#endif
        }

        private static string[] GetBuildScenes()
        {
            List<string> names = new List<string>();
            //foreach (EditorBuildSettingsScene e in EditorBuildSettings.scenes)
            //{
            //    if (e == null)
            //    {
            //        continue;
            //    }
            //    if (e.enabled)
            //    {
            //        names.Add(e.path);
            //    }
            //}
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
                        if (fileName.EndsWith(".apk") == false) continue;
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
            archivePath = Helper.StringFormat("{0}{1}{2}_{3}.apk", Constants.BUILD_ARCHIVE_PATH, Constants.GAME_NAME, datetime, maxIndex);
        }

        private void SetProductName(string name)
        {
            PlayerSettings.productName = name;
        }

        private void SetKeyStore()
        {
            PlayerSettings.Android.keystoreName = "Docs/PlatformAdapter/Android/KEY.keystore";
            PlayerSettings.Android.keystorePass = "qwer1234";
            PlayerSettings.Android.keyaliasName = "tp_signed_key";
            PlayerSettings.Android.keyaliasPass = "qwer1234";
        }

        private BuildOptions SetBuildOption()
        {
            PlayerSettings.Android.targetDevice = AndroidTargetDevice.ARMv7;
            BuildOptions ops = BuildOptions.None;
            return ops;
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

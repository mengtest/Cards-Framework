using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;

namespace NCSpeedLight
{
    public static class APKBuilder
    {
        private static bool PROFILE_VERSION = false;
        private static string ANDROID_APK_PATH = "Bin/Cards.apk";
        public static void Build()
        {
            GenerateAPKName();
            //SetKeyStore();
            BuildOptions ops = SetBuildAPKOption();
            BuildPipeline.BuildPlayer(GetBuildScenes(), ANDROID_APK_PATH, BuildTarget.Android, ops);
        }
        private static string[] GetBuildScenes()
        {
            List<string> names = new List<string>();
            foreach (EditorBuildSettingsScene e in EditorBuildSettings.scenes)
            {
                if (e == null)
                {
                    continue;
                }
                if (e.enabled)
                {
                    names.Add(e.path);
                }
            }
            return names.ToArray();
        }
        private static void GenerateAPKName()
        {
            int apkIndex = 1;
            string datetime = DateTime.Now.ToString("yyyyMMdd");
            DirectoryInfo binDirectory = new DirectoryInfo(@"Bin\");
            FileInfo[] fileInfos = binDirectory.GetFiles();
            if (fileInfos != null && fileInfos.Length > 0)
            {
                for (int i = 0; i < fileInfos.Length; i++)
                {
                    FileInfo fileInfo = fileInfos[i];
                    if (fileInfo == null) continue;
                    string fileName = fileInfo.Name;
                    if (string.IsNullOrEmpty(fileName)) continue;

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
                            if (tempIndex >= apkIndex)
                            {
                                apkIndex++;
                            }
                        }
                    }
                }
            }
            if (apkIndex == 0) apkIndex = 1;
            ANDROID_APK_PATH = "Bin/" + datetime + "_" + apkIndex + ".apk";
        }
        private static void SetProductName(string name)
        {
            PlayerSettings.productName = name;
        }
        private static void SetKeyStore()
        {
            PlayerSettings.Android.keystoreName = "HLFXQ.keystore";
            PlayerSettings.Android.keystorePass = "qwer1234";
            PlayerSettings.Android.keyaliasName = "fxq";
            PlayerSettings.Android.keyaliasPass = "qwer1234";
        }
        private static BuildOptions SetBuildAPKOption()
        {
            PlayerSettings.Android.targetDevice = AndroidTargetDevice.ARMv7;
            BuildOptions ops = BuildOptions.None;
            if (PROFILE_VERSION)
            {
                ops |= BuildOptions.Development;
                ops |= BuildOptions.AllowDebugging;
                ops |= BuildOptions.ConnectWithProfiler;
            }
            else
            {
                ops |= BuildOptions.None;
            }
            return ops;
        }
    }
}

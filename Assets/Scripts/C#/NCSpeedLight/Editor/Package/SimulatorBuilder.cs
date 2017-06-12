using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEngine;

namespace NCSpeedLight
{
    public class SimulatorBuilder : Builder
    {
        private string binPath = "Bin/Cards.exe";

        private string zipPath = "Bin/Cards.zip";

        private string root = Application.dataPath.Substring(0, Application.dataPath.LastIndexOf("/") + 1) + "Bin/";

        public SimulatorBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }

        public override void Build()
        {
#if UNITY_STANDALONE_WIN
            GenerateBinPath();
            BuildOptions ops = BuildOptions.None;
            EditorHelper.BackupAssetOnPreBuild();
            BuildPipeline.BuildPlayer(GetBuildScenes(), binPath, BuildTarget.StandaloneWindows64, ops);
            EditorHelper.RestoreAssetOnPostBuild();
            //ZipFile();
#endif
        }
        private string[] GetBuildScenes()
        {
            List<string> names = new List<string>();
            names.Add("Assets/Launcher.unity");
            return names.ToArray();
        }

        private void GenerateBinPath()
        {
            int maxIndex = 1;
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
            binPath = Helper.StringFormat("{0}{1}{2}_{3}.exe", root, Constants.GAME_NAME, datetime, maxIndex);
            zipPath = Helper.StringFormat("{0}{1}{2}_{3}.exe", root, Constants.GAME_NAME, datetime, maxIndex);
        }

        private void ZipFile()
        {
            List<string> files = new List<string>();
            files.Add(binPath);
            files.Add(Path.GetFileNameWithoutExtension(binPath));
            EditorHelper.ZipFile(files, zipPath);
        }
    }
}


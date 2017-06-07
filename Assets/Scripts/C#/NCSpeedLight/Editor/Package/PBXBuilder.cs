using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;
using System.IO;
using System;
#if UNITY_IOS
using UnityEditor.iOS.Xcode;
#endif
using System.Collections.Generic;

namespace NCSpeedLight
{
    public partial class XClass : System.IDisposable
    {
        public string ClassPath;

        public XClass(string path)
        {
            ClassPath = path;
            if (File.Exists(ClassPath) == false)
            {
                Debug.LogError("Class does not exists at " + path);
                return;
            }
        }

        public void WriteBelow(string below, string text)
        {
            StreamReader streamReader = new StreamReader(ClassPath);
            string text_all = streamReader.ReadToEnd();
            streamReader.Close();
            int beginIndex = text_all.IndexOf(below);
            if (beginIndex == -1)
            {
                Debug.LogError("There is no symbol " + below + " at " + ClassPath);
                return;
            }
            int endIndex = text_all.LastIndexOf("\n", beginIndex + below.Length);
            text_all = text_all.Substring(0, endIndex) + "\n" + text + "\n" + text_all.Substring(endIndex);
            StreamWriter streamWriter = new StreamWriter(ClassPath);
            streamWriter.Write(text_all);
            streamWriter.Close();
        }

        public void Replace(string below, string newText)
        {
            StreamReader streamReader = new StreamReader(ClassPath);
            string text_all = streamReader.ReadToEnd();
            streamReader.Close();
            int beginIndex = text_all.IndexOf(below);
            if (beginIndex == -1)
            {
                Debug.LogError("There is no symbol " + below + " at " + ClassPath);
                return;
            }
            text_all = text_all.Replace(below, newText);
            StreamWriter streamWriter = new StreamWriter(ClassPath);
            streamWriter.Write(text_all);
            streamWriter.Close();
        }
        public void Dispose() { }
    }

    public class PBXBuilder : Builder
    {
        private static bool PROFILE_VERSION = false;
        public static string BIN_PATH = "Bin/XCodeProj";
        public PBXBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }

        public override void Build()
        {
            BuildOptions ops = SetBuildOption();
            BuildPipeline.BuildPlayer(GetBuildScenes(), BIN_PATH, BuildTarget.iOS, ops);
        }

        private string[] GetBuildScenes()
        {
            List<string> names = new List<string>();
            names.Add("Assets/Launcher.unity");
            return names.ToArray();
        }

        private BuildOptions SetBuildOption()
        {
            PlayerSettings.iOS.targetDevice = iOSTargetDevice.iPhoneAndiPad;
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

#if UNITY_IOS
        [PostProcessBuild]
        public static void OnPostProcessBuild(BuildTarget target, string pathToBuiltProject)
        {
            Debug.Log("PBXProjectProcessor.OnPostProcessBuild: " + pathToBuiltProject);
            EditProj(pathToBuiltProject);
            EditInfoPlist(pathToBuiltProject);
            EditUnityAppController(pathToBuiltProject);
        }

        /// <summary>
        /// Edit project settings.
        /// </summary>
        /// <param name="pathToBuiltProject"></param>
        private static void EditProj(string pathToBuiltProject)
        {
            string projPath = pathToBuiltProject + "/Unity-iPhone.xcodeproj/project.pbxproj";

            PBXProject proj = new PBXProject();
            proj.ReadFromFile(projPath);
            string targetGuid = proj.TargetGuidByName("Unity-iPhone");

            //======  AMapSDK Config Start  ======//
            proj.AddFrameworkToProject(targetGuid, "CoreTelephony.framework", true);
            proj.AddFrameworkToProject(targetGuid, "JavaScriptcore.framework", true);
            proj.AddFrameworkToProject(targetGuid, "SystemConfiguration.framework", true);
            proj.AddFrameworkToProject(targetGuid, "Security.framework", true);

            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libz.tbd", "Frameworks/libz.tbd", PBXSourceTree.Sdk));
            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libc++.tbd", "Frameworks/libc++.tbd", PBXSourceTree.Sdk));
            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libstdc++.6.0.9.tbd", "Frameworks/libstdc++.6.0.9.tbd", PBXSourceTree.Sdk));
            //======  AMapSDK Config End  ======//


            //======  ShareSDK Config Start  ======//
            proj.AddFrameworkToProject(targetGuid, "JavaScriptcore.framework", true);

            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libicucore.tbd", "Frameworks/libicucore.tbd", PBXSourceTree.Sdk));
            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libz.tbd", "Frameworks/libz.tbd", PBXSourceTree.Sdk));
            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libstdc++.tbd", "Frameworks/libstdc++.tbd", PBXSourceTree.Sdk));
            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libsqlite3.tbd", "Frameworks/libsqlite3.tbd", PBXSourceTree.Sdk));

            string shareSDKZipFile = Application.dataPath + "/Plugins/iOS/ShareSDK/ShareSDK.zip";
            string shareSDKExtractPath = pathToBuiltProject + "/Frameworks/Plugins/iOS/";
            EditorHelper.Unzip(shareSDKZipFile, shareSDKExtractPath);
            //删除多余解压文件
            if (Directory.Exists(shareSDKExtractPath + "/__MACOSX"))
            {
                Directory.Delete(shareSDKExtractPath + "/__MACOSX", true);
            }
            // 添加文件夹引用
            List<string> sharesdkFrameworks = new List<string>();
            CollectShareSDKFrameworks(sharesdkFrameworks, shareSDKExtractPath);
            for (int i = 0; i < sharesdkFrameworks.Count; i++)
            {
                string framework = sharesdkFrameworks[i];
                framework = framework.Substring(pathToBuiltProject.Length + 1);
                proj.AddFileToBuild(targetGuid, proj.AddFile(framework, framework, PBXSourceTree.Source));
            }
            proj.AddBuildProperty(targetGuid, "FRAMEWORK_SEARCH_PATHS", "$(PROJECT_DIR)/Frameworks/Plugins/iOS/ShareSDK/**");
            proj.AddBuildProperty(targetGuid, "HEADER_SEARCH_PATHS", "$(PROJECT_DIR)/Frameworks/Plugins/iOS/ShareSDK/**");
            proj.AddBuildProperty(targetGuid, "LIBRARY_SEARCH_PATHS", "$(PROJECT_DIR)/Frameworks/Plugins/iOS/ShareSDK/**");
            //======  ShareSDK Config End  ======//


            //====== RongCloud Config Begin ======//
            proj.AddFrameworkToProject(targetGuid, "CoreTelephony.framework", true);
            proj.AddFileToBuild(targetGuid, proj.AddFile("usr/lib/libsqlite3.tbd", "Frameworks/libsqlite3.tbd", PBXSourceTree.Sdk));
            //====== RongCloud Config End ======//

            proj.SetBuildProperty(targetGuid, "GCC_ENABLE_OBJC_EXCEPTIONS", "YES");

            proj.AddBuildProperty(targetGuid, "OTHER_LDFLAGS", "-ObjC");
            proj.AddBuildProperty(targetGuid, "OTHER_LDFLAGS", "-licucore");

            proj.SetBuildProperty(targetGuid, "ENABLE_BITCODE", "No");

            proj.WriteToFile(projPath);
        }

        /// <summary>
        /// Edit plist file.
        /// </summary>
        /// <param name="pathToBuiltProject"></param>
        private static void EditInfoPlist(string pathToBuiltProject)
        {
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plistDocument = new PlistDocument();
            plistDocument.ReadFromFile(plistPath);
            PlistElementDict dict = plistDocument.root.AsDict();
            dict.SetString("CFBundleIdentifier", PlayerSettings.applicationIdentifier);
            dict.SetString("NSLocationAlwaysUsageDescription", "AMapLocationKit需要定位权限才可以使用");

            // ShareSDK Wechat ID
            PlistElementArray layer1Array = dict.CreateArray("URL Types");
            PlistElementDict layer1Dict = layer1Array.AddDict();
            PlistElementArray layer2Array = layer1Dict.CreateArray("URL Schemes");
            layer2Array.AddString("wxf75bd5ce5ce91151");

            plistDocument.WriteToFile(plistPath);
        }

        private static void EditUnityAppController(string pathToBuiltProject)
        {
            // Read unityappcontroller.mm file.
            XClass UnityAppController = new XClass(pathToBuiltProject + "/Classes/UnityAppController.mm");

            // Add a line code.
            UnityAppController.WriteBelow("#include \"PluginBase/AppDelegateListener.h\"", "#include \"LocationUtils.h\"");
            UnityAppController.WriteBelow("#include \"LocationUtils.h\"", "#include \"ShareSDKUnity3DBridge.h\"");
            UnityAppController.WriteBelow("#include \"ShareSDKUnity3DBridge.h\"", "#include \"SoundUtils.h\"");
            UnityAppController.WriteBelow("#include \"SoundUtils.h\"", "#include \"ClipboardUtils.h\"");
        }

        private static void CollectShareSDKFrameworks(List<string> outfiles, string directory)
        {
            if (directory.EndsWith(".framework") || directory.EndsWith(".bundle"))
            {
                directory = directory.Replace("\\", "/");
                directory = directory.Replace("//", "/");
                outfiles.Add(directory);
            }
            else if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = files[i];
                    if (file.EndsWith(".DS_Store")) continue;
                    directory = directory.Replace("\\", "/");
                    directory = directory.Replace("//", "/");
                    outfiles.Add(file);
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectShareSDKFrameworks(outfiles, dirs[i]);
                }
            }
            else if (File.Exists(directory))
            {
                directory = directory.Replace("\\", "/");
                directory = directory.Replace("//", "/");
                outfiles.Add(directory);
            }
        }
#endif
    }
}

/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: BuilderEditorUtils.cs
			// Describle:    
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

#if UNITY_EDITOR
using UnityEngine;
using UnityEditor;
using System.IO;
using System.Collections.Generic;
using System;

namespace NCSpeedLight
{
    public static class BuilderEditorUtils
    {
        public static bool DrawHeader(string text) { return DrawHeader(text, text, false, false); }
        public static bool DrawHeader(string text, string key) { return DrawHeader(text, key, false, false); }
        public static bool DrawHeader(string text, bool detailded) { return DrawHeader(text, text, detailded, !detailded); }
        public static bool DrawHeader(string text, string key, bool forceOn, bool minimalistic)
        {
            bool state = EditorPrefs.GetBool(key, true);

            if (!minimalistic) GUILayout.Space(3f);
            if (!forceOn && !state) GUI.backgroundColor = new Color(0.8f, 0.8f, 0.8f);
            GUILayout.BeginHorizontal();
            GUI.changed = false;

            if (minimalistic)
            {
                if (state) text = "\u25BC" + (char)0x200a + text;
                else text = "\u25BA" + (char)0x200a + text;

                GUILayout.BeginHorizontal();
                GUI.contentColor = EditorGUIUtility.isProSkin ? new Color(1f, 1f, 1f, 0.7f) : new Color(0f, 0f, 0f, 0.7f);
                if (!GUILayout.Toggle(true, text, "PreToolbar2", GUILayout.MinWidth(20f))) state = !state;
                GUI.contentColor = Color.white;
                GUILayout.EndHorizontal();
            }
            else
            {
                text = "<b><size=11>" + text + "</size></b>";
                if (state) text = "\u25BC " + text;
                else text = "\u25BA " + text;
                if (!GUILayout.Toggle(true, text, "dragtab", GUILayout.MinWidth(20f))) state = !state;
            }

            if (GUI.changed) EditorPrefs.SetBool(key, state);

            if (!minimalistic) GUILayout.Space(2f);
            GUILayout.EndHorizontal();
            GUI.backgroundColor = Color.white;
            if (!forceOn && !state) GUILayout.Space(3f);
            return state;
        }

        private static bool EndHorizontal = false;
        public static void BeginContents() { BeginContents(false); }
        public static void BeginContents(bool minimalistic)
        {
            if (!minimalistic)
            {
                EndHorizontal = true;
                GUILayout.BeginHorizontal();
                EditorGUILayout.BeginHorizontal("AS TextArea", GUILayout.MinHeight(10f));
            }
            else
            {
                EndHorizontal = false;
                EditorGUILayout.BeginHorizontal(GUILayout.MinHeight(10f));
                GUILayout.Space(10f);
            }
            GUILayout.BeginVertical();
            GUILayout.Space(2f);
        }
        public static void EndContents()
        {
            try
            {
                GUILayout.Space(3f);
                GUILayout.EndVertical();
                EditorGUILayout.EndVertical();
                if (EndHorizontal)
                {
                    GUILayout.Space(3f);
                    GUILayout.EndHorizontal();
                }
                GUILayout.Space(3f);

            }
            catch { }

        }

        //public static readonly string ASSERBUNDLE_OUTPUT_DIRECTORY = "AssetBundles";

        public static string MetaFileName = "Meta.xml";

        public static string NormalizePath(string path)
        {
            return path.Replace("\\", "/");
        }

        public static string GetRelativePath(string assetPath)
        {
            return assetPath.Substring("Assets/Resources/".Length);
        }

        public static string LoadFile(String fileName)
        {
            if (File.Exists(fileName))
                using (StreamReader sr = File.OpenText(fileName))
                    return sr.ReadToEnd();
            else
                return string.Empty;
        }

        public static string ReplaceFirst(this string input, string oldValue, string newValue, int startAt = 0)
        {
            int pos = input.IndexOf(oldValue, startAt);
            if (pos < 0)
            {
                return input;
            }
            return string.Concat(input.Substring(0, pos), newValue, input.Substring(pos + oldValue.Length));
        }

        public static void CollectAssets(string directory, List<string> outfiles)
        {
            if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = BuilderEditorUtils.NormalizePath(files[i]);
                    if (file.EndsWith(".meta") || file.EndsWith(".cs") || file.EndsWith(".js"))
                    {
                        continue;
                    }
                    file = file.Substring(Application.dataPath.Length + 1);
                    file = "Assets/" + file;
                    outfiles.Add(file);
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectAssets(dirs[i], outfiles);
                }
            }
            else if (File.Exists(directory))
            {
                directory = directory.Substring(Application.dataPath.Length + 1);
                directory = "Assets/" + directory;
                outfiles.Add(directory);
            }
        }


        public static Dictionary<string, List<string>> CollectAssetDependency(List<string> sourceAssets)
        {
            Dictionary<string, List<string>> dependencies = new Dictionary<string, List<string>>();
            for (int i = 0; i < sourceAssets.Count; i++)
            {
                string sourceAsset = sourceAssets[i];
                string[] deps = AssetDatabase.GetDependencies(sourceAsset);
                List<string> depList = new List<string>();
                for (int j = 0; j < deps.Length; j++)
                {
                    string dep = deps[j];
                    if (dep.EndsWith(".cs")) continue;
                    depList.Add(dep);
                }
                dependencies.Add(sourceAsset, depList);
            }
            return dependencies;
        }

        public static string GetPlatformName(RuntimePlatform platform)
        {
            switch (platform)
            {
                case RuntimePlatform.Android:
                    return "Android";
                case RuntimePlatform.IPhonePlayer:
                    return "iOS";
                case RuntimePlatform.WebGLPlayer:
                    return "WebGL";
                case RuntimePlatform.WindowsPlayer:
                    return "Windows";
                case RuntimePlatform.OSXPlayer:
                    return "OSX";
                case RuntimePlatform.WindowsEditor:
                case RuntimePlatform.OSXEditor:
#if UNITY_ANDROID
                    return "Android";
#elif UNITY_IPHONE
            return "iOS";
#else
                    return "Windows";
#endif
                default:
                    return null;
            }
        }
    }
}
#endif
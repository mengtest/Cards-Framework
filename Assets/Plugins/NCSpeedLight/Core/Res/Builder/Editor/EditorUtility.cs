/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: EditorUtility.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
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
    public static class EditorUtility
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

        public static string PathNormalize(this string str)
        {
            return str.Replace("\\", "/").ToLower();
        }

        public static string GetAssetName(string path, bool fullName = false)
        {
            string[] ss = path.Split('/');

            if (fullName)
                return ss[ss.Length - 1];

            return ss[ss.Length - 1].Split('.')[0];
        }

        public static string NormallizePath(string path)
        {
            return path.Replace("\\", "/");
        }

        public static void OutputTXT(string fileName, IEnumerable<string> list)
        {
            TextWriter tw = File.CreateText(fileName);
            foreach (string s in list)
            {
                tw.WriteLine(s);
            }
            tw.Close();
        }

        public static string GetRelativePath(string assetPath)
        {
            return assetPath.Substring("Assets/Resources/".Length);
        }

        public static String LoadFile(String fileName)
        {
            if (File.Exists(fileName))
                using (StreamReader sr = File.OpenText(fileName))
                    return sr.ReadToEnd();
            else
                return String.Empty;
        }

        public static String ReplaceFirst(this string input, string oldValue, string newValue, int startAt = 0)
        {
            int pos = input.IndexOf(oldValue, startAt);
            if (pos < 0)
            {
                return input;
            }
            return string.Concat(input.Substring(0, pos), newValue, input.Substring(pos + oldValue.Length));
        }

        public static string GetPlatformName(RuntimePlatform platform)
        {
            switch (platform)
            {
                case RuntimePlatform.Android:
                    return "Android";
                case RuntimePlatform.IPhonePlayer:
                    return "iOS";
                case RuntimePlatform.WindowsWebPlayer:
                case RuntimePlatform.OSXWebPlayer:
                    return "WebPlayer";
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

        public static string GetMD5(byte[] src)
        {
            var md5 = System.Security.Cryptography.MD5.Create();
            byte[] bytes = md5.ComputeHash(src);
            md5.Clear();

            var sb = new System.Text.StringBuilder();
            for (int i = 0; i < bytes.Length; i++)
            {
                sb.Append(bytes[i].ToString("x2"));
            }

            return sb.ToString();
        }
    }
}
#endif
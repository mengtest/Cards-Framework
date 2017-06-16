using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEngine;

namespace NCSpeedLight
{
    public static class Preferences
    {
        public static string GameName = string.Empty;
        public static string Channel = string.Empty;
        public static string Company = string.Empty;
        public static bool AssetBundle = false;
        public static bool ScriptBundle = false;
        public static bool CheckUpdate = false;
        public static bool ForceUpdate = false;
        public static string FileServer;
        public static string AccountServer;
        public static string Error;

        public static void Read(Action callback)
        {
            if (Application.platform == RuntimePlatform.Android)
            {
                Loom.StartCR(ReadCO(callback));
            }
            else
            {
                byte[] bytes = Helper.OpenFile(Constants.PREF_FILE_PATH);
                if (bytes == null)
                {
                    Error = "bytes is nil.";
                    return;
                }
                else
                {
                    Parse(bytes);
                }
                if (callback != null)
                {
                    callback();
                }
            }
        }

        public static void Save()
        {
            try
            {
                if (File.Exists(Constants.PREF_FILE_PATH))
                {
                    File.Delete(Constants.PREF_FILE_PATH);
                }
                using (var file = File.Open(Constants.PREF_FILE_PATH, FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.ReadWrite))
                {
                    StreamWriter sw = new StreamWriter(file);
                    sw.WriteLine("GameName|" + GameName);
                    sw.WriteLine("Company|" + Company);
                    sw.WriteLine("Channel|" + Channel);
                    sw.WriteLine("AssetBundle|" + AssetBundle);
                    sw.WriteLine("ScriptBundle|" + ScriptBundle);
                    sw.WriteLine("CheckUpdate|" + CheckUpdate);
                    sw.WriteLine("ForceUpdate|" + ForceUpdate);
                    sw.WriteLine("FileServer|" + FileServer);
                    sw.WriteLine("AccountServer|" + AccountServer);
                    sw.Close();
                    file.Close();
                    Helper.Log("Preferences: save success.");
                }
            }
            catch (Exception e)
            {
                Helper.LogError("Preferences: save exception: " + e.Message);
            }
        }

        public static IEnumerator ReadCO(Action callback)
        {
            Error = string.Empty;
            using (WWW www = new WWW(Constants.PREF_FILE_PATH))
            {
                yield return www;
                if (string.IsNullOrEmpty(www.error) && www.isDone)
                {
                    Parse(www.bytes);
                    if (callback != null)
                    {
                        callback();
                    }
                    yield return 0;
                }
                else
                {
                    Error = "www error is " + www.error;
                    if (callback != null)
                    {
                        callback();
                    }
                    yield return null;
                }
            }
        }

        private static void Parse(byte[] bytes)
        {
            MemoryStream ms = new MemoryStream(bytes);
            StreamReader sr = new StreamReader(ms);
            while (sr.EndOfStream == false)
            {
                string line = sr.ReadLine();
                if (string.IsNullOrEmpty(line)) continue;
                string[] strs = line.Split('|');
                string key = strs[0];
                string value = strs[1];
                if (key == "GameName")
                {
                    GameName = value;
                }
                else if (key == "Channel")
                {
                    Channel = value;
                }
                else if (key == "Company")
                {
                    Company = value;
                }
                else if (key == "AssetBundle")
                {
                    bool.TryParse(value, out AssetBundle);
                }
                else if (key == "ScriptBundle")
                {
                    bool.TryParse(value, out ScriptBundle);
                }
                else if (key == "CheckUpdate")
                {
                    bool.TryParse(value, out CheckUpdate);
                }
                else if (key == "ForceUpdate")
                {
                    bool.TryParse(value, out ForceUpdate);
                }
                else if (key == "FileServer")
                {
                    FileServer = value;
                }
                else if (key == "AccountServer")
                {
                    AccountServer = value;
                }
            }
            ms.Close();
            sr.Close();
        }
    }
}

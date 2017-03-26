/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Main.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.IO;
using System.Collections;
using UnityEngine;
using LuaInterface;

namespace NCSpeedLight
{
    public class Main : MonoBehaviour
    {
        private void Awake()
        {
            DontDestroyOnLoad(gameObject);
            Application.targetFrameRate = 30;
            Screen.sleepTimeout = SleepTimeout.NeverSleep;

            CheckExtractInternalScripts();
        }

        private void CheckExtractInternalScripts()
        {
            if (Application.isEditor == true)
            {
                StartGame();
            }
            else
            {
                StartCoroutine(OnExtractInternalScripts());
            }
        }

        private IEnumerator OnExtractInternalScripts()
        {
            string dataPath = SharedVariable.SCRIPT_BUNDLE_PATH;  //数据目录
            string resPath = SharedVariable.APP_CONTENT_PATH + "Scripts/"; //游戏包资源目录

            if (Directory.Exists(dataPath))
            {
                Directory.Delete(dataPath, true);
            }
            Directory.CreateDirectory(dataPath);

            string infile = resPath + "manifest.txt";
            string outfile = dataPath + "manifest.txt";
            if (File.Exists(outfile))
            {
                File.Delete(outfile);
            }

            string message = "正在解包文件:>manifest.txt";
            Debug.Log(message);

            if (Application.platform == RuntimePlatform.Android)
            {
                WWW www = new WWW(infile);
                yield return www;

                if (www.isDone)
                {
                    File.WriteAllBytes(outfile, www.bytes);
                }
                yield return 0;
            }
            else
            {
                File.Copy(infile, outfile, true);
            }
            yield return new WaitForEndOfFrame();

            //释放所有文件到数据目录
            string[] files = File.ReadAllLines(outfile);
            foreach (var file in files)
            {
                string[] fs = file.Split('|');
                infile = resPath + fs[0];  //
                outfile = dataPath + fs[0];

                message = "正在解包文件:>" + fs[0];
                Debug.Log("正在解包文件:>" + infile);

                string dir = Path.GetDirectoryName(outfile);
                if (!Directory.Exists(dir)) Directory.CreateDirectory(dir);

                if (Application.platform == RuntimePlatform.Android)
                {
                    WWW www = new WWW(infile);
                    yield return www;

                    if (www.isDone)
                    {
                        File.WriteAllBytes(outfile, www.bytes);
                    }
                    yield return 0;
                }
                else
                {
                    if (File.Exists(outfile))
                    {
                        File.Delete(outfile);
                    }
                    File.Copy(infile, outfile, true);
                }
                yield return new WaitForEndOfFrame();
            }
            message = "解包完成!!!";

            yield return new WaitForSeconds(0.1f);
            message = string.Empty;

            StartGame();

        }

        private void StartGame()
        {
            Destroy(this);
            LuaManager.Initialize();
            LuaManager.Root.transform.SetParent(transform);
            if (SharedVariable.LUA_BUNDLE_MODE)
            {
                LuaManager.LuaLoader.AddBundle("ncspeedlight");
                LuaManager.LuaLoader.AddBundle("ncspeedlight_core_hotfix");
                LuaManager.LuaLoader.AddBundle("ncspeedlight_utils");
            }
            LuaManager.DoString("require 'NCSpeedLight.Main'");
            LuaFunction func = LuaManager.LuaState.GetFunction("Main.StartGame");
            if (func != null)
            {
                func.Call(gameObject);
            }
        }
    }
}
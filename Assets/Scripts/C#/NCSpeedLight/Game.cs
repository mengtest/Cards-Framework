/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Game.cs
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
    public class Game : MonoBehaviour
    {
        public static Game Instance;
        private bool OK = false;
        public LuaFunction AwakeFunction;
        public LuaFunction UpdateFunction;
        public LuaFunction OnGUIFunction;
        public LuaFunction LateUpdateFunction;
        public LuaFunction OnDestroyFunction;
        public LuaFunction OnApplicationPauseFunction;
        public LuaFunction OnApplicationFocusFunction;

        private void Awake()
        {
            Instance = this;
            Helper.Log("Game.Awake()");
            DontDestroyOnLoad(gameObject);
            Application.targetFrameRate = 30;
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
            ExtractInternalScripts();
        }
        /// <summary>
        /// 解压包内容里的脚本文件
        /// </summary>
        private void ExtractInternalScripts()
        {
            Helper.Log("Game.ExtractInternalScripts.Awake()");
            if (Application.isEditor == true)
            {
                StartGame();
            }
            else
            {
                StartCoroutine(OnExtractInternalScripts());
            }
        }
        /// <summary>
        /// 协同解压脚本
        /// </summary>
        /// <returns></returns>
        private IEnumerator OnExtractInternalScripts()
        {
            Helper.Log("Game.OnExtractInternalScripts.Awake()");
            string dataPath = Constants.SCRIPT_BUNDLE_PATH;  //数据目录
            string resPath = Constants.APP_CONTENT_PATH + "Scripts/"; //游戏包资源目录

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
        /// <summary>
        /// 启动游戏
        /// </summary>
        private void StartGame()
        {
            OK = true;

            LuaManager.Initialize();// 加载内置的bundle

            LuaManager.DoString("require 'NCSpeedLight.Game'");
            AwakeFunction = LuaManager.LuaState.GetFunction("Game.Awake");
            UpdateFunction = LuaManager.LuaState.GetFunction("Game.Update");
            LateUpdateFunction = LuaManager.LuaState.GetFunction("Game.LateUpdate");
            OnGUIFunction = LuaManager.LuaState.GetFunction("Game.OnGUI");
            OnDestroyFunction = LuaManager.LuaState.GetFunction("Game.OnDestroy");
            OnApplicationPauseFunction = LuaManager.LuaState.GetFunction("Game.OnApplicationPause");
            OnApplicationFocusFunction = LuaManager.LuaState.GetFunction("Game.OnApplicationFocus");
            if (AwakeFunction != null)
            {
                AwakeFunction.Call(gameObject);
            }
        }
        private void Update()
        {
            if (OK && UpdateFunction != null)
            {
                UpdateFunction.Call();
            }
        }
        private void LateUpdate()
        {
            if (OK && LateUpdateFunction != null)
            {
                LateUpdateFunction.Call();
            }
        }
        private void OnGUI()
        {
            if (OK && OnGUIFunction != null)
            {
                OnGUIFunction.Call();
            }
        }
        private void OnDestroy()
        {
            if (OK && OnDestroyFunction != null)
            {
                OnDestroyFunction.Call();
            }
        }
        private void OnApplicationPause(bool status)
        {
            if (OK && OnApplicationPauseFunction != null)
            {
                OnApplicationPauseFunction.Call(status);
            }
        }
        private void OnApplicationFocus(bool status)
        {
            if (OK && OnApplicationFocusFunction != null)
            {
                OnApplicationFocusFunction.Call(status);
            }
        }
    }
}
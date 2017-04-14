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
            Helper.Log("Game.Awake");
            DontDestroyOnLoad(gameObject);
            Application.targetFrameRate = Constants.TARGET_FRAME_RATE;
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
            Loom.Initialize();
            ExtractInternalScripts();
        }

        private void ExtractInternalScripts()
        {
            Helper.Log("Game.ExtractInternalScripts");
            if (Application.isEditor == true && Constants.LUA_BUNDLE_MODE == false)
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
            Helper.Log("Game.OnExtractInternalScripts: start.");
            string dataPath = Constants.SCRIPT_BUNDLE_PATH;  //数据目录
            string contentPath = Constants.APP_CONTENT_PATH + "Scripts/"; //游戏包资源目录
            Helper.Log("Game.OnExtractInternalScripts: data path is " + dataPath);
            Helper.Log("Game.OnExtractInternalScripts: content path is " + contentPath);
            if (Directory.Exists(dataPath) == false)
            {
                Directory.CreateDirectory(dataPath);
            }

            string contentManifestFile = contentPath + "manifest.txt";
            string manifestFile = dataPath + "manifest.txt";
            string tempManifestFile = dataPath + "manifest_temp.txt";

            // 备份旧的manifest
            if (File.Exists(manifestFile))
            {
                File.Copy(manifestFile, tempManifestFile, true);
            }

            // 从包文件里面解出manifest
            if (Application.platform == RuntimePlatform.Android)
            {
                WWW www = new WWW(contentManifestFile);
                yield return www;

                if (www.isDone)
                {
                    File.WriteAllBytes(manifestFile, www.bytes);
                }
                yield return 0;
            }
            else
            {
                File.Copy(contentManifestFile, manifestFile, true);
            }
            yield return new WaitForEndOfFrame();

            // 对比两个manifest是否相同
            string md5old = Helper.MD5File(tempManifestFile);
            string md5new = Helper.MD5File(manifestFile);
            if (md5old != md5new)
            {
                Helper.Log("Game.OnExtractInternalScripts: md5 is different,start to extract.");

                // 读出文件列表
                string[] files = File.ReadAllLines(manifestFile);

                // 删除原有文件
                if (Directory.Exists(dataPath))
                {
                    Directory.Delete(dataPath, true);
                }
                Directory.CreateDirectory(dataPath);

                // 拷贝新的manifest文件
                if (Application.platform == RuntimePlatform.Android)
                {
                    WWW www = new WWW(contentManifestFile);
                    yield return www;

                    if (www.isDone)
                    {
                        File.WriteAllBytes(manifestFile, www.bytes);
                    }
                    yield return 0;
                }
                else
                {
                    File.Copy(contentManifestFile, manifestFile, true);
                }
                yield return new WaitForEndOfFrame();

                // 拷贝清单里的其他文件
                foreach (var file in files)
                {
                    string[] fs = file.Split('|');
                    string internalFilePath = contentPath + fs[0];
                    string filePath = dataPath + fs[0];
                    Helper.Log("Game.OnExtractInternalScripts: extracting " + internalFilePath + " to " + filePath);
                    string dir = Path.GetDirectoryName(filePath);
                    if (Directory.Exists(dir) == false)
                    {
                        Directory.CreateDirectory(dir);
                    }

                    if (Application.platform == RuntimePlatform.Android)
                    {
                        WWW www = new WWW(internalFilePath);
                        yield return www;
                        if (www.isDone)
                        {
                            File.WriteAllBytes(filePath, www.bytes);
                        }
                        yield return 0;
                    }
                    else
                    {
                        if (File.Exists(filePath))
                        {
                            File.Delete(filePath);
                        }
                        File.Copy(internalFilePath, filePath, true);
                    }
                    yield return new WaitForEndOfFrame();
                }
            }
            else
            {
                Helper.Log("Game.OnExtractInternalScripts: md5 is same,neednt extract.");
            }
            yield return new WaitForSeconds(0.1f);
            Helper.Log("Game.OnExtractInternalScripts: extract internal scripts done.");
            StartGame();
        }

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

        public void RestartGame()
        {

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
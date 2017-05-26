using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;

namespace NCSpeedLight
{
    [InitializeOnLoad]
    public class ReloadProcessor
    {
        private static List<string> modifiedScripts = new List<string>();

        [MenuItem("Framework/Reload/Script %#r")]
        public static void LoadScript()
        {
            if (Application.isPlaying && LuaManager.LuaState != null)
            {
                if (modifiedScripts.Count > 0)
                {
                    LuaManager.DoString("require 'NCSpeedLight.Utils.HF'");
                    LuaInterface.LuaFunction func = LuaManager.LuaState.GetFunction("HF.ReloadFile");
                    LuaBehaviour[] luaBehaviours = UnityEngine.Object.FindObjectsOfType<LuaBehaviour>();
                    List<LuaBehaviour> reloadBehaviours = new List<LuaBehaviour>();

                    for (int i = 0; i < modifiedScripts.Count; i++)
                    {
                        string file = modifiedScripts[i];
                        if (File.Exists(file))
                        {
                            string fileName = file.Substring(file.LastIndexOf("/") + 1);
                            if (luaBehaviours != null && luaBehaviours.Length > 0)
                            {
                                for (int j = 0; j < luaBehaviours.Length; j++)
                                {
                                    LuaBehaviour behaviour = luaBehaviours[j];
                                    if (fileName.StartsWith(behaviour.Script))
                                    {
                                        reloadBehaviours.Add(behaviour);
                                        behaviour.OnPreReload();
                                    }
                                }
                            }

                            func.Call(file);
                            Debug.Log("ReloadProcessor.LoadScript: reload " + fileName + " success.");
                        }
                    }

                    for (int i = 0; i < reloadBehaviours.Count; i++)
                    {
                        LuaBehaviour behaviour = reloadBehaviours[i];
                        behaviour.OnPostReload();
                    }
                    modifiedScripts.Clear();
                }
                else
                {
                    Debug.Log("ReloadProcessor.LoadScript: nothing to reload.");
                }
            }
        }

        [MenuItem("Framework/Reload/Window %#e")]
        public static void LoadWindow()
        {
            if (Application.isPlaying && LuaManager.LuaState != null)
            {
                LoadScript();
                LuaInterface.LuaFunction func = LuaManager.LuaState.GetFunction("UIManager.ReopenCurrentWindow");
                if (func != null)
                {
                    func.Call();
                    Debug.Log("ReloadProcessor.LoadWindow: Reload current window success.");
                }
                else
                {
                    Debug.Log("ReloadProcessor.LoadWindow: Error caused by nil function 'UIManager.ReopenCurrentWindow'.");
                }
            }
        }

        [MenuItem("Framework/Reload/Scene %#w")]
        public static void LoadScene()
        {
            if (Application.isPlaying && LuaManager.LuaState != null)
            {
                LoadScript();
                LuaInterface.LuaFunction func = LuaManager.LuaState.GetFunction("SceneManager.ReloadCurrentScene");
                if (func != null)
                {
                    func.Call();
                    Debug.Log("ReloadProcessor.LoadScene: Reload current scene success.");
                }
                else
                {
                    Debug.Log("ReloadProcessor.LoadScene: Error caused by nil function 'SceneManager.ReloadCurrentScene'.");
                }
            }
        }

        static ReloadProcessor()
        {
            string directory = EditorLuaHelper.LUA_PROJ_ROOT + "NCSpeedLight";
            if (Directory.Exists(directory))
            {
                EditorEventCatcher.OnWillStopEvent += () =>
                {
                    modifiedScripts.Clear();
                };
                EditorEventCatcher.OnWillPlayEvent += () =>
                {
                    modifiedScripts.Clear();
                };
                new DirectoryWatcher(directory, (o, args) =>
                {
                    EditorLoom.QueueOnMainThread(() =>
                    {
                        if (Application.isPlaying)
                        {
                            string file = args.FullPath;
                            if (file.EndsWith(".lua"))
                            {
                                file = file.Replace("//", "/");
                                file = file.Replace("\\", "/");
                                if (modifiedScripts.Contains(file) == false)
                                {
                                    modifiedScripts.Add(file);
                                }
                            }
                        }
                    });
                });
            }
        }
    }
}

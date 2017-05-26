using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;
using System.Reflection;
using System.Text.RegularExpressions;
using UnityEditor.Callbacks;
using UnityEditor.ProjectWindowCallback;
using System.Text;
using System;
using System.Threading;

namespace NCSpeedLight
{
    public class EditorLuaHelper : Editor
    {
        public static string LUA_PROJ_ROOT = Application.dataPath + "/Scripts/Lua/";

        public static string LUA_TEMPLATE_ROOT = Application.dataPath + "/Scripts/Lua/NCSpeedLight/Modules/Template/";

        [OnOpenAsset(2)]
        public static bool OnOpenAsset(int instanceID, int line)
        {
            string assetPath = AssetDatabase.GetAssetPath(instanceID);
            string logStr = GetLogText();
            if (string.IsNullOrEmpty(assetPath) == false && assetPath.EndsWith(".lua"))
            {
                if (assetPath.Contains("Assets/Scripts/Lua") == false)
                {
                    if (EditorUtility.DisplayDialog("Error", "This file " + assetPath + " is not at lua project work space,can not open.", "OK"))
                    {
                        return true;
                    }
                }
                return OpenLuaScriptAtLine(assetPath, 0);
            }
            else if (string.IsNullOrEmpty(logStr) == false)
            {
                if (Regex.IsMatch(logStr, ".lua:"))
                {
                    string[] strs = logStr.Split(']');
                    if (strs == null || strs.Length == 0) return false;
                    string fileName = string.Empty;
                    for (int i = 0; i < strs.Length; i++)
                    {
                        fileName = strs[i];
                        if (fileName.Contains(".lua")) break;
                    }
                    fileName = fileName.Replace("[", "");
                    fileName = fileName.Replace(" ", "");
                    strs = fileName.Split(':');
                    fileName = strs[0];
                    int lineNumber = 0;
                    int.TryParse(strs[1], out lineNumber);
                    string filePath = LUA_PROJ_ROOT + fileName;
                    return OpenLuaScriptAtLine(filePath, lineNumber);
                }
                else if (logStr.StartsWith("LuaException"))
                {
                    //LuaException: [string "NCSpeedLight/Game"]:61: attempt to concatenate local 'a' (a nil value)
                    logStr = logStr.Replace("LuaException: [string ", "");
                    logStr = logStr.Replace("]", "");
                    logStr = logStr.Replace('"', ' ');
                    logStr = logStr.Replace(" ", "");
                    if (logStr.StartsWith(Application.dataPath))
                    {
                        logStr = logStr.Substring(Application.dataPath.Length + 1);
                    }
                    string[] strs = logStr.Split(':');
                    string fileName = strs[0] + ".lua";
                    int lineNumber = 0;
                    int.TryParse(strs[1], out lineNumber);
                    string filePath = LUA_PROJ_ROOT + fileName;
                    return OpenLuaScriptAtLine(filePath, lineNumber);
                }
            }
            return false;
        }

        public static string GetLuaIDEPath()
        {
            return Environment.GetEnvironmentVariable("VSCODE");
        }

        public static bool OpenLuaScriptAtLine(string filePath, int line)
        {
            if (File.Exists(filePath) == false) return false;
            string idePath = GetLuaIDEPath();
            if (string.IsNullOrEmpty(idePath) || !File.Exists(idePath))
            {
                EditorUtility.DisplayDialog("Error", "Please set system env variable named 'VSCODE'", "OK");
                return false;
            }
            else
            {
                OpenFileWith(idePath, filePath, line);
                return true;
            }
        }

        static void OpenFileWith(string idePath, string filePath, int line)
        {
            System.Diagnostics.Process proc = new System.Diagnostics.Process();
            proc.StartInfo.FileName = idePath;
            proc.StartInfo.Arguments = string.Format("--goto {0}:{1}:0", filePath, line);
            proc.Start();
        }

        static string GetLogText()
        {
            // 找到UnityEditor.EditorWindow的assembly
            var assembly_unity_editor = Assembly.GetAssembly(typeof(UnityEditor.EditorWindow));
            if (assembly_unity_editor == null) return null;

            // 找到类UnityEditor.ConsoleWindow
            var type_console_window = assembly_unity_editor.GetType("UnityEditor.ConsoleWindow");
            if (type_console_window == null) return null;
            // 找到UnityEditor.ConsoleWindow中的成员ms_ConsoleWindow
            var field_console_window = type_console_window.GetField("ms_ConsoleWindow", System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.NonPublic);
            if (field_console_window == null) return null;
            // 获取ms_ConsoleWindow的值
            var instance_console_window = field_console_window.GetValue(null);
            if (instance_console_window == null) return null;

            // 如果console窗口时焦点窗口的话，获取stacktrace
            if ((object)UnityEditor.EditorWindow.focusedWindow == instance_console_window)
            {
                // 通过assembly获取类ListViewState
                var type_list_view_state = assembly_unity_editor.GetType("UnityEditor.ListViewState");
                if (type_list_view_state == null) return null;

                // 找到类UnityEditor.ConsoleWindow中的成员m_ListView
                var field_list_view = type_console_window.GetField("m_ListView", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic);
                if (field_list_view == null) return null;

                // 获取m_ListView的值
                var value_list_view = field_list_view.GetValue(instance_console_window);
                if (value_list_view == null) return null;

                // 下面是stacktrace中一些可能有用的数据、函数和使用方法，这里就不一一说明了，我们这里暂时还用不到
                /*
                var field_row = type_list_view_state.GetField("row", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.Public);
                if (field_row == null) return null;

                var field_total_rows = type_list_view_state.GetField("totalRows", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.Public);
                if (field_total_rows == null) return null;

                var type_log_entries = assembly_unity_editor.GetType("UnityEditorInternal.LogEntries");
                if (type_log_entries == null) return null;

                var method_get_entry = type_log_entries.GetMethod("GetEntryInternal", BindingFlags.Static | BindingFlags.Public);
                if (method_get_entry == null) return null;

                var type_log_entry = assembly_unity_editor.GetType("UnityEditorInternal.LogEntry");
                if (type_log_entry == null) return null;

                var field_instance_id = type_log_entry.GetField("instanceID", BindingFlags.Instance | BindingFlags.Public);
                if (field_instance_id == null) return null;

                var field_line = type_log_entry.GetField("line", BindingFlags.Instance | BindingFlags.Public);
                if (field_line == null) return null;

                var field_condition = type_log_entry.GetField("condition", BindingFlags.Instance | BindingFlags.Public);
                if (field_condition == null) return null;

                object instance_log_entry = Activator.CreateInstance(type_log_entry);
                int value_row = (int)field_row.GetValue(value_list_view);
                int value_total_rows = (int)field_total_rows.GetValue(value_list_view);
                int log_by_this_count = 0;
                for (int i = value_total_rows – 1; i > value_row; i–) {
                method_get_entry.Invoke(null, new object[] { i, instance_log_entry });
                string value_condition = field_condition.GetValue(instance_log_entry) as string;
                if (value_condition.Contains("[SDebug]")) {
                log_by_this_count++;
                }
                }
                */

                // 找到类UnityEditor.ConsoleWindow中的成员m_ActiveText
                var field_active_text = type_console_window.GetField("m_ActiveText", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic);
                if (field_active_text == null) return null;

                // 获得m_ActiveText的值，就是我们需要的stacktrace
                string value_active_text = field_active_text.GetValue(instance_console_window).ToString();
                return value_active_text;
            }
            return null;
        }


        [MenuItem("Assets/Open Lua Project")]
        public static void OpenLuaProj()
        {
            string idePath = GetLuaIDEPath();
            if (string.IsNullOrEmpty(idePath) || !File.Exists(idePath))
            {
                EditorUtility.DisplayDialog("Error", "Please set system env variable named 'VSCODE'", "OK");
                return;
            }
            else
            {
                System.Diagnostics.Process proc = new System.Diagnostics.Process();
                proc.StartInfo.FileName = idePath;
                proc.StartInfo.Arguments = string.Format("--new-window {0}", LUA_PROJ_ROOT);
                proc.Start();
            }
        }


        [MenuItem("Assets/Create/Lua Class", false, 1)]
        public static void CreatLuaClass()
        {
            string path = LUA_TEMPLATE_ROOT + "Class.lua";
            ProjectWindowUtil.StartNameEditingIfProjectWindowExists(0, CreateInstance<CreateLuaProcessor>(), GetSelectedPathOrFallback() + "/NewLuaClass.lua", null, path);
        }

        [MenuItem("Assets/Create/Lua Behaviour", false, 2)]
        public static void CreateLuaBehaviour()
        {
            string path = LUA_TEMPLATE_ROOT + "Behaviour.lua";
            ProjectWindowUtil.StartNameEditingIfProjectWindowExists(0, CreateInstance<CreateLuaProcessor>(), GetSelectedPathOrFallback() + "/NewLuaBehaviour.lua", null, path);
        }

        [MenuItem("Assets/Create/Lua Component", false, 3)]
        public static void CreateLuaComponent()
        {
            string path = LUA_TEMPLATE_ROOT + "Component.lua";
            ProjectWindowUtil.StartNameEditingIfProjectWindowExists(0, CreateInstance<CreateLuaProcessor>(), GetSelectedPathOrFallback() + "/NewLuaComponent.lua", null, path);
        }

        [MenuItem("Assets/Create/Lua Blank", false, 4)]
        public static void CreateLuaBlank()
        {
            string path = LUA_TEMPLATE_ROOT + "Blank.lua";
            ProjectWindowUtil.StartNameEditingIfProjectWindowExists(0, CreateInstance<CreateLuaProcessor>(), GetSelectedPathOrFallback() + "/NewLuaBlank.lua", null, path);
        }

        public static string GetSelectedPathOrFallback()
        {
            string path = "Assets";
            foreach (UnityEngine.Object obj in Selection.GetFiltered(typeof(UnityEngine.Object), SelectionMode.Assets))
            {
                path = AssetDatabase.GetAssetPath(obj);
                if (!string.IsNullOrEmpty(path) && File.Exists(path))
                {
                    path = Path.GetDirectoryName(path);
                    break;
                }
            }
            return path;
        }

    }

    public class CreateLuaProcessor : EndNameEditAction
    {
        public override void Action(int instanceId, string pathName, string resourceFile)
        {
            UnityEngine.Object o = CreateScriptAssetFromTemplate(pathName, resourceFile);
            ProjectWindowUtil.ShowCreatedAsset(o);
        }

        internal static UnityEngine.Object CreateScriptAssetFromTemplate(string pathName, string resourceFile)
        {
            string fullPath = Path.GetFullPath(pathName);
            StreamReader streamReader = new StreamReader(resourceFile);
            string text = streamReader.ReadToEnd();
            streamReader.Close();

            // Replace #NAME#
            string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(pathName);
            text = Regex.Replace(text, "#NAME#", fileNameWithoutExtension);

            // Replace #DATETIME#
            string dataTime = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
            text = Regex.Replace(text, "#DATETIME#", dataTime);

            // Replace #USER# Environment.UserName
            text = Regex.Replace(text, "#USER#", Environment.UserName);

            bool encoderShouldEmitUTF8Identifier = true;
            bool throwOnInvalidBytes = false;
            UTF8Encoding encoding = new UTF8Encoding(encoderShouldEmitUTF8Identifier, throwOnInvalidBytes);
            bool append = false;
            StreamWriter streamWriter = new StreamWriter(fullPath, append, encoding);
            streamWriter.Write(text);
            streamWriter.Close();
            AssetDatabase.ImportAsset(pathName);
            return AssetDatabase.LoadAssetAtPath(pathName, typeof(UnityEngine.Object));
        }
    }

    [InitializeOnLoad]
    public class ReloadProcessor
    {
        private static List<string> modifiedScripts = new List<string>();

        [MenuItem("Framework/Reload Script %#r")]
        public static void LoadScript()
        {
            if (Application.isPlaying && LuaManager.LuaState != null)
            {
                if (modifiedScripts.Count > 0)
                {
                    LuaManager.DoString("require 'NCSpeedLight.Utils.Hotfix'");
                    LuaInterface.LuaFunction func = LuaManager.LuaState.GetFunction("Hotfix.ReloadFile");
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

        [MenuItem("Framework/Reload Window %#e")]
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

        [MenuItem("Framework/Reload Scene %#w")]
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

    [CustomEditor(typeof(LuaBehaviour))]
    public class LuaBehaviourInspector : Editor
    {
        private LuaBehaviour m_Instance;
        public string[] m_LuaScripts;
        private string m_LuaProjRoot;
        private string m_CustomScriptRoot;
        private int m_SelectedScript = -1;
        private void OnEnable()
        {
            m_Instance = target as LuaBehaviour;
            m_LuaProjRoot = EditorLuaHelper.LUA_PROJ_ROOT;
            m_CustomScriptRoot = m_LuaProjRoot + "NCSpeedLight/";
            List<string> scripts = new List<string>();
            CollectScripts(m_CustomScriptRoot, scripts);
            m_LuaScripts = scripts.ToArray();

            m_SelectedScript = -1;
            if (string.IsNullOrEmpty(m_Instance.Script) == false)
            {
                string instanceScriptPath = "";
                if (string.IsNullOrEmpty(m_Instance.Script))
                {
                    instanceScriptPath = m_Instance.Script;
                }
                else
                {
                    instanceScriptPath = m_Instance.Module + "." + m_Instance.Script;
                }
                instanceScriptPath = instanceScriptPath.Replace(".", "/");
                instanceScriptPath += ".lua";
                for (int i = 0; i < m_LuaScripts.Length; i++)
                {
                    string str = m_LuaScripts[i];
                    if (instanceScriptPath.EndsWith(str))
                    {
                        m_SelectedScript = i;
                    }
                }
            }
        }
        public override void OnInspectorGUI()
        {
            if (m_Instance == null) return;
            GUILayout.Space(10f);
            GUILayout.BeginHorizontal();
            m_SelectedScript = EditorGUILayout.IntPopup(m_SelectedScript, m_LuaScripts, null, GUILayout.Height(15));
            if (m_SelectedScript != -1)
            {
                string path = m_LuaScripts[m_SelectedScript];
                path = "NCSpeedLight/" + path;
                path = path.Replace(".lua", "");
                path = path.Replace("/", ".");
                string[] strs = path.Split('.');
                string module = path.Substring(0, path.LastIndexOf("."));
                string script = path.Substring(path.LastIndexOf(".") + 1);
                m_Instance.Module = module;
                m_Instance.Script = script;
            }
            if (GUILayout.Button(new GUIContent("Edit"), GUILayout.Height(14), GUILayout.Width(50)))
            {
                string path = m_LuaScripts[m_SelectedScript];
                path = m_CustomScriptRoot + path;
                EditorLuaHelper.OpenLuaScriptAtLine(path, 1);
            }
            GUILayout.EndHorizontal();
            if (m_SelectedScript == -1)
            {
                EditorGUILayout.HelpBox("Please select a script or remove this component.", MessageType.Error);
            }
        }

        private void CollectScripts(string directory, List<string> outfiles)
        {
            if (Directory.Exists(directory))
            {
                string[] files = Directory.GetFiles(directory);
                for (int i = 0; i < files.Length; i++)
                {
                    string file = files[i];
                    file = file.Replace("\\", "/");
                    if (file.EndsWith(".lua"))
                    {
                        file = file.Substring(m_CustomScriptRoot.Length);
                        outfiles.Add(file);
                    }
                }
                string[] dirs = Directory.GetDirectories(directory);
                for (int i = 0; i < dirs.Length; i++)
                {
                    CollectScripts(dirs[i], outfiles);
                }
            }
            else if (File.Exists(directory))
            {
                directory = directory.Substring(m_CustomScriptRoot.Length);
                outfiles.Add(directory);
            }
        }
    }
}
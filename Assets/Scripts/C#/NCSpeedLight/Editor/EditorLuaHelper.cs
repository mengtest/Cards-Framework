using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;
using System.Reflection;
using System.Text.RegularExpressions;
using UnityEditor.Callbacks;

public class EditorLuaHelper : Editor
{
    private const string LUA_IDE_PATH_KEY = "LuaIDE";

    private const string LUA_PROJ_ROOT_KEY = "LuaProjRootPath";

    [OnOpenAsset(2)]
    public static bool OnOpenAsset(int instanceID, int line)
    {
        string assetPath = AssetDatabase.GetAssetPath(instanceID);
        string logStr = GetLogText();
        if (string.IsNullOrEmpty(assetPath) == false && assetPath.EndsWith(".lua"))
        {
            return OpenFileAtLineExternal(assetPath, 0);
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
                string luaProjRootPath = EditorUserSettings.GetConfigValue(LUA_PROJ_ROOT_KEY);
                if (string.IsNullOrEmpty(luaProjRootPath))
                {
                    SetLuaProjRoot();
                }
                luaProjRootPath = EditorUserSettings.GetConfigValue(LUA_PROJ_ROOT_KEY);
                if (string.IsNullOrEmpty(luaProjRootPath))
                {
                    return false;
                }
                else
                {
                    string filePath = luaProjRootPath + "/" + fileName;
                    return OpenFileAtLineExternal(filePath, lineNumber);
                }
            }
        }
        return false;
    }


    static bool OpenFileAtLineExternal(string filePath, int line)
    {
        string idePath = EditorUserSettings.GetConfigValue(LUA_IDE_PATH_KEY);
        if (string.IsNullOrEmpty(idePath) || !File.Exists(idePath))
        {
            SetLuaIDE();
        }
        idePath = EditorUserSettings.GetConfigValue(LUA_IDE_PATH_KEY);
        if (string.IsNullOrEmpty(idePath) || !File.Exists(idePath))
        {
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

    [MenuItem("Framework/Set Lua IDE")]
    public static void SetLuaIDE()
    {
        string path = EditorUserSettings.GetConfigValue(LUA_IDE_PATH_KEY);
        path = EditorUtility.OpenFilePanel("Select lua ide path", path, "exe");
        if (string.IsNullOrEmpty(path) == false)
        {
            EditorUserSettings.SetConfigValue(LUA_IDE_PATH_KEY, path);
            Debug.Log("SetLuaIDE: " + path);
        }
    }

    [MenuItem("Framework/Set Lua Project Root")]
    public static void SetLuaProjRoot()
    {
        string path = EditorUserSettings.GetConfigValue(LUA_PROJ_ROOT_KEY);
        path = EditorUtility.OpenFolderPanel("Select lua project path", path, "");
        if (string.IsNullOrEmpty(path) == false)
        {
            EditorUserSettings.SetConfigValue(LUA_PROJ_ROOT_KEY, path);
            Debug.Log("SetLuaProjRoot: " + path);
        }
    }

    [MenuItem("Assets/Open Lua Project")]
    [MenuItem("Framework/Open Lua Project")]
    public static void OpenLuaProj()
    {
        string idePath = EditorUserSettings.GetConfigValue(LUA_IDE_PATH_KEY);
        if (string.IsNullOrEmpty(idePath) || !File.Exists(idePath))
        {
            SetLuaIDE();
        }
        if (string.IsNullOrEmpty(idePath) || !File.Exists(idePath))
        {
            return;
        }
        idePath = EditorUserSettings.GetConfigValue(LUA_IDE_PATH_KEY);

        string luaProjRootPath = EditorUserSettings.GetConfigValue(LUA_IDE_PATH_KEY);
        if (string.IsNullOrEmpty(luaProjRootPath))
        {
            SetLuaProjRoot();
        }
        luaProjRootPath = EditorUserSettings.GetConfigValue(LUA_PROJ_ROOT_KEY);
        if (string.IsNullOrEmpty(luaProjRootPath))
        {
            return;
        }

        System.Diagnostics.Process proc = new System.Diagnostics.Process();
        proc.StartInfo.FileName = idePath;
        proc.StartInfo.Arguments = string.Format("--new-window {0}", luaProjRootPath);
        proc.Start();
    }

}
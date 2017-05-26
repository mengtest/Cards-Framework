using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;

namespace NCSpeedLight
{
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
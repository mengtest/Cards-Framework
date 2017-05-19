using UnityEngine;
using System.Collections;
using UnityEditor;
using System.IO;
using System.Collections.Generic;

public class PrefabTool : MonoBehaviour
{

    [MenuItem("Prefab Tool/Check Missing Scripts")]
    static void CheckMissingScripts()
    {
        List<string> listString = new List<string>();

        CollectFiles(Application.dataPath, listString);

        for (int i = 0; i < listString.Count; i++)
        {
            string Path = listString[i];

            if (!Path.EndsWith(".prefab"))//只处理prefab文件
            {
                continue;
            }

            Path = ChangeFilePath(Path);

            AssetImporter tmpAssetImport = AssetImporter.GetAtPath(Path);

            GameObject prefab = AssetDatabase.LoadAssetAtPath<GameObject>(tmpAssetImport.assetPath);

            if (prefab == null)
            {
                Debug.LogError("这个是什么文件啊 ： " + tmpAssetImport.assetPath);

                continue;
            }

            Transform[] transforms = prefab.GetComponentsInChildren<Transform>();
            //获取所有的子节点;

            for (int j = 0; j < transforms.Length; j++)
            {
                GameObject obj = transforms[j].gameObject;

                var components = obj.GetComponents<Component>();
                //获取对象所有的Component组件
                //所有继承MonoBehaviour的脚本都继承Component

                SerializedObject serializedObject = new SerializedObject(obj);
                //序列化物体

                SerializedProperty property = serializedObject.FindProperty("m_Component");
                //通过名字查找被序列化属性
               

                int r = 0;

                for (int k = 0; k < property.arraySize; k++)
                {
                    if (components[k] == null)
                    {
                        string name = string.Empty;

                        //尝试获取这个对象的名字
                        if (components[k - 1] != null)
                        {
                            name = components[k - 1].name;
                        }

                        Debug.LogError("这个预制中有空的脚本 ：" + tmpAssetImport.assetPath + " 挂在对象: " + name + " 上");

                        property.DeleteArrayElementAtIndex(k - r);
                        //删除对应的组件;
                        //个人建议 手动检查预设 删除;

                        r++;
                    }
                }

                serializedObject.ApplyModifiedProperties();
                //应用修改属性用在当前的选择上。

                
                EditorUtility.SetDirty(obj);
                //这一行一定要加！！！  虽然我也不知道为什么
            }
        }

        AssetDatabase.Refresh();
        //刷新资源管理器
    }

    //改变路径  
    //这种格式的路径 "C:/Users/XX/Desktop/aaa/New Unity Project/Assets\a.prefab" 改变成 "Assets/a.prefab"
    static string ChangeFilePath(string path)
    {
        path = path.Replace("\\", "/");
        path = path.Replace(Application.dataPath + "/", "");
        path = "Assets/" + path;

        return path;
    }

    //迭代获取文件路径;
    static void CollectFiles(string directory, List<string> outfiles)
    {
        string[] files = Directory.GetFiles(directory);

        outfiles.AddRange(files);

        string[] childDirectories = Directory.GetDirectories(directory);

        if (childDirectories != null && childDirectories.Length > 0)
        {
            for (int i = 0; i < childDirectories.Length; i++)
            {
                string dir = childDirectories[i];
                if (string.IsNullOrEmpty(dir)) continue;
                CollectFiles(dir, outfiles);
            }
        }
    }
}
